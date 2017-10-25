require_relative "VariablesDirectory"
require_relative "FunctionsDirectory"
require_relative "ClassesDirectory"

class Context
  attr_accessor :classes_directory, :functions_directory, :variables_directory, :name

  def initialize(name, context_type = "")
    @name = name
    case context_type
    when "function"
      @variables_directory = VariablesDirectory.new()
      puts "\n\t*** Context: #{name} ***\n"
    when "class"
      @variables_directory = VariablesDirectory.new()
      @functions_directory = FunctionsDirectory.new()
      puts "\n\t*** Context: #{name} ***\n"
    else
      @variables_directory = VariablesDirectory.new()
      @functions_directory = FunctionsDirectory.new()
      @classes_directory = ClassesDirectory.new()
      puts "\n*** Context: #{name} ***\n"
    end
  end
end
