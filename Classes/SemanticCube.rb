## Types
# Integer -> 0
# Float -> 1
# Bool -> 2
# String -> 3
# Void -> 4

## Logical Operators
# == -> 5
# > -> 6
# < -> 7
# <> -> 8

## Math Operators
# + -> 9
# - -> 10
# * -> 11
# / -> 12

## Unique
# = -> 13

class SemanticCube
  attr_accessor :semantic_cube, :convert, :invert

  def initialize()
    @semantic_cube = {}
    generate_cube()
    @convert = convert()
    @invert = @convert.invert
  end

#private
  def generate_cube()
    add_types()
  end

  def add_types()
    (0..4).each do | type_index |
      logic_operators(type_index)
      @semantic_cube[[type_index, type_index, 13]] = type_index
    end
    @semantic_cube[[0, 1, 13]] = 1 
    (0..1).each do | type_index |
      math_operators(type_index)
    end
    @semantic_cube[[3, 3, 9]] = 3 
  end

  def logic_operators(type_index)
    (5..8).each do | logic_index |
      @semantic_cube[[type_index, type_index, logic_index]] = 2
    end
  end

  def math_operators(type_index)
    @semantic_cube[[type_index, type_index, 12]] = 1
    (9..11).each do | math_index |
      @semantic_cube[[type_index, type_index, math_index]] = type_index
    end
    (9..12).each do | math_index |
      aux = type_index == 0 ? 1 : 0
      @semantic_cube[[type_index, aux, math_index]] = 1
    end
  end

  def convert()
    return {  
            "Integer" => 0,
            "Float" => 1,
            "Bool" => 2,
            "String" => 3,
            "Void" => 4,
            "==" => 5,
            ">" => 6,
            "<" => 7,
            "<>" => 8,
            "+" => 9,
            "-" => 10,
            "*" => 11,
            "/" => 12,
            "=" => 13
           }
  end
end
