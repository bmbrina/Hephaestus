require_relative "HephaestusClass"

class ClassesDirectory
  attr_accessor :classes

  def initialize()
    @classes = {}
  end

  def register(name, inherits_of)
    @classes[name] = HephaestusClass.new(name, inherits_of)
  end

  def print_classes()
    puts "\tClasses directory:"

    @classes.each do |key, hephaestus_class|
      puts "\t-------------------#{key}-----------------------"
      puts("\t|Name: #{hephaestus_class.name}, Inherits Of: #{hephaestus_class.inherits_of}|")
    end
    puts "\t------------------------------------------------------ \n"
  end

end