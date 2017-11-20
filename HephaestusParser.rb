#!/usr/bin/env ruby
#
# Hephaestus.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Hephaestus.g
# Generated at: 2017-11-20 12:07:12
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
                     :assignment, :condition, :while_loop, :block, :reading, 
                     :writing, :method_call, :method_call_2, :method_call_parameters, 
                     :func_call, :func_call_parameters, :expression, :exp, 
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
    # 133:1: var_dec : DEFINE ID AS type ( ASGN ( expression ) )? DOT ;
    #
    def var_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      __ID7__ = nil
      __ASGN9__ = nil
      type8 = nil


      begin
      # at line 134:5: DEFINE ID AS type ( ASGN ( expression ) )? DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_var_dec_1093 )
      __ID7__ = match( ID, TOKENS_FOLLOWING_ID_IN_var_dec_1095 )
      match( AS, TOKENS_FOLLOWING_AS_IN_var_dec_1097 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_var_dec_1099 )
      type8 = type
      @state.following.pop

      # --> action
       $program.add_variable(__ID7__.text, ( type8 && @input.to_s( type8.start, type8.stop ) )) 
      # <-- action

      # at line 134:72: ( ASGN ( expression ) )?
      alt_8 = 2
      look_8_0 = @input.peek( 1 )

      if ( look_8_0 == ASGN )
        alt_8 = 1
      end
      case alt_8
      when 1
        # at line 134:74: ASGN ( expression )
        __ASGN9__ = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_var_dec_1105 )

        # --> action
         $quads.add_id(__ID7__.text, nil) 
        # <-- action


        # --> action
         $quads.add_operator(__ASGN9__.text) 
        # <-- action

        # at line 134:150: ( expression )
        # at line 134:152: expression
        @state.following.push( TOKENS_FOLLOWING_expression_IN_var_dec_1113 )
        expression
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
    # 137:1: function : FUNCTION ( type ) ID parameters COLON ( estatute | var_dec | dim_dec )* ( RETURN expression DOT )? R_END FUNCTION ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      __ID10__ = nil
      parameters11 = nil
      type12 = nil


      begin
      # at line 138:5: FUNCTION ( type ) ID parameters COLON ( estatute | var_dec | dim_dec )* ( RETURN expression DOT )? R_END FUNCTION
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

      # at line 142:46: ( RETURN expression DOT )?
      alt_10 = 2
      look_10_0 = @input.peek( 1 )

      if ( look_10_0 == RETURN )
        alt_10 = 1
      end
      case alt_10
      when 1
        # at line 142:48: RETURN expression DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_function_1336 )
        @state.following.push( TOKENS_FOLLOWING_expression_IN_function_1338 )
        expression
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
    # 149:1: estatute : ( assignment | condition | while_loop | reading | writing | method_call | func_call DOT );
    #
    def estatute
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      begin
      # at line 150:3: ( assignment | condition | while_loop | reading | writing | method_call | func_call DOT )
      alt_13 = 7
      case look_13 = @input.peek( 1 )
      when ID then case look_13 = @input.peek( 2 )
      when ASGN, LBRACK then alt_13 = 1
      when DOT then alt_13 = 6
      when LPAR then alt_13 = 7
      else
        raise NoViableAlternative( "", 13, 1 )

      end
      when IF then alt_13 = 2
      when WHILE then alt_13 = 3
      when READ then alt_13 = 4
      when PRINT then alt_13 = 5
      else
        raise NoViableAlternative( "", 13, 0 )

      end
      case alt_13
      when 1
        # at line 150:5: assignment
        @state.following.push( TOKENS_FOLLOWING_assignment_IN_estatute_1401 )
        assignment
        @state.following.pop

      when 2
        # at line 151:5: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatute_1407 )
        condition
        @state.following.pop

      when 3
        # at line 152:5: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_estatute_1413 )
        while_loop
        @state.following.pop

      when 4
        # at line 153:5: reading
        @state.following.push( TOKENS_FOLLOWING_reading_IN_estatute_1419 )
        reading
        @state.following.pop

      when 5
        # at line 154:5: writing
        @state.following.push( TOKENS_FOLLOWING_writing_IN_estatute_1425 )
        writing
        @state.following.pop

      when 6
        # at line 155:5: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatute_1431 )
        method_call
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
    # parser rule assignment
    #
    # (in Hephaestus.g)
    # 160:1: assignment : ID ( dim_struct )? ( ASGN ( expression ) ) DOT ;
    #
    def assignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      __ID13__ = nil
      __ASGN14__ = nil


      begin
      # at line 161:5: ID ( dim_struct )? ( ASGN ( expression ) ) DOT
      __ID13__ = match( ID, TOKENS_FOLLOWING_ID_IN_assignment_1453 )

      # --> action
       $quads.add_id(__ID13__.text, nil) 
      # <-- action

      # at line 161:42: ( dim_struct )?
      alt_14 = 2
      look_14_0 = @input.peek( 1 )

      if ( look_14_0 == LBRACK )
        alt_14 = 1
      end
      case alt_14
      when 1
        # at line 161:44: dim_struct
        # --> action
         $dim_aux = __ID13__.text 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_dim_struct_IN_assignment_1461 )
        dim_struct
        @state.following.pop

      end

      # --> action
       $quads.check_dim(__ID13__.text) 
      # <-- action

      # at line 161:115: ( ASGN ( expression ) )
      # at line 161:117: ASGN ( expression )
      __ASGN14__ = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_1470 )

      # --> action
       $quads.add_operator(__ASGN14__.text) 
      # <-- action


      # --> action
       $quads.variable_exists?(__ID13__.text) 
      # <-- action

      # at line 161:199: ( expression )
      # at line 161:201: expression
      @state.following.push( TOKENS_FOLLOWING_expression_IN_assignment_1479 )
      expression
      @state.following.pop



      # --> action
       $quads.assgn_quad() 
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_assignment_1487 )

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
    # parser rule condition
    #
    # (in Hephaestus.g)
    # 164:1: condition : IF LPAR expression RPAR COLON ( estatute )* ( ELSE block | R_END ) IF ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      begin
      # at line 165:5: IF LPAR expression RPAR COLON ( estatute )* ( ELSE block | R_END ) IF
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1500 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_condition_1502 )
      @state.following.push( TOKENS_FOLLOWING_expression_IN_condition_1504 )
      expression
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_condition_1506 )

      # --> action
       $quads.gotof() 
      # <-- action

      match( COLON, TOKENS_FOLLOWING_COLON_IN_condition_1510 )
      # at line 165:55: ( estatute )*
      while true # decision 15
        alt_15 = 2
        look_15_0 = @input.peek( 1 )

        if ( look_15_0.between?( ID, IF ) || look_15_0 == PRINT || look_15_0 == READ || look_15_0 == WHILE )
          alt_15 = 1

        end
        case alt_15
        when 1
          # at line 165:57: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_condition_1514 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 15
        end
      end # loop for decision 15

      # at line 165:69: ( ELSE block | R_END )
      alt_16 = 2
      look_16_0 = @input.peek( 1 )

      if ( look_16_0 == ELSE )
        alt_16 = 1
      elsif ( look_16_0 == R_END )
        alt_16 = 2
      else
        raise NoViableAlternative( "", 16, 0 )

      end
      case alt_16
      when 1
        # at line 165:71: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_1521 )

        # --> action
         $quads.goto() 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_1525 )
        block
        @state.following.pop

      when 2
        # at line 166:96: R_END
        match( R_END, TOKENS_FOLLOWING_R_END_IN_condition_1622 )

      end

      # --> action
       $quads.fill_program_quad() 
      # <-- action

      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1628 )

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
    # parser rule while_loop
    #
    # (in Hephaestus.g)
    # 169:1: while_loop : WHILE LPAR expression RPAR block WHILE ;
    #
    def while_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      begin
      # at line 170:5: WHILE LPAR expression RPAR block WHILE
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1641 )

      # --> action
       $quads.add_jump() 
      # <-- action

      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_while_loop_1645 )
      @state.following.push( TOKENS_FOLLOWING_expression_IN_while_loop_1647 )
      expression
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_while_loop_1649 )

      # --> action
       $quads.gotof() 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_1653 )
      block
      @state.following.pop
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1655 )

      # --> action
       $quads.goto_while()
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
    # parser rule block
    #
    # (in Hephaestus.g)
    # 173:1: block : COLON ( estatute )* R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      begin
      # at line 174:5: COLON ( estatute )* R_END
      match( COLON, TOKENS_FOLLOWING_COLON_IN_block_1670 )
      # at line 174:11: ( estatute )*
      while true # decision 17
        alt_17 = 2
        look_17_0 = @input.peek( 1 )

        if ( look_17_0.between?( ID, IF ) || look_17_0 == PRINT || look_17_0 == READ || look_17_0 == WHILE )
          alt_17 = 1

        end
        case alt_17
        when 1
          # at line 174:13: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_block_1674 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 17
        end
      end # loop for decision 17

      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_1680 )

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
    # parser rule reading
    #
    # (in Hephaestus.g)
    # 177:1: reading : READ LPAR value COMMA ID RPAR DOT ;
    #
    def reading
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      begin
      # at line 178:5: READ LPAR value COMMA ID RPAR DOT
      match( READ, TOKENS_FOLLOWING_READ_IN_reading_1693 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_reading_1695 )
      @state.following.push( TOKENS_FOLLOWING_value_IN_reading_1697 )
      value
      @state.following.pop
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_reading_1699 )
      match( ID, TOKENS_FOLLOWING_ID_IN_reading_1701 )
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_reading_1703 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_reading_1705 )

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
    # parser rule writing
    #
    # (in Hephaestus.g)
    # 181:1: writing : PRINT LPAR expression RPAR DOT ;
    #
    def writing
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      begin
      # at line 182:5: PRINT LPAR expression RPAR DOT
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_writing_1718 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_writing_1720 )
      @state.following.push( TOKENS_FOLLOWING_expression_IN_writing_1722 )
      expression
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_writing_1724 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_writing_1726 )

      # --> action
       $quads.write()
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
    # parser rule method_call
    #
    # (in Hephaestus.g)
    # 185:1: method_call : ID DOT method_call_2 DOT ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


      __ID15__ = nil


      begin
      # at line 186:5: ID DOT method_call_2 DOT
      __ID15__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1741 )

      # --> action
      $method_aux = __ID15__.text
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_1745 )
      @state.following.push( TOKENS_FOLLOWING_method_call_2_IN_method_call_1747 )
      method_call_2
      @state.following.pop

      # --> action
       $quads.get_return_value() 
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_1751 )

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
    # parser rule method_call_2
    #
    # (in Hephaestus.g)
    # 189:1: method_call_2 : ID method_call_parameters ;
    #
    def method_call_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      __ID16__ = nil


      begin
      # at line 190:5: ID method_call_parameters
      __ID16__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_2_1764 )

      # --> action
       $func_aux = __ID16__.text 
      # <-- action


      # --> action
       $quads.era_method($method_aux, __ID16__.text) 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_method_call_parameters_IN_method_call_2_1770 )
      method_call_parameters
      @state.following.pop

      # --> action
       $quads.method_exists?($method_aux, __ID16__.text) 
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
    # parser rule method_call_parameters
    #
    # (in Hephaestus.g)
    # 193:1: method_call_parameters : LPAR ( ( expression ) ( COMMA ( expression ) )* )? RPAR ;
    #
    def method_call_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      begin
      # at line 194:5: LPAR ( ( expression ) ( COMMA ( expression ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_method_call_parameters_1785 )
      # at line 194:10: ( ( expression ) ( COMMA ( expression ) )* )?
      alt_19 = 2
      look_19_0 = @input.peek( 1 )

      if ( look_19_0 == BOOL || look_19_0 == FLOAT || look_19_0 == ID || look_19_0 == INTEGER || look_19_0 == LPAR || look_19_0 == STRING )
        alt_19 = 1
      end
      case alt_19
      when 1
        # at line 194:12: ( expression ) ( COMMA ( expression ) )*
        # at line 194:12: ( expression )
        # at line 194:14: expression
        @state.following.push( TOKENS_FOLLOWING_expression_IN_method_call_parameters_1791 )
        expression
        @state.following.pop


        # --> action
         $quads.method_parameter($method_aux ,$func_aux) 
        # <-- action

        # at line 194:82: ( COMMA ( expression ) )*
        while true # decision 18
          alt_18 = 2
          look_18_0 = @input.peek( 1 )

          if ( look_18_0 == COMMA )
            alt_18 = 1

          end
          case alt_18
          when 1
            # at line 194:84: COMMA ( expression )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_method_call_parameters_1799 )
            # at line 194:90: ( expression )
            # at line 194:92: expression
            @state.following.push( TOKENS_FOLLOWING_expression_IN_method_call_parameters_1803 )
            expression
            @state.following.pop


            # --> action
             $quads.method_parameter($method_aux ,$func_aux) 
            # <-- action


          else
            break # out of loop for decision 18
          end
        end # loop for decision 18


      end

      # --> action
       $quads.verify_method_param_count($method_aux ,$func_aux) 
      # <-- action

      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_method_call_parameters_1818 )

      # --> action
       $quads.go_sub_method($method_aux, $func_aux) 
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
    # 197:1: func_call : ID func_call_parameters ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      __ID17__ = nil


      begin
      # at line 198:5: ID func_call_parameters
      __ID17__ = match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1833 )

      # --> action
       $quads.function_exists?(__ID17__.text) 
      # <-- action


      # --> action
       $func_aux = __ID17__.text 
      # <-- action


      # --> action
       $quads.era(__ID17__.text) 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_func_call_parameters_IN_func_call_1841 )
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
    # 201:1: func_call_parameters : LPAR ( ( expression ) ( COMMA ( expression ) )* )? RPAR ;
    #
    def func_call_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


      begin
      # at line 202:5: LPAR ( ( expression ) ( COMMA ( expression ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_func_call_parameters_1856 )
      # at line 202:10: ( ( expression ) ( COMMA ( expression ) )* )?
      alt_21 = 2
      look_21_0 = @input.peek( 1 )

      if ( look_21_0 == BOOL || look_21_0 == FLOAT || look_21_0 == ID || look_21_0 == INTEGER || look_21_0 == LPAR || look_21_0 == STRING )
        alt_21 = 1
      end
      case alt_21
      when 1
        # at line 202:12: ( expression ) ( COMMA ( expression ) )*
        # at line 202:12: ( expression )
        # at line 202:14: expression
        @state.following.push( TOKENS_FOLLOWING_expression_IN_func_call_parameters_1862 )
        expression
        @state.following.pop


        # --> action
         $quads.parameter($func_aux) 
        # <-- action

        # at line 202:61: ( COMMA ( expression ) )*
        while true # decision 20
          alt_20 = 2
          look_20_0 = @input.peek( 1 )

          if ( look_20_0 == COMMA )
            alt_20 = 1

          end
          case alt_20
          when 1
            # at line 202:63: COMMA ( expression )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_func_call_parameters_1870 )
            # at line 202:69: ( expression )
            # at line 202:71: expression
            @state.following.push( TOKENS_FOLLOWING_expression_IN_func_call_parameters_1874 )
            expression
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

      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_func_call_parameters_1889 )

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
    # parser rule expression
    #
    # (in Hephaestus.g)
    # 205:1: expression : exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )? ;
    #
    def expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )


      __GREATER18__ = nil
      __LESS19__ = nil
      __NEQ20__ = nil
      __EQ21__ = nil
      __AND22__ = nil
      __OR23__ = nil


      begin
      # at line 206:5: exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_1904 )
      exp
      @state.following.pop
      # at line 206:9: ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      alt_23 = 2
      look_23_0 = @input.peek( 1 )

      if ( look_23_0 == AND || look_23_0 == EQ || look_23_0 == GREATER || look_23_0 == LESS || look_23_0 == NEQ || look_23_0 == OR )
        alt_23 = 1
      end
      case alt_23
      when 1
        # at line 206:11: ( GREATER | LESS | NEQ | EQ | AND | OR ) exp
        # at line 206:11: ( GREATER | LESS | NEQ | EQ | AND | OR )
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
          # at line 206:13: GREATER
          __GREATER18__ = match( GREATER, TOKENS_FOLLOWING_GREATER_IN_expression_1910 )

          # --> action
           $quads.add_operator(__GREATER18__.text) 
          # <-- action


        when 2
          # at line 207:13: LESS
          __LESS19__ = match( LESS, TOKENS_FOLLOWING_LESS_IN_expression_1926 )

          # --> action
           $quads.add_operator(__LESS19__.text) 
          # <-- action


        when 3
          # at line 208:13: NEQ
          __NEQ20__ = match( NEQ, TOKENS_FOLLOWING_NEQ_IN_expression_1942 )

          # --> action
           $quads.add_operator(__NEQ20__.text) 
          # <-- action


        when 4
          # at line 209:13: EQ
          __EQ21__ = match( EQ, TOKENS_FOLLOWING_EQ_IN_expression_1958 )

          # --> action
           $quads.add_operator(__EQ21__.text) 
          # <-- action


        when 5
          # at line 210:13: AND
          __AND22__ = match( AND, TOKENS_FOLLOWING_AND_IN_expression_1974 )

          # --> action
           $quads.add_operator(__AND22__.text) 
          # <-- action


        when 6
          # at line 211:13: OR
          __OR23__ = match( OR, TOKENS_FOLLOWING_OR_IN_expression_1990 )

          # --> action
           $quads.add_operator(__OR23__.text) 
          # <-- action


        end
        @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_2006 )
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
        # trace_out( __method__, 23 )


      end

      return 
    end



    #
    # parser rule exp
    #
    # (in Hephaestus.g)
    # 216:1: exp : term ( ( PLUS | MINUS ) term )* ;
    #
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      __PLUS24__ = nil
      __MINUS25__ = nil


      begin
      # at line 217:5: term ( ( PLUS | MINUS ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_2034 )
      term
      @state.following.pop
      # at line 217:10: ( ( PLUS | MINUS ) term )*
      while true # decision 25
        alt_25 = 2
        look_25_0 = @input.peek( 1 )

        if ( look_25_0 == MINUS || look_25_0 == PLUS )
          alt_25 = 1

        end
        case alt_25
        when 1
          # at line 217:12: ( PLUS | MINUS ) term
          # at line 217:12: ( PLUS | MINUS )
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
            # at line 217:14: PLUS
            __PLUS24__ = match( PLUS, TOKENS_FOLLOWING_PLUS_IN_exp_2040 )

            # --> action
             $quads.add_operator(__PLUS24__.text) 
            # <-- action


          when 2
            # at line 218:14: MINUS
            __MINUS25__ = match( MINUS, TOKENS_FOLLOWING_MINUS_IN_exp_2057 )

            # --> action
             $quads.add_operator(__MINUS25__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_2074 )
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
    # 223:1: term : factor ( ( MULT | DIV ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )


      __MULT26__ = nil
      __DIV27__ = nil


      begin
      # at line 224:5: factor ( ( MULT | DIV ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_2103 )
      factor
      @state.following.pop
      # at line 224:12: ( ( MULT | DIV ) factor )*
      while true # decision 27
        alt_27 = 2
        look_27_0 = @input.peek( 1 )

        if ( look_27_0 == DIV || look_27_0 == MULT )
          alt_27 = 1

        end
        case alt_27
        when 1
          # at line 224:14: ( MULT | DIV ) factor
          # at line 224:14: ( MULT | DIV )
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
            # at line 224:16: MULT
            __MULT26__ = match( MULT, TOKENS_FOLLOWING_MULT_IN_term_2109 )

            # --> action
             $quads.add_operator(__MULT26__.text) 
            # <-- action


          when 2
            # at line 225:16: DIV
            __DIV27__ = match( DIV, TOKENS_FOLLOWING_DIV_IN_term_2128 )

            # --> action
             $quads.add_operator(__DIV27__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_2147 )
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
    # 230:1: factor : ( ID ( dim_struct )? | LPAR expression RPAR | value | func_call );
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )


      __ID28__ = nil
      __LPAR29__ = nil
      value30 = nil


      begin
      # at line 231:3: ( ID ( dim_struct )? | LPAR expression RPAR | value | func_call )
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
        # at line 231:5: ID ( dim_struct )?
        __ID28__ = match( ID, TOKENS_FOLLOWING_ID_IN_factor_2178 )

        # --> action
         $quads.add_id(__ID28__.text, nil) 
        # <-- action

        # at line 231:42: ( dim_struct )?
        alt_28 = 2
        look_28_0 = @input.peek( 1 )

        if ( look_28_0 == LBRACK )
          alt_28 = 1
        end
        case alt_28
        when 1
          # at line 231:44: dim_struct
          # --> action
           $dim_aux = __ID28__.text 
          # <-- action

          @state.following.push( TOKENS_FOLLOWING_dim_struct_IN_factor_2186 )
          dim_struct
          @state.following.pop

        end

        # --> action
         $quads.check_dim(__ID28__.text) 
        # <-- action


      when 2
        # at line 232:7: LPAR expression RPAR
        __LPAR29__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_2199 )

        # --> action
         $quads.add_false_bottom(__LPAR29__.text) 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_expression_IN_factor_2203 )
        expression
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_2205 )

        # --> action
         $quads.remove_false_bottom() 
        # <-- action


      when 3
        # at line 233:7: value
        @state.following.push( TOKENS_FOLLOWING_value_IN_factor_2215 )
        value30 = value
        @state.following.pop

        # --> action
         $quads.add_id(nil, ( value30 && @input.to_s( value30.start, value30.stop ) )) 
        # <-- action


      when 4
        # at line 234:7: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_factor_2225 )
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
    # 237:1: type : ( R_STRING | R_BOOL | R_FLOAT | R_INTEGER | VOID | ID );
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
    # 246:1: value : ( STRING | FLOAT | INTEGER | BOOL );
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
    TOKENS_FOLLOWING_expression_IN_var_dec_1113 = Set[ 12 ]
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
    TOKENS_FOLLOWING_expression_IN_function_1338 = Set[ 12 ]
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
    TOKENS_FOLLOWING_assignment_IN_estatute_1401 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatute_1407 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_estatute_1413 = Set[ 1 ]
    TOKENS_FOLLOWING_reading_IN_estatute_1419 = Set[ 1 ]
    TOKENS_FOLLOWING_writing_IN_estatute_1425 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatute_1431 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatute_1437 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_estatute_1439 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_assignment_1453 = Set[ 6, 24 ]
    TOKENS_FOLLOWING_dim_struct_IN_assignment_1461 = Set[ 6 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_1470 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_expression_IN_assignment_1479 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_assignment_1487 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_1500 = Set[ 26 ]
    TOKENS_FOLLOWING_LPAR_IN_condition_1502 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_expression_IN_condition_1504 = Set[ 38 ]
    TOKENS_FOLLOWING_RPAR_IN_condition_1506 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_condition_1510 = Set[ 13, 20, 21, 33, 36, 41, 47 ]
    TOKENS_FOLLOWING_estatute_IN_condition_1514 = Set[ 13, 20, 21, 33, 36, 41, 47 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_1521 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_condition_1525 = Set[ 21 ]
    TOKENS_FOLLOWING_R_END_IN_condition_1622 = Set[ 21 ]
    TOKENS_FOLLOWING_IF_IN_condition_1628 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1641 = Set[ 26 ]
    TOKENS_FOLLOWING_LPAR_IN_while_loop_1645 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_expression_IN_while_loop_1647 = Set[ 38 ]
    TOKENS_FOLLOWING_RPAR_IN_while_loop_1649 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_while_loop_1653 = Set[ 47 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1655 = Set[ 1 ]
    TOKENS_FOLLOWING_COLON_IN_block_1670 = Set[ 20, 21, 33, 36, 41, 47 ]
    TOKENS_FOLLOWING_estatute_IN_block_1674 = Set[ 20, 21, 33, 36, 41, 47 ]
    TOKENS_FOLLOWING_R_END_IN_block_1680 = Set[ 1 ]
    TOKENS_FOLLOWING_READ_IN_reading_1693 = Set[ 26 ]
    TOKENS_FOLLOWING_LPAR_IN_reading_1695 = Set[ 7, 15, 23, 45 ]
    TOKENS_FOLLOWING_value_IN_reading_1697 = Set[ 9 ]
    TOKENS_FOLLOWING_COMMA_IN_reading_1699 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_reading_1701 = Set[ 38 ]
    TOKENS_FOLLOWING_RPAR_IN_reading_1703 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_reading_1705 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_writing_1718 = Set[ 26 ]
    TOKENS_FOLLOWING_LPAR_IN_writing_1720 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_expression_IN_writing_1722 = Set[ 38 ]
    TOKENS_FOLLOWING_RPAR_IN_writing_1724 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_writing_1726 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1741 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_1745 = Set[ 20 ]
    TOKENS_FOLLOWING_method_call_2_IN_method_call_1747 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_1751 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_2_1764 = Set[ 26 ]
    TOKENS_FOLLOWING_method_call_parameters_IN_method_call_2_1770 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_method_call_parameters_1785 = Set[ 7, 15, 20, 23, 26, 38, 45 ]
    TOKENS_FOLLOWING_expression_IN_method_call_parameters_1791 = Set[ 9, 38 ]
    TOKENS_FOLLOWING_COMMA_IN_method_call_parameters_1799 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_expression_IN_method_call_parameters_1803 = Set[ 9, 38 ]
    TOKENS_FOLLOWING_RPAR_IN_method_call_parameters_1818 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1833 = Set[ 26 ]
    TOKENS_FOLLOWING_func_call_parameters_IN_func_call_1841 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_func_call_parameters_1856 = Set[ 7, 15, 20, 23, 26, 38, 45 ]
    TOKENS_FOLLOWING_expression_IN_func_call_parameters_1862 = Set[ 9, 38 ]
    TOKENS_FOLLOWING_COMMA_IN_func_call_parameters_1870 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_expression_IN_func_call_parameters_1874 = Set[ 9, 38 ]
    TOKENS_FOLLOWING_RPAR_IN_func_call_parameters_1889 = Set[ 1 ]
    TOKENS_FOLLOWING_exp_IN_expression_1904 = Set[ 1, 4, 14, 18, 25, 29, 31 ]
    TOKENS_FOLLOWING_GREATER_IN_expression_1910 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_LESS_IN_expression_1926 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_NEQ_IN_expression_1942 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_EQ_IN_expression_1958 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_AND_IN_expression_1974 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_OR_IN_expression_1990 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_exp_IN_expression_2006 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_exp_2034 = Set[ 1, 27, 32 ]
    TOKENS_FOLLOWING_PLUS_IN_exp_2040 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_MINUS_IN_exp_2057 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_term_IN_exp_2074 = Set[ 1, 27, 32 ]
    TOKENS_FOLLOWING_factor_IN_term_2103 = Set[ 1, 11, 28 ]
    TOKENS_FOLLOWING_MULT_IN_term_2109 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_DIV_IN_term_2128 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_factor_IN_term_2147 = Set[ 1, 11, 28 ]
    TOKENS_FOLLOWING_ID_IN_factor_2178 = Set[ 1, 24 ]
    TOKENS_FOLLOWING_dim_struct_IN_factor_2186 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_2199 = Set[ 7, 15, 20, 23, 26, 45 ]
    TOKENS_FOLLOWING_expression_IN_factor_2203 = Set[ 38 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_2205 = Set[ 1 ]
    TOKENS_FOLLOWING_value_IN_factor_2215 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_factor_2225 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
