require_relative 'Program'
require_relative 'DimensionStructure'

class DimensionFactory
  #attr_accessor

  def initialize(program)
    @program = program
    @r = 1
  end

  def generate_dim_structure(id)
    dim_struct = DimensionStructure.new(nil)
    get_dim_structures(id).push(dim_struct)
  end

  def get_dim_structures(id)
    @program.current_context.variables_directory.variables[id].dim_structures
  end

  def add_limit(id, limit)
    get_dim_structures.last().limit = limit
    @r = calc_r(limit)
  end

  def calc_r(limit)
    @r * limit + 1
  end

  def calculate_m()
    get_dim_structures.each do | structure |
      structure.m = @r / structure.limit + 1
    end
    get_dim_structures.last().m = 0
  end
end