require_relative 'DimensionFactory'

class Variable
  attr_accessor :name, :type, :value, :is_dim, :dim_structures, :size, :memory_dir

  def initialize(name, type, memory)
    @name = name
    @type = type
    @dim_structures = []
    @memory_dir = memory
  end
end
