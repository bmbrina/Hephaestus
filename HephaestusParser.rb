#!/usr/bin/env ruby
#
# Hephaestus.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Hephaestus.g
# Generated at: 2017-11-22 06:49:05
#

# ~~~> start load path setup
this_directory = File.expand_path( File.dirname( __FILE__ ) )
$LOAD_PATH.unshift( this_directory ) unless $LOAD_PATH.include?( this_directory )

antlr_load_failed = proc do
  load_path = $LOAD_PATH.map { |dir| '  - ' << dir }.join( $/ )
  raise LoadError, <<-END.strip!

Failed to load the ANTLR3 runtime library (version 1.10.0):

Ensure the library has been installed on your system and is available
on the load path. If rubygems is available on your system, this can
be done with the command:

  gem install antlr3

Current load path:
#{ load_path }

  END
end

defined?( ANTLR3 ) or begin

  # 1: try to load the ruby antlr3 runtime library from the system path
  require 'antlr3'

rescue LoadError

  # 2: try to load rubygems if it isn't already loaded
  defined?( Gem ) or begin
    require 'rubygems'
  rescue LoadError
    antlr_load_failed.call
  end

  # 3: try to activate the antlr3 gem
  begin
    defined?( gem ) and gem( 'antlr3', '~> 1.10.0' )
  rescue Gem::LoadError
    antlr_load_failed.call
  end

  require 'antlr3'

end
# <~~~ end load path setup

# - - - - - - begin action @parser::header - - - - - -
# Hephaestus.g


  require "Classes/Program"
  require "Classes/QuadrupleFactory"
  require "Classes/DimensionFactory"

# - - - - - - end action @parser::header - - - - - - -


module Hephaestus
  # TokenData defines all of the token type integer values
  # as constants, which will be included in all
  # ANTLR-generated recognizers.
  const_defined?( :TokenData ) or TokenData = ANTLR3::TokenScheme.new

  module TokenData

    # define the token constants
    define_tokens( :EOF => -1, :AND => 4, :AS => 5, :ASGN => 6, :BOOL => 7, 
                   :COLON => 8, :COMMA => 9, :DEFINE => 10, :DIV => 11, 
                   :DOT => 12, :ELSE => 13, :EQ => 14, :FLOAT => 15, :FUNCTION => 16, 
                   :GREATEQ => 17, :GREATER => 18, :HER => 19, :ID => 20, 
                   :IF => 21, :INTEGER => 22, :LBRACK => 23, :LEQ => 24, 
                   :LESS => 25, :LPAR => 26, :MINUS => 27, :MULT => 28, 
                   :NEQ => 29, :NEWLINE => 30, :OBJ => 31, :OR => 32, :PLUS => 33, 
                   :PRINT => 34, :PROGRAM => 35, :RBRACK => 36, :READ => 37, 
                   :RETURN => 38, :RPAR => 39, :R_BOOL => 40, :R_CLASS => 41, 
                   :R_END => 42, :R_FLOAT => 43, :R_INTEGER => 44, :R_STRING => 45, 
                   :STRING => 46, :VOID => 47, :WHILE => 48, :WS => 49 )


    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "AND", "AS", "ASGN", "BOOL", "COLON", "COMMA", "DEFINE", 
                    "DIV", "DOT", "ELSE", "EQ", "FLOAT", "FUNCTION", "GREATEQ", 
                    "GREATER", "HER", "ID", "IF", "INTEGER", "LBRACK", "LEQ", 
                    "LESS", "LPAR", "MINUS", "MULT", "NEQ", "NEWLINE", "OBJ", 
                    "OR", "PLUS", "PRINT", "PROGRAM", "RBRACK", "READ", 
                    "RETURN", "RPAR", "R_BOOL", "R_CLASS", "R_END", "R_FLOAT", 
                    "R_INTEGER", "R_STRING", "STRING", "VOID", "WHILE", 
                    "WS" )


  end


  class Parser < ANTLR3::Parser
    @grammar_home = Hephaestus

    RULE_METHODS = [ :start, :r_class, :heritage, :program, :dim_dec, :mat_dim, 
                     :dim_struct, :var_dec, :function, :parameters, :estatute, 
                     :method_call, :method_call_2, :method_call_parameters, 
                     :assignment, :condition, :while_loop, :block, :reading, 
                     :writing, :func_call, :func_call_parameters, :super_expression, 
                     :expression, :exp, :term, :factor, :type, :value ].freeze

    include TokenData

    begin
      generated_using( "Hephaestus.g", "3.5", "1.10.0" )
    rescue NoMethodError => error
      # ignore
    end

    def initialize( input, options = {} )
      super( input, options )
    end

      $program = Program.new()
      $quads = QuadrupleFactory.new($program)
      $dim = DimensionFactory.new($program)
      $class_aux
      $method_aux
      $func_aux
      $dim_aux
      $assgn_aux

    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    #
    # parser rule start
    #
    # (in Hephaestus.g)
    # 101:1: start : ( r_class )* ( function )* program ;
    #
    def start
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 102:5: ( r_class )* ( function )* program
      # --> action
       $quads.goto_program() 
      # <-- action

      # at line 102:32: ( r_class )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == R_CLASS )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 102:34: r_class
          @state.following.push( TOKENS_FOLLOWING_r_class_IN_start_518 )
          r_class
          @state.following.pop

        else
          break # out of loop for decision 1
        end
      end # loop for decision 1

      # at line 102:46: ( function )*
      while true # decision 2
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0 == FUNCTION )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 102:48: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_start_526 )
          function
          @state.following.pop

        else
          break # out of loop for decision 2
        end
      end # loop for decision 2

      @state.following.push( TOKENS_FOLLOWING_program_IN_start_531 )
      program
      @state.following.pop

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 1 )

       exit 
      end

      return 
    end



    #
    # parser rule r_class
    #
    # (in Hephaestus.g)
    # 106:1: r_class : R_CLASS ID ( heritage )? COLON ( function | dim_dec | var_dec )* R_END R_CLASS ;
    #
    def r_class
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      __ID1__ = nil


      begin
      # at line 107:5: R_CLASS ID ( heritage )? COLON ( function | dim_dec | var_dec )* R_END R_CLASS
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_550 )
      __ID1__ = match( ID, TOKENS_FOLLOWING_ID_IN_r_class_552 )

      # --> action
       $class_aux = __ID1__.text 
      # <-- action


      # --> action
       $program.add_class(__ID1__.text, nil) 
      # <-- action

      # at line 107:82: ( heritage )?
      alt_3 = 2
      look_3_0 = @input.peek( 1 )

      if ( look_3_0 == HER )
        alt_3 = 1
      end
      case alt_3
      when 1
        # at line 107:82: heritage
        @state.following.push( TOKENS_FOLLOWING_heritage_IN_r_class_558 )
        heritage
        @state.following.pop

      end
      match( COLON, TOKENS_FOLLOWING_COLON_IN_r_class_562 )
      # at line 107:99: ( function | dim_dec | var_dec )*
      while true # decision 4
        alt_4 = 4
        look_4_0 = @input.peek( 1 )

        if ( look_4_0 == FUNCTION )
          alt_4 = 1
        elsif ( look_4_0 == DEFINE )
          look_4_3 = @input.peek( 2 )

          if ( look_4_3 == ID )
            look_4_4 = @input.peek( 3 )

            if ( look_4_4 == AS )
              look_4_5 = @input.peek( 4 )

              if ( look_4_5 == ID || look_4_5 == R_BOOL || look_4_5.between?( R_FLOAT, R_STRING ) || look_4_5 == VOID )
                look_4_6 = @input.peek( 5 )

                if ( look_4_6 == LBRACK )
                  alt_4 = 2
                elsif ( look_4_6 == ASGN || look_4_6 == DOT )
                  alt_4 = 3

                end

              end

            end

          end

        end
        case alt_4
        when 1
          # at line 107:101: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_r_class_566 )
          function
          @state.following.pop

        when 2
          # at line 108:74: dim_dec
          @state.following.push( TOKENS_FOLLOWING_dim_dec_IN_r_class_641 )
          dim_dec
          @state.following.pop

        when 3
          # at line 109:74: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_r_class_716 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 4
        end
      end # loop for decision 4

      match( R_END, TOKENS_FOLLOWING_R_END_IN_r_class_792 )
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_794 )

      # --> action
       $program.reset_class_context() 
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 2 )


      end

      return 
    end



    #
    # parser rule heritage
    #
    # (in Hephaestus.g)
    # 113:1: heritage : ( HER ID ) ;
    #
    def heritage
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      __ID2__ = nil


      begin
      # at line 114:5: ( HER ID )
      # at line 114:5: ( HER ID )
      # at line 114:7: HER ID
      match( HER, TOKENS_FOLLOWING_HER_IN_heritage_811 )
      __ID2__ = match( ID, TOKENS_FOLLOWING_ID_IN_heritage_813 )


      # --> action
       $program.main_context.classes_directory.classes[$class_aux].inherits_of = __ID2__.text 
      # <-- action


      # --> action
       $program.inherits_class_context(__ID2__.text) 
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 3 )


      end

      return 
    end



    #
    # parser rule program
    #
    # (in Hephaestus.g)
    # 117:1: program : PROGRAM ID COLON ( estatute | dim_dec | var_dec )* R_END PROGRAM ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      begin
      # at line 118:5: PROGRAM ID COLON ( estatute | dim_dec | var_dec )* R_END PROGRAM
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_832 )

      # --> action
       $quads.fill_program_quad() 
      # <-- action

      match( ID, TOKENS_FOLLOWING_ID_IN_program_836 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_program_838 )
      # at line 118:54: ( estatute | dim_dec | var_dec )*
      while true # decision 5
        alt_5 = 4
        look_5_0 = @input.peek( 1 )

        if ( look_5_0.between?( ID, IF ) || look_5_0 == PRINT || look_5_0 == WHILE )
          alt_5 = 1
        elsif ( look_5_0 == DEFINE )
          look_5_3 = @input.peek( 2 )

          if ( look_5_3 == ID )
            look_5_4 = @input.peek( 3 )

            if ( look_5_4 == AS )
              look_5_5 = @input.peek( 4 )

              if ( look_5_5 == ID || look_5_5 == R_BOOL || look_5_5.between?( R_FLOAT, R_STRING ) || look_5_5 == VOID )
                look_5_6 = @input.peek( 5 )

                if ( look_5_6 == LBRACK )
                  alt_5 = 2
                elsif ( look_5_6 == ASGN || look_5_6 == DOT )
                  alt_5 = 3

                end

              end

            end

          end

        end
        case alt_5
        when 1
          # at line 118:56: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_program_842 )
          estatute
          @state.following.pop

        when 2
          # at line 119:47: dim_dec
          @state.following.push( TOKENS_FOLLOWING_dim_dec_IN_program_890 )
          dim_dec
          @state.following.pop

        when 3
          # at line 120:47: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_program_938 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 5
        end
      end # loop for decision 5

      match( R_END, TOKENS_FOLLOWING_R_END_IN_program_987 )
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_989 )

      # --> action
       $program.finish() 
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 4 )


      end

      return 
    end



    #
    # parser rule dim_dec
    #
    # (in Hephaestus.g)
    # 124:1: dim_dec : DEFINE ID AS type LBRACK INTEGER ( mat_dim )? RBRACK DOT ;
    #
    def dim_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      __ID3__ = nil
      __INTEGER5__ = nil
      type4 = nil


      begin
      # at line 125:5: DEFINE ID AS type LBRACK INTEGER ( mat_dim )? RBRACK DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_dim_dec_1004 )
      __ID3__ = match( ID, TOKENS_FOLLOWING_ID_IN_dim_dec_1006 )

      # --> action
       $dim_aux = __ID3__.text 
      # <-- action

      match( AS, TOKENS_FOLLOWING_AS_IN_dim_dec_1010 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_dim_dec_1012 )
      type4 = type
      @state.following.pop

      # --> action
       $program.add_dim_variable(__ID3__.text, ( type4 && @input.to_s( type4.start, type4.stop ) ), true) 
      # <-- action

      match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_dim_dec_1016 )

      # --> action
       $dim.generate_dim_structure(__ID3__.text) 
      # <-- action

      __INTEGER5__ = match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_dim_dec_1020 )

      # --> action
       $dim.add_limit(__ID3__.text, __INTEGER5__.text) 
      # <-- action

      # at line 125:210: ( mat_dim )?
      alt_6 = 2
      look_6_0 = @input.peek( 1 )

      if ( look_6_0 == COMMA )
        alt_6 = 1
      end
      case alt_6
      when 1
        # at line 125:212: mat_dim
        @state.following.push( TOKENS_FOLLOWING_mat_dim_IN_dim_dec_1026 )
        mat_dim
        @state.following.pop

      end
      match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_dim_dec_1031 )

      # --> action
       $dim.calculate_m(__ID3__.text) 
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_dim_dec_1035 )

      # --> action
       $dim.reset_r()
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 5 )


      end

      return 
    end



    #
    # parser rule mat_dim
    #
    # (in Hephaestus.g)
    # 128:1: mat_dim : COMMA INTEGER ;
    #
    def mat_dim
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      __INTEGER6__ = nil


      begin
      # at line 129:5: COMMA INTEGER
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_mat_dim_1050 )

      # --> action
       $dim.generate_dim_structure($dim_aux) 
      # <-- action

      __INTEGER6__ = match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_mat_dim_1054 )

      # --> action
       $dim.add_limit($dim_aux, __INTEGER6__.text) 
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 6 )


      end

      return 
    end



    #
    # parser rule dim_struct
    #
    # (in Hephaestus.g)
    # 132:1: dim_struct : LBRACK exp ( COMMA exp )? RBRACK ;
    #
    def dim_struct
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      begin
      # at line 133:5: LBRACK exp ( COMMA exp )? RBRACK
      match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_dim_struct_1069 )

      # --> action
       $quads.is_dim() 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_exp_IN_dim_struct_1073 )
      exp
      @state.following.pop

      # --> action
       $quads.generate_limit_quad() 
      # <-- action

      # at line 133:71: ( COMMA exp )?
      alt_7 = 2
      look_7_0 = @input.peek( 1 )

      if ( look_7_0 == COMMA )
        alt_7 = 1
      end
      case alt_7
      when 1
        # at line 133:73: COMMA exp
        match( COMMA, TOKENS_FOLLOWING_COMMA_IN_dim_struct_1079 )

        # --> action
         $quads.update_dim() 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_exp_IN_dim_struct_1083 )
        exp
        @state.following.pop

        # --> action
         $quads.generate_limit_quad() 
        # <-- action


      end
      match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_dim_struct_1090 )

      # --> action
       $quads.generate_dim_quads() 
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 7 )


      end

      return 
    end



    #
    # parser rule var_dec
    #
    # (in Hephaestus.g)
    # 136:1: var_dec : DEFINE ID AS type ( ASGN ( super_expression | reading ) )? DOT ;
    #
    def var_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      __ID7__ = nil
      __ASGN9__ = nil
      type8 = nil


      begin
      # at line 137:5: DEFINE ID AS type ( ASGN ( super_expression | reading ) )? DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_var_dec_1105 )
      __ID7__ = match( ID, TOKENS_FOLLOWING_ID_IN_var_dec_1107 )

      # --> action
       $assgn_aux = __ID7__.text
      # <-- action

      match( AS, TOKENS_FOLLOWING_AS_IN_var_dec_1111 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_var_dec_1113 )
      type8 = type
      @state.following.pop

      # --> action
       $program.add_variable(__ID7__.text, ( type8 && @input.to_s( type8.start, type8.stop ) )) 
      # <-- action

      # at line 137:98: ( ASGN ( super_expression | reading ) )?
      alt_9 = 2
      look_9_0 = @input.peek( 1 )

      if ( look_9_0 == ASGN )
        alt_9 = 1
      end
      case alt_9
      when 1
        # at line 137:100: ASGN ( super_expression | reading )
        __ASGN9__ = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_var_dec_1119 )

        # --> action
         $quads.add_id(__ID7__.text, nil) 
        # <-- action


        # --> action
         $quads.add_operator(__ASGN9__.text) 
        # <-- action

        # at line 137:176: ( super_expression | reading )
        alt_8 = 2
        look_8_0 = @input.peek( 1 )

        if ( look_8_0 == BOOL || look_8_0 == FLOAT || look_8_0 == ID || look_8_0 == INTEGER || look_8_0 == LPAR || look_8_0 == STRING )
          alt_8 = 1
        elsif ( look_8_0 == READ )
          alt_8 = 2
        else
          raise NoViableAlternative( "", 8, 0 )

        end
        case alt_8
        when 1
          # at line 137:178: super_expression
          @state.following.push( TOKENS_FOLLOWING_super_expression_IN_var_dec_1127 )
          super_expression
          @state.following.pop

          # --> action
           $quads.assgn_quad() 
          # <-- action


        when 2
          # at line 137:222: reading
          @state.following.push( TOKENS_FOLLOWING_reading_IN_var_dec_1133 )
          reading
          @state.following.pop

          # --> action
           $quads.assgn_read() 
          # <-- action


        end

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_var_dec_1142 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 8 )


      end

      return 
    end



    #
    # parser rule function
    #
    # (in Hephaestus.g)
    # 140:1: function : FUNCTION ( type ) ID parameters COLON ( estatute | var_dec | dim_dec )* ( RETURN super_expression DOT )? R_END FUNCTION ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      __ID10__ = nil
      parameters11 = nil
      type12 = nil


      begin
      # at line 141:5: FUNCTION ( type ) ID parameters COLON ( estatute | var_dec | dim_dec )* ( RETURN super_expression DOT )? R_END FUNCTION
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1155 )
      # at line 141:14: ( type )
      # at line 141:16: type
      @state.following.push( TOKENS_FOLLOWING_type_IN_function_1159 )
      type12 = type
      @state.following.pop

      __ID10__ = match( ID, TOKENS_FOLLOWING_ID_IN_function_1163 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_1165 )
      parameters11 = parameters
      @state.following.pop
      match( COLON, TOKENS_FOLLOWING_COLON_IN_function_1167 )

      # --> action
       $program.add_function(__ID10__.text, ( parameters11 && @input.to_s( parameters11.start, parameters11.stop ) ), ( type12 && @input.to_s( type12.start, type12.stop ) ))
      # <-- action

      # at line 142:43: ( estatute | var_dec | dim_dec )*
      while true # decision 10
        alt_10 = 4
        look_10_0 = @input.peek( 1 )

        if ( look_10_0.between?( ID, IF ) || look_10_0 == PRINT || look_10_0 == WHILE )
          alt_10 = 1
        elsif ( look_10_0 == DEFINE )
          look_10_3 = @input.peek( 2 )

          if ( look_10_3 == ID )
            look_10_4 = @input.peek( 3 )

            if ( look_10_4 == AS )
              look_10_5 = @input.peek( 4 )

              if ( look_10_5 == ID || look_10_5 == R_BOOL || look_10_5.between?( R_FLOAT, R_STRING ) || look_10_5 == VOID )
                look_10_6 = @input.peek( 5 )

                if ( look_10_6 == ASGN || look_10_6 == DOT )
                  alt_10 = 2
                elsif ( look_10_6 == LBRACK )
                  alt_10 = 3

                end

              end

            end

          end

        end
        case alt_10
        when 1
          # at line 142:45: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_function_1215 )
          estatute
          @state.following.pop

        when 2
          # at line 143:45: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_function_1261 )
          var_dec
          @state.following.pop

        when 3
          # at line 144:45: dim_dec
          @state.following.push( TOKENS_FOLLOWING_dim_dec_IN_function_1307 )
          dim_dec
          @state.following.pop

        else
          break # out of loop for decision 10
        end
      end # loop for decision 10

      # at line 145:46: ( RETURN super_expression DOT )?
      alt_11 = 2
      look_11_0 = @input.peek( 1 )

      if ( look_11_0 == RETURN )
        alt_11 = 1
      end
      case alt_11
      when 1
        # at line 145:48: RETURN super_expression DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_function_1356 )
        @state.following.push( TOKENS_FOLLOWING_super_expression_IN_function_1358 )
        super_expression
        @state.following.pop

        # --> action
         $quads.return(__ID10__.text) 
        # <-- action

        match( DOT, TOKENS_FOLLOWING_DOT_IN_function_1362 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_1367 )
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1369 )

      # --> action
       $quads.end_function()
      # <-- action


      # --> action
       $program.reset_context() 
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 9 )


      end

      return 
    end

    ParametersReturnValue = define_return_scope

    #
    # parser rule parameters
    #
    # (in Hephaestus.g)
    # 148:1: parameters : LPAR ( type ID ( COMMA type ID )* )? RPAR ;
    #
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      return_value = ParametersReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 149:5: LPAR ( type ID ( COMMA type ID )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_parameters_1386 )
      # at line 149:10: ( type ID ( COMMA type ID )* )?
      alt_13 = 2
      look_13_0 = @input.peek( 1 )

      if ( look_13_0 == ID || look_13_0 == R_BOOL || look_13_0.between?( R_FLOAT, R_STRING ) || look_13_0 == VOID )
        alt_13 = 1
      end
      case alt_13
      when 1
        # at line 149:12: type ID ( COMMA type ID )*
        @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1390 )
        type
        @state.following.pop
        match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1392 )
        # at line 149:20: ( COMMA type ID )*
        while true # decision 12
          alt_12 = 2
          look_12_0 = @input.peek( 1 )

          if ( look_12_0 == COMMA )
            alt_12 = 1

          end
          case alt_12
          when 1
            # at line 149:22: COMMA type ID
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_parameters_1396 )
            @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1398 )
            type
            @state.following.pop
            match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1400 )

          else
            break # out of loop for decision 12
          end
        end # loop for decision 12


      end
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_parameters_1408 )

      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 10 )


      end

      return return_value
    end



    #
    # parser rule estatute
    #
    # (in Hephaestus.g)
    # 152:1: estatute : ( assignment | condition | while_loop | writing | method_call DOT | func_call DOT );
    #
    def estatute
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      begin
      # at line 153:3: ( assignment | condition | while_loop | writing | method_call DOT | func_call DOT )
      alt_14 = 6
      case look_14 = @input.peek( 1 )
      when ID then case look_14 = @input.peek( 2 )
      when ASGN, LBRACK then alt_14 = 1
      when OBJ then alt_14 = 5
      when LPAR then alt_14 = 6
      else
        raise NoViableAlternative( "", 14, 1 )

      end
      when IF then alt_14 = 2
      when WHILE then alt_14 = 3
      when PRINT then alt_14 = 4
      else
        raise NoViableAlternative( "", 14, 0 )

      end
      case alt_14
      when 1
        # at line 153:5: assignment
        @state.following.push( TOKENS_FOLLOWING_assignment_IN_estatute_1421 )
        assignment
        @state.following.pop

      when 2
        # at line 154:5: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatute_1427 )
        condition
        @state.following.pop

      when 3
        # at line 155:5: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_estatute_1433 )
        while_loop
        @state.following.pop

      when 4
        # at line 156:5: writing
        @state.following.push( TOKENS_FOLLOWING_writing_IN_estatute_1439 )
        writing
        @state.following.pop

      when 5
        # at line 157:5: method_call DOT
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatute_1445 )
        method_call
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_estatute_1447 )

      when 6
        # at line 158:5: func_call DOT
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatute_1453 )
        func_call
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_estatute_1455 )

      end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 11 )


      end

      return 
    end



    #
    # parser rule method_call
    #
    # (in Hephaestus.g)
    # 161:1: method_call : ID OBJ method_call_2 ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      __ID13__ = nil


      begin
      # at line 162:5: ID OBJ method_call_2
      __ID13__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1468 )

      # --> action
      $method_aux = __ID13__.text
      # <-- action

      match( OBJ, TOKENS_FOLLOWING_OBJ_IN_method_call_1472 )
      @state.following.push( TOKENS_FOLLOWING_method_call_2_IN_method_call_1474 )
      method_call_2
      @state.following.pop

      # --> action
       $quads.get_return_value() 
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 12 )


      end

      return 
    end



    #
    # parser rule method_call_2
    #
    # (in Hephaestus.g)
    # 165:1: method_call_2 : ID method_call_parameters ;
    #
    def method_call_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      __ID14__ = nil


      begin
      # at line 166:5: ID method_call_parameters
      __ID14__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_2_1489 )

      # --> action
       $func_aux = __ID14__.text 
      # <-- action


      # --> action
       $quads.method_exists?($method_aux, __ID14__.text) 
      # <-- action


      # --> action
       $quads.era_method($method_aux, __ID14__.text) 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_method_call_parameters_IN_method_call_2_1497 )
      method_call_parameters
      @state.following.pop

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 13 )


      end

      return 
    end



    #
    # parser rule method_call_parameters
    #
    # (in Hephaestus.g)
    # 169:1: method_call_parameters : LPAR ( ( super_expression ) ( COMMA ( super_expression ) )* )? RPAR ;
    #
    def method_call_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      begin
      # at line 170:5: LPAR ( ( super_expression ) ( COMMA ( super_expression ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_method_call_parameters_1510 )
      # at line 170:10: ( ( super_expression ) ( COMMA ( super_expression ) )* )?
      alt_16 = 2
      look_16_0 = @input.peek( 1 )

      if ( look_16_0 == BOOL || look_16_0 == FLOAT || look_16_0 == ID || look_16_0 == INTEGER || look_16_0 == LPAR || look_16_0 == STRING )
        alt_16 = 1
      end
      case alt_16
      when 1
        # at line 170:12: ( super_expression ) ( COMMA ( super_expression ) )*
        # at line 170:12: ( super_expression )
        # at line 170:14: super_expression
        @state.following.push( TOKENS_FOLLOWING_super_expression_IN_method_call_parameters_1516 )
        super_expression
        @state.following.pop


        # --> action
         $quads.method_parameter($method_aux ,$func_aux) 
        # <-- action

        # at line 170:88: ( COMMA ( super_expression ) )*
        while true # decision 15
          alt_15 = 2
          look_15_0 = @input.peek( 1 )

          if ( look_15_0 == COMMA )
            alt_15 = 1

          end
          case alt_15
          when 1
            # at line 170:90: COMMA ( super_expression )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_method_call_parameters_1524 )
            # at line 170:96: ( super_expression )
            # at line 170:98: super_expression
            @state.following.push( TOKENS_FOLLOWING_super_expression_IN_method_call_parameters_1528 )
            super_expression
            @state.following.pop


            # --> action
             $quads.method_parameter($method_aux ,$func_aux) 
            # <-- action


          else
            break # out of loop for decision 15
          end
        end # loop for decision 15


      end

      # --> action
       $quads.verify_method_param_count($method_aux ,$func_aux) 
      # <-- action

      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_method_call_parameters_1543 )

      # --> action
       $quads.go_sub_method($method_aux, $func_aux) 
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 14 )


      end

      return 
    end



    #
    # parser rule assignment
    #
    # (in Hephaestus.g)
    # 173:1: assignment : ID ( dim_struct )? ( ASGN ( super_expression | reading ) ) DOT ;
    #
    def assignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      __ID15__ = nil
      __ASGN16__ = nil


      begin
      # at line 174:5: ID ( dim_struct )? ( ASGN ( super_expression | reading ) ) DOT
      __ID15__ = match( ID, TOKENS_FOLLOWING_ID_IN_assignment_1558 )

      # --> action
       $assgn_aux = __ID15__.text
      # <-- action


      # --> action
       $quads.variable_exists?(__ID15__.text) 
      # <-- action


      # --> action
       $quads.add_id(__ID15__.text, nil) 
      # <-- action

      # at line 174:107: ( dim_struct )?
      alt_17 = 2
      look_17_0 = @input.peek( 1 )

      if ( look_17_0 == LBRACK )
        alt_17 = 1
      end
      case alt_17
      when 1
        # at line 174:109: dim_struct
        # --> action
         $dim_aux = __ID15__.text 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_dim_struct_IN_assignment_1570 )
        dim_struct
        @state.following.pop

      end

      # --> action
       $quads.check_dim(__ID15__.text) 
      # <-- action

      # at line 174:180: ( ASGN ( super_expression | reading ) )
      # at line 174:182: ASGN ( super_expression | reading )
      __ASGN16__ = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_1579 )

      # --> action
       $quads.add_operator(__ASGN16__.text) 
      # <-- action

      # at line 174:224: ( super_expression | reading )
      alt_18 = 2
      look_18_0 = @input.peek( 1 )

      if ( look_18_0 == BOOL || look_18_0 == FLOAT || look_18_0 == ID || look_18_0 == INTEGER || look_18_0 == LPAR || look_18_0 == STRING )
        alt_18 = 1
      elsif ( look_18_0 == READ )
        alt_18 = 2
      else
        raise NoViableAlternative( "", 18, 0 )

      end
      case alt_18
      when 1
        # at line 174:226: super_expression
        @state.following.push( TOKENS_FOLLOWING_super_expression_IN_assignment_1585 )
        super_expression
        @state.following.pop

        # --> action
         $quads.assgn_quad() 
        # <-- action


      when 2
        # at line 174:270: reading
        @state.following.push( TOKENS_FOLLOWING_reading_IN_assignment_1591 )
        reading
        @state.following.pop

        # --> action
         $quads.assgn_read() 
        # <-- action


      end

      match( DOT, TOKENS_FOLLOWING_DOT_IN_assignment_1599 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 15 )


      end

      return 
    end



    #
    # parser rule condition
    #
    # (in Hephaestus.g)
    # 177:1: condition : IF LPAR super_expression RPAR COLON ( estatute )* ( ELSE block | R_END ) IF ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      begin
      # at line 178:5: IF LPAR super_expression RPAR COLON ( estatute )* ( ELSE block | R_END ) IF
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1612 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_condition_1614 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_condition_1616 )
      super_expression
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_condition_1618 )

      # --> action
       $quads.gotof() 
      # <-- action

      match( COLON, TOKENS_FOLLOWING_COLON_IN_condition_1622 )
      # at line 178:61: ( estatute )*
      while true # decision 19
        alt_19 = 2
        look_19_0 = @input.peek( 1 )

        if ( look_19_0.between?( ID, IF ) || look_19_0 == PRINT || look_19_0 == WHILE )
          alt_19 = 1

        end
        case alt_19
        when 1
          # at line 178:63: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_condition_1626 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 19
        end
      end # loop for decision 19

      # at line 178:75: ( ELSE block | R_END )
      alt_20 = 2
      look_20_0 = @input.peek( 1 )

      if ( look_20_0 == ELSE )
        alt_20 = 1
      elsif ( look_20_0 == R_END )
        alt_20 = 2
      else
        raise NoViableAlternative( "", 20, 0 )

      end
      case alt_20
      when 1
        # at line 178:77: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_1633 )

        # --> action
         $quads.goto() 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_1637 )
        block
        @state.following.pop

      when 2
        # at line 179:77: R_END
        match( R_END, TOKENS_FOLLOWING_R_END_IN_condition_1715 )

      end

      # --> action
       $quads.fill_program_quad() 
      # <-- action

      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1721 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 16 )


      end

      return 
    end



    #
    # parser rule while_loop
    #
    # (in Hephaestus.g)
    # 182:1: while_loop : WHILE LPAR super_expression RPAR block WHILE ;
    #
    def while_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      begin
      # at line 183:5: WHILE LPAR super_expression RPAR block WHILE
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1734 )

      # --> action
       $quads.add_jump() 
      # <-- action

      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_while_loop_1738 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_while_loop_1740 )
      super_expression
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_while_loop_1742 )

      # --> action
       $quads.gotof() 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_1746 )
      block
      @state.following.pop
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1748 )

      # --> action
       $quads.goto_while()
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 17 )


      end

      return 
    end



    #
    # parser rule block
    #
    # (in Hephaestus.g)
    # 186:1: block : COLON ( estatute )* R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


      begin
      # at line 187:5: COLON ( estatute )* R_END
      match( COLON, TOKENS_FOLLOWING_COLON_IN_block_1763 )
      # at line 187:11: ( estatute )*
      while true # decision 21
        alt_21 = 2
        look_21_0 = @input.peek( 1 )

        if ( look_21_0.between?( ID, IF ) || look_21_0 == PRINT || look_21_0 == WHILE )
          alt_21 = 1

        end
        case alt_21
        when 1
          # at line 187:13: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_block_1767 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 21
        end
      end # loop for decision 21

      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_1773 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 18 )


      end

      return 
    end



    #
    # parser rule reading
    #
    # (in Hephaestus.g)
    # 190:1: reading : READ LPAR RPAR ;
    #
    def reading
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      begin
      # at line 191:5: READ LPAR RPAR
      match( READ, TOKENS_FOLLOWING_READ_IN_reading_1786 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_reading_1788 )

      # --> action
       $quads.read($assgn_aux)
      # <-- action

      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_reading_1792 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 19 )


      end

      return 
    end



    #
    # parser rule writing
    #
    # (in Hephaestus.g)
    # 194:1: writing : PRINT LPAR super_expression RPAR DOT ;
    #
    def writing
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      begin
      # at line 195:5: PRINT LPAR super_expression RPAR DOT
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_writing_1805 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_writing_1807 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_writing_1809 )
      super_expression
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_writing_1811 )

      # --> action
       $quads.write() 
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_writing_1815 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 20 )


      end

      return 
    end



    #
    # parser rule func_call
    #
    # (in Hephaestus.g)
    # 198:1: func_call : ID func_call_parameters ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      __ID17__ = nil


      begin
      # at line 199:5: ID func_call_parameters
      __ID17__ = match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1828 )

      # --> action
       $quads.function_exists?(__ID17__.text) 
      # <-- action


      # --> action
       $func_aux = __ID17__.text 
      # <-- action


      # --> action
       $quads.era(__ID17__.text) 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_func_call_parameters_IN_func_call_1836 )
      func_call_parameters
      @state.following.pop

      # --> action
       $quads.get_return_value() 
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 21 )


      end

      return 
    end



    #
    # parser rule func_call_parameters
    #
    # (in Hephaestus.g)
    # 202:1: func_call_parameters : LPAR ( ( super_expression ) ( COMMA ( super_expression ) )* )? RPAR ;
    #
    def func_call_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


      begin
      # at line 203:5: LPAR ( ( super_expression ) ( COMMA ( super_expression ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_func_call_parameters_1851 )
      # at line 203:10: ( ( super_expression ) ( COMMA ( super_expression ) )* )?
      alt_23 = 2
      look_23_0 = @input.peek( 1 )

      if ( look_23_0 == BOOL || look_23_0 == FLOAT || look_23_0 == ID || look_23_0 == INTEGER || look_23_0 == LPAR || look_23_0 == STRING )
        alt_23 = 1
      end
      case alt_23
      when 1
        # at line 203:12: ( super_expression ) ( COMMA ( super_expression ) )*
        # at line 203:12: ( super_expression )
        # at line 203:14: super_expression
        @state.following.push( TOKENS_FOLLOWING_super_expression_IN_func_call_parameters_1857 )
        super_expression
        @state.following.pop


        # --> action
         $quads.parameter($func_aux) 
        # <-- action

        # at line 203:67: ( COMMA ( super_expression ) )*
        while true # decision 22
          alt_22 = 2
          look_22_0 = @input.peek( 1 )

          if ( look_22_0 == COMMA )
            alt_22 = 1

          end
          case alt_22
          when 1
            # at line 203:69: COMMA ( super_expression )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_func_call_parameters_1865 )
            # at line 203:75: ( super_expression )
            # at line 203:77: super_expression
            @state.following.push( TOKENS_FOLLOWING_super_expression_IN_func_call_parameters_1869 )
            super_expression
            @state.following.pop


            # --> action
             $quads.parameter($func_aux) 
            # <-- action


          else
            break # out of loop for decision 22
          end
        end # loop for decision 22


      end

      # --> action
       $quads.verify_func_param_count($func_aux) 
      # <-- action

      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_func_call_parameters_1884 )

      # --> action
       $quads.go_sub($func_aux) 
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 22 )


      end

      return 
    end



    #
    # parser rule super_expression
    #
    # (in Hephaestus.g)
    # 206:1: super_expression : expression ( ( AND | OR ) expression )? ;
    #
    def super_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )


      __AND18__ = nil
      __OR19__ = nil


      begin
      # at line 207:5: expression ( ( AND | OR ) expression )?
      @state.following.push( TOKENS_FOLLOWING_expression_IN_super_expression_1899 )
      expression
      @state.following.pop
      # at line 207:16: ( ( AND | OR ) expression )?
      alt_25 = 2
      look_25_0 = @input.peek( 1 )

      if ( look_25_0 == AND || look_25_0 == OR )
        alt_25 = 1
      end
      case alt_25
      when 1
        # at line 207:18: ( AND | OR ) expression
        # at line 207:18: ( AND | OR )
        alt_24 = 2
        look_24_0 = @input.peek( 1 )

        if ( look_24_0 == AND )
          alt_24 = 1
        elsif ( look_24_0 == OR )
          alt_24 = 2
        else
          raise NoViableAlternative( "", 24, 0 )

        end
        case alt_24
        when 1
          # at line 207:20: AND
          __AND18__ = match( AND, TOKENS_FOLLOWING_AND_IN_super_expression_1905 )

          # --> action
           $quads.add_operator(__AND18__.text) 
          # <-- action


        when 2
          # at line 208:20: OR
          __OR19__ = match( OR, TOKENS_FOLLOWING_OR_IN_super_expression_1928 )

          # --> action
           $quads.add_operator(__OR19__.text) 
          # <-- action


        end
        @state.following.push( TOKENS_FOLLOWING_expression_IN_super_expression_1951 )
        expression
        @state.following.pop

        # --> action
         $quads.is_super_expression_pending() 
        # <-- action


      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 23 )


      end

      return 
    end



    #
    # parser rule expression
    #
    # (in Hephaestus.g)
    # 212:1: expression : exp ( ( GREATER | GREATEQ | LESS | LEQ | NEQ | EQ ) exp )? ;
    #
    def expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      __GREATER20__ = nil
      __GREATEQ21__ = nil
      __LESS22__ = nil
      __LEQ23__ = nil
      __NEQ24__ = nil
      __EQ25__ = nil


      begin
      # at line 213:5: exp ( ( GREATER | GREATEQ | LESS | LEQ | NEQ | EQ ) exp )?
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_1985 )
      exp
      @state.following.pop
      # at line 213:9: ( ( GREATER | GREATEQ | LESS | LEQ | NEQ | EQ ) exp )?
      alt_27 = 2
      look_27_0 = @input.peek( 1 )

      if ( look_27_0 == EQ || look_27_0.between?( GREATEQ, GREATER ) || look_27_0.between?( LEQ, LESS ) || look_27_0 == NEQ )
        alt_27 = 1
      end
      case alt_27
      when 1
        # at line 213:11: ( GREATER | GREATEQ | LESS | LEQ | NEQ | EQ ) exp
        # at line 213:11: ( GREATER | GREATEQ | LESS | LEQ | NEQ | EQ )
        alt_26 = 6
        case look_26 = @input.peek( 1 )
        when GREATER then alt_26 = 1
        when GREATEQ then alt_26 = 2
        when LESS then alt_26 = 3
        when LEQ then alt_26 = 4
        when NEQ then alt_26 = 5
        when EQ then alt_26 = 6
        else
          raise NoViableAlternative( "", 26, 0 )

        end
        case alt_26
        when 1
          # at line 213:13: GREATER
          __GREATER20__ = match( GREATER, TOKENS_FOLLOWING_GREATER_IN_expression_1991 )

          # --> action
           $quads.add_operator(__GREATER20__.text) 
          # <-- action


        when 2
          # at line 214:13: GREATEQ
          __GREATEQ21__ = match( GREATEQ, TOKENS_FOLLOWING_GREATEQ_IN_expression_2007 )

          # --> action
           $quads.add_operator(__GREATEQ21__.text) 
          # <-- action


        when 3
          # at line 215:13: LESS
          __LESS22__ = match( LESS, TOKENS_FOLLOWING_LESS_IN_expression_2023 )

          # --> action
           $quads.add_operator(__LESS22__.text) 
          # <-- action


        when 4
          # at line 216:13: LEQ
          __LEQ23__ = match( LEQ, TOKENS_FOLLOWING_LEQ_IN_expression_2039 )

          # --> action
           $quads.add_operator(__LEQ23__.text) 
          # <-- action


        when 5
          # at line 217:13: NEQ
          __NEQ24__ = match( NEQ, TOKENS_FOLLOWING_NEQ_IN_expression_2055 )

          # --> action
           $quads.add_operator(__NEQ24__.text) 
          # <-- action


        when 6
          # at line 218:13: EQ
          __EQ25__ = match( EQ, TOKENS_FOLLOWING_EQ_IN_expression_2071 )

          # --> action
           $quads.add_operator(__EQ25__.text) 
          # <-- action


        end
        @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_2087 )
        exp
        @state.following.pop

        # --> action
         $quads.is_expression_pending() 
        # <-- action


      end

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 24 )


      end

      return 
    end



    #
    # parser rule exp
    #
    # (in Hephaestus.g)
    # 223:1: exp : term ( ( PLUS | MINUS ) term )* ;
    #
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )


      __PLUS26__ = nil
      __MINUS27__ = nil


      begin
      # at line 224:5: term ( ( PLUS | MINUS ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_2115 )
      term
      @state.following.pop
      # at line 224:10: ( ( PLUS | MINUS ) term )*
      while true # decision 29
        alt_29 = 2
        look_29_0 = @input.peek( 1 )

        if ( look_29_0 == MINUS || look_29_0 == PLUS )
          alt_29 = 1

        end
        case alt_29
        when 1
          # at line 224:12: ( PLUS | MINUS ) term
          # at line 224:12: ( PLUS | MINUS )
          alt_28 = 2
          look_28_0 = @input.peek( 1 )

          if ( look_28_0 == PLUS )
            alt_28 = 1
          elsif ( look_28_0 == MINUS )
            alt_28 = 2
          else
            raise NoViableAlternative( "", 28, 0 )

          end
          case alt_28
          when 1
            # at line 224:14: PLUS
            __PLUS26__ = match( PLUS, TOKENS_FOLLOWING_PLUS_IN_exp_2121 )

            # --> action
             $quads.add_operator(__PLUS26__.text) 
            # <-- action


          when 2
            # at line 225:14: MINUS
            __MINUS27__ = match( MINUS, TOKENS_FOLLOWING_MINUS_IN_exp_2138 )

            # --> action
             $quads.add_operator(__MINUS27__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_2155 )
          term
          @state.following.pop

          # --> action
           $quads.is_exp_pending() 
          # <-- action


        else
          break # out of loop for decision 29
        end
      end # loop for decision 29


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 25 )


      end

      return 
    end



    #
    # parser rule term
    #
    # (in Hephaestus.g)
    # 230:1: term : factor ( ( MULT | DIV ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )


      __MULT28__ = nil
      __DIV29__ = nil


      begin
      # at line 231:5: factor ( ( MULT | DIV ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_2184 )
      factor
      @state.following.pop
      # at line 231:12: ( ( MULT | DIV ) factor )*
      while true # decision 31
        alt_31 = 2
        look_31_0 = @input.peek( 1 )

        if ( look_31_0 == DIV || look_31_0 == MULT )
          alt_31 = 1

        end
        case alt_31
        when 1
          # at line 231:14: ( MULT | DIV ) factor
          # at line 231:14: ( MULT | DIV )
          alt_30 = 2
          look_30_0 = @input.peek( 1 )

          if ( look_30_0 == MULT )
            alt_30 = 1
          elsif ( look_30_0 == DIV )
            alt_30 = 2
          else
            raise NoViableAlternative( "", 30, 0 )

          end
          case alt_30
          when 1
            # at line 231:16: MULT
            __MULT28__ = match( MULT, TOKENS_FOLLOWING_MULT_IN_term_2190 )

            # --> action
             $quads.add_operator(__MULT28__.text) 
            # <-- action


          when 2
            # at line 232:16: DIV
            __DIV29__ = match( DIV, TOKENS_FOLLOWING_DIV_IN_term_2209 )

            # --> action
             $quads.add_operator(__DIV29__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_2228 )
          factor
          @state.following.pop

          # --> action
           $quads.is_term_pending() 
          # <-- action


        else
          break # out of loop for decision 31
        end
      end # loop for decision 31


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 26 )


      end

      return 
    end



    #
    # parser rule factor
    #
    # (in Hephaestus.g)
    # 237:1: factor : ( ID ( dim_struct )? | LPAR super_expression RPAR | value | func_call | method_call );
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )


      __ID30__ = nil
      __LPAR31__ = nil
      value32 = nil


      begin
      # at line 238:3: ( ID ( dim_struct )? | LPAR super_expression RPAR | value | func_call | method_call )
      alt_33 = 5
      case look_33 = @input.peek( 1 )
      when ID then case look_33 = @input.peek( 2 )
      when AND, COMMA, DIV, DOT, EQ, GREATEQ, GREATER, LBRACK, LEQ, LESS, MINUS, MULT, NEQ, OR, PLUS, RBRACK, RPAR then alt_33 = 1
      when LPAR then alt_33 = 4
      when OBJ then alt_33 = 5
      else
        raise NoViableAlternative( "", 33, 1 )

      end
      when LPAR then alt_33 = 2
      when BOOL, FLOAT, INTEGER, STRING then alt_33 = 3
      else
        raise NoViableAlternative( "", 33, 0 )

      end
      case alt_33
      when 1
        # at line 238:5: ID ( dim_struct )?
        __ID30__ = match( ID, TOKENS_FOLLOWING_ID_IN_factor_2259 )

        # --> action
         $quads.add_id(__ID30__.text, nil) 
        # <-- action

        # at line 238:42: ( dim_struct )?
        alt_32 = 2
        look_32_0 = @input.peek( 1 )

        if ( look_32_0 == LBRACK )
          alt_32 = 1
        end
        case alt_32
        when 1
          # at line 238:44: dim_struct
          # --> action
           $dim_aux = __ID30__.text 
          # <-- action

          @state.following.push( TOKENS_FOLLOWING_dim_struct_IN_factor_2267 )
          dim_struct
          @state.following.pop

        end

        # --> action
         $quads.check_dim(__ID30__.text) 
        # <-- action


      when 2
        # at line 239:7: LPAR super_expression RPAR
        __LPAR31__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_2280 )

        # --> action
         $quads.add_false_bottom(__LPAR31__.text) 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_super_expression_IN_factor_2284 )
        super_expression
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_2286 )

        # --> action
         $quads.remove_false_bottom() 
        # <-- action


      when 3
        # at line 240:7: value
        @state.following.push( TOKENS_FOLLOWING_value_IN_factor_2296 )
        value32 = value
        @state.following.pop

        # --> action
         $quads.add_id(nil, ( value32 && @input.to_s( value32.start, value32.stop ) )) 
        # <-- action


      when 4
        # at line 241:7: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_factor_2306 )
        func_call
        @state.following.pop

      when 5
        # at line 242:7: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_factor_2314 )
        method_call
        @state.following.pop

      end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 27 )


      end

      return 
    end

    TypeReturnValue = define_return_scope

    #
    # parser rule type
    #
    # (in Hephaestus.g)
    # 245:1: type : ( R_STRING | R_BOOL | R_FLOAT | R_INTEGER | VOID | ID );
    #
    def type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )


      return_value = TypeReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 
      if @input.peek(1) == ID || @input.peek(1) == R_BOOL || @input.peek( 1 ).between?( R_FLOAT, R_STRING ) || @input.peek(1) == VOID
        @input.consume
        @state.error_recovery = false

      else
        mse = MismatchedSet( nil )
        raise mse

      end



      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 28 )


      end

      return return_value
    end

    ValueReturnValue = define_return_scope

    #
    # parser rule value
    #
    # (in Hephaestus.g)
    # 254:1: value : ( STRING | FLOAT | INTEGER | BOOL );
    #
    def value
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )


      return_value = ValueReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 
      if @input.peek(1) == BOOL || @input.peek(1) == FLOAT || @input.peek(1) == INTEGER || @input.peek(1) == STRING
        @input.consume
        @state.error_recovery = false

      else
        mse = MismatchedSet( nil )
        raise mse

      end



      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 29 )


      end

      return return_value
    end



    TOKENS_FOLLOWING_r_class_IN_start_518 = Set[ 16, 35, 41 ]
    TOKENS_FOLLOWING_function_IN_start_526 = Set[ 16, 35 ]
    TOKENS_FOLLOWING_program_IN_start_531 = Set[ 1 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_550 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_r_class_552 = Set[ 8, 19 ]
    TOKENS_FOLLOWING_heritage_IN_r_class_558 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_r_class_562 = Set[ 10, 16, 42 ]
    TOKENS_FOLLOWING_function_IN_r_class_566 = Set[ 10, 16, 42 ]
    TOKENS_FOLLOWING_dim_dec_IN_r_class_641 = Set[ 10, 16, 42 ]
    TOKENS_FOLLOWING_var_dec_IN_r_class_716 = Set[ 10, 16, 42 ]
    TOKENS_FOLLOWING_R_END_IN_r_class_792 = Set[ 41 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_794 = Set[ 1 ]
    TOKENS_FOLLOWING_HER_IN_heritage_811 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_heritage_813 = Set[ 1 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_832 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_program_836 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_program_838 = Set[ 10, 20, 21, 34, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_program_842 = Set[ 10, 20, 21, 34, 42, 48 ]
    TOKENS_FOLLOWING_dim_dec_IN_program_890 = Set[ 10, 20, 21, 34, 42, 48 ]
    TOKENS_FOLLOWING_var_dec_IN_program_938 = Set[ 10, 20, 21, 34, 42, 48 ]
    TOKENS_FOLLOWING_R_END_IN_program_987 = Set[ 35 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_989 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_dim_dec_1004 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_dim_dec_1006 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_dim_dec_1010 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_dim_dec_1012 = Set[ 23 ]
    TOKENS_FOLLOWING_LBRACK_IN_dim_dec_1016 = Set[ 22 ]
    TOKENS_FOLLOWING_INTEGER_IN_dim_dec_1020 = Set[ 9, 36 ]
    TOKENS_FOLLOWING_mat_dim_IN_dim_dec_1026 = Set[ 36 ]
    TOKENS_FOLLOWING_RBRACK_IN_dim_dec_1031 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_dim_dec_1035 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_mat_dim_1050 = Set[ 22 ]
    TOKENS_FOLLOWING_INTEGER_IN_mat_dim_1054 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACK_IN_dim_struct_1069 = Set[ 7, 15, 20, 22, 26, 46 ]
    TOKENS_FOLLOWING_exp_IN_dim_struct_1073 = Set[ 9, 36 ]
    TOKENS_FOLLOWING_COMMA_IN_dim_struct_1079 = Set[ 7, 15, 20, 22, 26, 46 ]
    TOKENS_FOLLOWING_exp_IN_dim_struct_1083 = Set[ 36 ]
    TOKENS_FOLLOWING_RBRACK_IN_dim_struct_1090 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_var_dec_1105 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_var_dec_1107 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_var_dec_1111 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_var_dec_1113 = Set[ 6, 12 ]
    TOKENS_FOLLOWING_ASGN_IN_var_dec_1119 = Set[ 7, 15, 20, 22, 26, 37, 46 ]
    TOKENS_FOLLOWING_super_expression_IN_var_dec_1127 = Set[ 12 ]
    TOKENS_FOLLOWING_reading_IN_var_dec_1133 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_var_dec_1142 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1155 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_function_1159 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_function_1163 = Set[ 26 ]
    TOKENS_FOLLOWING_parameters_IN_function_1165 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_function_1167 = Set[ 10, 20, 21, 34, 38, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_function_1215 = Set[ 10, 20, 21, 34, 38, 42, 48 ]
    TOKENS_FOLLOWING_var_dec_IN_function_1261 = Set[ 10, 20, 21, 34, 38, 42, 48 ]
    TOKENS_FOLLOWING_dim_dec_IN_function_1307 = Set[ 10, 20, 21, 34, 38, 42, 48 ]
    TOKENS_FOLLOWING_RETURN_IN_function_1356 = Set[ 7, 15, 20, 22, 26, 46 ]
    TOKENS_FOLLOWING_super_expression_IN_function_1358 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_function_1362 = Set[ 42 ]
    TOKENS_FOLLOWING_R_END_IN_function_1367 = Set[ 16 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1369 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_parameters_1386 = Set[ 20, 39, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_parameters_1390 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1392 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_parameters_1396 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_parameters_1398 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1400 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_parameters_1408 = Set[ 1 ]
    TOKENS_FOLLOWING_assignment_IN_estatute_1421 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatute_1427 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_estatute_1433 = Set[ 1 ]
    TOKENS_FOLLOWING_writing_IN_estatute_1439 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatute_1445 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_estatute_1447 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatute_1453 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_estatute_1455 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1468 = Set[ 31 ]
    TOKENS_FOLLOWING_OBJ_IN_method_call_1472 = Set[ 20 ]
    TOKENS_FOLLOWING_method_call_2_IN_method_call_1474 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_2_1489 = Set[ 26 ]
    TOKENS_FOLLOWING_method_call_parameters_IN_method_call_2_1497 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_method_call_parameters_1510 = Set[ 7, 15, 20, 22, 26, 39, 46 ]
    TOKENS_FOLLOWING_super_expression_IN_method_call_parameters_1516 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_method_call_parameters_1524 = Set[ 7, 15, 20, 22, 26, 46 ]
    TOKENS_FOLLOWING_super_expression_IN_method_call_parameters_1528 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_method_call_parameters_1543 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_assignment_1558 = Set[ 6, 23 ]
    TOKENS_FOLLOWING_dim_struct_IN_assignment_1570 = Set[ 6 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_1579 = Set[ 7, 15, 20, 22, 26, 37, 46 ]
    TOKENS_FOLLOWING_super_expression_IN_assignment_1585 = Set[ 12 ]
    TOKENS_FOLLOWING_reading_IN_assignment_1591 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_assignment_1599 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_1612 = Set[ 26 ]
    TOKENS_FOLLOWING_LPAR_IN_condition_1614 = Set[ 7, 15, 20, 22, 26, 46 ]
    TOKENS_FOLLOWING_super_expression_IN_condition_1616 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_condition_1618 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_condition_1622 = Set[ 13, 20, 21, 34, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_condition_1626 = Set[ 13, 20, 21, 34, 42, 48 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_1633 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_condition_1637 = Set[ 21 ]
    TOKENS_FOLLOWING_R_END_IN_condition_1715 = Set[ 21 ]
    TOKENS_FOLLOWING_IF_IN_condition_1721 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1734 = Set[ 26 ]
    TOKENS_FOLLOWING_LPAR_IN_while_loop_1738 = Set[ 7, 15, 20, 22, 26, 46 ]
    TOKENS_FOLLOWING_super_expression_IN_while_loop_1740 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_while_loop_1742 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_while_loop_1746 = Set[ 48 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1748 = Set[ 1 ]
    TOKENS_FOLLOWING_COLON_IN_block_1763 = Set[ 20, 21, 34, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_block_1767 = Set[ 20, 21, 34, 42, 48 ]
    TOKENS_FOLLOWING_R_END_IN_block_1773 = Set[ 1 ]
    TOKENS_FOLLOWING_READ_IN_reading_1786 = Set[ 26 ]
    TOKENS_FOLLOWING_LPAR_IN_reading_1788 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_reading_1792 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_writing_1805 = Set[ 26 ]
    TOKENS_FOLLOWING_LPAR_IN_writing_1807 = Set[ 7, 15, 20, 22, 26, 46 ]
    TOKENS_FOLLOWING_super_expression_IN_writing_1809 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_writing_1811 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_writing_1815 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1828 = Set[ 26 ]
    TOKENS_FOLLOWING_func_call_parameters_IN_func_call_1836 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_func_call_parameters_1851 = Set[ 7, 15, 20, 22, 26, 39, 46 ]
    TOKENS_FOLLOWING_super_expression_IN_func_call_parameters_1857 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_func_call_parameters_1865 = Set[ 7, 15, 20, 22, 26, 46 ]
    TOKENS_FOLLOWING_super_expression_IN_func_call_parameters_1869 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_func_call_parameters_1884 = Set[ 1 ]
    TOKENS_FOLLOWING_expression_IN_super_expression_1899 = Set[ 1, 4, 32 ]
    TOKENS_FOLLOWING_AND_IN_super_expression_1905 = Set[ 7, 15, 20, 22, 26, 46 ]
    TOKENS_FOLLOWING_OR_IN_super_expression_1928 = Set[ 7, 15, 20, 22, 26, 46 ]
    TOKENS_FOLLOWING_expression_IN_super_expression_1951 = Set[ 1 ]
    TOKENS_FOLLOWING_exp_IN_expression_1985 = Set[ 1, 14, 17, 18, 24, 25, 29 ]
    TOKENS_FOLLOWING_GREATER_IN_expression_1991 = Set[ 7, 15, 20, 22, 26, 46 ]
    TOKENS_FOLLOWING_GREATEQ_IN_expression_2007 = Set[ 7, 15, 20, 22, 26, 46 ]
    TOKENS_FOLLOWING_LESS_IN_expression_2023 = Set[ 7, 15, 20, 22, 26, 46 ]
    TOKENS_FOLLOWING_LEQ_IN_expression_2039 = Set[ 7, 15, 20, 22, 26, 46 ]
    TOKENS_FOLLOWING_NEQ_IN_expression_2055 = Set[ 7, 15, 20, 22, 26, 46 ]
    TOKENS_FOLLOWING_EQ_IN_expression_2071 = Set[ 7, 15, 20, 22, 26, 46 ]
    TOKENS_FOLLOWING_exp_IN_expression_2087 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_exp_2115 = Set[ 1, 27, 33 ]
    TOKENS_FOLLOWING_PLUS_IN_exp_2121 = Set[ 7, 15, 20, 22, 26, 46 ]
    TOKENS_FOLLOWING_MINUS_IN_exp_2138 = Set[ 7, 15, 20, 22, 26, 46 ]
    TOKENS_FOLLOWING_term_IN_exp_2155 = Set[ 1, 27, 33 ]
    TOKENS_FOLLOWING_factor_IN_term_2184 = Set[ 1, 11, 28 ]
    TOKENS_FOLLOWING_MULT_IN_term_2190 = Set[ 7, 15, 20, 22, 26, 46 ]
    TOKENS_FOLLOWING_DIV_IN_term_2209 = Set[ 7, 15, 20, 22, 26, 46 ]
    TOKENS_FOLLOWING_factor_IN_term_2228 = Set[ 1, 11, 28 ]
    TOKENS_FOLLOWING_ID_IN_factor_2259 = Set[ 1, 23 ]
    TOKENS_FOLLOWING_dim_struct_IN_factor_2267 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_2280 = Set[ 7, 15, 20, 22, 26, 46 ]
    TOKENS_FOLLOWING_super_expression_IN_factor_2284 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_2286 = Set[ 1 ]
    TOKENS_FOLLOWING_value_IN_factor_2296 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_factor_2306 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_factor_2314 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
