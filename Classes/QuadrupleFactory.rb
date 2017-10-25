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
    @jumps_stack = []
    @counter = 0
    @temp_counter = 1
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

  def write()
    temp = @ids_stack.pop()
    type = @types_stack.pop()
    quad = Quadruple.new('print', temp, nil, nil)
    @program.add_quadruples(quad)
    @counter += 1
  end

  def gotof()
    type = @types_stack.pop()
    if type == "Bool"
      result = @ids_stack.pop()
      quad = Quadruple.new('GOTOF', result, nil, nil)
      @program.add_quadruples(quad)
      @jumps_stack.push(@counter)
      @counter += 1
    else
      puts "ERROR: type mismatched, expecting Bool got #{type}."
      exit
    end
  end

  def fill_quad()
    position = @jumps_stack.pop()
    @program.quadruples[position].result = @counter + 1
  end

  def goto()
    quad = Quadruple.new('GOTO', nil, nil, nil)
    @program.add_quadruples(quad)
    fill_quad()
    @jumps_stack.push(@counter)
    @counter += 1
  end

  def add_jump()
    @jumps_stack.push(@counter)
  end

  def goto_while()
    fill_quad()
    position = @jumps_stack.pop()
    quad = Quadruple.new('GOTO', nil, nil, position)
    @program.add_quadruples(quad)
    @jumps_stack.push(@counter)
    @counter += 1
  end

private
  def generate_quad()
    operator = @operators_stack.pop()
    operator_type = @sem_cube.convert[operator]
    right_side = @ids_stack.pop()
    right_side_type = @sem_cube.convert[@types_stack.pop()]
    left_side = @ids_stack.pop()
    left_side_type = @sem_cube.convert[@types_stack.pop()]
    type_res = @sem_cube.semantic_cube[[left_side_type, right_side_type, operator_type]]
    if type_res != nil
      temp = "temp#{@temp_counter}"
      @temp_counter += 1
      quad = Quadruple.new(operator, left_side, right_side, temp)
      @program.add_quadruples(quad)
      @ids_stack.push(temp)
      @types_stack.push(@sem_cube.invert[type_res])
      current_context = @program.current_context
      current_context.variables_directory.register(temp, @sem_cube.invert[type_res])
      @counter += 1
    else
      puts "ERROR: variable type mismatched, received: #{match_value(left_side)} and #{match_value(right_side)}."
      exit
    end
  end

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
    value = value.to_s
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