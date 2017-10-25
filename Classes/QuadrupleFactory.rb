require_relative 'SemanticCube'
require_relative 'Quadruple'
require_relative 'Program'

class QuadrupleFactory
  #attr_accessor :operators_stack, :ids_stack, :types_stack, :counter

  def initialize(program)
    @program = program
    @operators_stack = []
    @ids_stack = []
    @types_stack = []
    @counter = 0
    @sem_cube = SemanticCube.new()
  end

  def add_id(id, value)
    if id != nil
      if find_variable(id)
        variable = get_variable(id)
        @ids_stack.push(variable.name)
        @types_stack.push(variable.type)
      end
    elsif value != nil
      variable_type = match_value(value)
      variable_value = extract_value(value)
      @ids_stack.push(variable_value)
      @types_stack.push(variable_type)
    end
  end 

  def add_false_bottom(parentesis)
    @operators_stack.push(parentesis)
  end

  def remove_false_bottom()
    @operators_stack.pop()
  end

  def find_variable(id)
    current_context = @program.current_context
    current_context.variables_directory.variable_exists?(id)
  end

  def get_variable(id)
    current_context = @program.current_context
    current_context.variables_directory.get_variable(id)
  end

  def add_operator(operator)
    @operators_stack.push(operator)
  end

  def is_term_pending()
    if @operators_stack.last() == '*' || @operators_stack.last() == '/'
      generate_quad()
    end
  end

  def is_exp_pending()
    if @operators_stack.last() == '+' || @operators_stack.last() == '-'
      generate_quad()
    end
  end

  def is_expresion_pending()
    if @operators_stack.last() == '>' || @operators_stack.last() == '<' || @operators_stack.last() == '==' || 
       @operators_stack.last() == '==' || @operators_stack.last() == '<>' || @operators_stack.last() == 'and' || 
       @operators_stack.last() == 'or'
      generate_quad()
    end
  end

  def generate_quad()
    operator = @operators_stack.pop()
    operator_type = @sem_cube.convert[operator]
    right_side = @ids_stack.pop()
    right_side_type = @sem_cube.convert[@types_stack.pop()]
    left_side = @ids_stack.pop()
    left_side_type = @sem_cube.convert[@types_stack.pop()]
    type_res = @sem_cube.semantic_cube[[left_side_type, right_side_type, operator_type]]
    if type_res != nil
      temp = "temp#{@counter}"
      quad = Quadruple.new(operator, left_side, right_side, temp)
      @program.quadruples(quad)
      @ids_stack.push(temp)
      @types_stack.push(@sem_cube.invert[type_res])
      current_context = @program.current_context
      current_context.variables_directory.register(temp, @sem_cube.invert[type_res])
      @counter += 1
    else
      puts "ERROR: variable type mismatched."
    end
  end

private
  def extract_value(value)
    if value == "true"
      true
    elsif value == "false"
      false
    elsif value.include? '.'
      value.to_f
    elsif value.scan(/\D/).empty?
      value.to_i
    else
      value
    end
  end

  def match_value(value)
    if value == "true" || value == "false"
      "Bool"
    elsif value.include? '.'
      "Float"
    elsif value.scan(/\D/).empty?
      "Integer"
    else
      "String"
    end
  end
end