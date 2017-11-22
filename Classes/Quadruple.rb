#######################
# Description: Quadruple class, defines the structure of the intermediate code
# that Hephaestus generates for execution.
# Parameters: (operator, type:Char), (left_side, type:String),
# (right_side, type:String), (result, type:String)
# Return value: N/A
# Error handling: N/A
#######################

class Quadruple
  attr_accessor :operator, :left_side, :right_side, :result

  #######################
  # Description: Initializes Quadruple
  # Parameters: (operator, type:Char), (left_side, type:String),
  # (right_side, type:String), (result, type:String)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def initialize(operator, left_side, right_side, result)
    @operator = operator
    @left_side = left_side
    @right_side = right_side
    @result = result
  end
end
