require_relative "Context"

class Program
  attr_accessor :main_context, :current_context

  def initialize()
    @main_context = Context.new()
    @current_context = @main_context
  end

  def reset_context()
    @current_context = @main_context
  end

  def add_function(header, parameters, return_type)
    @current_context = Context.new("function")
    @main_context.functions_directory.register(header, parameters, return_type)
  end

  def add_variable(name,type,value)
    @main_context.variables_directory.register(name,type,value)
  end

end
