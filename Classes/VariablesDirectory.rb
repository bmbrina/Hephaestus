require_relative "Variable"

#######################
# Description: Holds a hash of variables.
# Parameters: N/A
# Return value: N/A
# Error handling: N/A
#######################
class VariablesDirectory
  attr_accessor :variables

  def initialize()
    @variables = {}
  end

  #######################
  # Description: Creates a new variable and adds it to variable hash.
  # Parameters: (name, type: String), (type, type: String),(memory, type: Integer)
  # (return_type, type:String), (quad_number, type:Int)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def register(name, type, memory)
    @variables[name] = Variable.new(name, type, memory)
  end

  #######################
  # Description: Checks if a key is present in the variables hash
  # Parameters: N/A
  # Return value: Bool
  # Error handling: N/A
  #######################
  def variable_exists?(id)
    @variables.key?(id)
  end

  #######################
  # Description: Gets a variable from variables by key
  # Parameters: (id, type: String)
  # Return value: Variable
  # Error handling: N/A
  #######################
  def get_variable(id)
    @variables[id]
  end

  #######################
  # Description: Prints variables with their attributes, for debugging purposes
  # Parameters: N/A
  # Return value: N/A
  # Error handling: N/A
  #######################
  def print_variables()
    puts "\tVariables directory:"
    @variables.each do |key, variable|
      puts "\t------------------------------------------------------"
      puts("\t|Name: #{variable.name}, Type: #{variable.type}, Size: #{variable.size}, Dir: #{variable.memory_dir}, Dim Structs: #{variable.dim_structures}|")
    end
    puts "\t------------------------------------------------------ \n"
  end

end
