require_relative "Context"
require_relative "VM"

#######################
# Description: This class is the most important, it handles the memory counter,
# it stores the quadruple and manages the contexts
# Parameters: ( main_context, type:Context),
# (current_context, type:Context, description: ths context changes depending if
# the class program is generating cuadruples for a class a function or a module),
# (past_context, type:Context, description: the parent context of the current context),
# ( quadruples,type:array),
# ( memory_counter, Int, description: counter of the virtual memories assigned to variables)
# Return value: N/A
# Error handling: If necessary, each function handles its own errors.
#######################
class Program
  attr_accessor :main_context, :current_context, :quadruples, :past_context, :memory_counter, :counter

  #######################
  # Description: Initializes the program
  # Parameters: N/A
  # Return value: N/A
  # Error handling: N/A
  #######################
  def initialize()
    @main_context = Context.new('GLOBAL')
    @current_context = @main_context
    @past_context = @main_context
    @quadruples = []
    @counter = 0
    @memory_counter = 1000
  end

  #######################
  # Description: Increases the memory counter that is assigned to variables
  # Parameters: N/A
  # Return value: N/A
  # Error handling: N/A
  #######################
  def set_next_memory()
    @memory_counter += 1
  end

  #######################
  # Description: Resets the current context to the main context when a function
  # declaration has ended.
  # Parameters: N/A
  # Return value: N/A
  # Error handling: N/A
  #######################
  def reset_context()
     puts "\n** FUNCTION #{@current_context.name} **\n"
     @current_context.print_tables()
    @current_context = @past_context
  end

  #######################
  # Description: Resets the current context to the main context when a class
  # declaration ended
  # Parameters: N/A
  # Return value: N/A
  # Error handling: N/A
  #######################
  def reset_class_context()
    puts "\n** CLASS #{@current_context.name} **\n"
    @current_context.print_tables()
    @current_context = @main_context
  end


   #######################
   # Description: Adds a class to classes_directory in the current context and
   # changes the current_context the new class context
   # Parameters: (name, type:String), (inherits_of, type:String)
   # Return value: N/A
   # Error handling: Verifies that the class to be added does not exist
   #######################
   def add_class(name, inherits_of)
    if @current_context.classes_directory.classes[name] != nil
      puts "ERROR: redefinition of class #{name}."
      exit
    else
      @current_context.classes_directory.register(name, inherits_of, Context.new("#{name} context", "class"))
      @current_context = @current_context.classes_directory.classes[name].context
    end
  end

  #######################
  # Description: Adds the parent class functions and variables to the new class
  # Parameters: (parent_class, type:String)
  # Return value: N/A
  # Error handling: Verifies that the parent class exists
  #######################
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

  #######################
  # Description: Adds a function to function_directory in the current context
  # Parameters: (header, type:String), (parameters, type:String), (return_type, type:String)
  # Return value: N/A
  # Error handling: Verifies that the funtion to be added does not exist
  #######################
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

  #######################
  # Description: Adds a variable to variables_directory in the current context
  # Parameters: (name, type:String), (type, type:String)
  # Return value: N/A
  # Error handling: Verifies that the variable to be added does not exist
  #######################
  def add_variable(name, type)
    if @current_context.variables_directory.variables[name] != nil
      puts "ERROR: redefinition of variable #{name}."
      exit
    else
      @current_context.variables_directory.register(name, type, @memory_counter)
      set_next_memory()
    end
  end

  #######################
  # Description: Sets is_dim to the variable just added
  # Parameters: (name, type:String), (type, type:String), (is_dim, type:Bool)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def add_dim_variable(name, type, is_dim)
    add_variable(name, type)
    @current_context.variables_directory.variables[name].is_dim = is_dim
  end

  #######################
  # Description: Adds a new quadruple to the quadruples stack
  # Parameters: (quad, type:Quadruple)
  # Return value: N/A
  # Error handling: N/A
  #######################
  def add_quadruples(quad)
    @quadruples.push(quad)
  end

  #######################
  # Description: Finishes compilation, saves quadruples to quads.hep file
  # and starts execution
  # Parameters: N/A
  # Return value: .hep file
  # Error handling: N/A
  #######################
  def finish()
    print_quadruples()
    File.open("quads.hep", "w+") do | f |
      @quadruples.each_with_index { | quad, index | f.puts("#{index}. #{quad.operator}, #{quad.left_side}, #{quad.right_side}, #{quad.result}") }
    end
    puts "Compilation finished successfully."
    VM.new(@quadruples)
  end

  #######################
  # Description: Shows the quadruples from compilation to the user
  # Parameters: N/A
  # Return value: N/A
  # Error handling: N/A
  #######################
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
