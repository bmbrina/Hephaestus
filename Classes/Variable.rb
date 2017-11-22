require_relative 'DimensionFactory'

#######################
# Description: Variable class is used to store the type, memory, size and
# dim_structures if variable is dimensional.
# Parameters: (name, type:String), (type, type:String),(is_dim, type:Bool)
# (dim_structures, type: DimensionStructure), (size, type:Int),
# (memory_dir, type:Int)
# Return value: N/A
# Error handling: N/A
#######################
class Variable
  attr_accessor :name, :type, :value, :is_dim, :dim_structures, :size, :memory_dir

  #######################
  # Description: Initializes Variable
  # Parameters: (name, type:String), (type, type:String),
  # (memory, type:Int)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def initialize(name, type, memory)
    @name = name
    @type = type
    @dim_structures = []
    @memory_dir = memory
  end
end
