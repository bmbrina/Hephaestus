require_relative "Variables"

class VariablesDirectory
  attr_accessor :variables

  def initialize()
    @variables = {}
  end

  def register(name, type, value = nil)
    puts("\n\tNew variable: " + "Name: #{name}, Type: #{type}, Value: #{value} \n")
    @variables[name] = Variable.new(name, type, value)
    print_variables()
  end

  def print_variables()
    puts "\tVariables directory:"

    @variables.each do |key, variable|
      puts "\t------------------------------------------------------"
      puts("\t|Name: #{variable.name}, Type: #{variable.type}, Value: #{variable.value}|")
    end
    puts "\t------------------------------------------------------ \n"
  end

end
