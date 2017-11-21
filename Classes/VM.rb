class VM

  def initialize(quads)
    @quads = quads
    @memory_stack = []
    @current_context = {}
    @func_stack = []
    @quad_no = 0
    @return_stack = []
    @new_context = {}
    @object_contexts = {}
    start()
  end

  def start()
    while @quad_no < @quads.length
      resolve_quad(@quads[@quad_no])
      @quad_no += 1
    end

  end

  def resolve_quad(quad)
    operation = quad.operator

    case operation
    when '+'
      add(quad.left_side, quad.right_side, quad.result)
    when '-'
      subtract(quad.left_side, quad.right_side, quad.result)
    when '*'
      multiply(quad.left_side, quad.right_side, quad.result)
    when '/'
      divide(quad.left_side, quad.right_side, quad.result)
    when '>'
      greater_than(quad.left_side, quad.right_side, quad.result)
    when '<'
      less_than(quad.left_side, quad.right_side, quad.result)
    when '=='
      equal(quad.left_side, quad.right_side, quad.result)
    when '<>'
      not_equal(quad.left_side, quad.right_side, quad.result)
    when '='
      assign(quad.left_side, quad.result)
    when 'GOTO'
      @quad_no = quad.result - 1
    when 'GOTOF'
      gotof(quad.left_side, quad.result)
    when 'read'
      reading(quad.right_side, quad.result)
    when 'print'
      writing(quad.left_side)
    when 'ERA'
      era(quad.left_side, quad.result)
    when 'PARAM'
      param(quad.left_side, quad.result)
    when 'GOSUB'
      gosub(quad.left_side, quad.right_side)
    when 'return'
      return_func(quad.left_side)
    when 'ENDFUNC'
      endfunc()
    end
  end

  def add(left, right, temp)
    @current_context[temp] = get_value(left) + get_value(right);
  end

  def subtract(left, right, temp)
    @current_context[temp] = get_value(left) - get_value(right);
  end

  def multiply(left, right, temp)
    @current_context[temp] = get_value(left) * get_value(right);
  end

  def divide(left, right, temp)
    @current_context[temp] = get_value(left).to_f / get_value(right).to_f;
  end

  def greater_than(left, right, temp)
    @current_context[temp] = get_value(left) > get_value(right);
  end

  def less_than(left, right, temp)
    @current_context[temp] = get_value(left) < get_value(right);
  end

  def equal(left, right, temp)
    @current_context[temp] = get_value(left) == get_value(right);
  end

  def not_equal(left, right, temp)
    @current_context[temp] = get_value(left) != get_value(right);
  end

  def assign(result, var)
    @current_context[var] = get_value(result)
  end

  def gotof(bool,jump)
    if !get_value(bool)
      @quad_no = jump - 1
    end
  end

  def era(object_name, func_name)
    @func_stack.push(func_name)
    @memory_stack.push(@current_context)

    if object_name == nil
      @new_context = {}
    else
      if @object_contexts[object_name] == nil
        @object_contexts[object_name] = {}
        @new_context = @object_contexts[object_name]
      else
        @new_context = @object_contexts[object_name]
      end
    end 
  end

  def param(value, param)
    @new_context[param] = get_value(value)
  end

  def gosub(func_name,jump)
    @current_context = @new_context
    @return_stack.push(@quad_no)
    @quad_no = jump - 1
  end

  def return_func(value)
    past_context = @memory_stack.pop()
    past_context[@func_stack.pop()] = get_value(value)
    @memory_stack.push(past_context)
  end

  def endfunc()
    @current_context = @memory_stack.pop()
    @quad_no = @return_stack.pop()
  end

  def reading(var, var_type)
    aux = gets.chomp
    aux_class = convert_to_type(aux).class
    type = parse_type(var_type, aux)
    if aux_class.to_s == type
      @current_context[var] = aux
    else
      puts "ERROR: variable type mismatched, expected #{var_type} and got #{aux_class}."
      exit
    end
  end

  def writing(value)
    puts get_value(value)
  end

  # --- Helpers
  def parse_type(type, var)
    if type == "Integer"
      "Fixnum"
    elsif type == "Bool"
      var.downcase!
      if var == "true"
        "TrueClass"
      elsif var == "false"
        "FalseClass"
      end
    else
      type
    end
  end

  def parse_constant(value)
    value.gsub("%", "")
  end

  def get_value(value)
    if is_memory(value)
      @current_context[value]
    else
      parsed_value = parse_constant(value)
      if is_number(parsed_value)
        convert_to_type(parsed_value)
      elsif is_bool(parsed_value)
        convert_to_type(parsed_value)
      else
        parsed_value
      end
    end
  end


  def is_number(value)
    if is_bool(value)
      false
    elsif value[0] == "\""
      false
    else
      true
    end
  end

  def is_bool(value)
    if value == "true" || value == "false"
      true
    else
      false
    end
  end

  def is_memory(value)
    if value[0] != "%"
      true
    else
      false
    end
  end

  def convert_to_type(value)
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

end
