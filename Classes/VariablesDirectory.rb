require_relative "Variable"

class VariablesDirectory
  attr_accessor :variables

  def initialize()
    @variables = {}
  end

  def register(name, type, memory)
    @variables[name] = Variable.new(name, type, memory)
  end

  def variable_exists?(id)
    @variables.key?(id)
  end

  def get_variable(id)
    @variables[id]
  end

  def print_variables()
    puts "\tVariables directory:"
    @variables.each do |key, variable|
      puts "\t------------------------------------------------------"
      puts("\t|Name: #{variable.name}, Type: #{variable.type}, Size: #{variable.size}, Dir: #{variable.memory_dir}, Dim Structs: #{variable.dim_structures}|")
    end
    puts "\t------------------------------------------------------ \n"
  end

end
