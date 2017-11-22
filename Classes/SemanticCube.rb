#######################
# Description: This class validates arithmetic and logical operations between values
# Parameters: (semantic_cube, type: Hash, description: structured used to verify
# operations madew with Hephaestus)
# Return value: N/A
# Error handling: N/A
#######################

class SemanticCube
  attr_accessor :semantic_cube, :convert, :invert

  #######################
  # Description: Initializes SemanticCube
  # Parameters: N/A
  # Return value: N/A
  # Error handling: N/A
  #######################
  def initialize()
    @semantic_cube = {}
    generate_cube()
    @convert = convert()
    @invert = @convert.invert
  end

  #######################
  # Description: Starts cube generation
  # Parameters: N/A
  # Return value: N/A
  # Error handling: N/A
  #######################
  def generate_cube()
    add_types()
  end

  #######################
  # Description: Iterate through the different variable types to check if
  # an operation is valid
  # Parameters: N/A
  # Return value: N/A
  # Error handling: N/A
  #######################
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

  #######################
  # Description: Iterate through logical operations to check if
  # an operation is valid
  # Parameters: (type_index, : Int)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def logic_operators(type_index)
    (5..12).each do | logic_index |
      @semantic_cube[[type_index, type_index, logic_index]] = 2
    end
  end

  #######################
  # Description: Iterate through arithmetic operations to check if
  # an operation is valid
  # Parameters: (type_index, : Int)
  # Return value: N/A
  # Error handling: N/A
  #######################
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

  #######################
  # Description: Creates a Hash to parse string to tokens
  # Parameters: N/A
  # Return value: Hash
  # Error handling: N/A
  #######################
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
