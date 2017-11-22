require_relative "VariablesDirectory"
require_relative "FunctionsDirectory"
require_relative "ClassesDirectory"

#######################
# Description: Context class, A context has either a variable directory,
# a variable directory and a function directory or a variable directory,
# a function directory and a class directory. Each state represents a function
# a class or the main program.
# Parameters: (name, type: string ), (context_type, type: string)
# Return value: N/A
# Error handling: N/A
#######################
class Context
  attr_accessor :classes_directory, :functions_directory, :variables_directory, :name

  #######################
  # Description: Initializes a new Context depending on the type to create their
  # respective directories
  # Parameters: (name, type:String), (context_type, type: String)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def initialize(name, context_type = "")
    @name = name
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

  #######################
  # Description: Prints directories with their attributes, for debugging purposes
  # Parameters: N/A
  # Return value: N/A
  # Error handling: N/A
  #######################
  def print_tables()
    if @classes_directory != nil
      @classes_directory.print_classes()
    end
    if @functions_directory != nil
      @functions_directory.print_functions()
    end
    @variables_directory.print_variables()
  end
end
