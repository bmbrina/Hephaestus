require_relative 'Program'
require_relative 'DimensionStructure'

#######################
# Description: This makes all the necessary mathematical calculations for
# dimensional variables
# Parameters: (program, type:Program, description: receives program in order to
# modify a variable)
# Return value: N/A
# Error handling: N/A
#######################

class DimensionFactory

  #######################
  # Description: Initializes DimensionFactory
  # Parameters: (program, type:Program)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def initialize(program)
    @program = program
    @r = 1
  end

  #######################
  # Description: Generates a new dimension structure for the given variable
  # Parameters: (id, type:String)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def generate_dim_structure(id)
    dim_struct = DimensionStructure.new()
    get_dim_structures(id).push(dim_struct)
  end

  #######################
  # Description: Gets the variable's array of dim structures
  # Parameters: (id, type:String)
  # Return value: Array
  # Error handling: N/A
  #######################
  def get_dim_structures(id)
    @program.current_context.variables_directory.variables[id].dim_structures
  end

  #######################
  # Description: Gets the variable's array of dim structures
  # Parameters: (id, type:String)
  # Return value: Variable
  # Error handling: N/A
  #######################
  def get_variable(id)
    @program.current_context.variables_directory.variables[id]
  end

  #######################
  # Description: Adds limit to a variable's dim structure
  # Parameters: (id, type:String), (limit, type:Int)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def add_limit(id, limit)
    limit = limit.to_i - 1
    get_dim_structures(id).last().limit = limit
    @r = calc_r(limit)
  end

  #######################
  # Description: Calculates the r of a dimension
  # Parameters: (limit, type:Int)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def calc_r(limit)
    @r * (limit + 1)
  end

  #######################
  # Description: Saves the size of the dimensional value, it also calculates
  #the m of each dimension of the variable.
  # Parameters: (id, type:String)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def calculate_m(id)
    get_variable(id).size = @r
    @program.memory_counter += @r - 1
    get_dim_structures(id).each do | structure |
      structure.m = @r / (structure.limit + 1)
      @r = structure.m
    end
    get_dim_structures(id).last().m = 0
  end

  #######################
  # Description: Resets r for the next variable
  # Parameters: N/A
  # Return value: N/A
  # Error handling: N/A
  #######################
  def reset_r()
    @r = 1
  end
end
