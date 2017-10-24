require_relative "Function"

class FunctionsDirectory
  attr_accessor :functions

  def initialize()
    @functions = {}
  end

  def register(header, parameters, return_type)
    @functions[header] = Function.new(header, parameters, return_type)
  end

end
