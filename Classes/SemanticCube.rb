## Types
# Integer -> 0
# Float -> 1
# Bool -> 2
# String -> 3
# Void -> 4

## Logical Operators
# == -> 5
# > -> 6
# >= -> 7
# < -> 8
# <= -> 9
# <> -> 10
# and -> 11
# or -> 12

## Math Operators
# + -> 13
# - -> 14
# * -> 15
# / -> 16

## Unique
# = -> 17

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
      @semantic_cube[[type_index, type_index, 17]] = type_index
    end
    @semantic_cube[[0, 1, 17]] = 1 
    (0..1).each do | type_index |
      math_operators(type_index)
    end
    @semantic_cube[[3, 3, 13]] = 3 
  end

  def logic_operators(type_index)
    (5..12).each do | logic_index |
      @semantic_cube[[type_index, type_index, logic_index]] = 2
    end
  end

  def math_operators(type_index)
    @semantic_cube[[type_index, type_index, 16]] = 1
    (13..15).each do | math_index |
      @semantic_cube[[type_index, type_index, math_index]] = type_index
    end
    (13..16).each do | math_index |
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
            ">=" => 7,
            "<" => 8,
            "<=" => 9,
            "<>" => 10,
            "and" => 11,
            "or" => 12,
            "+" => 13,
            "-" => 14,
            "*" => 15,
            "/" => 16,
            "=" => 17
           }
  end
end
