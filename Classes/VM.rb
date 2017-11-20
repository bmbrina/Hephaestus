class VM

  def initialize(quads)
    @quads = quads
    @memory_stack = []
    @current_context = {}
    @func_stack = []
    @quad_no = 0
    @return_stack = []
    @new_context = {}
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
    when '>='
      greateq_than(quad.left_side, quad.right_side, quad.result)
    when '<'
      less_than(quad.left_side, quad.right_side, quad.result)
    when '<='
      leq_than(quad.left_side, quad.right_side, quad.result)
    when '=='
      equal(quad.left_side, quad.right_side, quad.result)
    when '<>'
      not_equal(quad.left_side, quad.right_side, quad.result)
    when 'and'
      and_op(quad.left_side, quad.right_side, quad.result)
    when 'or'
      or_op(quad.left_side, quad.right_side, quad.result)
    when '='
      assign(quad.left_side, quad.result)
    when 'GOTO'
      @quad_no = quad.result - 1
    when 'GOTOF'
      gotof(quad.left_side, quad.result)
    when 'print'
      writing(quad.left_side)
    when 'ERA'
      era(quad.result)
    when 'PARAM'
      param(quad.left_side, quad.result)
    when 'GOSUB'
      gosub(quad.left_side, quad.right_side)
    when 'return'
      return_func(quad.left_side)
    when 'ENDFUNC'
    endfunc()
    when 'VERIFICAR'
      verify_limits(quad.left_side, quad.right_side, quad.result) 
    end
  end

  def add(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left) + get_value(right);
  end

  def subtract(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left) - get_value(right);
  end

  def multiply(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left) * get_value(right);
  end

  def divide(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left).to_f / get_value(right).to_f;
  end

  def greater_than(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left) > get_value(right);
  end

  def greateq_than(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left) >= get_value(right);
  end

  def less_than(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left) < get_value(right);
  end

  def leq_than(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left) <= get_value(right)
  end

  def equal(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left) == get_value(right)
  end

  def not_equal(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left) != get_value(right)
  end

  def and_op(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left) && get_value(right)
  end

  def or_op(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left) || get_value(right)
  end

  def assign(result, var)
    var = get_dir(var)
    result = get_dir(result)
    @current_context[var] = get_value(result)
  end

  def gotof(bool,jump)
    if !get_value(bool)
      @quad_no = jump - 1
    end
  end

  def era(func_name)
    @func_stack.push(func_name)
    @memory_stack.push(@current_context)
    @new_context = {}
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

  def writing(value)
    value = get_dir(value)
    puts get_value(value)
  end

  def verify_limits(value, limit1, limit2)
    value = get_value(value)
    if !value.between?(limit1, limit2)
      puts "ERROR: #{value} is out of bounds."
      exit
    end
  end

  # --- Helpers
  def get_dir(var)
    if var[0] == '('
      dir = parse_constant(var)
      @current_context[dir.to_i]
    else
      var
    end
  end

  def parse_constant(value)
    if value[0] == "("
      value = value.gsub("(", "")
      value = value.gsub(")", "")
      value
    else
      value.gsub("%", "")
    end
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
    else
      value.to_i
    end
  end

end
