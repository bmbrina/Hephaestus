require_relative "Variables"

class VariablesDirectory
  attr_accessor :variables

  def initialize()
    @variables = {}
  end

  def register(name, type, value = nil)
    puts("New variable:" + "Name: #{name}, Type: #{type}, Value: #{value}")
    @variables[name] = Variable.new(name, type, value)
    print_variables()
  end

  def print_variables()
    puts "Variables directory:"

    @variables.each do |key, variable|
      puts "------------------------------------------------------"
      puts("|Name:#{variable.name}, Type:#{variable.type}, Value:#{variable.value}|")
    end
  end

end
