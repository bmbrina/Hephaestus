#!/usr/bin/env ruby
#
# Hephaestus.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Hephaestus.g
# Generated at: 2017-11-20 15:19:16
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
                   :DOT => 12, :DOT2 => 13, :ELSE => 14, :EQ => 15, :FLOAT => 16, 
                   :FOR => 17, :FUNCTION => 18, :GREATER => 19, :HER => 20, 
                   :ID => 21, :IF => 22, :IN => 23, :INTEGER => 24, :LBRACK => 25, 
                   :LESS => 26, :LPAR => 27, :MINUS => 28, :MULT => 29, 
                   :NEQ => 30, :NEWLINE => 31, :OR => 32, :PLUS => 33, :PRINT => 34, 
                   :PROGRAM => 35, :RBRACK => 36, :READ => 37, :RETURN => 38, 
                   :RPAR => 39, :R_BOOL => 40, :R_CLASS => 41, :R_END => 42, 
                   :R_FLOAT => 43, :R_INTEGER => 44, :R_STRING => 45, :STRING => 46, 
                   :VOID => 47, :WHILE => 48, :WS => 49 )


    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "AND", "AS", "ASGN", "BOOL", "COLON", "COMMA", "DEFINE", 
                    "DIV", "DOT", "DOT2", "ELSE", "EQ", "FLOAT", "FOR", 
                    "FUNCTION", "GREATER", "HER", "ID", "IF", "IN", "INTEGER", 
                    "LBRACK", "LESS", "LPAR", "MINUS", "MULT", "NEQ", "NEWLINE", 
                    "OR", "PLUS", "PRINT", "PROGRAM", "RBRACK", "READ", 
                    "RETURN", "RPAR", "R_BOOL", "R_CLASS", "R_END", "R_FLOAT", 
                    "R_INTEGER", "R_STRING", "STRING", "VOID", "WHILE", 
                    "WS" )


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
    # 100:1: start : ( r_class )* ( function )* program ;
    #
    def start
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 101:5: ( r_class )* ( function )* program
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
          @state.following.push( TOKENS_FOLLOWING_r_class_IN_start_518 )
          r_class
          @state.following.pop

        else
          break # out of loop for decision 1
        end
      end # loop for decision 1

      # at line 101:46: ( function )*
      while true # decision 2
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0 == FUNCTION )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 101:48: function
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
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_544 )
      __ID1__ = match( ID, TOKENS_FOLLOWING_ID_IN_r_class_546 )

      # --> action
       $class_aux = __ID1__.text 
      # <-- action


      # --> action
       $program.add_class(__ID1__.text, nil) 
      # <-- action

      # at line 105:82: ( heritage )?
      alt_3 = 2
      look_3_0 = @input.peek( 1 )

      if ( look_3_0 == HER )
        alt_3 = 1
      end
      case alt_3
      when 1
        # at line 105:82: heritage
        @state.following.push( TOKENS_FOLLOWING_heritage_IN_r_class_552 )
        heritage
        @state.following.pop

      end
      match( COLON, TOKENS_FOLLOWING_COLON_IN_r_class_556 )
      # at line 105:99: ( function | dim_dec | var_dec )*
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
          # at line 105:101: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_r_class_560 )
          function
          @state.following.pop

        when 2
          # at line 106:74: dim_dec
          @state.following.push( TOKENS_FOLLOWING_dim_dec_IN_r_class_635 )
          dim_dec
          @state.following.pop

        when 3
          # at line 107:74: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_r_class_710 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 4
        end
      end # loop for decision 4

      match( R_END, TOKENS_FOLLOWING_R_END_IN_r_class_786 )
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_788 )

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
      match( HER, TOKENS_FOLLOWING_HER_IN_heritage_805 )
      __ID2__ = match( ID, TOKENS_FOLLOWING_ID_IN_heritage_807 )


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
    # 115:1: program : PROGRAM ID COLON ( estatute | dim_dec | var_dec )* R_END PROGRAM ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      begin
      # at line 116:5: PROGRAM ID COLON ( estatute | dim_dec | var_dec )* R_END PROGRAM
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_826 )

      # --> action
       $quads.fill_program_quad() 
      # <-- action

      match( ID, TOKENS_FOLLOWING_ID_IN_program_830 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_program_832 )
      # at line 116:54: ( estatute | dim_dec | var_dec )*
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
          # at line 116:56: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_program_836 )
          estatute
          @state.following.pop

        when 2
          # at line 117:47: dim_dec
          @state.following.push( TOKENS_FOLLOWING_dim_dec_IN_program_884 )
          dim_dec
          @state.following.pop

        when 3
          # at line 118:47: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_program_932 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 5
        end
      end # loop for decision 5

      match( R_END, TOKENS_FOLLOWING_R_END_IN_program_981 )
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_983 )

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
    # 122:1: dim_dec : DEFINE ID AS type LBRACK INTEGER ( mat_dim )? RBRACK DOT ;
    #
    def dim_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      __ID3__ = nil
      __INTEGER5__ = nil
      type4 = nil


      begin
      # at line 123:5: DEFINE ID AS type LBRACK INTEGER ( mat_dim )? RBRACK DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_dim_dec_998 )
      __ID3__ = match( ID, TOKENS_FOLLOWING_ID_IN_dim_dec_1000 )

      # --> action
       $dim_aux = __ID3__.text 
      # <-- action

      match( AS, TOKENS_FOLLOWING_AS_IN_dim_dec_1004 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_dim_dec_1006 )
      type4 = type
      @state.following.pop

      # --> action
       $program.add_dim_variable(__ID3__.text, ( type4 && @input.to_s( type4.start, type4.stop ) ), true) 
      # <-- action

      match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_dim_dec_1010 )

      # --> action
       $dim.generate_dim_structure(__ID3__.text) 
      # <-- action

      __INTEGER5__ = match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_dim_dec_1014 )

      # --> action
       $dim.add_limit(__ID3__.text, __INTEGER5__.text) 
      # <-- action

      # at line 123:210: ( mat_dim )?
      alt_6 = 2
      look_6_0 = @input.peek( 1 )

      if ( look_6_0 == COMMA )
        alt_6 = 1
      end
      case alt_6
      when 1
        # at line 123:212: mat_dim
        @state.following.push( TOKENS_FOLLOWING_mat_dim_IN_dim_dec_1020 )
        mat_dim
        @state.following.pop

      end
      match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_dim_dec_1025 )

      # --> action
       $dim.calculate_m(__ID3__.text) 
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_dim_dec_1029 )

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
    # 126:1: mat_dim : COMMA INTEGER ;
    #
    def mat_dim
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      __INTEGER6__ = nil


      begin
      # at line 127:5: COMMA INTEGER
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_mat_dim_1044 )

      # --> action
       $dim.generate_dim_structure($dim_aux) 
      # <-- action

      __INTEGER6__ = match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_mat_dim_1048 )

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
    # 130:1: dim_struct : LBRACK exp ( COMMA exp )? RBRACK ;
    #
    def dim_struct
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      begin
      # at line 131:5: LBRACK exp ( COMMA exp )? RBRACK
      match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_dim_struct_1063 )

      # --> action
       $quads.is_dim() 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_exp_IN_dim_struct_1067 )
      exp
      @state.following.pop

      # --> action
       $quads.generate_limit_quad() 
      # <-- action

      # at line 131:71: ( COMMA exp )?
      alt_7 = 2
      look_7_0 = @input.peek( 1 )

      if ( look_7_0 == COMMA )
        alt_7 = 1
      end
      case alt_7
      when 1
        # at line 131:73: COMMA exp
        match( COMMA, TOKENS_FOLLOWING_COMMA_IN_dim_struct_1073 )

        # --> action
         $quads.update_dim() 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_exp_IN_dim_struct_1077 )
        exp
        @state.following.pop

        # --> action
         $quads.generate_limit_quad() 
        # <-- action


      end
      match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_dim_struct_1084 )

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
    # 134:1: var_dec : DEFINE ID AS type ( ASGN ( expression ) )? DOT ;
    #
    def var_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      __ID7__ = nil
      __ASGN9__ = nil
      type8 = nil


      begin
      # at line 135:5: DEFINE ID AS type ( ASGN ( expression ) )? DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_var_dec_1099 )
      __ID7__ = match( ID, TOKENS_FOLLOWING_ID_IN_var_dec_1101 )
      match( AS, TOKENS_FOLLOWING_AS_IN_var_dec_1103 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_var_dec_1105 )
      type8 = type
      @state.following.pop

      # --> action
       $program.add_variable(__ID7__.text, ( type8 && @input.to_s( type8.start, type8.stop ) )) 
      # <-- action

      # at line 135:72: ( ASGN ( expression ) )?
      alt_8 = 2
      look_8_0 = @input.peek( 1 )

      if ( look_8_0 == ASGN )
        alt_8 = 1
      end
      case alt_8
      when 1
        # at line 135:74: ASGN ( expression )
        __ASGN9__ = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_var_dec_1111 )

        # --> action
         $quads.add_id(__ID7__.text, nil) 
        # <-- action


        # --> action
         $quads.add_operator(__ASGN9__.text) 
        # <-- action

        # at line 135:150: ( expression )
        # at line 135:152: expression
        @state.following.push( TOKENS_FOLLOWING_expression_IN_var_dec_1119 )
        expression
        @state.following.pop


        # --> action
         $quads.assgn_quad() 
        # <-- action


      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_var_dec_1128 )

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
    # 138:1: function : FUNCTION ( type ) ID parameters COLON ( estatute | var_dec | dim_dec )* ( RETURN expression DOT )? R_END FUNCTION ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      __ID10__ = nil
      parameters11 = nil
      type12 = nil


      begin
      # at line 139:5: FUNCTION ( type ) ID parameters COLON ( estatute | var_dec | dim_dec )* ( RETURN expression DOT )? R_END FUNCTION
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1141 )
      # at line 139:14: ( type )
      # at line 139:16: type
      @state.following.push( TOKENS_FOLLOWING_type_IN_function_1145 )
      type12 = type
      @state.following.pop

      __ID10__ = match( ID, TOKENS_FOLLOWING_ID_IN_function_1149 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_1151 )
      parameters11 = parameters
      @state.following.pop
      match( COLON, TOKENS_FOLLOWING_COLON_IN_function_1153 )

      # --> action
       $program.add_function(__ID10__.text, ( parameters11 && @input.to_s( parameters11.start, parameters11.stop ) ), ( type12 && @input.to_s( type12.start, type12.stop ) ))
      # <-- action

      # at line 140:43: ( estatute | var_dec | dim_dec )*
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
          # at line 140:45: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_function_1201 )
          estatute
          @state.following.pop

        when 2
          # at line 141:45: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_function_1247 )
          var_dec
          @state.following.pop

        when 3
          # at line 142:45: dim_dec
          @state.following.push( TOKENS_FOLLOWING_dim_dec_IN_function_1293 )
          dim_dec
          @state.following.pop

        else
          break # out of loop for decision 9
        end
      end # loop for decision 9

      # at line 143:46: ( RETURN expression DOT )?
      alt_10 = 2
      look_10_0 = @input.peek( 1 )

      if ( look_10_0 == RETURN )
        alt_10 = 1
      end
      case alt_10
      when 1
        # at line 143:48: RETURN expression DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_function_1342 )
        @state.following.push( TOKENS_FOLLOWING_expression_IN_function_1344 )
        expression
        @state.following.pop

        # --> action
         $quads.return(__ID10__.text) 
        # <-- action

        match( DOT, TOKENS_FOLLOWING_DOT_IN_function_1348 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_1353 )
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1355 )

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
    # 146:1: parameters : LPAR ( type ID ( COMMA type ID )* )? RPAR ;
    #
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      return_value = ParametersReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 147:5: LPAR ( type ID ( COMMA type ID )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_parameters_1372 )
      # at line 147:10: ( type ID ( COMMA type ID )* )?
      alt_12 = 2
      look_12_0 = @input.peek( 1 )

      if ( look_12_0 == ID || look_12_0 == R_BOOL || look_12_0.between?( R_FLOAT, R_STRING ) || look_12_0 == VOID )
        alt_12 = 1
      end
      case alt_12
      when 1
        # at line 147:12: type ID ( COMMA type ID )*
        @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1376 )
        type
        @state.following.pop
        match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1378 )
        # at line 147:20: ( COMMA type ID )*
        while true # decision 11
          alt_11 = 2
          look_11_0 = @input.peek( 1 )

          if ( look_11_0 == COMMA )
            alt_11 = 1

          end
          case alt_11
          when 1
            # at line 147:22: COMMA type ID
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_parameters_1382 )
            @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1384 )
            type
            @state.following.pop
            match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1386 )

          else
            break # out of loop for decision 11
          end
        end # loop for decision 11


      end
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_parameters_1394 )

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
    # 150:1: estatute : ( assignment | condition | while_loop | reading | writing | method_call DOT | func_call DOT );
    #
    def estatute
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      begin
      # at line 151:3: ( assignment | condition | while_loop | reading | writing | method_call DOT | func_call DOT )
      alt_13 = 7
      case look_13 = @input.peek( 1 )
      when ID then case look_13 = @input.peek( 2 )
      when ASGN, LBRACK then alt_13 = 1
      when DOT2 then alt_13 = 6
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
        # at line 151:5: assignment
        @state.following.push( TOKENS_FOLLOWING_assignment_IN_estatute_1407 )
        assignment
        @state.following.pop

      when 2
        # at line 152:5: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatute_1413 )
        condition
        @state.following.pop

      when 3
        # at line 153:5: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_estatute_1419 )
        while_loop
        @state.following.pop

      when 4
        # at line 154:5: reading
        @state.following.push( TOKENS_FOLLOWING_reading_IN_estatute_1425 )
        reading
        @state.following.pop

      when 5
        # at line 155:5: writing
        @state.following.push( TOKENS_FOLLOWING_writing_IN_estatute_1431 )
        writing
        @state.following.pop

      when 6
        # at line 156:5: method_call DOT
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatute_1437 )
        method_call
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_estatute_1439 )

      when 7
        # at line 157:5: func_call DOT
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatute_1445 )
        func_call
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_estatute_1447 )

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
    # 161:1: assignment : ID ( dim_struct )? ( ASGN ( expression ) ) DOT ;
    #
    def assignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      __ID13__ = nil
      __ASGN14__ = nil


      begin
      # at line 162:5: ID ( dim_struct )? ( ASGN ( expression ) ) DOT
      __ID13__ = match( ID, TOKENS_FOLLOWING_ID_IN_assignment_1461 )

      # --> action
       $quads.add_id(__ID13__.text, nil) 
      # <-- action

      # at line 162:42: ( dim_struct )?
      alt_14 = 2
      look_14_0 = @input.peek( 1 )

      if ( look_14_0 == LBRACK )
        alt_14 = 1
      end
      case alt_14
      when 1
        # at line 162:44: dim_struct
        # --> action
         $dim_aux = __ID13__.text 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_dim_struct_IN_assignment_1469 )
        dim_struct
        @state.following.pop

      end

      # --> action
       $quads.check_dim(__ID13__.text) 
      # <-- action

      # at line 162:115: ( ASGN ( expression ) )
      # at line 162:117: ASGN ( expression )
      __ASGN14__ = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_1478 )

      # --> action
       $quads.add_operator(__ASGN14__.text) 
      # <-- action


      # --> action
       $quads.variable_exists?(__ID13__.text) 
      # <-- action

      # at line 162:199: ( expression )
      # at line 162:201: expression
      @state.following.push( TOKENS_FOLLOWING_expression_IN_assignment_1487 )
      expression
      @state.following.pop



      # --> action
       $quads.assgn_quad() 
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_assignment_1495 )

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
    # 165:1: condition : IF LPAR expression RPAR COLON ( estatute )* ( ELSE block | R_END ) IF ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      begin
      # at line 166:5: IF LPAR expression RPAR COLON ( estatute )* ( ELSE block | R_END ) IF
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1508 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_condition_1510 )
      @state.following.push( TOKENS_FOLLOWING_expression_IN_condition_1512 )
      expression
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_condition_1514 )

      # --> action
       $quads.gotof() 
      # <-- action

      match( COLON, TOKENS_FOLLOWING_COLON_IN_condition_1518 )
      # at line 166:55: ( estatute )*
      while true # decision 15
        alt_15 = 2
        look_15_0 = @input.peek( 1 )

        if ( look_15_0.between?( ID, IF ) || look_15_0 == PRINT || look_15_0 == READ || look_15_0 == WHILE )
          alt_15 = 1

        end
        case alt_15
        when 1
          # at line 166:57: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_condition_1522 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 15
        end
      end # loop for decision 15

      # at line 166:69: ( ELSE block | R_END )
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
        # at line 166:71: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_1529 )

        # --> action
         $quads.goto() 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_1533 )
        block
        @state.following.pop

      when 2
        # at line 167:96: R_END
        match( R_END, TOKENS_FOLLOWING_R_END_IN_condition_1630 )

      end

      # --> action
       $quads.fill_program_quad() 
      # <-- action

      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1636 )

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
    # 170:1: while_loop : WHILE LPAR expression RPAR block WHILE ;
    #
    def while_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      begin
      # at line 171:5: WHILE LPAR expression RPAR block WHILE
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1649 )

      # --> action
       $quads.add_jump() 
      # <-- action

      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_while_loop_1653 )
      @state.following.push( TOKENS_FOLLOWING_expression_IN_while_loop_1655 )
      expression
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_while_loop_1657 )

      # --> action
       $quads.gotof() 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_1661 )
      block
      @state.following.pop
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1663 )

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
    # 174:1: block : COLON ( estatute )* R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      begin
      # at line 175:5: COLON ( estatute )* R_END
      match( COLON, TOKENS_FOLLOWING_COLON_IN_block_1678 )
      # at line 175:11: ( estatute )*
      while true # decision 17
        alt_17 = 2
        look_17_0 = @input.peek( 1 )

        if ( look_17_0.between?( ID, IF ) || look_17_0 == PRINT || look_17_0 == READ || look_17_0 == WHILE )
          alt_17 = 1

        end
        case alt_17
        when 1
          # at line 175:13: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_block_1682 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 17
        end
      end # loop for decision 17

      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_1688 )

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
    # 178:1: reading : READ LPAR value COMMA ID RPAR DOT ;
    #
    def reading
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      begin
      # at line 179:5: READ LPAR value COMMA ID RPAR DOT
      match( READ, TOKENS_FOLLOWING_READ_IN_reading_1701 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_reading_1703 )
      @state.following.push( TOKENS_FOLLOWING_value_IN_reading_1705 )
      value
      @state.following.pop
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_reading_1707 )
      match( ID, TOKENS_FOLLOWING_ID_IN_reading_1709 )
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_reading_1711 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_reading_1713 )

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
    # 182:1: writing : PRINT LPAR expression RPAR DOT ;
    #
    def writing
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      begin
      # at line 183:5: PRINT LPAR expression RPAR DOT
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_writing_1726 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_writing_1728 )
      @state.following.push( TOKENS_FOLLOWING_expression_IN_writing_1730 )
      expression
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_writing_1732 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_writing_1734 )

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
    # 186:1: method_call : ID DOT2 method_call_2 ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


      __ID15__ = nil


      begin
      # at line 187:5: ID DOT2 method_call_2
      __ID15__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1749 )

      # --> action
      $method_aux = __ID15__.text
      # <-- action

      match( DOT2, TOKENS_FOLLOWING_DOT2_IN_method_call_1753 )
      @state.following.push( TOKENS_FOLLOWING_method_call_2_IN_method_call_1755 )
      method_call_2
      @state.following.pop

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
    # 190:1: method_call_2 : ID method_call_parameters ;
    #
    def method_call_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      __ID16__ = nil


      begin
      # at line 191:5: ID method_call_parameters
      __ID16__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_2_1768 )

      # --> action
       $quads.method_exists?($method_aux, __ID16__.text) 
      # <-- action


      # --> action
       $func_aux = __ID16__.text 
      # <-- action


      # --> action
       $quads.era_method($method_aux, __ID16__.text) 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_method_call_parameters_IN_method_call_2_1776 )
      method_call_parameters
      @state.following.pop

      # --> action
       $quads.get_return_value() 
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
    # 194:1: method_call_parameters : LPAR ( ( expression ) ( COMMA ( expression ) )* )? RPAR ;
    #
    def method_call_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      begin
      # at line 195:5: LPAR ( ( expression ) ( COMMA ( expression ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_method_call_parameters_1791 )
      # at line 195:10: ( ( expression ) ( COMMA ( expression ) )* )?
      alt_19 = 2
      look_19_0 = @input.peek( 1 )

      if ( look_19_0 == BOOL || look_19_0 == FLOAT || look_19_0 == ID || look_19_0 == INTEGER || look_19_0 == LPAR || look_19_0 == STRING )
        alt_19 = 1
      end
      case alt_19
      when 1
        # at line 195:12: ( expression ) ( COMMA ( expression ) )*
        # at line 195:12: ( expression )
        # at line 195:14: expression
        @state.following.push( TOKENS_FOLLOWING_expression_IN_method_call_parameters_1797 )
        expression
        @state.following.pop


        # --> action
         $quads.method_parameter($method_aux ,$func_aux) 
        # <-- action

        # at line 195:82: ( COMMA ( expression ) )*
        while true # decision 18
          alt_18 = 2
          look_18_0 = @input.peek( 1 )

          if ( look_18_0 == COMMA )
            alt_18 = 1

          end
          case alt_18
          when 1
            # at line 195:84: COMMA ( expression )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_method_call_parameters_1805 )
            # at line 195:90: ( expression )
            # at line 195:92: expression
            @state.following.push( TOKENS_FOLLOWING_expression_IN_method_call_parameters_1809 )
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

      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_method_call_parameters_1824 )

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
    # 203:1: func_call : ID func_call_parameters ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      __ID17__ = nil


      begin
      # at line 204:5: ID func_call_parameters
      __ID17__ = match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1842 )

      # --> action
       $quads.function_exists?(__ID17__.text) 
      # <-- action


      # --> action
       $func_aux = __ID17__.text 
      # <-- action


      # --> action
       $quads.era(__ID17__.text) 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_func_call_parameters_IN_func_call_1850 )
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
    # 207:1: func_call_parameters : LPAR ( ( expression ) ( COMMA ( expression ) )* )? RPAR ;
    #
    def func_call_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


      begin
      # at line 208:5: LPAR ( ( expression ) ( COMMA ( expression ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_func_call_parameters_1865 )
      # at line 208:10: ( ( expression ) ( COMMA ( expression ) )* )?
      alt_21 = 2
      look_21_0 = @input.peek( 1 )

      if ( look_21_0 == BOOL || look_21_0 == FLOAT || look_21_0 == ID || look_21_0 == INTEGER || look_21_0 == LPAR || look_21_0 == STRING )
        alt_21 = 1
      end
      case alt_21
      when 1
        # at line 208:12: ( expression ) ( COMMA ( expression ) )*
        # at line 208:12: ( expression )
        # at line 208:14: expression
        @state.following.push( TOKENS_FOLLOWING_expression_IN_func_call_parameters_1871 )
        expression
        @state.following.pop


        # --> action
         $quads.parameter($func_aux) 
        # <-- action

        # at line 208:61: ( COMMA ( expression ) )*
        while true # decision 20
          alt_20 = 2
          look_20_0 = @input.peek( 1 )

          if ( look_20_0 == COMMA )
            alt_20 = 1

          end
          case alt_20
          when 1
            # at line 208:63: COMMA ( expression )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_func_call_parameters_1879 )
            # at line 208:69: ( expression )
            # at line 208:71: expression
            @state.following.push( TOKENS_FOLLOWING_expression_IN_func_call_parameters_1883 )
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

      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_func_call_parameters_1898 )

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
    # 211:1: expression : exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )? ;
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
      # at line 212:5: exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_1913 )
      exp
      @state.following.pop
      # at line 212:9: ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      alt_23 = 2
      look_23_0 = @input.peek( 1 )

      if ( look_23_0 == AND || look_23_0 == EQ || look_23_0 == GREATER || look_23_0 == LESS || look_23_0 == NEQ || look_23_0 == OR )
        alt_23 = 1
      end
      case alt_23
      when 1
        # at line 212:11: ( GREATER | LESS | NEQ | EQ | AND | OR ) exp
        # at line 212:11: ( GREATER | LESS | NEQ | EQ | AND | OR )
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
          # at line 212:13: GREATER
          __GREATER18__ = match( GREATER, TOKENS_FOLLOWING_GREATER_IN_expression_1919 )

          # --> action
           $quads.add_operator(__GREATER18__.text) 
          # <-- action


        when 2
          # at line 213:13: LESS
          __LESS19__ = match( LESS, TOKENS_FOLLOWING_LESS_IN_expression_1935 )

          # --> action
           $quads.add_operator(__LESS19__.text) 
          # <-- action


        when 3
          # at line 214:13: NEQ
          __NEQ20__ = match( NEQ, TOKENS_FOLLOWING_NEQ_IN_expression_1951 )

          # --> action
           $quads.add_operator(__NEQ20__.text) 
          # <-- action


        when 4
          # at line 215:13: EQ
          __EQ21__ = match( EQ, TOKENS_FOLLOWING_EQ_IN_expression_1967 )

          # --> action
           $quads.add_operator(__EQ21__.text) 
          # <-- action


        when 5
          # at line 216:13: AND
          __AND22__ = match( AND, TOKENS_FOLLOWING_AND_IN_expression_1983 )

          # --> action
           $quads.add_operator(__AND22__.text) 
          # <-- action


        when 6
          # at line 217:13: OR
          __OR23__ = match( OR, TOKENS_FOLLOWING_OR_IN_expression_1999 )

          # --> action
           $quads.add_operator(__OR23__.text) 
          # <-- action


        end
        @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_2015 )
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
    # 222:1: exp : term ( ( PLUS | MINUS ) term )* ;
    #
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      __PLUS24__ = nil
      __MINUS25__ = nil


      begin
      # at line 223:5: term ( ( PLUS | MINUS ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_2043 )
      term
      @state.following.pop
      # at line 223:10: ( ( PLUS | MINUS ) term )*
      while true # decision 25
        alt_25 = 2
        look_25_0 = @input.peek( 1 )

        if ( look_25_0 == MINUS || look_25_0 == PLUS )
          alt_25 = 1

        end
        case alt_25
        when 1
          # at line 223:12: ( PLUS | MINUS ) term
          # at line 223:12: ( PLUS | MINUS )
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
            # at line 223:14: PLUS
            __PLUS24__ = match( PLUS, TOKENS_FOLLOWING_PLUS_IN_exp_2049 )

            # --> action
             $quads.add_operator(__PLUS24__.text) 
            # <-- action


          when 2
            # at line 224:14: MINUS
            __MINUS25__ = match( MINUS, TOKENS_FOLLOWING_MINUS_IN_exp_2066 )

            # --> action
             $quads.add_operator(__MINUS25__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_2083 )
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
    # 229:1: term : factor ( ( MULT | DIV ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )


      __MULT26__ = nil
      __DIV27__ = nil


      begin
      # at line 230:5: factor ( ( MULT | DIV ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_2112 )
      factor
      @state.following.pop
      # at line 230:12: ( ( MULT | DIV ) factor )*
      while true # decision 27
        alt_27 = 2
        look_27_0 = @input.peek( 1 )

        if ( look_27_0 == DIV || look_27_0 == MULT )
          alt_27 = 1

        end
        case alt_27
        when 1
          # at line 230:14: ( MULT | DIV ) factor
          # at line 230:14: ( MULT | DIV )
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
            # at line 230:16: MULT
            __MULT26__ = match( MULT, TOKENS_FOLLOWING_MULT_IN_term_2118 )

            # --> action
             $quads.add_operator(__MULT26__.text) 
            # <-- action


          when 2
            # at line 231:16: DIV
            __DIV27__ = match( DIV, TOKENS_FOLLOWING_DIV_IN_term_2137 )

            # --> action
             $quads.add_operator(__DIV27__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_2156 )
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
    # 236:1: factor : ( ID ( dim_struct )? | LPAR expression RPAR | value | func_call | method_call );
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )


      __ID28__ = nil
      __LPAR29__ = nil
      value30 = nil


      begin
      # at line 237:3: ( ID ( dim_struct )? | LPAR expression RPAR | value | func_call | method_call )
      alt_29 = 5
      case look_29 = @input.peek( 1 )
      when ID then case look_29 = @input.peek( 2 )
      when AND, COMMA, DIV, DOT, EQ, GREATER, LBRACK, LESS, MINUS, MULT, NEQ, OR, PLUS, RBRACK, RPAR then alt_29 = 1
      when LPAR then alt_29 = 4
      when DOT2 then alt_29 = 5
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
        # at line 237:5: ID ( dim_struct )?
        __ID28__ = match( ID, TOKENS_FOLLOWING_ID_IN_factor_2187 )

        # --> action
         $quads.add_id(__ID28__.text, nil) 
        # <-- action

        # at line 237:42: ( dim_struct )?
        alt_28 = 2
        look_28_0 = @input.peek( 1 )

        if ( look_28_0 == LBRACK )
          alt_28 = 1
        end
        case alt_28
        when 1
          # at line 237:44: dim_struct
          # --> action
           $dim_aux = __ID28__.text 
          # <-- action

          @state.following.push( TOKENS_FOLLOWING_dim_struct_IN_factor_2195 )
          dim_struct
          @state.following.pop

        end

        # --> action
         $quads.check_dim(__ID28__.text) 
        # <-- action


      when 2
        # at line 238:5: LPAR expression RPAR
        __LPAR29__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_2206 )

        # --> action
         $quads.add_false_bottom(__LPAR29__.text) 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_expression_IN_factor_2210 )
        expression
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_2212 )

        # --> action
         $quads.remove_false_bottom() 
        # <-- action


      when 3
        # at line 239:5: value
        @state.following.push( TOKENS_FOLLOWING_value_IN_factor_2220 )
        value30 = value
        @state.following.pop

        # --> action
         $quads.add_id(nil, ( value30 && @input.to_s( value30.start, value30.stop ) )) 
        # <-- action


      when 4
        # at line 240:5: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_factor_2228 )
        func_call
        @state.following.pop

      when 5
        # at line 241:5: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_factor_2234 )
        method_call
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
    # 244:1: type : ( R_STRING | R_BOOL | R_FLOAT | R_INTEGER | VOID | ID );
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
    # 253:1: value : ( STRING | FLOAT | INTEGER | BOOL );
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



    TOKENS_FOLLOWING_r_class_IN_start_518 = Set[ 18, 35, 41 ]
    TOKENS_FOLLOWING_function_IN_start_526 = Set[ 18, 35 ]
    TOKENS_FOLLOWING_program_IN_start_531 = Set[ 1 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_544 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_r_class_546 = Set[ 8, 20 ]
    TOKENS_FOLLOWING_heritage_IN_r_class_552 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_r_class_556 = Set[ 10, 18, 42 ]
    TOKENS_FOLLOWING_function_IN_r_class_560 = Set[ 10, 18, 42 ]
    TOKENS_FOLLOWING_dim_dec_IN_r_class_635 = Set[ 10, 18, 42 ]
    TOKENS_FOLLOWING_var_dec_IN_r_class_710 = Set[ 10, 18, 42 ]
    TOKENS_FOLLOWING_R_END_IN_r_class_786 = Set[ 41 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_788 = Set[ 1 ]
    TOKENS_FOLLOWING_HER_IN_heritage_805 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_heritage_807 = Set[ 1 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_826 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_program_830 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_program_832 = Set[ 10, 21, 22, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_program_836 = Set[ 10, 21, 22, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_dim_dec_IN_program_884 = Set[ 10, 21, 22, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_var_dec_IN_program_932 = Set[ 10, 21, 22, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_R_END_IN_program_981 = Set[ 35 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_983 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_dim_dec_998 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_dim_dec_1000 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_dim_dec_1004 = Set[ 21, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_dim_dec_1006 = Set[ 25 ]
    TOKENS_FOLLOWING_LBRACK_IN_dim_dec_1010 = Set[ 24 ]
    TOKENS_FOLLOWING_INTEGER_IN_dim_dec_1014 = Set[ 9, 36 ]
    TOKENS_FOLLOWING_mat_dim_IN_dim_dec_1020 = Set[ 36 ]
    TOKENS_FOLLOWING_RBRACK_IN_dim_dec_1025 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_dim_dec_1029 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_mat_dim_1044 = Set[ 24 ]
    TOKENS_FOLLOWING_INTEGER_IN_mat_dim_1048 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACK_IN_dim_struct_1063 = Set[ 7, 16, 21, 24, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_dim_struct_1067 = Set[ 9, 36 ]
    TOKENS_FOLLOWING_COMMA_IN_dim_struct_1073 = Set[ 7, 16, 21, 24, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_dim_struct_1077 = Set[ 36 ]
    TOKENS_FOLLOWING_RBRACK_IN_dim_struct_1084 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_var_dec_1099 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_var_dec_1101 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_var_dec_1103 = Set[ 21, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_var_dec_1105 = Set[ 6, 12 ]
    TOKENS_FOLLOWING_ASGN_IN_var_dec_1111 = Set[ 7, 16, 21, 24, 27, 46 ]
    TOKENS_FOLLOWING_expression_IN_var_dec_1119 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_var_dec_1128 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1141 = Set[ 21, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_function_1145 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_function_1149 = Set[ 27 ]
    TOKENS_FOLLOWING_parameters_IN_function_1151 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_function_1153 = Set[ 10, 21, 22, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_function_1201 = Set[ 10, 21, 22, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_var_dec_IN_function_1247 = Set[ 10, 21, 22, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_dim_dec_IN_function_1293 = Set[ 10, 21, 22, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_RETURN_IN_function_1342 = Set[ 7, 16, 21, 24, 27, 46 ]
    TOKENS_FOLLOWING_expression_IN_function_1344 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_function_1348 = Set[ 42 ]
    TOKENS_FOLLOWING_R_END_IN_function_1353 = Set[ 18 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1355 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_parameters_1372 = Set[ 21, 39, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_parameters_1376 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1378 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_parameters_1382 = Set[ 21, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_parameters_1384 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1386 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_parameters_1394 = Set[ 1 ]
    TOKENS_FOLLOWING_assignment_IN_estatute_1407 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatute_1413 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_estatute_1419 = Set[ 1 ]
    TOKENS_FOLLOWING_reading_IN_estatute_1425 = Set[ 1 ]
    TOKENS_FOLLOWING_writing_IN_estatute_1431 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatute_1437 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_estatute_1439 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatute_1445 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_estatute_1447 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_assignment_1461 = Set[ 6, 25 ]
    TOKENS_FOLLOWING_dim_struct_IN_assignment_1469 = Set[ 6 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_1478 = Set[ 7, 16, 21, 24, 27, 46 ]
    TOKENS_FOLLOWING_expression_IN_assignment_1487 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_assignment_1495 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_1508 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_condition_1510 = Set[ 7, 16, 21, 24, 27, 46 ]
    TOKENS_FOLLOWING_expression_IN_condition_1512 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_condition_1514 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_condition_1518 = Set[ 14, 21, 22, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_condition_1522 = Set[ 14, 21, 22, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_1529 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_condition_1533 = Set[ 22 ]
    TOKENS_FOLLOWING_R_END_IN_condition_1630 = Set[ 22 ]
    TOKENS_FOLLOWING_IF_IN_condition_1636 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1649 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_while_loop_1653 = Set[ 7, 16, 21, 24, 27, 46 ]
    TOKENS_FOLLOWING_expression_IN_while_loop_1655 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_while_loop_1657 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_while_loop_1661 = Set[ 48 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1663 = Set[ 1 ]
    TOKENS_FOLLOWING_COLON_IN_block_1678 = Set[ 21, 22, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_block_1682 = Set[ 21, 22, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_R_END_IN_block_1688 = Set[ 1 ]
    TOKENS_FOLLOWING_READ_IN_reading_1701 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_reading_1703 = Set[ 7, 16, 24, 46 ]
    TOKENS_FOLLOWING_value_IN_reading_1705 = Set[ 9 ]
    TOKENS_FOLLOWING_COMMA_IN_reading_1707 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_reading_1709 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_reading_1711 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_reading_1713 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_writing_1726 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_writing_1728 = Set[ 7, 16, 21, 24, 27, 46 ]
    TOKENS_FOLLOWING_expression_IN_writing_1730 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_writing_1732 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_writing_1734 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1749 = Set[ 13 ]
    TOKENS_FOLLOWING_DOT2_IN_method_call_1753 = Set[ 21 ]
    TOKENS_FOLLOWING_method_call_2_IN_method_call_1755 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_2_1768 = Set[ 27 ]
    TOKENS_FOLLOWING_method_call_parameters_IN_method_call_2_1776 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_method_call_parameters_1791 = Set[ 7, 16, 21, 24, 27, 39, 46 ]
    TOKENS_FOLLOWING_expression_IN_method_call_parameters_1797 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_method_call_parameters_1805 = Set[ 7, 16, 21, 24, 27, 46 ]
    TOKENS_FOLLOWING_expression_IN_method_call_parameters_1809 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_method_call_parameters_1824 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1842 = Set[ 27 ]
    TOKENS_FOLLOWING_func_call_parameters_IN_func_call_1850 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_func_call_parameters_1865 = Set[ 7, 16, 21, 24, 27, 39, 46 ]
    TOKENS_FOLLOWING_expression_IN_func_call_parameters_1871 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_func_call_parameters_1879 = Set[ 7, 16, 21, 24, 27, 46 ]
    TOKENS_FOLLOWING_expression_IN_func_call_parameters_1883 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_func_call_parameters_1898 = Set[ 1 ]
    TOKENS_FOLLOWING_exp_IN_expression_1913 = Set[ 1, 4, 15, 19, 26, 30, 32 ]
    TOKENS_FOLLOWING_GREATER_IN_expression_1919 = Set[ 7, 16, 21, 24, 27, 46 ]
    TOKENS_FOLLOWING_LESS_IN_expression_1935 = Set[ 7, 16, 21, 24, 27, 46 ]
    TOKENS_FOLLOWING_NEQ_IN_expression_1951 = Set[ 7, 16, 21, 24, 27, 46 ]
    TOKENS_FOLLOWING_EQ_IN_expression_1967 = Set[ 7, 16, 21, 24, 27, 46 ]
    TOKENS_FOLLOWING_AND_IN_expression_1983 = Set[ 7, 16, 21, 24, 27, 46 ]
    TOKENS_FOLLOWING_OR_IN_expression_1999 = Set[ 7, 16, 21, 24, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_expression_2015 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_exp_2043 = Set[ 1, 28, 33 ]
    TOKENS_FOLLOWING_PLUS_IN_exp_2049 = Set[ 7, 16, 21, 24, 27, 46 ]
    TOKENS_FOLLOWING_MINUS_IN_exp_2066 = Set[ 7, 16, 21, 24, 27, 46 ]
    TOKENS_FOLLOWING_term_IN_exp_2083 = Set[ 1, 28, 33 ]
    TOKENS_FOLLOWING_factor_IN_term_2112 = Set[ 1, 11, 29 ]
    TOKENS_FOLLOWING_MULT_IN_term_2118 = Set[ 7, 16, 21, 24, 27, 46 ]
    TOKENS_FOLLOWING_DIV_IN_term_2137 = Set[ 7, 16, 21, 24, 27, 46 ]
    TOKENS_FOLLOWING_factor_IN_term_2156 = Set[ 1, 11, 29 ]
    TOKENS_FOLLOWING_ID_IN_factor_2187 = Set[ 1, 25 ]
    TOKENS_FOLLOWING_dim_struct_IN_factor_2195 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_2206 = Set[ 7, 16, 21, 24, 27, 46 ]
    TOKENS_FOLLOWING_expression_IN_factor_2210 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_2212 = Set[ 1 ]
    TOKENS_FOLLOWING_value_IN_factor_2220 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_factor_2228 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_factor_2234 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
