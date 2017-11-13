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
      type = param[0]
      aux.push(type)
    end
    aux
  end
end
