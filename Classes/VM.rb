#######################
# Description: This class is the virtual machine. Its responsable to starte the machine
# and solve the generated compiled code. It needs only the generated cuadruples to run.
# Parameters: ( quads, type: array of quads),
# Return value: N/A
# Error handling: If necessary, each function handles its own errors.
# Most of the errors are handled by the compiler, in fact errors that can be handled
# outside this class should not be present in the VM, some errors are handled here, like -index out of bounds-.
#######################

class VM

  #######################
  # Description: Initializes the virtual machine
  # Parameters: (quads, type: Array)
  # Return value: N/A
  # Error handling: N/A
  #######################
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

  #######################
  # Description: Starts the execution of the virtual machine
  # Parameters: N/A
  # Return value: N/A
  # Error handling: N/A
  #######################
  def start()
    puts "Starting execution..."
    while @quad_no < @quads.length
      resolve_quad(@quads[@quad_no])
      @quad_no += 1
    end
    finish()
  end

  #######################
  # Description: Finishes the execution of the virtual machine
  # Parameters: N/A
  # Return value: N/A
  # Error handling: N/A
  #######################
  def finish()
    puts "Program finished successfully."
    exit
  end

  #######################
  # Description: Calls a function depending on the quad type it receives
  # Parameters: (quad, type: Quadruple)
  # Return value: N/A
  # Error handling: N/A
  #######################
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
    when 'VERIFICAR'
      verify_limits(quad.left_side, quad.right_side, quad.result)
    end
  end

  #######################
  # Description: Adds the left and right operators and stores the result in memory
  # Parameters: (left, type: String,Int,Float), (left, type: String,Int,Float) ,(temp, type: Int)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def add(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left) + get_value(right)
  end

  #######################
  # Description: Substracts the left and right operators and stores the result in memory
  # Parameters: (left, type: Int,Float), (left, type: Int,Float) ,(temp, type: Int)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def subtract(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left) - get_value(right)
  end

  #######################
  # Description: Multiply the left and right operators and stores the result in memory
  # Parameters: (left, type: Int,Float), (left, type: Int,Float) ,(temp, type: Int)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def multiply(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left) * get_value(right)
  end

  #######################
  # Description: Divide the left and right operators and stores the result in memory
  # Parameters: (left, type: Int,Float), (left, type: Int,Float) ,(temp, type: Int)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def divide(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left).to_f / get_value(right).to_f
  end


  #######################
  # Description: Check if the left operator is grater than the right opertor and stores true, if correct,in memory.
  # Parameters: (left, type: Bool,Int,Float), (left, type: Int,Float,Bool) ,(temp, type: Int)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def greater_than(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left) > get_value(right)
  end

  #######################
  # Description: Check if the left operator is grater or equal than the right opertor and stores true, if correct,in memory.
  # Parameters: (left, type: Bool,Int,Float), (left, type: Int,Float,Bool) ,(temp, type: Int)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def greateq_than(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left) >= get_value(right)
  end

  #######################
  # Description: Check if the left operator is less than the right opertor and stores true, if correct,in memory.
  # Parameters: (left, type: Bool,Int,Float), (left, type: Int,Float,Bool) ,(temp, type: Int)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def less_than(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left) < get_value(right)
  end


  #######################
  # Description: Check if the left operator is less or equal than the right opertor and stores true, if correct,in memory.
  # Parameters: (left, type: Bool,Int,Float), (left, type: Int,Float,Bool) ,(temp, type: Int)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def leq_than(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left) <= get_value(right)
  end

  #######################
  # Description: Check if the left operator equal to the right opertor and true, if correct,in memory.
  # Parameters: (left, type: Bool,Int,Float), (left, type: Int,Float,Bool) ,(temp, type: Int)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def equal(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left) == get_value(right)
  end

  #######################
  # Description: Check if the left operator not equal to the right opertor and stores true, if correct,in memory.
  # Parameters: (left, type: Bool,Int,Float), (left, type: Int,Float,Bool) ,(temp, type: Int)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def not_equal(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left) != get_value(right)
  end

  #######################
  # Description: Check if the left operator is true and if the right operator is true and stores true, if correct,in memory.
  # Parameters: (left, type: Bool,Int,Float), (left, type: Int,Float,Bool) ,(temp, type: Int)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def and_op(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left) && get_value(right)
  end

  #######################
  # Description: Check if the left operator is true or if the right operator is true and stores true, if correct,in memory.
  # Parameters: (left, type: Bool,Int,Float), (left, type: Int,Float,Bool) ,(temp, type: Int)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def or_op(left, right, temp)
    left = get_dir(left)
    right = get_dir(right)
    @current_context[temp] = get_value(left) || get_value(right)
  end

  #######################
  # Description: Assigns the result to a variable.
  # Parameters: (result, type: Bool,Int,Float,String), (var, type: Bool,Int,Float,String)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def assign(result, var)
    var = get_dir(var)
    result = get_dir(result)
    @current_context[var] = get_value(result)
  end

  #######################
  # Description: Jumps to a given quadruple number
  # Parameters: (bool, type: String), (jump, type: Int)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def gotof(bool,jump)
    if !get_value(bool)
      @quad_no = jump - 1
    end
  end

  #######################
  # Description: Determines which context is next (new or object context)
  # Parameters: (object_name, type:String), (func_name, type:String)
  # Return value: N/A
  # Error handling: N/A
  #######################
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

  #######################
  # Description: Sends a parameter value to the new context
  # Parameters: (value, type:String), (param, type:String)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def param(value, param)
    @new_context[param] = get_value(value)
  end

  #######################
  # Description: Goes to a function quadruple and saves current position
  # Parameters: (func_name, type:String), (jump, type:Int)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def gosub(func_name,jump)
    @current_context = @new_context
    @return_stack.push(@quad_no)
    @quad_no = jump - 1
  end

  #######################
  # Description: Saves the return value from a function to a memory direction
  # in the past context
  # Parameters: (value: String)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def return_func(value)
    past_context = @memory_stack.pop()
    past_context[@func_stack.pop()] = get_value(value)
    @memory_stack.push(past_context)
  end

  #######################
  # Description: Return to the past context and jumps back to a certain quadruple
  # Parameters: N/A
  # Return value: N/A
  # Error handling: N/A
  #######################
  def endfunc()
    @current_context = @memory_stack.pop()
    @quad_no = @return_stack.pop()
  end

  #######################
  # Description: Reads input from user
  # Parameters: (var, type: String), (var_type, type:String)
  # Return value: N/A
  # Error handling: Throws error if the input type of the user doesn't match
  # the type of the variable to be assigned
  #######################
  def reading(var, var_type)
    aux = $stdin.gets.chomp
    temp = convert_to_type(aux)
    aux_class = temp.class
    type = parse_type(var_type, aux)
    if aux_class.to_s == type
      @current_context[var] = temp
    else
      puts "ERROR: variable type mismatched, expected #{var_type} and got #{aux_class}."
      exit
    end
  end

  #######################
  # Description: Prints to the console
  # Parameters: (value, type: String)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def writing(value)
    value = get_dir(value)
    value = get_value(value)
    if value[0] == "\""
      value = value.gsub("\"", "")
      value = value.gsub("\"", "")
    end
    puts value
  end

  #######################
  # Description: Verifies the limits of a dimensional variable
  # Parameters: (value, type: String), (limit1: Int), (limit2: Int)
  # Return value: String
  # Error handling: Throws an error if the limit isn't between range
  #######################
  def verify_limits(value, limit1, limit2)
    value = get_value(value)
    if !value.between?(limit1, limit2)
      puts "ERROR: #{value} is out of bounds."
      exit
    end
  end

  # --- Helpers
  #######################
  # Description: Get a memory direction stored in a memory direction
  # Parameters: (value, type: String)
  # Return value: String
  # Error handling: N/A
  #######################
  def get_dir(var)
    if var[0] == '('
      dir = parse_constant(var)
      @current_context[dir.to_i]
    else
      var
    end
  end

  #######################
  # Description: Parse Ruby Class types to Hephaestus variable types
  # Parameters: (value, type: String)
  # Return value: String
  # Error handling: N/A
  #######################
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

  #######################
  # Description: Parses constants (removes %) or memory directions
  # Parameters: (value, type: String)
  # Return value: String
  # Error handling: N/A
  #######################
  def parse_constant(value)
    if value[0] == "("
      value = value.gsub("(", "")
      value = value.gsub(")", "")
      value
    else
      value.gsub("%", "")
    end
  end

  #######################
  # Description: Parses value
  # Parameters: (value, type: String)
  # Return value: Int, Float, Bool, String
  # Error handling: N/A
  #######################
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

  #######################
  # Description: Checks if the given value is a number
  # Parameters: (value, type: String)
  # Return value: Bool
  # Error handling: N/A
  #######################
  def is_number(value)
    if is_bool(value)
      false
    elsif value[0] == "\""
      false
    else
      true
    end
  end

  #######################
  # Description: Checks if the given value is a bool
  # Parameters: (value, type: String)
  # Return value: Bool
  # Error handling: N/A
  #######################
  def is_bool(value)
    if value == "true" || value == "false"
      true
    else
      false
    end
  end

  #######################
  # Description: Checks if the given value is memory direction
  # Parameters: (value, type: String)
  # Return value: Bool
  # Error handling: N/A
  #######################
  def is_memory(value)
    if value[0] != "%"
      true
    else
      false
    end
  end

  #######################
  # Description: Given a string, it returns the parsed value
  # Parameters: (value, type: String)
  # Return value: Int, Float, Bool, String
  # Error handling: N/A
  #######################
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
