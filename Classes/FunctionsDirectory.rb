require_relative "Function"

class FunctionsDirectory
  attr_accessor :functions

  def initialize()
    @functions = {}
  end

  def register(header, parameters = nil, return_type)
    puts("\n\tNew function: " + "Header: #{header}, Parameters: #{parameters}, Return Type: #{return_type} \n")
    @functions[header] = Function.new(header, parameters, return_type)
    print_functions()
  end

  def print_functions()
    puts "\tFunctions directory:"

    @functions.each do |key, function|
      puts "\t-------------------#{key}-----------------------"
      puts("\t|Header: #{function.header}, Parameters: #{function.parameters}, Return Type: #{function.return_type}|")
    end
    puts "\t------------------------------------------------------ \n"
  end

end
