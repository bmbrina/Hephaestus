require_relative "Function"

#######################
# Description: Holds a hash of functions.
# Parameters: N/A
# Return value: N/A
# Error handling: N/A
#######################
class FunctionsDirectory
  attr_accessor :functions

  def initialize()
    @functions = {}
  end

  #######################
  # Description: Creates a new functions and adds it to functions
  # Parameters: (header, type: String), (parameters, type: String),
  # (return_type, type:String), (quad_number, type:Int)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def register(header, parameters = nil, return_type, quad_number)
    @functions[header] = Function.new(header, parameters, return_type, quad_number)
  end

  #######################
  # Description: Prints functions with their attributes, for debugging purposes
  # Parameters: N/A
  # Return value: N/A
  # Error handling: N/A
  #######################
  def print_functions()
    puts "\tFunctions directory:"

    @functions.each do |key, function|
      puts "\t-------------------#{key}-----------------------"
      puts("\t|Header: #{function.header}, Parameters: #{function.parameters}, Return Type: #{function.return_type}, Quad Jump: #{function.quad_number}|")
    end
    puts "\t------------------------------------------------------ \n"
  end

end
