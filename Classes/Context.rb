require_relative "VariablesDirectory"
require_relative "FunctionsDirectory"
require_relative "ClassesDirectory"

class Context
  attr_accessor :classes_directory, :functions_directory, :variables_directory

  def initialize(context_type = "")
    case context_type
    when "function"
      @variables_directory = VariablesDirectory.new()
    when "class"
      @variables_directory = VariablesDirectory.new()
      @functions_directory = FunctionsDirectory.new()
    else
      @variables_directory = VariablesDirectory.new()
      @functions_directory = FunctionsDirectory.new()
      @classes_directory = ClassesDirectory.new()
    end
  end
end
