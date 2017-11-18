#!/usr/bin/env ruby
#
# Hephaestus.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Hephaestus.g
# Generated at: 2017-11-18 12:15:54
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
                   :DOT => 12, :ELSE => 13, :EQ => 14, :FLOAT => 15, :FOR => 16, 
                   :FUNCTION => 17, :GREATER => 18, :HER => 19, :ID => 20, 
                   :IF => 21, :IN => 22, :INTEGER => 23, :LBRACK => 24, 
                   :LESS => 25, :LETTER => 26, :LPAR => 27, :MINUS => 28, 
                   :MULT => 29, :NEQ => 30, :NEWLINE => 31, :OR => 32, :PLUS => 33, 
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
                    "DIV", "DOT", "ELSE", "EQ", "FLOAT", "FOR", "FUNCTION", 
                    "GREATER", "HER", "ID", "IF", "IN", "INTEGER", "LBRACK", 
                    "LESS", "LETTER", "LPAR", "MINUS", "MULT", "NEQ", "NEWLINE", 
                    "OR", "PLUS", "PRINT", "PROGRAM", "RBRACK", "READ", 
                    "RETURN", "RPAR", "R_BOOL", "R_CLASS", "R_END", "R_FLOAT", 
                    "R_INTEGER", "R_STRING", "STRING", "VOID", "WHILE", 
                    "WS" )


  end


  class Parser < ANTLR3::Parser
    @grammar_home = Hephaestus

    RULE_METHODS = [ :start, :r_class, :heritage, :program, :dim_dec, :dim_struct, 
                     :var_dec, :function, :parameters, :estatute, :method_call, 
                     :method_call_2, :method_call_parameters, :assignment, 
                     :condition, :while_loop, :block, :reading, :writing, 
                     :func_call, :func_call_parameters, :expresion, :exp, 
                     :term, :factor, :type, :value ].freeze

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

    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    #
    # parser rule start
    #
    # (in Hephaestus.g)
    # 99:1: start : ( r_class )* program ;
    #
    def start
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 100:5: ( r_class )* program
      # --> action
       $quads.goto_program() 
      # <-- action

      # at line 100:32: ( r_class )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == R_CLASS )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 100:34: r_class
          @state.following.push( TOKENS_FOLLOWING_r_class_IN_start_502 )
          r_class
          @state.following.pop

        else
          break # out of loop for decision 1
        end
      end # loop for decision 1

      @state.following.push( TOKENS_FOLLOWING_program_IN_start_507 )
      program
      @state.following.pop

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 1 )


      end

      return 
    end



    #
    # parser rule r_class
    #
    # (in Hephaestus.g)
    # 103:1: r_class : R_CLASS ID ( heritage )? COLON ( function | dim_dec | var_dec )* R_END R_CLASS ;
    #
    def r_class
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      __ID1__ = nil


      begin
      # at line 104:5: R_CLASS ID ( heritage )? COLON ( function | dim_dec | var_dec )* R_END R_CLASS
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_520 )
      __ID1__ = match( ID, TOKENS_FOLLOWING_ID_IN_r_class_522 )

      # --> action
       $class_aux = __ID1__.text 
      # <-- action


      # --> action
       $program.add_class(__ID1__.text, nil) 
      # <-- action

      # at line 104:82: ( heritage )?
      alt_2 = 2
      look_2_0 = @input.peek( 1 )

      if ( look_2_0 == HER )
        alt_2 = 1
      end
      case alt_2
      when 1
        # at line 104:82: heritage
        @state.following.push( TOKENS_FOLLOWING_heritage_IN_r_class_528 )
        heritage
        @state.following.pop

      end
      match( COLON, TOKENS_FOLLOWING_COLON_IN_r_class_532 )
      # at line 104:99: ( function | dim_dec | var_dec )*
      while true # decision 3
        alt_3 = 4
        look_3_0 = @input.peek( 1 )

        if ( look_3_0 == FUNCTION )
          alt_3 = 1
        elsif ( look_3_0 == DEFINE )
          look_3_3 = @input.peek( 2 )

          if ( look_3_3 == ID )
            look_3_4 = @input.peek( 3 )

            if ( look_3_4 == AS )
              look_3_5 = @input.peek( 4 )

              if ( look_3_5 == ID || look_3_5 == R_BOOL || look_3_5.between?( R_FLOAT, R_STRING ) || look_3_5 == VOID )
                look_3_6 = @input.peek( 5 )

                if ( look_3_6 == LBRACK )
                  alt_3 = 2
                elsif ( look_3_6 == ASGN || look_3_6 == DOT )
                  alt_3 = 3

                end

              end

            end

          end

        end
        case alt_3
        when 1
          # at line 104:101: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_r_class_536 )
          function
          @state.following.pop

        when 2
          # at line 105:74: dim_dec
          @state.following.push( TOKENS_FOLLOWING_dim_dec_IN_r_class_611 )
          dim_dec
          @state.following.pop

        when 3
          # at line 106:74: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_r_class_686 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 3
        end
      end # loop for decision 3

      match( R_END, TOKENS_FOLLOWING_R_END_IN_r_class_762 )
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_764 )

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
    # 110:1: heritage : ( HER ID ) ;
    #
    def heritage
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      __ID2__ = nil


      begin
      # at line 111:5: ( HER ID )
      # at line 111:5: ( HER ID )
      # at line 111:7: HER ID
      match( HER, TOKENS_FOLLOWING_HER_IN_heritage_781 )
      __ID2__ = match( ID, TOKENS_FOLLOWING_ID_IN_heritage_783 )


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
    # 114:1: program : PROGRAM ID COLON ( estatute | dim_dec | var_dec | function )* R_END PROGRAM ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      begin
      # at line 115:5: PROGRAM ID COLON ( estatute | dim_dec | var_dec | function )* R_END PROGRAM
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_802 )

      # --> action
       $quads.fill_program_quad() 
      # <-- action

      match( ID, TOKENS_FOLLOWING_ID_IN_program_806 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_program_808 )
      # at line 115:54: ( estatute | dim_dec | var_dec | function )*
      while true # decision 4
        alt_4 = 5
        case look_4 = @input.peek( 1 )
        when ID, IF, PRINT, READ, WHILE then alt_4 = 1
        when DEFINE then look_4_3 = @input.peek( 2 )

        if ( look_4_3 == ID )
          look_4_5 = @input.peek( 3 )

          if ( look_4_5 == AS )
            look_4_6 = @input.peek( 4 )

            if ( look_4_6 == ID || look_4_6 == R_BOOL || look_4_6.between?( R_FLOAT, R_STRING ) || look_4_6 == VOID )
              look_4_7 = @input.peek( 5 )

              if ( look_4_7 == LBRACK )
                alt_4 = 2
              elsif ( look_4_7 == ASGN || look_4_7 == DOT )
                alt_4 = 3

              end

            end

          end

        end
        when FUNCTION then alt_4 = 4
        end
        case alt_4
        when 1
          # at line 115:56: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_program_812 )
          estatute
          @state.following.pop

        when 2
          # at line 116:47: dim_dec
          @state.following.push( TOKENS_FOLLOWING_dim_dec_IN_program_860 )
          dim_dec
          @state.following.pop

        when 3
          # at line 117:47: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_program_908 )
          var_dec
          @state.following.pop

        when 4
          # at line 118:47: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_program_956 )
          function
          @state.following.pop

        else
          break # out of loop for decision 4
        end
      end # loop for decision 4

      match( R_END, TOKENS_FOLLOWING_R_END_IN_program_1005 )
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_1007 )

      # --> action
       $program.print_quadruples() 
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
    # 122:1: dim_dec : DEFINE ID AS type LBRACK INTEGER ( COMMA INTEGER )? RBRACK DOT ;
    #
    def dim_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      __ID3__ = nil
      type4 = nil


      begin
      # at line 123:5: DEFINE ID AS type LBRACK INTEGER ( COMMA INTEGER )? RBRACK DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_dim_dec_1022 )
      __ID3__ = match( ID, TOKENS_FOLLOWING_ID_IN_dim_dec_1024 )
      match( AS, TOKENS_FOLLOWING_AS_IN_dim_dec_1026 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_dim_dec_1028 )
      type4 = type
      @state.following.pop
      match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_dim_dec_1030 )

      # --> action
       $program.add_dim_variable(__ID3__.text, ( type4 && @input.to_s( type4.start, type4.stop ) ), true) 
      # <-- action

      match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_dim_dec_1034 )
      # at line 123:97: ( COMMA INTEGER )?
      alt_5 = 2
      look_5_0 = @input.peek( 1 )

      if ( look_5_0 == COMMA )
        alt_5 = 1
      end
      case alt_5
      when 1
        # at line 123:99: COMMA INTEGER
        match( COMMA, TOKENS_FOLLOWING_COMMA_IN_dim_dec_1038 )
        match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_dim_dec_1040 )

      end
      match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_dim_dec_1045 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_dim_dec_1047 )

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
    # parser rule dim_struct
    #
    # (in Hephaestus.g)
    # 126:1: dim_struct : LBRACK exp ( COMMA exp )? RBRACK ;
    #
    def dim_struct
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      begin
      # at line 127:5: LBRACK exp ( COMMA exp )? RBRACK
      match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_dim_struct_1062 )
      @state.following.push( TOKENS_FOLLOWING_exp_IN_dim_struct_1064 )
      exp
      @state.following.pop
      # at line 127:16: ( COMMA exp )?
      alt_6 = 2
      look_6_0 = @input.peek( 1 )

      if ( look_6_0 == COMMA )
        alt_6 = 1
      end
      case alt_6
      when 1
        # at line 127:18: COMMA exp
        match( COMMA, TOKENS_FOLLOWING_COMMA_IN_dim_struct_1068 )
        @state.following.push( TOKENS_FOLLOWING_exp_IN_dim_struct_1070 )
        exp
        @state.following.pop

      end
      match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_dim_struct_1075 )

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
    # parser rule var_dec
    #
    # (in Hephaestus.g)
    # 130:1: var_dec : DEFINE ID AS type ( ASGN ( expresion | func_call ) )? DOT ;
    #
    def var_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      __ID5__ = nil
      __ASGN7__ = nil
      type6 = nil


      begin
      # at line 131:5: DEFINE ID AS type ( ASGN ( expresion | func_call ) )? DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_var_dec_1088 )
      __ID5__ = match( ID, TOKENS_FOLLOWING_ID_IN_var_dec_1090 )
      match( AS, TOKENS_FOLLOWING_AS_IN_var_dec_1092 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_var_dec_1094 )
      type6 = type
      @state.following.pop

      # --> action
       $program.add_variable(__ID5__.text, ( type6 && @input.to_s( type6.start, type6.stop ) )) 
      # <-- action

      # at line 131:72: ( ASGN ( expresion | func_call ) )?
      alt_8 = 2
      look_8_0 = @input.peek( 1 )

      if ( look_8_0 == ASGN )
        alt_8 = 1
      end
      case alt_8
      when 1
        # at line 131:74: ASGN ( expresion | func_call )
        __ASGN7__ = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_var_dec_1100 )

        # --> action
         $quads.add_id(__ID5__.text, nil) 
        # <-- action


        # --> action
         $quads.add_operator(__ASGN7__.text) 
        # <-- action

        # at line 131:150: ( expresion | func_call )
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0 == ID )
          look_7_1 = @input.peek( 2 )

          if ( look_7_1 == AND || look_7_1.between?( DIV, DOT ) || look_7_1 == EQ || look_7_1 == GREATER || look_7_1.between?( LBRACK, LESS ) || look_7_1.between?( MINUS, NEQ ) || look_7_1.between?( OR, PLUS ) )
            alt_7 = 1
          elsif ( look_7_1 == LPAR )
            alt_7 = 2
          else
            raise NoViableAlternative( "", 7, 1 )

          end
        elsif ( look_7_0 == BOOL || look_7_0 == FLOAT || look_7_0 == INTEGER || look_7_0 == LPAR || look_7_0 == STRING )
          alt_7 = 1
        else
          raise NoViableAlternative( "", 7, 0 )

        end
        case alt_7
        when 1
          # at line 131:152: expresion
          @state.following.push( TOKENS_FOLLOWING_expresion_IN_var_dec_1108 )
          expresion
          @state.following.pop

        when 2
          # at line 132:86: func_call
          @state.following.push( TOKENS_FOLLOWING_func_call_IN_var_dec_1196 )
          func_call
          @state.following.pop

        end

        # --> action
         $quads.assgn_quad() 
        # <-- action


      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_var_dec_1289 )

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
    # parser rule function
    #
    # (in Hephaestus.g)
    # 136:1: function : FUNCTION ( type ) ID parameters COLON ( estatute | var_dec )* ( RETURN expresion DOT )? R_END FUNCTION ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      __ID8__ = nil
      parameters9 = nil
      type10 = nil


      begin
      # at line 137:5: FUNCTION ( type ) ID parameters COLON ( estatute | var_dec )* ( RETURN expresion DOT )? R_END FUNCTION
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1302 )
      # at line 137:14: ( type )
      # at line 137:16: type
      @state.following.push( TOKENS_FOLLOWING_type_IN_function_1306 )
      type10 = type
      @state.following.pop

      __ID8__ = match( ID, TOKENS_FOLLOWING_ID_IN_function_1310 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_1312 )
      parameters9 = parameters
      @state.following.pop
      match( COLON, TOKENS_FOLLOWING_COLON_IN_function_1314 )

      # --> action
       $program.add_function(__ID8__.text, ( parameters9 && @input.to_s( parameters9.start, parameters9.stop ) ), ( type10 && @input.to_s( type10.start, type10.stop ) ))
      # <-- action

      # at line 138:43: ( estatute | var_dec )*
      while true # decision 9
        alt_9 = 3
        look_9_0 = @input.peek( 1 )

        if ( look_9_0.between?( ID, IF ) || look_9_0 == PRINT || look_9_0 == READ || look_9_0 == WHILE )
          alt_9 = 1
        elsif ( look_9_0 == DEFINE )
          alt_9 = 2

        end
        case alt_9
        when 1
          # at line 138:45: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_function_1362 )
          estatute
          @state.following.pop

        when 2
          # at line 139:45: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_function_1408 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 9
        end
      end # loop for decision 9

      # at line 140:46: ( RETURN expresion DOT )?
      alt_10 = 2
      look_10_0 = @input.peek( 1 )

      if ( look_10_0 == RETURN )
        alt_10 = 1
      end
      case alt_10
      when 1
        # at line 140:48: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_function_1457 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_function_1459 )
        expresion
        @state.following.pop

        # --> action
         $quads.return() 
        # <-- action

        match( DOT, TOKENS_FOLLOWING_DOT_IN_function_1463 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_1468 )
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1470 )

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
        # trace_out( __method__, 8 )


      end

      return 
    end

    ParametersReturnValue = define_return_scope

    #
    # parser rule parameters
    #
    # (in Hephaestus.g)
    # 143:1: parameters : LPAR ( type ID ( COMMA type ID )* )? RPAR ;
    #
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      return_value = ParametersReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 144:5: LPAR ( type ID ( COMMA type ID )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_parameters_1487 )
      # at line 144:10: ( type ID ( COMMA type ID )* )?
      alt_12 = 2
      look_12_0 = @input.peek( 1 )

      if ( look_12_0 == ID || look_12_0 == R_BOOL || look_12_0.between?( R_FLOAT, R_STRING ) || look_12_0 == VOID )
        alt_12 = 1
      end
      case alt_12
      when 1
        # at line 144:12: type ID ( COMMA type ID )*
        @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1491 )
        type
        @state.following.pop
        match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1493 )

        # --> action
        # <-- action

        # at line 144:23: ( COMMA type ID )*
        while true # decision 11
          alt_11 = 2
          look_11_0 = @input.peek( 1 )

          if ( look_11_0 == COMMA )
            alt_11 = 1

          end
          case alt_11
          when 1
            # at line 144:25: COMMA type ID
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_parameters_1499 )
            @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1501 )
            type
            @state.following.pop
            match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1503 )

            # --> action
            # <-- action


          else
            break # out of loop for decision 11
          end
        end # loop for decision 11


      end
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_parameters_1512 )

      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 9 )


      end

      return return_value
    end



    #
    # parser rule estatute
    #
    # (in Hephaestus.g)
    # 147:1: estatute : ( method_call | assignment | condition | while_loop | reading | writing | func_call DOT );
    #
    def estatute
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      begin
      # at line 148:3: ( method_call | assignment | condition | while_loop | reading | writing | func_call DOT )
      alt_13 = 7
      case look_13 = @input.peek( 1 )
      when ID then case look_13 = @input.peek( 2 )
      when DOT then alt_13 = 1
      when ASGN, LBRACK then alt_13 = 2
      when LPAR then alt_13 = 7
      else
        raise NoViableAlternative( "", 13, 1 )

      end
      when IF then alt_13 = 3
      when WHILE then alt_13 = 4
      when READ then alt_13 = 5
      when PRINT then alt_13 = 6
      else
        raise NoViableAlternative( "", 13, 0 )

      end
      case alt_13
      when 1
        # at line 148:5: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatute_1525 )
        method_call
        @state.following.pop

      when 2
        # at line 149:5: assignment
        @state.following.push( TOKENS_FOLLOWING_assignment_IN_estatute_1531 )
        assignment
        @state.following.pop

      when 3
        # at line 150:5: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatute_1538 )
        condition
        @state.following.pop

      when 4
        # at line 151:5: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_estatute_1544 )
        while_loop
        @state.following.pop

      when 5
        # at line 152:5: reading
        @state.following.push( TOKENS_FOLLOWING_reading_IN_estatute_1550 )
        reading
        @state.following.pop

      when 6
        # at line 153:5: writing
        @state.following.push( TOKENS_FOLLOWING_writing_IN_estatute_1556 )
        writing
        @state.following.pop

      when 7
        # at line 154:5: func_call DOT
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatute_1562 )
        func_call
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_estatute_1564 )

      end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 10 )


      end

      return 
    end



    #
    # parser rule method_call
    #
    # (in Hephaestus.g)
    # 157:1: method_call : ID DOT method_call_2 ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      __ID11__ = nil


      begin
      # at line 158:5: ID DOT method_call_2
      __ID11__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1577 )

      # --> action
      $method_aux = __ID11__.text
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_1581 )
      @state.following.push( TOKENS_FOLLOWING_method_call_2_IN_method_call_1583 )
      method_call_2
      @state.following.pop

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
    # parser rule method_call_2
    #
    # (in Hephaestus.g)
    # 161:1: method_call_2 : ID method_call_parameters DOT ;
    #
    def method_call_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      __ID12__ = nil


      begin
      # at line 162:5: ID method_call_parameters DOT
      __ID12__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_2_1596 )

      # --> action
       $func_aux = __ID12__.text 
      # <-- action


      # --> action
       $quads.era(__ID12__.text) 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_method_call_parameters_IN_method_call_2_1602 )
      method_call_parameters
      @state.following.pop

      # --> action
       $quads.method_exists?($method_aux, __ID12__.text) 
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_2_1606 )

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
    # parser rule method_call_parameters
    #
    # (in Hephaestus.g)
    # 165:1: method_call_parameters : LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR ;
    #
    def method_call_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      begin
      # at line 166:5: LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_method_call_parameters_1619 )
      # at line 166:10: ( ( expresion ) ( COMMA ( expresion ) )* )?
      alt_15 = 2
      look_15_0 = @input.peek( 1 )

      if ( look_15_0 == BOOL || look_15_0 == FLOAT || look_15_0 == ID || look_15_0 == INTEGER || look_15_0 == LPAR || look_15_0 == STRING )
        alt_15 = 1
      end
      case alt_15
      when 1
        # at line 166:12: ( expresion ) ( COMMA ( expresion ) )*
        # at line 166:12: ( expresion )
        # at line 166:14: expresion
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_method_call_parameters_1625 )
        expresion
        @state.following.pop


        # --> action
         $quads.method_parameter($method_aux ,$func_aux) 
        # <-- action

        # at line 166:81: ( COMMA ( expresion ) )*
        while true # decision 14
          alt_14 = 2
          look_14_0 = @input.peek( 1 )

          if ( look_14_0 == COMMA )
            alt_14 = 1

          end
          case alt_14
          when 1
            # at line 166:83: COMMA ( expresion )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_method_call_parameters_1633 )

            # --> action
             $quads.increase_param_index 
            # <-- action

            # at line 166:122: ( expresion )
            # at line 166:124: expresion
            @state.following.push( TOKENS_FOLLOWING_expresion_IN_method_call_parameters_1639 )
            expresion
            @state.following.pop


            # --> action
             $quads.method_parameter($method_aux ,$func_aux) 
            # <-- action


          else
            break # out of loop for decision 14
          end
        end # loop for decision 14


      end
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_method_call_parameters_1652 )

      # --> action
       $quads.go_sub($func_aux) 
      # <-- action


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
    # parser rule assignment
    #
    # (in Hephaestus.g)
    # 169:1: assignment : ID ( dim_struct )? ( ASGN ( expresion | func_call ) ) DOT ;
    #
    def assignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      __ID13__ = nil
      __ASGN14__ = nil


      begin
      # at line 170:5: ID ( dim_struct )? ( ASGN ( expresion | func_call ) ) DOT
      __ID13__ = match( ID, TOKENS_FOLLOWING_ID_IN_assignment_1667 )
      # at line 170:8: ( dim_struct )?
      alt_16 = 2
      look_16_0 = @input.peek( 1 )

      if ( look_16_0 == LBRACK )
        alt_16 = 1
      end
      case alt_16
      when 1
        # at line 170:10: dim_struct
        @state.following.push( TOKENS_FOLLOWING_dim_struct_IN_assignment_1671 )
        dim_struct
        @state.following.pop

      end

      # --> action
       $quads.add_id(__ID13__.text, nil) 
      # <-- action

      # at line 170:58: ( ASGN ( expresion | func_call ) )
      # at line 170:60: ASGN ( expresion | func_call )
      __ASGN14__ = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_1680 )

      # --> action
       $quads.add_operator(__ASGN14__.text) 
      # <-- action


      # --> action
       $quads.variable_exists?(__ID13__.text) 
      # <-- action

      # at line 171:15: ( expresion | func_call )
      alt_17 = 2
      look_17_0 = @input.peek( 1 )

      if ( look_17_0 == ID )
        look_17_1 = @input.peek( 2 )

        if ( look_17_1 == AND || look_17_1.between?( DIV, DOT ) || look_17_1 == EQ || look_17_1 == GREATER || look_17_1.between?( LBRACK, LESS ) || look_17_1.between?( MINUS, NEQ ) || look_17_1.between?( OR, PLUS ) )
          alt_17 = 1
        elsif ( look_17_1 == LPAR )
          alt_17 = 2
        else
          raise NoViableAlternative( "", 17, 1 )

        end
      elsif ( look_17_0 == BOOL || look_17_0 == FLOAT || look_17_0 == INTEGER || look_17_0 == LPAR || look_17_0 == STRING )
        alt_17 = 1
      else
        raise NoViableAlternative( "", 17, 0 )

      end
      case alt_17
      when 1
        # at line 171:17: expresion
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_assignment_1704 )
        expresion
        @state.following.pop

      when 2
        # at line 172:17: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_assignment_1722 )
        func_call
        @state.following.pop

      end


      # --> action
       $quads.assgn_quad() 
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_assignment_1751 )

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
    # parser rule condition
    #
    # (in Hephaestus.g)
    # 177:1: condition : IF LPAR expresion RPAR COLON ( estatute )? ( ELSE block | R_END ) IF ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      begin
      # at line 178:5: IF LPAR expresion RPAR COLON ( estatute )? ( ELSE block | R_END ) IF
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1764 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_condition_1766 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_condition_1768 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_condition_1770 )

      # --> action
       $quads.gotof() 
      # <-- action

      match( COLON, TOKENS_FOLLOWING_COLON_IN_condition_1774 )
      # at line 178:54: ( estatute )?
      alt_18 = 2
      look_18_0 = @input.peek( 1 )

      if ( look_18_0.between?( ID, IF ) || look_18_0 == PRINT || look_18_0 == READ || look_18_0 == WHILE )
        alt_18 = 1
      end
      case alt_18
      when 1
        # at line 178:56: estatute
        @state.following.push( TOKENS_FOLLOWING_estatute_IN_condition_1778 )
        estatute
        @state.following.pop

      end
      # at line 178:68: ( ELSE block | R_END )
      alt_19 = 2
      look_19_0 = @input.peek( 1 )

      if ( look_19_0 == ELSE )
        alt_19 = 1
      elsif ( look_19_0 == R_END )
        alt_19 = 2
      else
        raise NoViableAlternative( "", 19, 0 )

      end
      case alt_19
      when 1
        # at line 178:70: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_1785 )

        # --> action
         $quads.goto() 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_1789 )
        block
        @state.following.pop

      when 2
        # at line 179:96: R_END
        match( R_END, TOKENS_FOLLOWING_R_END_IN_condition_1887 )

      end

      # --> action
       $quads.fill_quad() 
      # <-- action

      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1893 )

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
    # parser rule while_loop
    #
    # (in Hephaestus.g)
    # 182:1: while_loop : WHILE LPAR expresion RPAR block WHILE ;
    #
    def while_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      begin
      # at line 183:5: WHILE LPAR expresion RPAR block WHILE
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1907 )

      # --> action
       $quads.add_jump() 
      # <-- action

      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_while_loop_1911 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_while_loop_1913 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_while_loop_1915 )

      # --> action
       $quads.gotof() 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_1919 )
      block
      @state.following.pop
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1921 )

      # --> action
       $quads.goto_while()
      # <-- action


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
    # parser rule block
    #
    # (in Hephaestus.g)
    # 186:1: block : COLON ( estatute )* R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      begin
      # at line 187:5: COLON ( estatute )* R_END
      match( COLON, TOKENS_FOLLOWING_COLON_IN_block_1936 )
      # at line 187:11: ( estatute )*
      while true # decision 20
        alt_20 = 2
        look_20_0 = @input.peek( 1 )

        if ( look_20_0.between?( ID, IF ) || look_20_0 == PRINT || look_20_0 == READ || look_20_0 == WHILE )
          alt_20 = 1

        end
        case alt_20
        when 1
          # at line 187:13: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_block_1940 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 20
        end
      end # loop for decision 20

      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_1946 )

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
    # parser rule reading
    #
    # (in Hephaestus.g)
    # 190:1: reading : READ LPAR value COMMA ID RPAR DOT ;
    #
    def reading
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


      begin
      # at line 191:5: READ LPAR value COMMA ID RPAR DOT
      match( READ, TOKENS_FOLLOWING_READ_IN_reading_1959 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_reading_1961 )
      @state.following.push( TOKENS_FOLLOWING_value_IN_reading_1963 )
      value
      @state.following.pop
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_reading_1965 )
      match( ID, TOKENS_FOLLOWING_ID_IN_reading_1967 )
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_reading_1969 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_reading_1971 )

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
    # parser rule writing
    #
    # (in Hephaestus.g)
    # 194:1: writing : PRINT LPAR expresion RPAR DOT ;
    #
    def writing
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      begin
      # at line 195:5: PRINT LPAR expresion RPAR DOT
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_writing_1984 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_writing_1986 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_writing_1988 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_writing_1990 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_writing_1992 )

      # --> action
       $quads.write()
      # <-- action


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
    # parser rule func_call
    #
    # (in Hephaestus.g)
    # 198:1: func_call : ID func_call_parameters ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      __ID15__ = nil


      begin
      # at line 199:5: ID func_call_parameters
      __ID15__ = match( ID, TOKENS_FOLLOWING_ID_IN_func_call_2007 )

      # --> action
       $quads.function_exists?(__ID15__.text) 
      # <-- action


      # --> action
       $func_aux = __ID15__.text 
      # <-- action


      # --> action
       $quads.era(__ID15__.text) 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_func_call_parameters_IN_func_call_2015 )
      func_call_parameters
      @state.following.pop

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
    # parser rule func_call_parameters
    #
    # (in Hephaestus.g)
    # 202:1: func_call_parameters : LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR ;
    #
    def func_call_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      begin
      # at line 203:5: LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_func_call_parameters_2028 )
      # at line 203:10: ( ( expresion ) ( COMMA ( expresion ) )* )?
      alt_22 = 2
      look_22_0 = @input.peek( 1 )

      if ( look_22_0 == BOOL || look_22_0 == FLOAT || look_22_0 == ID || look_22_0 == INTEGER || look_22_0 == LPAR || look_22_0 == STRING )
        alt_22 = 1
      end
      case alt_22
      when 1
        # at line 203:12: ( expresion ) ( COMMA ( expresion ) )*
        # at line 203:12: ( expresion )
        # at line 203:14: expresion
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_func_call_parameters_2034 )
        expresion
        @state.following.pop


        # --> action
         $quads.parameter($func_aux) 
        # <-- action

        # at line 203:60: ( COMMA ( expresion ) )*
        while true # decision 21
          alt_21 = 2
          look_21_0 = @input.peek( 1 )

          if ( look_21_0 == COMMA )
            alt_21 = 1

          end
          case alt_21
          when 1
            # at line 203:62: COMMA ( expresion )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_func_call_parameters_2042 )

            # --> action
             $quads.increase_param_index 
            # <-- action

            # at line 203:101: ( expresion )
            # at line 203:103: expresion
            @state.following.push( TOKENS_FOLLOWING_expresion_IN_func_call_parameters_2048 )
            expresion
            @state.following.pop


            # --> action
             $quads.parameter($func_aux) 
            # <-- action


          else
            break # out of loop for decision 21
          end
        end # loop for decision 21


      end
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_func_call_parameters_2061 )

      # --> action
       $quads.go_sub($func_aux) 
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
    # parser rule expresion
    #
    # (in Hephaestus.g)
    # 206:1: expresion : exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )? ;
    #
    def expresion
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


      __GREATER16__ = nil
      __LESS17__ = nil
      __NEQ18__ = nil
      __EQ19__ = nil
      __AND20__ = nil
      __OR21__ = nil


      begin
      # at line 207:5: exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_2076 )
      exp
      @state.following.pop
      # at line 207:9: ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      alt_24 = 2
      look_24_0 = @input.peek( 1 )

      if ( look_24_0 == AND || look_24_0 == EQ || look_24_0 == GREATER || look_24_0 == LESS || look_24_0 == NEQ || look_24_0 == OR )
        alt_24 = 1
      end
      case alt_24
      when 1
        # at line 207:11: ( GREATER | LESS | NEQ | EQ | AND | OR ) exp
        # at line 207:11: ( GREATER | LESS | NEQ | EQ | AND | OR )
        alt_23 = 6
        case look_23 = @input.peek( 1 )
        when GREATER then alt_23 = 1
        when LESS then alt_23 = 2
        when NEQ then alt_23 = 3
        when EQ then alt_23 = 4
        when AND then alt_23 = 5
        when OR then alt_23 = 6
        else
          raise NoViableAlternative( "", 23, 0 )

        end
        case alt_23
        when 1
          # at line 207:13: GREATER
          __GREATER16__ = match( GREATER, TOKENS_FOLLOWING_GREATER_IN_expresion_2082 )

          # --> action
           $quads.add_operator(__GREATER16__.text) 
          # <-- action


        when 2
          # at line 208:13: LESS
          __LESS17__ = match( LESS, TOKENS_FOLLOWING_LESS_IN_expresion_2098 )

          # --> action
           $quads.add_operator(__LESS17__.text) 
          # <-- action


        when 3
          # at line 209:13: NEQ
          __NEQ18__ = match( NEQ, TOKENS_FOLLOWING_NEQ_IN_expresion_2114 )

          # --> action
           $quads.add_operator(__NEQ18__.text) 
          # <-- action


        when 4
          # at line 210:13: EQ
          __EQ19__ = match( EQ, TOKENS_FOLLOWING_EQ_IN_expresion_2130 )

          # --> action
           $quads.add_operator(__EQ19__.text) 
          # <-- action


        when 5
          # at line 211:13: AND
          __AND20__ = match( AND, TOKENS_FOLLOWING_AND_IN_expresion_2146 )

          # --> action
           $quads.add_operator(__AND20__.text) 
          # <-- action


        when 6
          # at line 212:13: OR
          __OR21__ = match( OR, TOKENS_FOLLOWING_OR_IN_expresion_2162 )

          # --> action
           $quads.add_operator(__OR21__.text) 
          # <-- action


        end
        @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_2178 )
        exp
        @state.following.pop

      end

      # --> action
       $quads.is_expresion_pending() 
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
    # parser rule exp
    #
    # (in Hephaestus.g)
    # 217:1: exp : term ( ( PLUS | MINUS ) term )* ;
    #
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )


      __PLUS22__ = nil
      __MINUS23__ = nil


      begin
      # at line 218:5: term ( ( PLUS | MINUS ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_2204 )
      term
      @state.following.pop
      # at line 218:10: ( ( PLUS | MINUS ) term )*
      while true # decision 26
        alt_26 = 2
        look_26_0 = @input.peek( 1 )

        if ( look_26_0 == MINUS || look_26_0 == PLUS )
          alt_26 = 1

        end
        case alt_26
        when 1
          # at line 218:12: ( PLUS | MINUS ) term
          # at line 218:12: ( PLUS | MINUS )
          alt_25 = 2
          look_25_0 = @input.peek( 1 )

          if ( look_25_0 == PLUS )
            alt_25 = 1
          elsif ( look_25_0 == MINUS )
            alt_25 = 2
          else
            raise NoViableAlternative( "", 25, 0 )

          end
          case alt_25
          when 1
            # at line 218:14: PLUS
            __PLUS22__ = match( PLUS, TOKENS_FOLLOWING_PLUS_IN_exp_2210 )

            # --> action
             $quads.add_operator(__PLUS22__.text) 
            # <-- action


          when 2
            # at line 219:14: MINUS
            __MINUS23__ = match( MINUS, TOKENS_FOLLOWING_MINUS_IN_exp_2227 )

            # --> action
             $quads.add_operator(__MINUS23__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_2244 )
          term
          @state.following.pop

        else
          break # out of loop for decision 26
        end
      end # loop for decision 26


      # --> action
       $quads.is_exp_pending() 
      # <-- action


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
    # parser rule term
    #
    # (in Hephaestus.g)
    # 224:1: term : factor ( ( MULT | DIV ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      __MULT24__ = nil
      __DIV25__ = nil


      begin
      # at line 225:5: factor ( ( MULT | DIV ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_2271 )
      factor
      @state.following.pop
      # at line 225:12: ( ( MULT | DIV ) factor )*
      while true # decision 28
        alt_28 = 2
        look_28_0 = @input.peek( 1 )

        if ( look_28_0 == DIV || look_28_0 == MULT )
          alt_28 = 1

        end
        case alt_28
        when 1
          # at line 225:14: ( MULT | DIV ) factor
          # at line 225:14: ( MULT | DIV )
          alt_27 = 2
          look_27_0 = @input.peek( 1 )

          if ( look_27_0 == MULT )
            alt_27 = 1
          elsif ( look_27_0 == DIV )
            alt_27 = 2
          else
            raise NoViableAlternative( "", 27, 0 )

          end
          case alt_27
          when 1
            # at line 225:16: MULT
            __MULT24__ = match( MULT, TOKENS_FOLLOWING_MULT_IN_term_2277 )

            # --> action
             $quads.add_operator(__MULT24__.text) 
            # <-- action


          when 2
            # at line 226:16: DIV
            __DIV25__ = match( DIV, TOKENS_FOLLOWING_DIV_IN_term_2296 )

            # --> action
             $quads.add_operator(__DIV25__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_2315 )
          factor
          @state.following.pop

        else
          break # out of loop for decision 28
        end
      end # loop for decision 28


      # --> action
       $quads.is_term_pending() 
      # <-- action


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
    # parser rule factor
    #
    # (in Hephaestus.g)
    # 231:1: factor : ( ID ( dim_struct )? | LPAR expresion RPAR | value );
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )


      __ID26__ = nil
      __LPAR27__ = nil
      value28 = nil


      begin
      # at line 232:3: ( ID ( dim_struct )? | LPAR expresion RPAR | value )
      alt_30 = 3
      case look_30 = @input.peek( 1 )
      when ID then alt_30 = 1
      when LPAR then alt_30 = 2
      when BOOL, FLOAT, INTEGER, STRING then alt_30 = 3
      else
        raise NoViableAlternative( "", 30, 0 )

      end
      case alt_30
      when 1
        # at line 232:5: ID ( dim_struct )?
        __ID26__ = match( ID, TOKENS_FOLLOWING_ID_IN_factor_2344 )
        # at line 232:8: ( dim_struct )?
        alt_29 = 2
        look_29_0 = @input.peek( 1 )

        if ( look_29_0 == LBRACK )
          alt_29 = 1
        end
        case alt_29
        when 1
          # at line 232:10: dim_struct
          @state.following.push( TOKENS_FOLLOWING_dim_struct_IN_factor_2348 )
          dim_struct
          @state.following.pop

        end

        # --> action
         $quads.add_id(__ID26__.text, nil) 
        # <-- action


      when 2
        # at line 233:7: LPAR expresion RPAR
        __LPAR27__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_2361 )

        # --> action
         $quads.add_false_bottom(__LPAR27__.text) 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_expresion_IN_factor_2365 )
        expresion
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_2367 )

        # --> action
         $quads.remove_false_bottom() 
        # <-- action


      when 3
        # at line 234:7: value
        @state.following.push( TOKENS_FOLLOWING_value_IN_factor_2377 )
        value28 = value
        @state.following.pop

        # --> action
         $quads.add_id(nil, ( value28 && @input.to_s( value28.start, value28.stop ) )) 
        # <-- action


      end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 25 )


      end

      return 
    end

    TypeReturnValue = define_return_scope

    #
    # parser rule type
    #
    # (in Hephaestus.g)
    # 237:1: type : ( R_STRING | R_BOOL | R_FLOAT | R_INTEGER | VOID | ID );
    #
    def type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )


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
        # trace_out( __method__, 26 )


      end

      return return_value
    end

    ValueReturnValue = define_return_scope

    #
    # parser rule value
    #
    # (in Hephaestus.g)
    # 246:1: value : ( STRING | FLOAT | INTEGER | BOOL );
    #
    def value
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )


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
        # trace_out( __method__, 27 )


      end

      return return_value
    end



    TOKENS_FOLLOWING_r_class_IN_start_502 = Set[ 35, 41 ]
    TOKENS_FOLLOWING_program_IN_start_507 = Set[ 1 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_520 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_r_class_522 = Set[ 8, 19 ]
    TOKENS_FOLLOWING_heritage_IN_r_class_528 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_r_class_532 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_function_IN_r_class_536 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_dim_dec_IN_r_class_611 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_var_dec_IN_r_class_686 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_R_END_IN_r_class_762 = Set[ 41 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_764 = Set[ 1 ]
    TOKENS_FOLLOWING_HER_IN_heritage_781 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_heritage_783 = Set[ 1 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_802 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_program_806 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_program_808 = Set[ 10, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_program_812 = Set[ 10, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_dim_dec_IN_program_860 = Set[ 10, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_var_dec_IN_program_908 = Set[ 10, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_function_IN_program_956 = Set[ 10, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_R_END_IN_program_1005 = Set[ 35 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_1007 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_dim_dec_1022 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_dim_dec_1024 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_dim_dec_1026 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_dim_dec_1028 = Set[ 24 ]
    TOKENS_FOLLOWING_LBRACK_IN_dim_dec_1030 = Set[ 23 ]
    TOKENS_FOLLOWING_INTEGER_IN_dim_dec_1034 = Set[ 9, 36 ]
    TOKENS_FOLLOWING_COMMA_IN_dim_dec_1038 = Set[ 23 ]
    TOKENS_FOLLOWING_INTEGER_IN_dim_dec_1040 = Set[ 36 ]
    TOKENS_FOLLOWING_RBRACK_IN_dim_dec_1045 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_dim_dec_1047 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACK_IN_dim_struct_1062 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_dim_struct_1064 = Set[ 9, 36 ]
    TOKENS_FOLLOWING_COMMA_IN_dim_struct_1068 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_dim_struct_1070 = Set[ 36 ]
    TOKENS_FOLLOWING_RBRACK_IN_dim_struct_1075 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_var_dec_1088 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_var_dec_1090 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_var_dec_1092 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_var_dec_1094 = Set[ 6, 12 ]
    TOKENS_FOLLOWING_ASGN_IN_var_dec_1100 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_var_dec_1108 = Set[ 12 ]
    TOKENS_FOLLOWING_func_call_IN_var_dec_1196 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_var_dec_1289 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1302 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_function_1306 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_function_1310 = Set[ 27 ]
    TOKENS_FOLLOWING_parameters_IN_function_1312 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_function_1314 = Set[ 10, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_function_1362 = Set[ 10, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_var_dec_IN_function_1408 = Set[ 10, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_RETURN_IN_function_1457 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_function_1459 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_function_1463 = Set[ 42 ]
    TOKENS_FOLLOWING_R_END_IN_function_1468 = Set[ 17 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1470 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_parameters_1487 = Set[ 20, 39, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_parameters_1491 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1493 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_parameters_1499 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_parameters_1501 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1503 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_parameters_1512 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatute_1525 = Set[ 1 ]
    TOKENS_FOLLOWING_assignment_IN_estatute_1531 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatute_1538 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_estatute_1544 = Set[ 1 ]
    TOKENS_FOLLOWING_reading_IN_estatute_1550 = Set[ 1 ]
    TOKENS_FOLLOWING_writing_IN_estatute_1556 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatute_1562 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_estatute_1564 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1577 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_1581 = Set[ 20 ]
    TOKENS_FOLLOWING_method_call_2_IN_method_call_1583 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_2_1596 = Set[ 27 ]
    TOKENS_FOLLOWING_method_call_parameters_IN_method_call_2_1602 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_2_1606 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_method_call_parameters_1619 = Set[ 7, 15, 20, 23, 27, 39, 46 ]
    TOKENS_FOLLOWING_expresion_IN_method_call_parameters_1625 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_method_call_parameters_1633 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_method_call_parameters_1639 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_method_call_parameters_1652 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_assignment_1667 = Set[ 6, 24 ]
    TOKENS_FOLLOWING_dim_struct_IN_assignment_1671 = Set[ 6 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_1680 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_assignment_1704 = Set[ 12 ]
    TOKENS_FOLLOWING_func_call_IN_assignment_1722 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_assignment_1751 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_1764 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_condition_1766 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_condition_1768 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_condition_1770 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_condition_1774 = Set[ 13, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_condition_1778 = Set[ 13, 42 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_1785 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_condition_1789 = Set[ 21 ]
    TOKENS_FOLLOWING_R_END_IN_condition_1887 = Set[ 21 ]
    TOKENS_FOLLOWING_IF_IN_condition_1893 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1907 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_while_loop_1911 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_while_loop_1913 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_while_loop_1915 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_while_loop_1919 = Set[ 48 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1921 = Set[ 1 ]
    TOKENS_FOLLOWING_COLON_IN_block_1936 = Set[ 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_block_1940 = Set[ 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_R_END_IN_block_1946 = Set[ 1 ]
    TOKENS_FOLLOWING_READ_IN_reading_1959 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_reading_1961 = Set[ 7, 15, 23, 46 ]
    TOKENS_FOLLOWING_value_IN_reading_1963 = Set[ 9 ]
    TOKENS_FOLLOWING_COMMA_IN_reading_1965 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_reading_1967 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_reading_1969 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_reading_1971 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_writing_1984 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_writing_1986 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_writing_1988 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_writing_1990 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_writing_1992 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_2007 = Set[ 27 ]
    TOKENS_FOLLOWING_func_call_parameters_IN_func_call_2015 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_func_call_parameters_2028 = Set[ 7, 15, 20, 23, 27, 39, 46 ]
    TOKENS_FOLLOWING_expresion_IN_func_call_parameters_2034 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_func_call_parameters_2042 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_func_call_parameters_2048 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_func_call_parameters_2061 = Set[ 1 ]
    TOKENS_FOLLOWING_exp_IN_expresion_2076 = Set[ 1, 4, 14, 18, 25, 30, 32 ]
    TOKENS_FOLLOWING_GREATER_IN_expresion_2082 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_LESS_IN_expresion_2098 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_NEQ_IN_expresion_2114 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_EQ_IN_expresion_2130 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_AND_IN_expresion_2146 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_OR_IN_expresion_2162 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_expresion_2178 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_exp_2204 = Set[ 1, 28, 33 ]
    TOKENS_FOLLOWING_PLUS_IN_exp_2210 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_MINUS_IN_exp_2227 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_term_IN_exp_2244 = Set[ 1, 28, 33 ]
    TOKENS_FOLLOWING_factor_IN_term_2271 = Set[ 1, 11, 29 ]
    TOKENS_FOLLOWING_MULT_IN_term_2277 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_DIV_IN_term_2296 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_factor_IN_term_2315 = Set[ 1, 11, 29 ]
    TOKENS_FOLLOWING_ID_IN_factor_2344 = Set[ 1, 24 ]
    TOKENS_FOLLOWING_dim_struct_IN_factor_2348 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_2361 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_factor_2365 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_2367 = Set[ 1 ]
    TOKENS_FOLLOWING_value_IN_factor_2377 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
