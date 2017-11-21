require_relative "Context"
require_relative "VM"
class Program
  attr_accessor :main_context, :current_context, :quadruples, :past_context, :memory_counter, :counter

  def initialize()
    @main_context = Context.new('GLOBAL')
    @current_context = @main_context
    @past_context = @main_context
    @quadruples = []
    @counter = 0
    @memory_counter = 1000
  end

  def set_next_memory()
    @memory_counter += 1
  end

  def reset_context()
    # puts "\n** FUNCTION #{@current_context.name} **\n"
    # @current_context.print_tables()
    @current_context = @past_context
  end

  def reset_class_context()
    #puts "\n** CLASS #{@current_context.name} **\n"
    #@current_context.print_tables()
    @current_context = @main_context
  end

   def add_class(name, inherits_of)
    if @current_context.classes_directory.classes[name] != nil
      puts "ERROR: redefinition of class #{name}."
      exit
    else
      @current_context.classes_directory.register(name, inherits_of, Context.new("#{name} context", "class"))
      @current_context = @current_context.classes_directory.classes[name].context
    end
  end

  def inherits_class_context(parent_class)
    if @main_context.classes_directory.classes[parent_class] != nil
      parent_context = @main_context.classes_directory.classes[parent_class].context
      @current_context.functions_directory.functions = parent_context.functions_directory.functions.clone
      @current_context.variables_directory.variables = parent_context.variables_directory.variables.clone
    else
      puts "ERROR: the class #{parent_class} doesn't exist."
      exit
    end
  end

  def add_function(header, parameters, return_type)
    if @current_context.functions_directory.functions[header] != nil
      puts "ERROR: redefinition of function #{header}."
      exit
    else
      @current_context.functions_directory.register(header, parameters, return_type, @quadruples.count)
      params = @current_context.functions_directory.functions[header].parameters
      @past_context = @current_context
      @current_context = Context.new("#{header} context", "function")
      params.each_with_index do | param , index |
        set_next_memory()
        @current_context.variables_directory.register(param.name, param.type, @memory_counter)
        quad = Quadruple.new("=", "param#{index}", nil, @memory_counter)
        add_quadruples(quad)
        @counter += 1
      end

    end
  end

  def add_variable(name, type)
    if @current_context.variables_directory.variables[name] != nil
      puts "ERROR: redefinition of variable #{name}."
      exit
    else
      @current_context.variables_directory.register(name, type, @memory_counter)
      set_next_memory()
    end
  end

  def add_dim_variable(name, type, is_dim)
    add_variable(name, type)
    @current_context.variables_directory.variables[name].is_dim = is_dim
  end

  def add_quadruples(quad)
    @quadruples.push(quad)
  end

  def finish()
    #print_quadruples()
    puts "Compilation finished successfully."
    VM.new(@quadruples)
  end

  def print_quadruples()
    puts "\n\n** GLOBAL Context **\n\n"
    @main_context.print_tables()
    puts "\n============== START QUADS =============="
    @quadruples.each_with_index do |quad, index|
      puts "#{index}: #{quad.operator}, #{quad.left_side}, #{quad.right_side}, #{quad.result}"
    end
    puts "\n============== END QUADS =============="
  end
end
