require_relative "Function"

class FunctionsDirectory
  attr_accessor :functions

  def initialize()
    @functions = {}
  end

  def register(header, parameters = nil, return_type, quad_number)
    @functions[header] = Function.new(header, parameters, return_type, quad_number)
  end

  def print_functions()
    puts "\tFunctions directory:"

    @functions.each do |key, function|
      puts "\t-------------------#{key}-----------------------"
      puts("\t|Header: #{function.header}, Parameters: #{function.parameters}, Return Type: #{function.return_type}, Quad Jump: #{function.quad_number}|")
    end
    puts "\t------------------------------------------------------ \n"
  end

end
