require_relative "Variable"
require_relative "Program"


#######################
# Description: Function class, stores the attributes for a function.
# Parameters: (header, type:String), (parameters, type:array of vars), (header, return_type:String,Void,Bool,Int,Float), (quad_number, type:Int)
# Return value: N/A
# Error handling: N/A
#######################
class Function
  attr_accessor :header, :parameters, :return_type, :quad_number

  #######################
  # Description: Initializes Function
  # Parameters: (header, type:String), (parameters, type:String),
  # (return_type, type:String), (quad_number, type:Int)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def initialize(header, parameters, return_type, quad_number)
    @header = header
    @parameters = parse_parameters(parameters)
    @return_type = return_type
    @quad_number = quad_number
  end

  #######################
  # Description: Transforms a string to an array of Variables
  # Parameters: (parameters, type:String)
  # Return value: Array
  # Error handling: N/A
  #######################
  def parse_parameters(parameters)
    aux = []
    parameters = parameters.tr('()', '').split(',')
    parameters.each do | param |
      param = param.split(' ')
      var = Variable.new(param[1], param[0], 0)
      aux.push(var)
    end
    aux
  end
end
