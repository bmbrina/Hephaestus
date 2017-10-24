class Function
  attr_accessor :header, :parameters, :return_type

  def initialize(header, parameters, return_type)
    @header = header
    @parameters = parameters
    @return_type = return_type
  end
end
