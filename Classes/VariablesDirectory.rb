require_relative "Variables"

class VariablesDirectory
  attr_accessor :variables

  def initialize()
    @variables = {}
  end

  def register(name, type, value = nil)
    @variables[name] = Variable.new(name,type,value)
  end

end
