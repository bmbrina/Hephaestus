require_relative 'Program'
require_relative 'DimensionStructure'

class DimensionFactory
  #attr_accessor

  def initialize(program)
    @program = program
    @r = 1
  end

  def generate_dim_structure(id)
    dim_struct = DimensionStructure.new()
    get_dim_structures(id).push(dim_struct)
  end

  def get_dim_structures(id)
    @program.current_context.variables_directory.variables[id].dim_structures
  end

  def get_variable(id)
    @program.current_context.variables_directory.variables[id]
  end

  def add_limit(id, limit)
    limit = limit.to_i - 1
    get_dim_structures(id).last().limit = limit
    @r = calc_r(limit)
  end

  def calc_r(limit)
    @r * (limit + 1)
  end

  def calculate_m(id)
    get_variable(id).size = @r
    get_dim_structures(id).each do | structure |
      structure.m = @r / (structure.limit + 1)
      @r = structure.m
    end
    get_dim_structures(id).last().m = 0
  end

  def reset_r()
    @r = 1
  end
end