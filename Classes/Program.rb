require_relative "Context"

class Program
  attr_accessor :main_context, :current_context

  def initialize()
    @main_context = Context.new('GLOBAL')
    @current_context = @main_context
    @quadruples = []
  end

  def reset_context()
    @current_context = @main_context
    puts "\n*** Context: #{@current_context.name} ***\n"
  end

  def add_function(header, parameters, return_type)
    @current_context = Context.new("#{header} context","function")
    @main_context.functions_directory.register(header, parameters, return_type)
  end

  def add_variable(name, type, value)
    @main_context.variables_directory.register(name, type, value)
  end

  def quadruples(quad)
    @quadruples.push(quad)
    puts "New quadruple: \n"
    puts "Operator: #{quad.operator}, Left Side: #{quad.left_side}, Right Side: #{quad.right_side}, Result: #{quad.result}"
  end
end
