class HephaestusClass
  attr_accessor :name, :inherits_of, :context

  def initialize(name, inherits_of, context)
    @name = name
    @inherits_of = inherits_of
    @context = context
  end
end
 