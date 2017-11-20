class VM

  def initialize(quads)
    @quads = quads
    @virtual_memory = {}
    start()
  end

  def start()
    @quads.each_with_index do |quad, index|
      resolve_quads(quad,index)
    end
  end

  def resolve_quads(quad, index)
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
    when 'print'
      writing(quad.left_side)
    end
  end

  def add(left, right, temp)
    @virtual_memory[temp] = get_value(left) + get_value(right);
  end

  def subtract(left, right, temp)
    @virtual_memory[temp] = get_value(left) - get_value(right);
  end

  def multiply(left, right, temp)
    @virtual_memory[temp] = get_value(left) * get_value(right);
  end

  def divide(left, right, temp)
    @virtual_memory[temp] = get_value(left).to_f / get_value(right).to_f;
  end

  def greater_than(left, right, temp)
    @virtual_memory[temp] = get_value(left) > get_value(right);
  end

  def less_than(left, right, temp)
    @virtual_memory[temp] = get_value(left) < get_value(right);
  end

  def equal(left, right, temp)
    @virtual_memory[temp] = get_value(left) == get_value(right);
  end

  def not_equal(left, right, temp)
    @virtual_memory[temp] = get_value(left) != get_value(right);
  end

  def assign(result, var)
    @virtual_memory[var] = get_value(result)
  end

  def writing(value)
    puts get_value(value)
  end

  # --- Helpers

  def parse_constant(value)
    value.gsub("%", "")
  end

  def get_value(value)
    if is_memory(value)
      @virtual_memory[value]
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
    if value.class == Fixnum
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
