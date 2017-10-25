class Quadruple
  attr_accessor :operator, :left_side, :right_side, :result

  def initialize(operator, left_side, right_side, result)
    @operator = operator
    @left_side = left_side
    @right_side = right_side
    @result = result
  end
end