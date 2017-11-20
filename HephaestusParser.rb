#!/usr/bin/env ruby
#
# Hephaestus.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Hephaestus.g
# Generated at: 2017-11-19 20:12:06
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
                   :LESS => 25, :LPAR => 26, :MINUS => 27, :MULT => 28, 
                   :NEQ => 29, :NEWLINE => 30, :OR => 31, :PLUS => 32, :PRINT => 33, 
                   :PROGRAM => 34, :RBRACK => 35, :READ => 36, :RETURN => 37, 
                   :RPAR => 38, :R_BOOL => 39, :R_CLASS => 40, :R_END => 41, 
                   :R_FLOAT => 42, :R_INTEGER => 43, :R_STRING => 44, :STRING => 45, 
                   :VOID => 46, :WHILE => 47, :WS => 48 )


    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "AND", "AS", "ASGN", "BOOL", "COLON", "COMMA", "DEFINE", 
                    "DIV", "DOT", "ELSE", "EQ", "FLOAT", "FOR", "FUNCTION", 
                    "GREATER", "HER", "ID", "IF", "IN", "INTEGER", "LBRACK", 
                    "LESS", "LPAR", "MINUS", "MULT", "NEQ", "NEWLINE", "OR", 
                    "PLUS", "PRINT", "PROGRAM", "RBRACK", "READ", "RETURN", 
                    "RPAR", "R_BOOL", "R_CLASS", "R_END", "R_FLOAT", "R_INTEGER", 
                    "R_STRING", "STRING", "VOID", "WHILE", "WS" )


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
    # 99:1: start : ( r_class )* ( function )* program ;
    #
    def start
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 100:5: ( r_class )* ( function )* program
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
          @state.following.push( TOKENS_FOLLOWING_r_class_IN_start_512 )
          r_class
          @state.following.pop

        else
          break # out of loop for decision 1
        end
      end # loop for decision 1

      # at line 100:46: ( function )*
      while true # decision 2
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0 == FUNCTION )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 100:48: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_start_520 )
          function
          @state.following.pop

        else
          break # out of loop for decision 2
        end
      end # loop for decision 2

      @state.following.push( TOKENS_FOLLOWING_program_IN_start_525 )
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
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_538 )
      __ID1__ = match( ID, TOKENS_FOLLOWING_ID_IN_r_class_540 )

      # --> action
       $class_aux = __ID1__.text 
      # <-- action


      # --> action
       $program.add_class(__ID1__.text, nil) 
      # <-- action

      # at line 104:82: ( heritage )?
      alt_3 = 2
      look_3_0 = @input.peek( 1 )

      if ( look_3_0 == HER )
        alt_3 = 1
      end
      case alt_3
      when 1
        # at line 104:82: heritage
        @state.following.push( TOKENS_FOLLOWING_heritage_IN_r_class_546 )
        heritage
        @state.following.pop

      end
      match( COLON, TOKENS_FOLLOWING_COLON_IN_r_class_550 )
      # at line 104:99: ( function | dim_dec | var_dec )*
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

                if ( look_4_6 == ASGN || look_4_6 == DOT )
                  alt_4 = 3
                elsif ( look_4_6 == LBRACK )
                  alt_4 = 2

                end

              end

            end

          end

        end
        case alt_4
        when 1
          # at line 104:101: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_r_class_554 )
          function
          @state.following.pop

        when 2
          # at line 105:74: dim_dec
          @state.following.push( TOKENS_FOLLOWING_dim_dec_IN_r_class_629 )
          dim_dec
          @state.following.pop

        when 3
          # at line 106:74: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_r_class_704 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 4
        end
      end # loop for decision 4

      match( R_END, TOKENS_FOLLOWING_R_END_IN_r_class_780 )
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_782 )

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
      match( HER, TOKENS_FOLLOWING_HER_IN_heritage_799 )
      __ID2__ = match( ID, TOKENS_FOLLOWING_ID_IN_heritage_801 )


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
    # 114:1: program : PROGRAM ID COLON ( estatute | dim_dec | var_dec )* R_END PROGRAM ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      begin
      # at line 115:5: PROGRAM ID COLON ( estatute | dim_dec | var_dec )* R_END PROGRAM
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_820 )

      # --> action
       $quads.fill_program_quad() 
      # <-- action

      match( ID, TOKENS_FOLLOWING_ID_IN_program_824 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_program_826 )
      # at line 115:54: ( estatute | dim_dec | var_dec )*
      while true # decision 5
        alt_5 = 4
        look_5_0 = @input.peek( 1 )

        if ( look_5_0.between?( ID, IF ) || look_5_0 == PRINT || look_5_0 == READ || look_5_0 == WHILE )
          alt_5 = 1
        elsif ( look_5_0 == DEFINE )
          look_5_3 = @input.peek( 2 )

          if ( look_5_3 == ID )
            look_5_4 = @input.peek( 3 )

            if ( look_5_4 == AS )
              look_5_5 = @input.peek( 4 )

              if ( look_5_5 == ID || look_5_5 == R_BOOL || look_5_5.between?( R_FLOAT, R_STRING ) || look_5_5 == VOID )
                look_5_6 = @input.peek( 5 )

                if ( look_5_6 == ASGN || look_5_6 == DOT )
                  alt_5 = 3
                elsif ( look_5_6 == LBRACK )
                  alt_5 = 2

                end

              end

            end

          end

        end
        case alt_5
        when 1
          # at line 115:56: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_program_830 )
          estatute
          @state.following.pop

        when 2
          # at line 116:47: dim_dec
          @state.following.push( TOKENS_FOLLOWING_dim_dec_IN_program_878 )
          dim_dec
          @state.following.pop

        when 3
          # at line 117:47: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_program_926 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 5
        end
      end # loop for decision 5

      match( R_END, TOKENS_FOLLOWING_R_END_IN_program_975 )
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_977 )

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
    # 121:1: dim_dec : DEFINE ID AS type LBRACK INTEGER ( mat_dim )? RBRACK DOT ;
    #
    def dim_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      __ID3__ = nil
      __INTEGER5__ = nil
      type4 = nil


      begin
      # at line 122:5: DEFINE ID AS type LBRACK INTEGER ( mat_dim )? RBRACK DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_dim_dec_992 )
      __ID3__ = match( ID, TOKENS_FOLLOWING_ID_IN_dim_dec_994 )

      # --> action
       $dim_aux = __ID3__.text 
      # <-- action

      match( AS, TOKENS_FOLLOWING_AS_IN_dim_dec_998 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_dim_dec_1000 )
      type4 = type
      @state.following.pop

      # --> action
       $program.add_dim_variable(__ID3__.text, ( type4 && @input.to_s( type4.start, type4.stop ) ), true) 
      # <-- action

      match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_dim_dec_1004 )

      # --> action
       $dim.generate_dim_structure(__ID3__.text) 
      # <-- action

      __INTEGER5__ = match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_dim_dec_1008 )

      # --> action
       $dim.add_limit(__ID3__.text, __INTEGER5__.text) 
      # <-- action

      # at line 122:210: ( mat_dim )?
      alt_6 = 2
      look_6_0 = @input.peek( 1 )

      if ( look_6_0 == COMMA )
        alt_6 = 1
      end
      case alt_6
      when 1
        # at line 122:212: mat_dim
        @state.following.push( TOKENS_FOLLOWING_mat_dim_IN_dim_dec_1014 )
        mat_dim
        @state.following.pop

      end
      match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_dim_dec_1019 )

      # --> action
       $dim.calculate_m(__ID3__.text) 
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_dim_dec_1023 )

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
    # 125:1: mat_dim : COMMA INTEGER ;
    #
    def mat_dim
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      __INTEGER6__ = nil


      begin
      # at line 126:5: COMMA INTEGER
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_mat_dim_1038 )

      # --> action
       $dim.generate_dim_structure($dim_aux) 
      # <-- action

      __INTEGER6__ = match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_mat_dim_1042 )

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
    # 129:1: dim_struct : LBRACK exp ( COMMA exp )? RBRACK ;
    #
    def dim_struct
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      begin
      # at line 130:5: LBRACK exp ( COMMA exp )? RBRACK
      match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_dim_struct_1057 )

      # --> action
       $quads.is_dim() 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_exp_IN_dim_struct_1061 )
      exp
      @state.following.pop

      # --> action
       $quads.generate_limit_quad() 
      # <-- action

      # at line 130:71: ( COMMA exp )?
      alt_7 = 2
      look_7_0 = @input.peek( 1 )

      if ( look_7_0 == COMMA )
        alt_7 = 1
      end
      case alt_7
      when 1
        # at line 130:73: COMMA exp
        match( COMMA, TOKENS_FOLLOWING_COMMA_IN_dim_struct_1067 )

        # --> action
         $quads.update_dim() 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_exp_IN_dim_struct_1071 )
        exp
        @state.following.pop

        # --> action
         $quads.generate_limit_quad() 
        # <-- action


      end
      match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_dim_struct_1078 )

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
    # 133:1: var_dec : DEFINE ID AS type ( ASGN ( expresion ) )? DOT ;
    #
    def var_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      __ID7__ = nil
      __ASGN9__ = nil
      type8 = nil


      begin
      # at line 134:5: DEFINE ID AS type ( ASGN ( expresion ) )? DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_var_dec_1093 )
      __ID7__ = match( ID, TOKENS_FOLLOWING_ID_IN_var_dec_1095 )
      match( AS, TOKENS_FOLLOWING_AS_IN_var_dec_1097 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_var_dec_1099 )
      type8 = type
      @state.following.pop

      # --> action
       $program.add_variable(__ID7__.text, ( type8 && @input.to_s( type8.start, type8.stop ) )) 
      # <-- action

      # at line 134:72: ( ASGN ( expresion ) )?
      alt_8 = 2
      look_8_0 = @input.peek( 1 )

      if ( look_8_0 == ASGN )
        alt_8 = 1
      end
      case alt_8
      when 1
        # at line 134:74: ASGN ( expresion )
        __ASGN9__ = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_var_dec_1105 )

        # --> action
         $quads.add_id(__ID7__.text, nil) 
        # <-- action


        # --> action
         $quads.add_operator(__ASGN9__.text) 
        # <-- action

        # at line 134:150: ( expresion )
        # at line 134:152: expresion
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_var_dec_1113 )
        expresion
        @state.following.pop


        # --> action
         $quads.assgn_quad() 
        # <-- action


      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_var_dec_1122 )

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
    # 137:1: function : FUNCTION ( type ) ID parameters COLON ( estatute | var_dec | dim_dec )* ( RETURN expresion DOT )? R_END FUNCTION ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      __ID10__ = nil
      parameters11 = nil
      type12 = nil


      begin
      # at line 138:5: FUNCTION ( type ) ID parameters COLON ( estatute | var_dec | dim_dec )* ( RETURN expresion DOT )? R_END FUNCTION
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1135 )
      # at line 138:14: ( type )
      # at line 138:16: type
      @state.following.push( TOKENS_FOLLOWING_type_IN_function_1139 )
      type12 = type
      @state.following.pop

      __ID10__ = match( ID, TOKENS_FOLLOWING_ID_IN_function_1143 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_1145 )
      parameters11 = parameters
      @state.following.pop
      match( COLON, TOKENS_FOLLOWING_COLON_IN_function_1147 )

      # --> action
       $program.add_function(__ID10__.text, ( parameters11 && @input.to_s( parameters11.start, parameters11.stop ) ), ( type12 && @input.to_s( type12.start, type12.stop ) ))
      # <-- action

      # at line 139:43: ( estatute | var_dec | dim_dec )*
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
          # at line 139:45: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_function_1195 )
          estatute
          @state.following.pop

        when 2
          # at line 140:45: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_function_1241 )
          var_dec
          @state.following.pop

        when 3
          # at line 141:45: dim_dec
          @state.following.push( TOKENS_FOLLOWING_dim_dec_IN_function_1287 )
          dim_dec
          @state.following.pop

        else
          break # out of loop for decision 9
        end
      end # loop for decision 9

      # at line 142:46: ( RETURN expresion DOT )?
      alt_10 = 2
      look_10_0 = @input.peek( 1 )

      if ( look_10_0 == RETURN )
        alt_10 = 1
      end
      case alt_10
      when 1
        # at line 142:48: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_function_1336 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_function_1338 )
        expresion
        @state.following.pop

        # --> action
         $quads.return(__ID10__.text) 
        # <-- action

        match( DOT, TOKENS_FOLLOWING_DOT_IN_function_1342 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_1347 )
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1349 )

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
    # 145:1: parameters : LPAR ( type ID ( COMMA type ID )* )? RPAR ;
    #
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      return_value = ParametersReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 146:5: LPAR ( type ID ( COMMA type ID )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_parameters_1366 )
      # at line 146:10: ( type ID ( COMMA type ID )* )?
      alt_12 = 2
      look_12_0 = @input.peek( 1 )

      if ( look_12_0 == ID || look_12_0 == R_BOOL || look_12_0.between?( R_FLOAT, R_STRING ) || look_12_0 == VOID )
        alt_12 = 1
      end
      case alt_12
      when 1
        # at line 146:12: type ID ( COMMA type ID )*
        @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1370 )
        type
        @state.following.pop
        match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1372 )
        # at line 146:20: ( COMMA type ID )*
        while true # decision 11
          alt_11 = 2
          look_11_0 = @input.peek( 1 )

          if ( look_11_0 == COMMA )
            alt_11 = 1

          end
          case alt_11
          when 1
            # at line 146:22: COMMA type ID
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_parameters_1376 )
            @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1378 )
            type
            @state.following.pop
            match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1380 )

          else
            break # out of loop for decision 11
          end
        end # loop for decision 11


      end
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_parameters_1388 )

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
    # 149:1: estatute : ( method_call | assignment | condition | while_loop | reading | writing | func_call DOT );
    #
    def estatute
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      begin
      # at line 150:3: ( method_call | assignment | condition | while_loop | reading | writing | func_call DOT )
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
        # at line 150:5: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatute_1401 )
        method_call
        @state.following.pop

      when 2
        # at line 151:5: assignment
        @state.following.push( TOKENS_FOLLOWING_assignment_IN_estatute_1407 )
        assignment
        @state.following.pop

      when 3
        # at line 152:5: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatute_1413 )
        condition
        @state.following.pop

      when 4
        # at line 153:5: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_estatute_1419 )
        while_loop
        @state.following.pop

      when 5
        # at line 154:5: reading
        @state.following.push( TOKENS_FOLLOWING_reading_IN_estatute_1425 )
        reading
        @state.following.pop

      when 6
        # at line 155:5: writing
        @state.following.push( TOKENS_FOLLOWING_writing_IN_estatute_1431 )
        writing
        @state.following.pop

      when 7
        # at line 156:5: func_call DOT
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatute_1437 )
        func_call
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_estatute_1439 )

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
    # 159:1: method_call : ID DOT method_call_2 ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      __ID13__ = nil


      begin
      # at line 160:5: ID DOT method_call_2
      __ID13__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1452 )

      # --> action
      $method_aux = __ID13__.text
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_1456 )
      @state.following.push( TOKENS_FOLLOWING_method_call_2_IN_method_call_1458 )
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
    # 163:1: method_call_2 : ID method_call_parameters DOT ;
    #
    def method_call_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      __ID14__ = nil


      begin
      # at line 164:5: ID method_call_parameters DOT
      __ID14__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_2_1473 )

      # --> action
       $func_aux = __ID14__.text 
      # <-- action


      # --> action
       $quads.era_method($method_aux, __ID14__.text) 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_method_call_parameters_IN_method_call_2_1479 )
      method_call_parameters
      @state.following.pop

      # --> action
       $quads.method_exists?($method_aux, __ID14__.text) 
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_2_1483 )

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
    # 167:1: method_call_parameters : LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR ;
    #
    def method_call_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      begin
      # at line 168:5: LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_method_call_parameters_1496 )
      # at line 168:10: ( ( expresion ) ( COMMA ( expresion ) )* )?
      alt_15 = 2
      look_15_0 = @input.peek( 1 )

      if ( look_15_0 == BOOL || look_15_0 == FLOAT || look_15_0 == ID || look_15_0 == INTEGER || look_15_0 == LPAR || look_15_0 == STRING )
        alt_15 = 1
      end
      case alt_15
      when 1
        # at line 168:12: ( expresion ) ( COMMA ( expresion ) )*
        # at line 168:12: ( expresion )
        # at line 168:14: expresion
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_method_call_parameters_1502 )
        expresion
        @state.following.pop


        # --> action
         $quads.method_parameter($method_aux ,$func_aux) 
        # <-- action

        # at line 168:81: ( COMMA ( expresion ) )*
        while true # decision 14
          alt_14 = 2
          look_14_0 = @input.peek( 1 )

          if ( look_14_0 == COMMA )
            alt_14 = 1

          end
          case alt_14
          when 1
            # at line 168:83: COMMA ( expresion )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_method_call_parameters_1510 )
            # at line 168:89: ( expresion )
            # at line 168:91: expresion
            @state.following.push( TOKENS_FOLLOWING_expresion_IN_method_call_parameters_1514 )
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

      # --> action
       $quads.verify_method_param_count($method_aux ,$func_aux) 
      # <-- action

      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_method_call_parameters_1529 )

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
    # 171:1: assignment : ID ( dim_struct )? ( ASGN ( expresion ) ) DOT ;
    #
    def assignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      __ID15__ = nil
      __ASGN16__ = nil


      begin
      # at line 172:5: ID ( dim_struct )? ( ASGN ( expresion ) ) DOT
      __ID15__ = match( ID, TOKENS_FOLLOWING_ID_IN_assignment_1544 )

      # --> action
       $quads.add_id(__ID15__.text, nil) 
      # <-- action

      # at line 172:42: ( dim_struct )?
      alt_16 = 2
      look_16_0 = @input.peek( 1 )

      if ( look_16_0 == LBRACK )
        alt_16 = 1
      end
      case alt_16
      when 1
        # at line 172:44: dim_struct
        # --> action
         $dim_aux = __ID15__.text 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_dim_struct_IN_assignment_1552 )
        dim_struct
        @state.following.pop

      end

      # --> action
       $quads.check_dim(__ID15__.text) 
      # <-- action

      # at line 172:115: ( ASGN ( expresion ) )
      # at line 172:117: ASGN ( expresion )
      __ASGN16__ = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_1561 )

      # --> action
       $quads.add_operator(__ASGN16__.text) 
      # <-- action


      # --> action
       $quads.variable_exists?(__ID15__.text) 
      # <-- action

      # at line 172:199: ( expresion )
      # at line 172:201: expresion
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_assignment_1570 )
      expresion
      @state.following.pop



      # --> action
       $quads.assgn_quad() 
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_assignment_1578 )

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
    # 175:1: condition : IF LPAR expresion RPAR COLON ( estatute )* ( ELSE block | R_END ) IF ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      begin
      # at line 176:5: IF LPAR expresion RPAR COLON ( estatute )* ( ELSE block | R_END ) IF
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1591 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_condition_1593 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_condition_1595 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_condition_1597 )

      # --> action
       $quads.gotof() 
      # <-- action

      match( COLON, TOKENS_FOLLOWING_COLON_IN_condition_1601 )
      # at line 176:54: ( estatute )*
      while true # decision 17
        alt_17 = 2
        look_17_0 = @input.peek( 1 )

        if ( look_17_0.between?( ID, IF ) || look_17_0 == PRINT || look_17_0 == READ || look_17_0 == WHILE )
          alt_17 = 1

        end
        case alt_17
        when 1
          # at line 176:56: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_condition_1605 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 17
        end
      end # loop for decision 17

      # at line 176:68: ( ELSE block | R_END )
      alt_18 = 2
      look_18_0 = @input.peek( 1 )

      if ( look_18_0 == ELSE )
        alt_18 = 1
      elsif ( look_18_0 == R_END )
        alt_18 = 2
      else
        raise NoViableAlternative( "", 18, 0 )

      end
      case alt_18
      when 1
        # at line 176:70: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_1612 )

        # --> action
         $quads.goto() 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_1616 )
        block
        @state.following.pop

      when 2
        # at line 177:96: R_END
        match( R_END, TOKENS_FOLLOWING_R_END_IN_condition_1713 )

      end

      # --> action
       $quads.fill_program_quad() 
      # <-- action

      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1719 )

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
    # 180:1: while_loop : WHILE LPAR expresion RPAR block WHILE ;
    #
    def while_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      begin
      # at line 181:5: WHILE LPAR expresion RPAR block WHILE
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1732 )

      # --> action
       $quads.add_jump() 
      # <-- action

      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_while_loop_1736 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_while_loop_1738 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_while_loop_1740 )

      # --> action
       $quads.gotof() 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_1744 )
      block
      @state.following.pop
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1746 )

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
    # 184:1: block : COLON ( estatute )* R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


      begin
      # at line 185:5: COLON ( estatute )* R_END
      match( COLON, TOKENS_FOLLOWING_COLON_IN_block_1761 )
      # at line 185:11: ( estatute )*
      while true # decision 19
        alt_19 = 2
        look_19_0 = @input.peek( 1 )

        if ( look_19_0.between?( ID, IF ) || look_19_0 == PRINT || look_19_0 == READ || look_19_0 == WHILE )
          alt_19 = 1

        end
        case alt_19
        when 1
          # at line 185:13: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_block_1765 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 19
        end
      end # loop for decision 19

      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_1771 )

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
    # 188:1: reading : READ LPAR value COMMA ID RPAR DOT ;
    #
    def reading
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      begin
      # at line 189:5: READ LPAR value COMMA ID RPAR DOT
      match( READ, TOKENS_FOLLOWING_READ_IN_reading_1784 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_reading_1786 )
      @state.following.push( TOKENS_FOLLOWING_value_IN_reading_1788 )
      value
      @state.following.pop
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_reading_1790 )
      match( ID, TOKENS_FOLLOWING_ID_IN_reading_1792 )
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_reading_1794 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_reading_1796 )

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
    # 192:1: writing : PRINT LPAR expresion RPAR DOT ;
    #
    def writing
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      begin
      # at line 193:5: PRINT LPAR expresion RPAR DOT
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_writing_1809 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_writing_1811 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_writing_1813 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_writing_1815 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_writing_1817 )

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
    # 196:1: func_call : ID func_call_parameters ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      __ID17__ = nil


      begin
      # at line 197:5: ID func_call_parameters
      __ID17__ = match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1832 )

      # --> action
       $quads.function_exists?(__ID17__.text) 
      # <-- action


      # --> action
       $func_aux = __ID17__.text 
      # <-- action


      # --> action
       $quads.era(__ID17__.text) 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_func_call_parameters_IN_func_call_1840 )
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
    # 200:1: func_call_parameters : LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR ;
    #
    def func_call_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


      begin
      # at line 201:5: LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_func_call_parameters_1855 )
      # at line 201:10: ( ( expresion ) ( COMMA ( expresion ) )* )?
      alt_21 = 2
      look_21_0 = @input.peek( 1 )

      if ( look_21_0 == BOOL || look_21_0 == FLOAT || look_21_0 == ID || look_21_0 == INTEGER || look_21_0 == LPAR || look_21_0 == STRING )
        alt_21 = 1
      end
      case alt_21
      when 1
        # at line 201:12: ( expresion ) ( COMMA ( expresion ) )*
        # at line 201:12: ( expresion )
        # at line 201:14: expresion
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_func_call_parameters_1861 )
        expresion
        @state.following.pop


        # --> action
         $quads.parameter($func_aux) 
        # <-- action

        # at line 201:60: ( COMMA ( expresion ) )*
        while true # decision 20
          alt_20 = 2
          look_20_0 = @input.peek( 1 )

          if ( look_20_0 == COMMA )
            alt_20 = 1

          end
          case alt_20
          when 1
            # at line 201:62: COMMA ( expresion )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_func_call_parameters_1869 )
            # at line 201:68: ( expresion )
            # at line 201:70: expresion
            @state.following.push( TOKENS_FOLLOWING_expresion_IN_func_call_parameters_1873 )
            expresion
            @state.following.pop


            # --> action
             $quads.parameter($func_aux) 
            # <-- action


          else
            break # out of loop for decision 20
          end
        end # loop for decision 20


      end

      # --> action
       $quads.verify_func_param_count($func_aux) 
      # <-- action

      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_func_call_parameters_1888 )

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
    # 204:1: expresion : exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )? ;
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
      # at line 205:5: exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_1903 )
      exp
      @state.following.pop
      # at line 205:9: ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      alt_23 = 2
      look_23_0 = @input.peek( 1 )

      if ( look_23_0 == AND || look_23_0 == EQ || look_23_0 == GREATER || look_23_0 == LESS || look_23_0 == NEQ || look_23_0 == OR )
        alt_23 = 1
      end
      case alt_23
      when 1
        # at line 205:11: ( GREATER | LESS | NEQ | EQ | AND | OR ) exp
        # at line 205:11: ( GREATER | LESS | NEQ | EQ | AND | OR )
        alt_22 = 6
        case look_22 = @input.peek( 1 )
        when GREATER then alt_22 = 1
        when LESS then alt_22 = 2
        when NEQ then alt_22 = 3
        when EQ then alt_22 = 4
        when AND then alt_22 = 5
        when OR then alt_22 = 6
        else
          raise NoViableAlternative( "", 22, 0 )

        end
        case alt_22
        when 1
          # at line 205:13: GREATER
          __GREATER18__ = match( GREATER, TOKENS_FOLLOWING_GREATER_IN_expresion_1909 )

          # --> action
           $quads.add_operator(__GREATER18__.text) 
          # <-- action


        when 2
          # at line 206:13: LESS
          __LESS19__ = match( LESS, TOKENS_FOLLOWING_LESS_IN_expresion_1925 )

          # --> action
           $quads.add_operator(__LESS19__.text) 
          # <-- action


        when 3
          # at line 207:13: NEQ
          __NEQ20__ = match( NEQ, TOKENS_FOLLOWING_NEQ_IN_expresion_1941 )

          # --> action
           $quads.add_operator(__NEQ20__.text) 
          # <-- action


        when 4
          # at line 208:13: EQ
          __EQ21__ = match( EQ, TOKENS_FOLLOWING_EQ_IN_expresion_1957 )

          # --> action
           $quads.add_operator(__EQ21__.text) 
          # <-- action


        when 5
          # at line 209:13: AND
          __AND22__ = match( AND, TOKENS_FOLLOWING_AND_IN_expresion_1973 )

          # --> action
           $quads.add_operator(__AND22__.text) 
          # <-- action


        when 6
          # at line 210:13: OR
          __OR23__ = match( OR, TOKENS_FOLLOWING_OR_IN_expresion_1989 )

          # --> action
           $quads.add_operator(__OR23__.text) 
          # <-- action


        end
        @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_2005 )
        exp
        @state.following.pop

        # --> action
         $quads.is_expresion_pending() 
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
    # parser rule exp
    #
    # (in Hephaestus.g)
    # 215:1: exp : term ( ( PLUS | MINUS ) term )* ;
    #
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      __PLUS24__ = nil
      __MINUS25__ = nil


      begin
      # at line 216:5: term ( ( PLUS | MINUS ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_2033 )
      term
      @state.following.pop
      # at line 216:10: ( ( PLUS | MINUS ) term )*
      while true # decision 25
        alt_25 = 2
        look_25_0 = @input.peek( 1 )

        if ( look_25_0 == MINUS || look_25_0 == PLUS )
          alt_25 = 1

        end
        case alt_25
        when 1
          # at line 216:12: ( PLUS | MINUS ) term
          # at line 216:12: ( PLUS | MINUS )
          alt_24 = 2
          look_24_0 = @input.peek( 1 )

          if ( look_24_0 == PLUS )
            alt_24 = 1
          elsif ( look_24_0 == MINUS )
            alt_24 = 2
          else
            raise NoViableAlternative( "", 24, 0 )

          end
          case alt_24
          when 1
            # at line 216:14: PLUS
            __PLUS24__ = match( PLUS, TOKENS_FOLLOWING_PLUS_IN_exp_2039 )

            # --> action
             $quads.add_operator(__PLUS24__.text) 
            # <-- action


          when 2
            # at line 217:14: MINUS
            __MINUS25__ = match( MINUS, TOKENS_FOLLOWING_MINUS_IN_exp_2056 )

            # --> action
             $quads.add_operator(__MINUS25__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_2073 )
          term
          @state.following.pop

          # --> action
           $quads.is_exp_pending() 
          # <-- action


        else
          break # out of loop for decision 25
        end
      end # loop for decision 25


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
    # 222:1: term : factor ( ( MULT | DIV ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )


      __MULT26__ = nil
      __DIV27__ = nil


      begin
      # at line 223:5: factor ( ( MULT | DIV ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_2102 )
      factor
      @state.following.pop
      # at line 223:12: ( ( MULT | DIV ) factor )*
      while true # decision 27
        alt_27 = 2
        look_27_0 = @input.peek( 1 )

        if ( look_27_0 == DIV || look_27_0 == MULT )
          alt_27 = 1

        end
        case alt_27
        when 1
          # at line 223:14: ( MULT | DIV ) factor
          # at line 223:14: ( MULT | DIV )
          alt_26 = 2
          look_26_0 = @input.peek( 1 )

          if ( look_26_0 == MULT )
            alt_26 = 1
          elsif ( look_26_0 == DIV )
            alt_26 = 2
          else
            raise NoViableAlternative( "", 26, 0 )

          end
          case alt_26
          when 1
            # at line 223:16: MULT
            __MULT26__ = match( MULT, TOKENS_FOLLOWING_MULT_IN_term_2108 )

            # --> action
             $quads.add_operator(__MULT26__.text) 
            # <-- action


          when 2
            # at line 224:16: DIV
            __DIV27__ = match( DIV, TOKENS_FOLLOWING_DIV_IN_term_2127 )

            # --> action
             $quads.add_operator(__DIV27__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_2146 )
          factor
          @state.following.pop

          # --> action
           $quads.is_term_pending() 
          # <-- action


        else
          break # out of loop for decision 27
        end
      end # loop for decision 27


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
    # 229:1: factor : ( ID ( dim_struct )? | LPAR expresion RPAR | value | func_call );
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )


      __ID28__ = nil
      __LPAR29__ = nil
      value30 = nil


      begin
      # at line 230:3: ( ID ( dim_struct )? | LPAR expresion RPAR | value | func_call )
      alt_29 = 4
      case look_29 = @input.peek( 1 )
      when ID then look_29_1 = @input.peek( 2 )

      if ( look_29_1 == AND || look_29_1 == COMMA || look_29_1.between?( DIV, DOT ) || look_29_1 == EQ || look_29_1 == GREATER || look_29_1.between?( LBRACK, LESS ) || look_29_1.between?( MINUS, NEQ ) || look_29_1.between?( OR, PLUS ) || look_29_1 == RBRACK || look_29_1 == RPAR )
        alt_29 = 1
      elsif ( look_29_1 == LPAR )
        alt_29 = 4
      else
        raise NoViableAlternative( "", 29, 1 )

      end
      when LPAR then alt_29 = 2
      when BOOL, FLOAT, INTEGER, STRING then alt_29 = 3
      else
        raise NoViableAlternative( "", 29, 0 )

      end
      case alt_29
      when 1
        # at line 230:5: ID ( dim_struct )?
        __ID28__ = match( ID, TOKENS_FOLLOWING_ID_IN_factor_2177 )

        # --> action
         $quads.add_id(__ID28__.text, nil) 
        # <-- action

        # at line 230:42: ( dim_struct )?
        alt_28 = 2
        look_28_0 = @input.peek( 1 )

        if ( look_28_0 == LBRACK )
          alt_28 = 1
        end
        case alt_28
        when 1
          # at line 230:44: dim_struct
          # --> action
           $dim_aux = __ID28__.text 
          # <-- action

          @state.following.push( TOKENS_FOLLOWING_dim_struct_IN_factor_2185 )
          dim_struct
          @state.following.pop

        end

        # --> action
         $quads.check_dim(__ID28__.text) 
        # <-- action


      when 2
        # at line 231:7: LPAR expresion RPAR
        __LPAR29__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_2198 )

        # --> action
         $quads.add_false_bottom(__LPAR29__.text) 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_expresion_IN_factor_2202 )
        expresion
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_2204 )

        # --> action
         $quads.remove_false_bottom() 
        # <-- action


      when 3
        # at line 232:7: value
        @state.following.push( TOKENS_FOLLOWING_value_IN_factor_2214 )
        value30 = value
        @state.following.pop

        # --> action
         $quads.add_id(nil, ( value30 && @input.to_s( value30.start, value30.stop ) )) 
        # <-- action


      when 4
        # at line 233:7: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_factor_2224 )
        func_call
        @state.following.pop

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
    # 236:1: type : ( R_STRING | R_BOOL | R_FLOAT | R_INTEGER | VOID | ID );
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
    # 245:1: value : ( STRING | FLOAT | INTEGER | BOOL );
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



    TOKENS_FOLLOWING_r_class_IN_start_512 = Set[ 17, 34, 40 ]
    TOKENS_FOLLOWING_function_IN_start_520 = Set[ 17, 34 ]
    TOKENS_FOLLOWING_program_IN_start_525 = Set[ 1 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_538 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_r_class_540 = Set[ 8, 19 ]
    TOKENS_FOLLOWING_heritage_IN_r_class_546 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_r_class_550 = Set[ 10, 17, 41 ]
    TOKENS_FOLLOWING_function_IN_r_class_554 = Set[ 10, 17, 41 ]
    TOKENS_FOLLOWING_dim_dec_IN_r_class_629 = Set[ 10, 17, 41 ]
    TOKENS_FOLLOWING_var_dec_IN_r_class_704 = Set[ 10, 17, 41 ]
    TOKENS_FOLLOWING_R_END_IN_r_class_780 = Set[ 40 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_782 = Set[ 1 ]
    TOKENS_FOLLOWING_HER_IN_heritage_799 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_heritage_801 = Set[ 1 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_820 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_program_824 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_program_826 = Set[ 10, 20, 21, 33, 36, 41, 47 ]
    TOKENS_FOLLOWING_estatute_IN_program_830 = Set[ 10, 20, 21, 33, 36, 41, 47 ]
    TOKENS_FOLLOWING_dim_dec_IN_program_878 = Set[ 10, 20, 21, 33, 36, 41, 47 ]
    TOKENS_FOLLOWING_var_dec_IN_program_926 = Set[ 10, 20, 21, 33, 36, 41, 47 ]
    TOKENS_FOLLOWING_R_END_IN_program_975 = Set[ 34 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_977 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_dim_dec_992 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_dim_dec_994 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_dim_dec_998 = Set[ 20, 39, 42, 43, 44, 46 ]
    TOKENS_FOLLOWING_type_IN_dim_dec_1000 = Set[ 24 ]
    TOKENS_FOLLOWING_LBRACK_IN_dim_dec_1004 = Set[ 23 ]
    TOKENS_FOLLOWING_INTEGER_IN_dim_dec_1008 = Set[ 9, 35 ]
    TOKENS_FOLLOWING_mat_dim_IN_dim_dec_1014 = Set[ 35 ]
    TOKENS_FOLLOWING_RBRACK_IN_dim_dec_1019 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_dim_dec_1023 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_mat_dim_1038 = Set[ 23 ]
    TOKENS_FOLLOWING_INTEGER_IN_mat_dim_1042 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACK_IN_dim_struct_1057 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_exp_IN_dim_struct_1061 = Set[ 9, 35 ]
    TOKENS_FOLLOWING_COMMA_IN_dim_struct_1067 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_exp_IN_dim_struct_1071 = Set[ 35 ]
    TOKENS_FOLLOWING_RBRACK_IN_dim_struct_1078 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_var_dec_1093 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_var_dec_1095 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_var_dec_1097 = Set[ 20, 39, 42, 43, 44, 46 ]
    TOKENS_FOLLOWING_type_IN_var_dec_1099 = Set[ 6, 12 ]
    TOKENS_FOLLOWING_ASGN_IN_var_dec_1105 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_expresion_IN_var_dec_1113 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_var_dec_1122 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1135 = Set[ 20, 39, 42, 43, 44, 46 ]
    TOKENS_FOLLOWING_type_IN_function_1139 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_function_1143 = Set[ 26 ]
    TOKENS_FOLLOWING_parameters_IN_function_1145 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_function_1147 = Set[ 10, 20, 21, 33, 36, 37, 41, 47 ]
    TOKENS_FOLLOWING_estatute_IN_function_1195 = Set[ 10, 20, 21, 33, 36, 37, 41, 47 ]
    TOKENS_FOLLOWING_var_dec_IN_function_1241 = Set[ 10, 20, 21, 33, 36, 37, 41, 47 ]
    TOKENS_FOLLOWING_dim_dec_IN_function_1287 = Set[ 10, 20, 21, 33, 36, 37, 41, 47 ]
    TOKENS_FOLLOWING_RETURN_IN_function_1336 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_expresion_IN_function_1338 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_function_1342 = Set[ 41 ]
    TOKENS_FOLLOWING_R_END_IN_function_1347 = Set[ 17 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1349 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_parameters_1366 = Set[ 20, 38, 39, 42, 43, 44, 46 ]
    TOKENS_FOLLOWING_type_IN_parameters_1370 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1372 = Set[ 9, 38 ]
    TOKENS_FOLLOWING_COMMA_IN_parameters_1376 = Set[ 20, 39, 42, 43, 44, 46 ]
    TOKENS_FOLLOWING_type_IN_parameters_1378 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1380 = Set[ 9, 38 ]
    TOKENS_FOLLOWING_RPAR_IN_parameters_1388 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatute_1401 = Set[ 1 ]
    TOKENS_FOLLOWING_assignment_IN_estatute_1407 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatute_1413 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_estatute_1419 = Set[ 1 ]
    TOKENS_FOLLOWING_reading_IN_estatute_1425 = Set[ 1 ]
    TOKENS_FOLLOWING_writing_IN_estatute_1431 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatute_1437 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_estatute_1439 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1452 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_1456 = Set[ 20 ]
    TOKENS_FOLLOWING_method_call_2_IN_method_call_1458 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_2_1473 = Set[ 26 ]
    TOKENS_FOLLOWING_method_call_parameters_IN_method_call_2_1479 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_2_1483 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_method_call_parameters_1496 = Set[ 7, 15, 20, 23, 26, 38, 45 ]
    TOKENS_FOLLOWING_expresion_IN_method_call_parameters_1502 = Set[ 9, 38 ]
    TOKENS_FOLLOWING_COMMA_IN_method_call_parameters_1510 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_expresion_IN_method_call_parameters_1514 = Set[ 9, 38 ]
    TOKENS_FOLLOWING_RPAR_IN_method_call_parameters_1529 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_assignment_1544 = Set[ 6, 24 ]
    TOKENS_FOLLOWING_dim_struct_IN_assignment_1552 = Set[ 6 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_1561 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_expresion_IN_assignment_1570 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_assignment_1578 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_1591 = Set[ 26 ]
    TOKENS_FOLLOWING_LPAR_IN_condition_1593 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_expresion_IN_condition_1595 = Set[ 38 ]
    TOKENS_FOLLOWING_RPAR_IN_condition_1597 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_condition_1601 = Set[ 13, 20, 21, 33, 36, 41, 47 ]
    TOKENS_FOLLOWING_estatute_IN_condition_1605 = Set[ 13, 20, 21, 33, 36, 41, 47 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_1612 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_condition_1616 = Set[ 21 ]
    TOKENS_FOLLOWING_R_END_IN_condition_1713 = Set[ 21 ]
    TOKENS_FOLLOWING_IF_IN_condition_1719 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1732 = Set[ 26 ]
    TOKENS_FOLLOWING_LPAR_IN_while_loop_1736 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_expresion_IN_while_loop_1738 = Set[ 38 ]
    TOKENS_FOLLOWING_RPAR_IN_while_loop_1740 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_while_loop_1744 = Set[ 47 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1746 = Set[ 1 ]
    TOKENS_FOLLOWING_COLON_IN_block_1761 = Set[ 20, 21, 33, 36, 41, 47 ]
    TOKENS_FOLLOWING_estatute_IN_block_1765 = Set[ 20, 21, 33, 36, 41, 47 ]
    TOKENS_FOLLOWING_R_END_IN_block_1771 = Set[ 1 ]
    TOKENS_FOLLOWING_READ_IN_reading_1784 = Set[ 26 ]
    TOKENS_FOLLOWING_LPAR_IN_reading_1786 = Set[ 7, 15, 23, 45 ]
    TOKENS_FOLLOWING_value_IN_reading_1788 = Set[ 9 ]
    TOKENS_FOLLOWING_COMMA_IN_reading_1790 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_reading_1792 = Set[ 38 ]
    TOKENS_FOLLOWING_RPAR_IN_reading_1794 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_reading_1796 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_writing_1809 = Set[ 26 ]
    TOKENS_FOLLOWING_LPAR_IN_writing_1811 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_expresion_IN_writing_1813 = Set[ 38 ]
    TOKENS_FOLLOWING_RPAR_IN_writing_1815 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_writing_1817 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1832 = Set[ 26 ]
    TOKENS_FOLLOWING_func_call_parameters_IN_func_call_1840 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_func_call_parameters_1855 = Set[ 7, 15, 20, 23, 26, 38, 45 ]
    TOKENS_FOLLOWING_expresion_IN_func_call_parameters_1861 = Set[ 9, 38 ]
    TOKENS_FOLLOWING_COMMA_IN_func_call_parameters_1869 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_expresion_IN_func_call_parameters_1873 = Set[ 9, 38 ]
    TOKENS_FOLLOWING_RPAR_IN_func_call_parameters_1888 = Set[ 1 ]
    TOKENS_FOLLOWING_exp_IN_expresion_1903 = Set[ 1, 4, 14, 18, 25, 29, 31 ]
    TOKENS_FOLLOWING_GREATER_IN_expresion_1909 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_LESS_IN_expresion_1925 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_NEQ_IN_expresion_1941 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_EQ_IN_expresion_1957 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_AND_IN_expresion_1973 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_OR_IN_expresion_1989 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_exp_IN_expresion_2005 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_exp_2033 = Set[ 1, 27, 32 ]
    TOKENS_FOLLOWING_PLUS_IN_exp_2039 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_MINUS_IN_exp_2056 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_term_IN_exp_2073 = Set[ 1, 27, 32 ]
    TOKENS_FOLLOWING_factor_IN_term_2102 = Set[ 1, 11, 28 ]
    TOKENS_FOLLOWING_MULT_IN_term_2108 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_DIV_IN_term_2127 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_factor_IN_term_2146 = Set[ 1, 11, 28 ]
    TOKENS_FOLLOWING_ID_IN_factor_2177 = Set[ 1, 24 ]
    TOKENS_FOLLOWING_dim_struct_IN_factor_2185 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_2198 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_expresion_IN_factor_2202 = Set[ 38 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_2204 = Set[ 1 ]
    TOKENS_FOLLOWING_value_IN_factor_2214 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_factor_2224 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
