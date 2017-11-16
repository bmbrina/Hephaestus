require_relative "Variable"

class Function
  attr_accessor :header, :parameters, :return_type, :quad_number

  def initialize(header, parameters, return_type, quad_number)
    @header = header
    @parameters = parse_parameters(parameters)
    @return_type = return_type
    @quad_number = quad_number
  end

  def parse_parameters(parameters)
    aux = []
    parameters = parameters.tr('()', '').split(',')
    parameters.each do | param |
      param = param.split(' ')
      var = Variable.new(param[1], param[0], nil)
      aux.push(var)
    end
    aux
  end
end
