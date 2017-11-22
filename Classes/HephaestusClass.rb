#######################
# Description: The class that represents a Hephaestus Class
# Parameters: (name, type:String), (inherits_of, type:String),(context, type: Context)
# Return value: N/A
# Error handling: N/A
#######################
class HephaestusClass
  attr_accessor :name, :inherits_of, :context

  #######################
  # Description: Initializes HephaestusClass
  # Parameters: (name, type:String), (inherits_of, type:String),
  # (context, type:Context)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def initialize(name, inherits_of, context)
    @name = name
    @inherits_of = inherits_of
    @context = context
  end
end
