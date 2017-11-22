require_relative "HephaestusClass"

#######################
# Description: ClassesDirectory, contains the classes of the main context
# Parameters: N/A
# Return value: N/A
# Error handling: N/A
#######################
class ClassesDirectory
  attr_accessor :classes

  #######################
  # Description: Initializes ClassesDirectory
  # Parameters: N/A
  # Return value: N/A
  # Error handling: N/A
  #######################
  def initialize()
    @classes = {}
  end

  #######################
  # Description: Creates a new class and adds it to classes
  # Parameters: (name, type: String), (inherits_of, type: String),
  # (context, type:Context)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def register(name, inherits_of, context)
    @classes[name] = HephaestusClass.new(name, inherits_of, context)
  end

  #######################
  # Description: Prints classes with their attributes, for debugging purposes
  # Parameters: N/A
  # Return value: N/A
  # Error handling: N/A
  #######################
  def print_classes()
    puts "\tClasses directory:"

    @classes.each do |key, hephaestus_class|
      puts "\t-------------------#{key}-----------------------"
      puts("\t|Name: #{hephaestus_class.name}, Inherits Of: #{hephaestus_class.inherits_of}, Context: #{hephaestus_class.context.name}|")
    end
    puts "\t------------------------------------------------------ \n"
  end

end
