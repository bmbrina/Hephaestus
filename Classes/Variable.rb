class Variable
  attr_accessor :name, :type, :value

  def initialize(name, type, value)
    @name = name
    @type = type
    @value = value
  end
end
