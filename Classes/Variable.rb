require_relative 'DimensionFactory'

class Variable
  attr_accessor :name, :type, :value, :is_dim, :dim_structures, :size

  def initialize(name, type)
    @name = name
    @type = type
    @dim_structures = []
  end
end
