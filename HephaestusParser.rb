#!/usr/bin/env ruby
#
# Hephaestus.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Hephaestus.g
# Generated at: 2017-11-18 15:15:23
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

    RULE_METHODS = [ :start, :r_class, :heritage, :program, :dim_dec, :mat_dim, 
                     :dim_struct, :var_dec, :function, :parameters, :estatute, 
                     :method_call, :method_call_2, :method_call_parameters, 
                     :assignment, :condition, :while_loop, :block, :reading, 
                     :writing, :func_call, :func_call_parameters, :expresion, 
                     :exp, :term, :factor, :type, :value ].freeze

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

    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    #
    # parser rule start
    #
    # (in Hephaestus.g)
    # 100:1: start : ( r_class )* program ;
    #
    def start
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 101:5: ( r_class )* program
      # --> action
       $quads.goto_program() 
      # <-- action

      # at line 101:32: ( r_class )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == R_CLASS )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 101:34: r_class
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
    # 104:1: r_class : R_CLASS ID ( heritage )? COLON ( function | dim_dec | var_dec )* R_END R_CLASS ;
    #
    def r_class
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      __ID1__ = nil


      begin
      # at line 105:5: R_CLASS ID ( heritage )? COLON ( function | dim_dec | var_dec )* R_END R_CLASS
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_520 )
      __ID1__ = match( ID, TOKENS_FOLLOWING_ID_IN_r_class_522 )

      # --> action
       $class_aux = __ID1__.text 
      # <-- action


      # --> action
       $program.add_class(__ID1__.text, nil) 
      # <-- action

      # at line 105:82: ( heritage )?
      alt_2 = 2
      look_2_0 = @input.peek( 1 )

      if ( look_2_0 == HER )
        alt_2 = 1
      end
      case alt_2
      when 1
        # at line 105:82: heritage
        @state.following.push( TOKENS_FOLLOWING_heritage_IN_r_class_528 )
        heritage
        @state.following.pop

      end
      match( COLON, TOKENS_FOLLOWING_COLON_IN_r_class_532 )
      # at line 105:99: ( function | dim_dec | var_dec )*
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

                if ( look_3_6 == ASGN || look_3_6 == DOT )
                  alt_3 = 3
                elsif ( look_3_6 == LBRACK )
                  alt_3 = 2

                end

              end

            end

          end

        end
        case alt_3
        when 1
          # at line 105:101: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_r_class_536 )
          function
          @state.following.pop

        when 2
          # at line 106:74: dim_dec
          @state.following.push( TOKENS_FOLLOWING_dim_dec_IN_r_class_611 )
          dim_dec
          @state.following.pop

        when 3
          # at line 107:74: var_dec
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
    # 111:1: heritage : ( HER ID ) ;
    #
    def heritage
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      __ID2__ = nil


      begin
      # at line 112:5: ( HER ID )
      # at line 112:5: ( HER ID )
      # at line 112:7: HER ID
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
    # 115:1: program : PROGRAM ID COLON ( estatute | dim_dec | var_dec | function )* R_END PROGRAM ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      begin
      # at line 116:5: PROGRAM ID COLON ( estatute | dim_dec | var_dec | function )* R_END PROGRAM
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_802 )

      # --> action
       $quads.fill_program_quad() 
      # <-- action

      match( ID, TOKENS_FOLLOWING_ID_IN_program_806 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_program_808 )
      # at line 116:54: ( estatute | dim_dec | var_dec | function )*
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

              if ( look_4_7 == ASGN || look_4_7 == DOT )
                alt_4 = 3
              elsif ( look_4_7 == LBRACK )
                alt_4 = 2

              end

            end

          end

        end
        when FUNCTION then alt_4 = 4
        end
        case alt_4
        when 1
          # at line 116:56: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_program_812 )
          estatute
          @state.following.pop

        when 2
          # at line 117:47: dim_dec
          @state.following.push( TOKENS_FOLLOWING_dim_dec_IN_program_860 )
          dim_dec
          @state.following.pop

        when 3
          # at line 118:47: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_program_908 )
          var_dec
          @state.following.pop

        when 4
          # at line 119:47: function
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
    # 123:1: dim_dec : DEFINE ID AS type LBRACK INTEGER ( mat_dim )? RBRACK DOT ;
    #
    def dim_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      __ID3__ = nil
      __INTEGER5__ = nil
      type4 = nil


      begin
      # at line 124:5: DEFINE ID AS type LBRACK INTEGER ( mat_dim )? RBRACK DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_dim_dec_1022 )
      __ID3__ = match( ID, TOKENS_FOLLOWING_ID_IN_dim_dec_1024 )

      # --> action
       $dim_aux = __ID3__.text 
      # <-- action

      match( AS, TOKENS_FOLLOWING_AS_IN_dim_dec_1028 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_dim_dec_1030 )
      type4 = type
      @state.following.pop

      # --> action
       $program.add_dim_variable(__ID3__.text, ( type4 && @input.to_s( type4.start, type4.stop ) ), true) 
      # <-- action

      match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_dim_dec_1034 )

      # --> action
       $dim.generate_dim_structure(__ID3__.text) 
      # <-- action

      __INTEGER5__ = match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_dim_dec_1038 )

      # --> action
       $dim.add_limit(__ID3__.text, __INTEGER5__.text) 
      # <-- action

      # at line 124:210: ( mat_dim )?
      alt_5 = 2
      look_5_0 = @input.peek( 1 )

      if ( look_5_0 == COMMA )
        alt_5 = 1
      end
      case alt_5
      when 1
        # at line 124:212: mat_dim
        @state.following.push( TOKENS_FOLLOWING_mat_dim_IN_dim_dec_1044 )
        mat_dim
        @state.following.pop

      end
      match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_dim_dec_1049 )

      # --> action
       $dim.calculate_m(__ID3__.text) 
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_dim_dec_1053 )

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
    # 127:1: mat_dim : COMMA INTEGER ;
    #
    def mat_dim
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      __INTEGER6__ = nil


      begin
      # at line 128:5: COMMA INTEGER
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_mat_dim_1068 )

      # --> action
       $dim.generate_dim_structure($dim_aux) 
      # <-- action

      __INTEGER6__ = match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_mat_dim_1072 )

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
    # 131:1: dim_struct : LBRACK exp ( COMMA exp )? RBRACK ;
    #
    def dim_struct
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      begin
      # at line 132:5: LBRACK exp ( COMMA exp )? RBRACK
      match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_dim_struct_1089 )

      # --> action
       $quads.is_dim() 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_exp_IN_dim_struct_1093 )
      exp
      @state.following.pop

      # --> action
       $quads.generate_limit_quad() 
      # <-- action

      # at line 132:71: ( COMMA exp )?
      alt_6 = 2
      look_6_0 = @input.peek( 1 )

      if ( look_6_0 == COMMA )
        alt_6 = 1
      end
      case alt_6
      when 1
        # at line 132:73: COMMA exp
        match( COMMA, TOKENS_FOLLOWING_COMMA_IN_dim_struct_1099 )

        # --> action
         $quads.update_dim() 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_exp_IN_dim_struct_1103 )
        exp
        @state.following.pop

        # --> action
         $quads.generate_limit_quad() 
        # <-- action


      end
      match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_dim_struct_1110 )

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
    # 135:1: var_dec : DEFINE ID AS type ( ASGN ( expresion | func_call ) )? DOT ;
    #
    def var_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      __ID7__ = nil
      __ASGN9__ = nil
      type8 = nil


      begin
      # at line 136:5: DEFINE ID AS type ( ASGN ( expresion | func_call ) )? DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_var_dec_1125 )
      __ID7__ = match( ID, TOKENS_FOLLOWING_ID_IN_var_dec_1127 )
      match( AS, TOKENS_FOLLOWING_AS_IN_var_dec_1129 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_var_dec_1131 )
      type8 = type
      @state.following.pop

      # --> action
       $program.add_variable(__ID7__.text, ( type8 && @input.to_s( type8.start, type8.stop ) )) 
      # <-- action

      # at line 136:72: ( ASGN ( expresion | func_call ) )?
      alt_8 = 2
      look_8_0 = @input.peek( 1 )

      if ( look_8_0 == ASGN )
        alt_8 = 1
      end
      case alt_8
      when 1
        # at line 136:74: ASGN ( expresion | func_call )
        __ASGN9__ = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_var_dec_1137 )

        # --> action
         $quads.add_id(__ID7__.text, nil) 
        # <-- action


        # --> action
         $quads.add_operator(__ASGN9__.text) 
        # <-- action

        # at line 136:150: ( expresion | func_call )
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
          # at line 136:152: expresion
          @state.following.push( TOKENS_FOLLOWING_expresion_IN_var_dec_1145 )
          expresion
          @state.following.pop

        when 2
          # at line 137:86: func_call
          @state.following.push( TOKENS_FOLLOWING_func_call_IN_var_dec_1233 )
          func_call
          @state.following.pop

        end

        # --> action
         $quads.assgn_quad() 
        # <-- action


      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_var_dec_1326 )

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
    # 141:1: function : FUNCTION ( type ) ID parameters COLON ( estatute | var_dec | dim_dec )* ( RETURN expresion DOT )? R_END FUNCTION ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      __ID10__ = nil
      parameters11 = nil
      type12 = nil


      begin
      # at line 142:5: FUNCTION ( type ) ID parameters COLON ( estatute | var_dec | dim_dec )* ( RETURN expresion DOT )? R_END FUNCTION
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1339 )
      # at line 142:14: ( type )
      # at line 142:16: type
      @state.following.push( TOKENS_FOLLOWING_type_IN_function_1343 )
      type12 = type
      @state.following.pop

      __ID10__ = match( ID, TOKENS_FOLLOWING_ID_IN_function_1347 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_1349 )
      parameters11 = parameters
      @state.following.pop
      match( COLON, TOKENS_FOLLOWING_COLON_IN_function_1351 )

      # --> action
       $program.add_function(__ID10__.text, ( parameters11 && @input.to_s( parameters11.start, parameters11.stop ) ), ( type12 && @input.to_s( type12.start, type12.stop ) ))
      # <-- action

      # at line 143:43: ( estatute | var_dec | dim_dec )*
      while true # decision 9
        alt_9 = 4
        look_9_0 = @input.peek( 1 )

        if ( look_9_0.between?( ID, IF ) || look_9_0 == PRINT || look_9_0 == READ || look_9_0 == WHILE )
          alt_9 = 1
        elsif ( look_9_0 == DEFINE )
          look_9_3 = @input.peek( 2 )

          if ( look_9_3 == ID )
            look_9_4 = @input.peek( 3 )

            if ( look_9_4 == AS )
              look_9_5 = @input.peek( 4 )

              if ( look_9_5 == ID || look_9_5 == R_BOOL || look_9_5.between?( R_FLOAT, R_STRING ) || look_9_5 == VOID )
                look_9_6 = @input.peek( 5 )

                if ( look_9_6 == ASGN || look_9_6 == DOT )
                  alt_9 = 2
                elsif ( look_9_6 == LBRACK )
                  alt_9 = 3

                end

              end

            end

          end

        end
        case alt_9
        when 1
          # at line 143:45: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_function_1399 )
          estatute
          @state.following.pop

        when 2
          # at line 144:45: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_function_1445 )
          var_dec
          @state.following.pop

        when 3
          # at line 145:45: dim_dec
          @state.following.push( TOKENS_FOLLOWING_dim_dec_IN_function_1491 )
          dim_dec
          @state.following.pop

        else
          break # out of loop for decision 9
        end
      end # loop for decision 9

      # at line 146:46: ( RETURN expresion DOT )?
      alt_10 = 2
      look_10_0 = @input.peek( 1 )

      if ( look_10_0 == RETURN )
        alt_10 = 1
      end
      case alt_10
      when 1
        # at line 146:48: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_function_1540 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_function_1542 )
        expresion
        @state.following.pop

        # --> action
         $quads.return() 
        # <-- action

        match( DOT, TOKENS_FOLLOWING_DOT_IN_function_1546 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_1551 )
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1553 )

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
    # 149:1: parameters : LPAR ( type ID ( COMMA type ID )* )? RPAR ;
    #
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      return_value = ParametersReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 150:5: LPAR ( type ID ( COMMA type ID )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_parameters_1570 )
      # at line 150:10: ( type ID ( COMMA type ID )* )?
      alt_12 = 2
      look_12_0 = @input.peek( 1 )

      if ( look_12_0 == ID || look_12_0 == R_BOOL || look_12_0.between?( R_FLOAT, R_STRING ) || look_12_0 == VOID )
        alt_12 = 1
      end
      case alt_12
      when 1
        # at line 150:12: type ID ( COMMA type ID )*
        @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1574 )
        type
        @state.following.pop
        match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1576 )

        # --> action
        # <-- action

        # at line 150:23: ( COMMA type ID )*
        while true # decision 11
          alt_11 = 2
          look_11_0 = @input.peek( 1 )

          if ( look_11_0 == COMMA )
            alt_11 = 1

          end
          case alt_11
          when 1
            # at line 150:25: COMMA type ID
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_parameters_1582 )
            @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1584 )
            type
            @state.following.pop
            match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1586 )

            # --> action
            # <-- action


          else
            break # out of loop for decision 11
          end
        end # loop for decision 11


      end
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_parameters_1595 )

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
    # 153:1: estatute : ( method_call | assignment | condition | while_loop | reading | writing | func_call DOT );
    #
    def estatute
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      begin
      # at line 154:3: ( method_call | assignment | condition | while_loop | reading | writing | func_call DOT )
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
        # at line 154:5: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatute_1608 )
        method_call
        @state.following.pop

      when 2
        # at line 155:5: assignment
        @state.following.push( TOKENS_FOLLOWING_assignment_IN_estatute_1614 )
        assignment
        @state.following.pop

      when 3
        # at line 156:5: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatute_1621 )
        condition
        @state.following.pop

      when 4
        # at line 157:5: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_estatute_1627 )
        while_loop
        @state.following.pop

      when 5
        # at line 158:5: reading
        @state.following.push( TOKENS_FOLLOWING_reading_IN_estatute_1633 )
        reading
        @state.following.pop

      when 6
        # at line 159:5: writing
        @state.following.push( TOKENS_FOLLOWING_writing_IN_estatute_1639 )
        writing
        @state.following.pop

      when 7
        # at line 160:5: func_call DOT
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatute_1645 )
        func_call
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_estatute_1647 )

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
    # 163:1: method_call : ID DOT method_call_2 ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      __ID13__ = nil


      begin
      # at line 164:5: ID DOT method_call_2
      __ID13__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1660 )

      # --> action
      $method_aux = __ID13__.text
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_1664 )
      @state.following.push( TOKENS_FOLLOWING_method_call_2_IN_method_call_1666 )
      method_call_2
      @state.following.pop

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
    # 167:1: method_call_2 : ID method_call_parameters DOT ;
    #
    def method_call_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      __ID14__ = nil


      begin
      # at line 168:5: ID method_call_parameters DOT
      __ID14__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_2_1679 )

      # --> action
       $func_aux = __ID14__.text 
      # <-- action


      # --> action
       $quads.era(__ID14__.text) 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_method_call_parameters_IN_method_call_2_1685 )
      method_call_parameters
      @state.following.pop

      # --> action
       $quads.method_exists?($method_aux, __ID14__.text) 
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_2_1689 )

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
    # 171:1: method_call_parameters : LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR ;
    #
    def method_call_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      begin
      # at line 172:5: LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_method_call_parameters_1702 )
      # at line 172:10: ( ( expresion ) ( COMMA ( expresion ) )* )?
      alt_15 = 2
      look_15_0 = @input.peek( 1 )

      if ( look_15_0 == BOOL || look_15_0 == FLOAT || look_15_0 == ID || look_15_0 == INTEGER || look_15_0 == LPAR || look_15_0 == STRING )
        alt_15 = 1
      end
      case alt_15
      when 1
        # at line 172:12: ( expresion ) ( COMMA ( expresion ) )*
        # at line 172:12: ( expresion )
        # at line 172:14: expresion
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_method_call_parameters_1708 )
        expresion
        @state.following.pop


        # --> action
         $quads.method_parameter($method_aux ,$func_aux) 
        # <-- action

        # at line 172:81: ( COMMA ( expresion ) )*
        while true # decision 14
          alt_14 = 2
          look_14_0 = @input.peek( 1 )

          if ( look_14_0 == COMMA )
            alt_14 = 1

          end
          case alt_14
          when 1
            # at line 172:83: COMMA ( expresion )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_method_call_parameters_1716 )

            # --> action
             $quads.increase_param_index 
            # <-- action

            # at line 172:122: ( expresion )
            # at line 172:124: expresion
            @state.following.push( TOKENS_FOLLOWING_expresion_IN_method_call_parameters_1722 )
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
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_method_call_parameters_1735 )

      # --> action
       $quads.go_sub($func_aux) 
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
    # 175:1: assignment : ID ( dim_struct )? ( ASGN ( expresion | func_call ) ) DOT ;
    #
    def assignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      __ID15__ = nil
      __ASGN16__ = nil


      begin
      # at line 176:5: ID ( dim_struct )? ( ASGN ( expresion | func_call ) ) DOT
      __ID15__ = match( ID, TOKENS_FOLLOWING_ID_IN_assignment_1750 )

      # --> action
       $quads.add_id(__ID15__.text, nil) 
      # <-- action

      # at line 176:42: ( dim_struct )?
      alt_16 = 2
      look_16_0 = @input.peek( 1 )

      if ( look_16_0 == LBRACK )
        alt_16 = 1
      end
      case alt_16
      when 1
        # at line 176:44: dim_struct
        # --> action
         $dim_aux = __ID15__.text 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_dim_struct_IN_assignment_1758 )
        dim_struct
        @state.following.pop

      end
      # at line 176:83: ( ASGN ( expresion | func_call ) )
      # at line 176:85: ASGN ( expresion | func_call )
      __ASGN16__ = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_1765 )

      # --> action
       $quads.add_operator(__ASGN16__.text) 
      # <-- action


      # --> action
       $quads.variable_exists?(__ID15__.text) 
      # <-- action

      # at line 177:15: ( expresion | func_call )
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
        # at line 177:17: expresion
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_assignment_1789 )
        expresion
        @state.following.pop

      when 2
        # at line 178:17: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_assignment_1807 )
        func_call
        @state.following.pop

      end


      # --> action
       $quads.assgn_quad() 
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_assignment_1836 )

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
    # 183:1: condition : IF LPAR expresion RPAR COLON ( estatute )? ( ELSE block | R_END ) IF ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      begin
      # at line 184:5: IF LPAR expresion RPAR COLON ( estatute )? ( ELSE block | R_END ) IF
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1849 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_condition_1851 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_condition_1853 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_condition_1855 )

      # --> action
       $quads.gotof() 
      # <-- action

      match( COLON, TOKENS_FOLLOWING_COLON_IN_condition_1859 )
      # at line 184:54: ( estatute )?
      alt_18 = 2
      look_18_0 = @input.peek( 1 )

      if ( look_18_0.between?( ID, IF ) || look_18_0 == PRINT || look_18_0 == READ || look_18_0 == WHILE )
        alt_18 = 1
      end
      case alt_18
      when 1
        # at line 184:56: estatute
        @state.following.push( TOKENS_FOLLOWING_estatute_IN_condition_1863 )
        estatute
        @state.following.pop

      end
      # at line 184:68: ( ELSE block | R_END )
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
        # at line 184:70: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_1870 )

        # --> action
         $quads.goto() 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_1874 )
        block
        @state.following.pop

      when 2
        # at line 185:96: R_END
        match( R_END, TOKENS_FOLLOWING_R_END_IN_condition_1972 )

      end

      # --> action
       $quads.fill_quad() 
      # <-- action

      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1978 )

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
    # 188:1: while_loop : WHILE LPAR expresion RPAR block WHILE ;
    #
    def while_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      begin
      # at line 189:5: WHILE LPAR expresion RPAR block WHILE
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1992 )

      # --> action
       $quads.add_jump() 
      # <-- action

      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_while_loop_1996 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_while_loop_1998 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_while_loop_2000 )

      # --> action
       $quads.gotof() 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_2004 )
      block
      @state.following.pop
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_2006 )

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
    # 192:1: block : COLON ( estatute )* R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


      begin
      # at line 193:5: COLON ( estatute )* R_END
      match( COLON, TOKENS_FOLLOWING_COLON_IN_block_2021 )
      # at line 193:11: ( estatute )*
      while true # decision 20
        alt_20 = 2
        look_20_0 = @input.peek( 1 )

        if ( look_20_0.between?( ID, IF ) || look_20_0 == PRINT || look_20_0 == READ || look_20_0 == WHILE )
          alt_20 = 1

        end
        case alt_20
        when 1
          # at line 193:13: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_block_2025 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 20
        end
      end # loop for decision 20

      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_2031 )

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
    # 196:1: reading : READ LPAR value COMMA ID RPAR DOT ;
    #
    def reading
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      begin
      # at line 197:5: READ LPAR value COMMA ID RPAR DOT
      match( READ, TOKENS_FOLLOWING_READ_IN_reading_2044 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_reading_2046 )
      @state.following.push( TOKENS_FOLLOWING_value_IN_reading_2048 )
      value
      @state.following.pop
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_reading_2050 )
      match( ID, TOKENS_FOLLOWING_ID_IN_reading_2052 )
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_reading_2054 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_reading_2056 )

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
    # 200:1: writing : PRINT LPAR expresion RPAR DOT ;
    #
    def writing
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      begin
      # at line 201:5: PRINT LPAR expresion RPAR DOT
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_writing_2069 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_writing_2071 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_writing_2073 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_writing_2075 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_writing_2077 )

      # --> action
       $quads.write()
      # <-- action


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
    # 204:1: func_call : ID func_call_parameters ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      __ID17__ = nil


      begin
      # at line 205:5: ID func_call_parameters
      __ID17__ = match( ID, TOKENS_FOLLOWING_ID_IN_func_call_2092 )

      # --> action
       $quads.function_exists?(__ID17__.text) 
      # <-- action


      # --> action
       $func_aux = __ID17__.text 
      # <-- action


      # --> action
       $quads.era(__ID17__.text) 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_func_call_parameters_IN_func_call_2100 )
      func_call_parameters
      @state.following.pop

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
    # 208:1: func_call_parameters : LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR ;
    #
    def func_call_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


      begin
      # at line 209:5: LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_func_call_parameters_2113 )
      # at line 209:10: ( ( expresion ) ( COMMA ( expresion ) )* )?
      alt_22 = 2
      look_22_0 = @input.peek( 1 )

      if ( look_22_0 == BOOL || look_22_0 == FLOAT || look_22_0 == ID || look_22_0 == INTEGER || look_22_0 == LPAR || look_22_0 == STRING )
        alt_22 = 1
      end
      case alt_22
      when 1
        # at line 209:12: ( expresion ) ( COMMA ( expresion ) )*
        # at line 209:12: ( expresion )
        # at line 209:14: expresion
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_func_call_parameters_2119 )
        expresion
        @state.following.pop


        # --> action
         $quads.parameter($func_aux) 
        # <-- action

        # at line 209:60: ( COMMA ( expresion ) )*
        while true # decision 21
          alt_21 = 2
          look_21_0 = @input.peek( 1 )

          if ( look_21_0 == COMMA )
            alt_21 = 1

          end
          case alt_21
          when 1
            # at line 209:62: COMMA ( expresion )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_func_call_parameters_2127 )

            # --> action
             $quads.increase_param_index 
            # <-- action

            # at line 209:101: ( expresion )
            # at line 209:103: expresion
            @state.following.push( TOKENS_FOLLOWING_expresion_IN_func_call_parameters_2133 )
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
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_func_call_parameters_2146 )

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
    # parser rule expresion
    #
    # (in Hephaestus.g)
    # 212:1: expresion : exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )? ;
    #
    def expresion
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )


      __GREATER18__ = nil
      __LESS19__ = nil
      __NEQ20__ = nil
      __EQ21__ = nil
      __AND22__ = nil
      __OR23__ = nil


      begin
      # at line 213:5: exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_2161 )
      exp
      @state.following.pop
      # at line 213:9: ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      alt_24 = 2
      look_24_0 = @input.peek( 1 )

      if ( look_24_0 == AND || look_24_0 == EQ || look_24_0 == GREATER || look_24_0 == LESS || look_24_0 == NEQ || look_24_0 == OR )
        alt_24 = 1
      end
      case alt_24
      when 1
        # at line 213:11: ( GREATER | LESS | NEQ | EQ | AND | OR ) exp
        # at line 213:11: ( GREATER | LESS | NEQ | EQ | AND | OR )
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
          # at line 213:13: GREATER
          __GREATER18__ = match( GREATER, TOKENS_FOLLOWING_GREATER_IN_expresion_2167 )

          # --> action
           $quads.add_operator(__GREATER18__.text) 
          # <-- action


        when 2
          # at line 214:13: LESS
          __LESS19__ = match( LESS, TOKENS_FOLLOWING_LESS_IN_expresion_2183 )

          # --> action
           $quads.add_operator(__LESS19__.text) 
          # <-- action


        when 3
          # at line 215:13: NEQ
          __NEQ20__ = match( NEQ, TOKENS_FOLLOWING_NEQ_IN_expresion_2199 )

          # --> action
           $quads.add_operator(__NEQ20__.text) 
          # <-- action


        when 4
          # at line 216:13: EQ
          __EQ21__ = match( EQ, TOKENS_FOLLOWING_EQ_IN_expresion_2215 )

          # --> action
           $quads.add_operator(__EQ21__.text) 
          # <-- action


        when 5
          # at line 217:13: AND
          __AND22__ = match( AND, TOKENS_FOLLOWING_AND_IN_expresion_2231 )

          # --> action
           $quads.add_operator(__AND22__.text) 
          # <-- action


        when 6
          # at line 218:13: OR
          __OR23__ = match( OR, TOKENS_FOLLOWING_OR_IN_expresion_2247 )

          # --> action
           $quads.add_operator(__OR23__.text) 
          # <-- action


        end
        @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_2263 )
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
        # trace_out( __method__, 23 )


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
      # trace_in( __method__, 24 )


      __PLUS24__ = nil
      __MINUS25__ = nil


      begin
      # at line 224:5: term ( ( PLUS | MINUS ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_2289 )
      term
      @state.following.pop
      # at line 224:10: ( ( PLUS | MINUS ) term )*
      while true # decision 26
        alt_26 = 2
        look_26_0 = @input.peek( 1 )

        if ( look_26_0 == MINUS || look_26_0 == PLUS )
          alt_26 = 1

        end
        case alt_26
        when 1
          # at line 224:12: ( PLUS | MINUS ) term
          # at line 224:12: ( PLUS | MINUS )
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
            # at line 224:14: PLUS
            __PLUS24__ = match( PLUS, TOKENS_FOLLOWING_PLUS_IN_exp_2295 )

            # --> action
             $quads.add_operator(__PLUS24__.text) 
            # <-- action


          when 2
            # at line 225:14: MINUS
            __MINUS25__ = match( MINUS, TOKENS_FOLLOWING_MINUS_IN_exp_2312 )

            # --> action
             $quads.add_operator(__MINUS25__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_2329 )
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
        # trace_out( __method__, 24 )


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
      # trace_in( __method__, 25 )


      __MULT26__ = nil
      __DIV27__ = nil


      begin
      # at line 231:5: factor ( ( MULT | DIV ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_2356 )
      factor
      @state.following.pop
      # at line 231:12: ( ( MULT | DIV ) factor )*
      while true # decision 28
        alt_28 = 2
        look_28_0 = @input.peek( 1 )

        if ( look_28_0 == DIV || look_28_0 == MULT )
          alt_28 = 1

        end
        case alt_28
        when 1
          # at line 231:14: ( MULT | DIV ) factor
          # at line 231:14: ( MULT | DIV )
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
            # at line 231:16: MULT
            __MULT26__ = match( MULT, TOKENS_FOLLOWING_MULT_IN_term_2362 )

            # --> action
             $quads.add_operator(__MULT26__.text) 
            # <-- action


          when 2
            # at line 232:16: DIV
            __DIV27__ = match( DIV, TOKENS_FOLLOWING_DIV_IN_term_2381 )

            # --> action
             $quads.add_operator(__DIV27__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_2400 )
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
        # trace_out( __method__, 25 )


      end

      return 
    end



    #
    # parser rule factor
    #
    # (in Hephaestus.g)
    # 237:1: factor : ( ID ( dim_struct )? | LPAR expresion RPAR | value );
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )


      __ID28__ = nil
      __LPAR29__ = nil
      value30 = nil


      begin
      # at line 238:3: ( ID ( dim_struct )? | LPAR expresion RPAR | value )
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
        # at line 238:5: ID ( dim_struct )?
        __ID28__ = match( ID, TOKENS_FOLLOWING_ID_IN_factor_2429 )

        # --> action
         $quads.add_id(__ID28__.text, nil) 
        # <-- action

        # at line 238:42: ( dim_struct )?
        alt_29 = 2
        look_29_0 = @input.peek( 1 )

        if ( look_29_0 == LBRACK )
          alt_29 = 1
        end
        case alt_29
        when 1
          # at line 238:44: dim_struct
          # --> action
           $dim_aux = __ID28__.text 
          # <-- action

          @state.following.push( TOKENS_FOLLOWING_dim_struct_IN_factor_2437 )
          dim_struct
          @state.following.pop

        end

      when 2
        # at line 239:7: LPAR expresion RPAR
        __LPAR29__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_2448 )

        # --> action
         $quads.add_false_bottom(__LPAR29__.text) 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_expresion_IN_factor_2452 )
        expresion
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_2454 )

        # --> action
         $quads.remove_false_bottom() 
        # <-- action


      when 3
        # at line 240:7: value
        @state.following.push( TOKENS_FOLLOWING_value_IN_factor_2464 )
        value30 = value
        @state.following.pop

        # --> action
         $quads.add_id(nil, ( value30 && @input.to_s( value30.start, value30.stop ) )) 
        # <-- action


      end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 26 )


      end

      return 
    end

    TypeReturnValue = define_return_scope

    #
    # parser rule type
    #
    # (in Hephaestus.g)
    # 243:1: type : ( R_STRING | R_BOOL | R_FLOAT | R_INTEGER | VOID | ID );
    #
    def type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )


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
        # trace_out( __method__, 27 )


      end

      return return_value
    end

    ValueReturnValue = define_return_scope

    #
    # parser rule value
    #
    # (in Hephaestus.g)
    # 252:1: value : ( STRING | FLOAT | INTEGER | BOOL );
    #
    def value
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )


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
        # trace_out( __method__, 28 )


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
    TOKENS_FOLLOWING_AS_IN_dim_dec_1028 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_dim_dec_1030 = Set[ 24 ]
    TOKENS_FOLLOWING_LBRACK_IN_dim_dec_1034 = Set[ 23 ]
    TOKENS_FOLLOWING_INTEGER_IN_dim_dec_1038 = Set[ 9, 36 ]
    TOKENS_FOLLOWING_mat_dim_IN_dim_dec_1044 = Set[ 36 ]
    TOKENS_FOLLOWING_RBRACK_IN_dim_dec_1049 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_dim_dec_1053 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_mat_dim_1068 = Set[ 23 ]
    TOKENS_FOLLOWING_INTEGER_IN_mat_dim_1072 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACK_IN_dim_struct_1089 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_dim_struct_1093 = Set[ 9, 36 ]
    TOKENS_FOLLOWING_COMMA_IN_dim_struct_1099 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_dim_struct_1103 = Set[ 36 ]
    TOKENS_FOLLOWING_RBRACK_IN_dim_struct_1110 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_var_dec_1125 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_var_dec_1127 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_var_dec_1129 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_var_dec_1131 = Set[ 6, 12 ]
    TOKENS_FOLLOWING_ASGN_IN_var_dec_1137 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_var_dec_1145 = Set[ 12 ]
    TOKENS_FOLLOWING_func_call_IN_var_dec_1233 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_var_dec_1326 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1339 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_function_1343 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_function_1347 = Set[ 27 ]
    TOKENS_FOLLOWING_parameters_IN_function_1349 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_function_1351 = Set[ 10, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_function_1399 = Set[ 10, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_var_dec_IN_function_1445 = Set[ 10, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_dim_dec_IN_function_1491 = Set[ 10, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_RETURN_IN_function_1540 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_function_1542 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_function_1546 = Set[ 42 ]
    TOKENS_FOLLOWING_R_END_IN_function_1551 = Set[ 17 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1553 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_parameters_1570 = Set[ 20, 39, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_parameters_1574 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1576 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_parameters_1582 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_parameters_1584 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1586 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_parameters_1595 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatute_1608 = Set[ 1 ]
    TOKENS_FOLLOWING_assignment_IN_estatute_1614 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatute_1621 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_estatute_1627 = Set[ 1 ]
    TOKENS_FOLLOWING_reading_IN_estatute_1633 = Set[ 1 ]
    TOKENS_FOLLOWING_writing_IN_estatute_1639 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatute_1645 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_estatute_1647 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1660 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_1664 = Set[ 20 ]
    TOKENS_FOLLOWING_method_call_2_IN_method_call_1666 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_2_1679 = Set[ 27 ]
    TOKENS_FOLLOWING_method_call_parameters_IN_method_call_2_1685 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_2_1689 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_method_call_parameters_1702 = Set[ 7, 15, 20, 23, 27, 39, 46 ]
    TOKENS_FOLLOWING_expresion_IN_method_call_parameters_1708 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_method_call_parameters_1716 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_method_call_parameters_1722 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_method_call_parameters_1735 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_assignment_1750 = Set[ 6, 24 ]
    TOKENS_FOLLOWING_dim_struct_IN_assignment_1758 = Set[ 6 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_1765 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_assignment_1789 = Set[ 12 ]
    TOKENS_FOLLOWING_func_call_IN_assignment_1807 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_assignment_1836 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_1849 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_condition_1851 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_condition_1853 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_condition_1855 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_condition_1859 = Set[ 13, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_condition_1863 = Set[ 13, 42 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_1870 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_condition_1874 = Set[ 21 ]
    TOKENS_FOLLOWING_R_END_IN_condition_1972 = Set[ 21 ]
    TOKENS_FOLLOWING_IF_IN_condition_1978 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1992 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_while_loop_1996 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_while_loop_1998 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_while_loop_2000 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_while_loop_2004 = Set[ 48 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_2006 = Set[ 1 ]
    TOKENS_FOLLOWING_COLON_IN_block_2021 = Set[ 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_block_2025 = Set[ 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_R_END_IN_block_2031 = Set[ 1 ]
    TOKENS_FOLLOWING_READ_IN_reading_2044 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_reading_2046 = Set[ 7, 15, 23, 46 ]
    TOKENS_FOLLOWING_value_IN_reading_2048 = Set[ 9 ]
    TOKENS_FOLLOWING_COMMA_IN_reading_2050 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_reading_2052 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_reading_2054 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_reading_2056 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_writing_2069 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_writing_2071 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_writing_2073 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_writing_2075 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_writing_2077 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_2092 = Set[ 27 ]
    TOKENS_FOLLOWING_func_call_parameters_IN_func_call_2100 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_func_call_parameters_2113 = Set[ 7, 15, 20, 23, 27, 39, 46 ]
    TOKENS_FOLLOWING_expresion_IN_func_call_parameters_2119 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_func_call_parameters_2127 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_func_call_parameters_2133 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_func_call_parameters_2146 = Set[ 1 ]
    TOKENS_FOLLOWING_exp_IN_expresion_2161 = Set[ 1, 4, 14, 18, 25, 30, 32 ]
    TOKENS_FOLLOWING_GREATER_IN_expresion_2167 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_LESS_IN_expresion_2183 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_NEQ_IN_expresion_2199 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_EQ_IN_expresion_2215 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_AND_IN_expresion_2231 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_OR_IN_expresion_2247 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_expresion_2263 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_exp_2289 = Set[ 1, 28, 33 ]
    TOKENS_FOLLOWING_PLUS_IN_exp_2295 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_MINUS_IN_exp_2312 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_term_IN_exp_2329 = Set[ 1, 28, 33 ]
    TOKENS_FOLLOWING_factor_IN_term_2356 = Set[ 1, 11, 29 ]
    TOKENS_FOLLOWING_MULT_IN_term_2362 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_DIV_IN_term_2381 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_factor_IN_term_2400 = Set[ 1, 11, 29 ]
    TOKENS_FOLLOWING_ID_IN_factor_2429 = Set[ 1, 24 ]
    TOKENS_FOLLOWING_dim_struct_IN_factor_2437 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_2448 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_factor_2452 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_2454 = Set[ 1 ]
    TOKENS_FOLLOWING_value_IN_factor_2464 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
