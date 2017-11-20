#!/usr/bin/env ruby
#
# Hephaestus.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Hephaestus.g
# Generated at: 2017-11-20 15:27:11
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
                   :FUNCTION => 17, :GREATEQ => 18, :GREATER => 19, :HER => 20, 
                   :ID => 21, :IF => 22, :IN => 23, :INTEGER => 24, :LBRACK => 25, 
                   :LEQ => 26, :LESS => 27, :LPAR => 28, :MINUS => 29, :MULT => 30, 
                   :NEQ => 31, :NEWLINE => 32, :OR => 33, :PLUS => 34, :PRINT => 35, 
                   :PROGRAM => 36, :RBRACK => 37, :READ => 38, :RETURN => 39, 
                   :RPAR => 40, :R_BOOL => 41, :R_CLASS => 42, :R_END => 43, 
                   :R_FLOAT => 44, :R_INTEGER => 45, :R_STRING => 46, :STRING => 47, 
                   :VOID => 48, :WHILE => 49, :WS => 50 )


    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "AND", "AS", "ASGN", "BOOL", "COLON", "COMMA", "DEFINE", 
                    "DIV", "DOT", "ELSE", "EQ", "FLOAT", "FOR", "FUNCTION", 
                    "GREATEQ", "GREATER", "HER", "ID", "IF", "IN", "INTEGER", 
                    "LBRACK", "LEQ", "LESS", "LPAR", "MINUS", "MULT", "NEQ", 
                    "NEWLINE", "OR", "PLUS", "PRINT", "PROGRAM", "RBRACK", 
                    "READ", "RETURN", "RPAR", "R_BOOL", "R_CLASS", "R_END", 
                    "R_FLOAT", "R_INTEGER", "R_STRING", "STRING", "VOID", 
                    "WHILE", "WS" )


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
          @state.following.push( TOKENS_FOLLOWING_r_class_IN_start_524 )
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
          @state.following.push( TOKENS_FOLLOWING_function_IN_start_532 )
          function
          @state.following.pop

        else
          break # out of loop for decision 2
        end
      end # loop for decision 2

      @state.following.push( TOKENS_FOLLOWING_program_IN_start_537 )
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
    # 105:1: r_class : R_CLASS ID ( heritage )? COLON ( function | dim_dec | var_dec )* R_END R_CLASS ;
    #
    def r_class
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      __ID1__ = nil


      begin
      # at line 106:5: R_CLASS ID ( heritage )? COLON ( function | dim_dec | var_dec )* R_END R_CLASS
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_550 )
      __ID1__ = match( ID, TOKENS_FOLLOWING_ID_IN_r_class_552 )

      # --> action
       $class_aux = __ID1__.text 
      # <-- action


      # --> action
       $program.add_class(__ID1__.text, nil) 
      # <-- action

      # at line 106:82: ( heritage )?
      alt_3 = 2
      look_3_0 = @input.peek( 1 )

      if ( look_3_0 == HER )
        alt_3 = 1
      end
      case alt_3
      when 1
        # at line 106:82: heritage
        @state.following.push( TOKENS_FOLLOWING_heritage_IN_r_class_558 )
        heritage
        @state.following.pop

      end
      match( COLON, TOKENS_FOLLOWING_COLON_IN_r_class_562 )
      # at line 106:99: ( function | dim_dec | var_dec )*
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
          # at line 106:101: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_r_class_566 )
          function
          @state.following.pop

        when 2
          # at line 107:74: dim_dec
          @state.following.push( TOKENS_FOLLOWING_dim_dec_IN_r_class_641 )
          dim_dec
          @state.following.pop

        when 3
          # at line 108:74: var_dec
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
    # 112:1: heritage : ( HER ID ) ;
    #
    def heritage
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      __ID2__ = nil


      begin
      # at line 113:5: ( HER ID )
      # at line 113:5: ( HER ID )
      # at line 113:7: HER ID
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
    # 116:1: program : PROGRAM ID COLON ( estatute | dim_dec | var_dec )* R_END PROGRAM ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      begin
      # at line 117:5: PROGRAM ID COLON ( estatute | dim_dec | var_dec )* R_END PROGRAM
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_832 )

      # --> action
       $quads.fill_program_quad() 
      # <-- action

      match( ID, TOKENS_FOLLOWING_ID_IN_program_836 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_program_838 )
      # at line 117:54: ( estatute | dim_dec | var_dec )*
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
          # at line 117:56: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_program_842 )
          estatute
          @state.following.pop

        when 2
          # at line 118:47: dim_dec
          @state.following.push( TOKENS_FOLLOWING_dim_dec_IN_program_890 )
          dim_dec
          @state.following.pop

        when 3
          # at line 119:47: var_dec
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

      # at line 124:210: ( mat_dim )?
      alt_6 = 2
      look_6_0 = @input.peek( 1 )

      if ( look_6_0 == COMMA )
        alt_6 = 1
      end
      case alt_6
      when 1
        # at line 124:212: mat_dim
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
    # 127:1: mat_dim : COMMA INTEGER ;
    #
    def mat_dim
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      __INTEGER6__ = nil


      begin
      # at line 128:5: COMMA INTEGER
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
    # 131:1: dim_struct : LBRACK exp ( COMMA exp )? RBRACK ;
    #
    def dim_struct
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      begin
      # at line 132:5: LBRACK exp ( COMMA exp )? RBRACK
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

      # at line 132:71: ( COMMA exp )?
      alt_7 = 2
      look_7_0 = @input.peek( 1 )

      if ( look_7_0 == COMMA )
        alt_7 = 1
      end
      case alt_7
      when 1
        # at line 132:73: COMMA exp
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
    # 135:1: var_dec : DEFINE ID AS type ( ASGN ( expresion ) )? DOT ;
    #
    def var_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      __ID7__ = nil
      __ASGN9__ = nil
      type8 = nil


      begin
      # at line 136:5: DEFINE ID AS type ( ASGN ( expresion ) )? DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_var_dec_1105 )
      __ID7__ = match( ID, TOKENS_FOLLOWING_ID_IN_var_dec_1107 )
      match( AS, TOKENS_FOLLOWING_AS_IN_var_dec_1109 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_var_dec_1111 )
      type8 = type
      @state.following.pop

      # --> action
       $program.add_variable(__ID7__.text, ( type8 && @input.to_s( type8.start, type8.stop ) )) 
      # <-- action

      # at line 136:72: ( ASGN ( expresion ) )?
      alt_8 = 2
      look_8_0 = @input.peek( 1 )

      if ( look_8_0 == ASGN )
        alt_8 = 1
      end
      case alt_8
      when 1
        # at line 136:74: ASGN ( expresion )
        __ASGN9__ = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_var_dec_1117 )

        # --> action
         $quads.add_id(__ID7__.text, nil) 
        # <-- action


        # --> action
         $quads.add_operator(__ASGN9__.text) 
        # <-- action

        # at line 136:150: ( expresion )
        # at line 136:152: expresion
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_var_dec_1125 )
        expresion
        @state.following.pop


        # --> action
         $quads.assgn_quad() 
        # <-- action


      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_var_dec_1134 )

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
    # 139:1: function : FUNCTION ( type ) ID parameters COLON ( estatute | var_dec | dim_dec )* ( RETURN expresion DOT )? R_END FUNCTION ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      __ID10__ = nil
      parameters11 = nil
      type12 = nil


      begin
      # at line 140:5: FUNCTION ( type ) ID parameters COLON ( estatute | var_dec | dim_dec )* ( RETURN expresion DOT )? R_END FUNCTION
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1147 )
      # at line 140:14: ( type )
      # at line 140:16: type
      @state.following.push( TOKENS_FOLLOWING_type_IN_function_1151 )
      type12 = type
      @state.following.pop

      __ID10__ = match( ID, TOKENS_FOLLOWING_ID_IN_function_1155 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_1157 )
      parameters11 = parameters
      @state.following.pop
      match( COLON, TOKENS_FOLLOWING_COLON_IN_function_1159 )

      # --> action
       $program.add_function(__ID10__.text, ( parameters11 && @input.to_s( parameters11.start, parameters11.stop ) ), ( type12 && @input.to_s( type12.start, type12.stop ) ))
      # <-- action

      # at line 141:43: ( estatute | var_dec | dim_dec )*
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
          # at line 141:45: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_function_1207 )
          estatute
          @state.following.pop

        when 2
          # at line 142:45: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_function_1253 )
          var_dec
          @state.following.pop

        when 3
          # at line 143:45: dim_dec
          @state.following.push( TOKENS_FOLLOWING_dim_dec_IN_function_1299 )
          dim_dec
          @state.following.pop

        else
          break # out of loop for decision 9
        end
      end # loop for decision 9

      # at line 144:46: ( RETURN expresion DOT )?
      alt_10 = 2
      look_10_0 = @input.peek( 1 )

      if ( look_10_0 == RETURN )
        alt_10 = 1
      end
      case alt_10
      when 1
        # at line 144:48: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_function_1348 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_function_1350 )
        expresion
        @state.following.pop

        # --> action
         $quads.return(__ID10__.text) 
        # <-- action

        match( DOT, TOKENS_FOLLOWING_DOT_IN_function_1354 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_1359 )
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1361 )

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
    # 147:1: parameters : LPAR ( type ID ( COMMA type ID )* )? RPAR ;
    #
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      return_value = ParametersReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 148:5: LPAR ( type ID ( COMMA type ID )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_parameters_1378 )
      # at line 148:10: ( type ID ( COMMA type ID )* )?
      alt_12 = 2
      look_12_0 = @input.peek( 1 )

      if ( look_12_0 == ID || look_12_0 == R_BOOL || look_12_0.between?( R_FLOAT, R_STRING ) || look_12_0 == VOID )
        alt_12 = 1
      end
      case alt_12
      when 1
        # at line 148:12: type ID ( COMMA type ID )*
        @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1382 )
        type
        @state.following.pop
        match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1384 )
        # at line 148:20: ( COMMA type ID )*
        while true # decision 11
          alt_11 = 2
          look_11_0 = @input.peek( 1 )

          if ( look_11_0 == COMMA )
            alt_11 = 1

          end
          case alt_11
          when 1
            # at line 148:22: COMMA type ID
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_parameters_1388 )
            @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1390 )
            type
            @state.following.pop
            match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1392 )

          else
            break # out of loop for decision 11
          end
        end # loop for decision 11


      end
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_parameters_1400 )

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
    # 151:1: estatute : ( method_call | assignment | condition | while_loop | reading | writing | func_call DOT );
    #
    def estatute
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      begin
      # at line 152:3: ( method_call | assignment | condition | while_loop | reading | writing | func_call DOT )
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
        # at line 152:5: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatute_1413 )
        method_call
        @state.following.pop

      when 2
        # at line 153:5: assignment
        @state.following.push( TOKENS_FOLLOWING_assignment_IN_estatute_1419 )
        assignment
        @state.following.pop

      when 3
        # at line 154:5: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatute_1425 )
        condition
        @state.following.pop

      when 4
        # at line 155:5: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_estatute_1431 )
        while_loop
        @state.following.pop

      when 5
        # at line 156:5: reading
        @state.following.push( TOKENS_FOLLOWING_reading_IN_estatute_1437 )
        reading
        @state.following.pop

      when 6
        # at line 157:5: writing
        @state.following.push( TOKENS_FOLLOWING_writing_IN_estatute_1443 )
        writing
        @state.following.pop

      when 7
        # at line 158:5: func_call DOT
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatute_1449 )
        func_call
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_estatute_1451 )

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
    # 161:1: method_call : ID DOT method_call_2 ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      __ID13__ = nil


      begin
      # at line 162:5: ID DOT method_call_2
      __ID13__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1464 )

      # --> action
      $method_aux = __ID13__.text
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_1468 )
      @state.following.push( TOKENS_FOLLOWING_method_call_2_IN_method_call_1470 )
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
    # 165:1: method_call_2 : ID method_call_parameters DOT ;
    #
    def method_call_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      __ID14__ = nil


      begin
      # at line 166:5: ID method_call_parameters DOT
      __ID14__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_2_1485 )

      # --> action
       $func_aux = __ID14__.text 
      # <-- action


      # --> action
       $quads.era_method($method_aux, __ID14__.text) 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_method_call_parameters_IN_method_call_2_1491 )
      method_call_parameters
      @state.following.pop

      # --> action
       $quads.method_exists?($method_aux, __ID14__.text) 
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_2_1495 )

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
    # 169:1: method_call_parameters : LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR ;
    #
    def method_call_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      begin
      # at line 170:5: LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_method_call_parameters_1508 )
      # at line 170:10: ( ( expresion ) ( COMMA ( expresion ) )* )?
      alt_15 = 2
      look_15_0 = @input.peek( 1 )

      if ( look_15_0 == BOOL || look_15_0 == FLOAT || look_15_0 == ID || look_15_0 == INTEGER || look_15_0 == LPAR || look_15_0 == STRING )
        alt_15 = 1
      end
      case alt_15
      when 1
        # at line 170:12: ( expresion ) ( COMMA ( expresion ) )*
        # at line 170:12: ( expresion )
        # at line 170:14: expresion
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_method_call_parameters_1514 )
        expresion
        @state.following.pop


        # --> action
         $quads.method_parameter($method_aux ,$func_aux) 
        # <-- action

        # at line 170:81: ( COMMA ( expresion ) )*
        while true # decision 14
          alt_14 = 2
          look_14_0 = @input.peek( 1 )

          if ( look_14_0 == COMMA )
            alt_14 = 1

          end
          case alt_14
          when 1
            # at line 170:83: COMMA ( expresion )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_method_call_parameters_1522 )
            # at line 170:89: ( expresion )
            # at line 170:91: expresion
            @state.following.push( TOKENS_FOLLOWING_expresion_IN_method_call_parameters_1526 )
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

      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_method_call_parameters_1541 )

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
    # 173:1: assignment : ID ( dim_struct )? ( ASGN ( expresion ) ) DOT ;
    #
    def assignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      __ID15__ = nil
      __ASGN16__ = nil


      begin
      # at line 174:5: ID ( dim_struct )? ( ASGN ( expresion ) ) DOT
      __ID15__ = match( ID, TOKENS_FOLLOWING_ID_IN_assignment_1556 )

      # --> action
       $quads.add_id(__ID15__.text, nil) 
      # <-- action

      # at line 174:42: ( dim_struct )?
      alt_16 = 2
      look_16_0 = @input.peek( 1 )

      if ( look_16_0 == LBRACK )
        alt_16 = 1
      end
      case alt_16
      when 1
        # at line 174:44: dim_struct
        # --> action
         $dim_aux = __ID15__.text 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_dim_struct_IN_assignment_1564 )
        dim_struct
        @state.following.pop

      end

      # --> action
       $quads.check_dim(__ID15__.text) 
      # <-- action

      # at line 174:115: ( ASGN ( expresion ) )
      # at line 174:117: ASGN ( expresion )
      __ASGN16__ = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_1573 )

      # --> action
       $quads.add_operator(__ASGN16__.text) 
      # <-- action


      # --> action
       $quads.variable_exists?(__ID15__.text) 
      # <-- action

      # at line 174:199: ( expresion )
      # at line 174:201: expresion
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_assignment_1582 )
      expresion
      @state.following.pop



      # --> action
       $quads.assgn_quad() 
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_assignment_1590 )

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
    # 177:1: condition : IF LPAR expresion RPAR COLON ( estatute )* ( ELSE block | R_END ) IF ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      begin
      # at line 178:5: IF LPAR expresion RPAR COLON ( estatute )* ( ELSE block | R_END ) IF
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1603 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_condition_1605 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_condition_1607 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_condition_1609 )

      # --> action
       $quads.gotof() 
      # <-- action

      match( COLON, TOKENS_FOLLOWING_COLON_IN_condition_1613 )
      # at line 178:54: ( estatute )*
      while true # decision 17
        alt_17 = 2
        look_17_0 = @input.peek( 1 )

        if ( look_17_0.between?( ID, IF ) || look_17_0 == PRINT || look_17_0 == READ || look_17_0 == WHILE )
          alt_17 = 1

        end
        case alt_17
        when 1
          # at line 178:56: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_condition_1617 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 17
        end
      end # loop for decision 17

      # at line 178:68: ( ELSE block | R_END )
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
        # at line 178:70: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_1624 )

        # --> action
         $quads.goto() 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_1628 )
        block
        @state.following.pop

      when 2
        # at line 179:96: R_END
        match( R_END, TOKENS_FOLLOWING_R_END_IN_condition_1725 )

      end

      # --> action
       $quads.fill_program_quad() 
      # <-- action

      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1731 )

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
    # 182:1: while_loop : WHILE LPAR expresion RPAR block WHILE ;
    #
    def while_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      begin
      # at line 183:5: WHILE LPAR expresion RPAR block WHILE
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1744 )

      # --> action
       $quads.add_jump() 
      # <-- action

      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_while_loop_1748 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_while_loop_1750 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_while_loop_1752 )

      # --> action
       $quads.gotof() 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_1756 )
      block
      @state.following.pop
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1758 )

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
      match( COLON, TOKENS_FOLLOWING_COLON_IN_block_1773 )
      # at line 187:11: ( estatute )*
      while true # decision 19
        alt_19 = 2
        look_19_0 = @input.peek( 1 )

        if ( look_19_0.between?( ID, IF ) || look_19_0 == PRINT || look_19_0 == READ || look_19_0 == WHILE )
          alt_19 = 1

        end
        case alt_19
        when 1
          # at line 187:13: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_block_1777 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 19
        end
      end # loop for decision 19

      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_1783 )

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
    # 190:1: reading : READ LPAR value COMMA ID RPAR DOT ;
    #
    def reading
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      begin
      # at line 191:5: READ LPAR value COMMA ID RPAR DOT
      match( READ, TOKENS_FOLLOWING_READ_IN_reading_1796 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_reading_1798 )
      @state.following.push( TOKENS_FOLLOWING_value_IN_reading_1800 )
      value
      @state.following.pop
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_reading_1802 )
      match( ID, TOKENS_FOLLOWING_ID_IN_reading_1804 )
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_reading_1806 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_reading_1808 )

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
    # 194:1: writing : PRINT LPAR expresion RPAR DOT ;
    #
    def writing
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      begin
      # at line 195:5: PRINT LPAR expresion RPAR DOT
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_writing_1821 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_writing_1823 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_writing_1825 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_writing_1827 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_writing_1829 )

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
    # 198:1: func_call : ID func_call_parameters ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      __ID17__ = nil


      begin
      # at line 199:5: ID func_call_parameters
      __ID17__ = match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1844 )

      # --> action
       $quads.function_exists?(__ID17__.text) 
      # <-- action


      # --> action
       $func_aux = __ID17__.text 
      # <-- action


      # --> action
       $quads.era(__ID17__.text) 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_func_call_parameters_IN_func_call_1852 )
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
    # 202:1: func_call_parameters : LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR ;
    #
    def func_call_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


      begin
      # at line 203:5: LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_func_call_parameters_1867 )
      # at line 203:10: ( ( expresion ) ( COMMA ( expresion ) )* )?
      alt_21 = 2
      look_21_0 = @input.peek( 1 )

      if ( look_21_0 == BOOL || look_21_0 == FLOAT || look_21_0 == ID || look_21_0 == INTEGER || look_21_0 == LPAR || look_21_0 == STRING )
        alt_21 = 1
      end
      case alt_21
      when 1
        # at line 203:12: ( expresion ) ( COMMA ( expresion ) )*
        # at line 203:12: ( expresion )
        # at line 203:14: expresion
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_func_call_parameters_1873 )
        expresion
        @state.following.pop


        # --> action
         $quads.parameter($func_aux) 
        # <-- action

        # at line 203:60: ( COMMA ( expresion ) )*
        while true # decision 20
          alt_20 = 2
          look_20_0 = @input.peek( 1 )

          if ( look_20_0 == COMMA )
            alt_20 = 1

          end
          case alt_20
          when 1
            # at line 203:62: COMMA ( expresion )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_func_call_parameters_1881 )
            # at line 203:68: ( expresion )
            # at line 203:70: expresion
            @state.following.push( TOKENS_FOLLOWING_expresion_IN_func_call_parameters_1885 )
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

      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_func_call_parameters_1900 )

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
    # 206:1: expresion : exp ( ( GREATER | GREATEQ | LESS | LEQ | NEQ | EQ | AND | OR ) exp )? ;
    #
    def expresion
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )


      __GREATER18__ = nil
      __GREATEQ19__ = nil
      __LESS20__ = nil
      __LEQ21__ = nil
      __NEQ22__ = nil
      __EQ23__ = nil
      __AND24__ = nil
      __OR25__ = nil


      begin
      # at line 207:5: exp ( ( GREATER | GREATEQ | LESS | LEQ | NEQ | EQ | AND | OR ) exp )?
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_1915 )
      exp
      @state.following.pop
      # at line 207:9: ( ( GREATER | GREATEQ | LESS | LEQ | NEQ | EQ | AND | OR ) exp )?
      alt_23 = 2
      look_23_0 = @input.peek( 1 )

      if ( look_23_0 == AND || look_23_0 == EQ || look_23_0.between?( GREATEQ, GREATER ) || look_23_0.between?( LEQ, LESS ) || look_23_0 == NEQ || look_23_0 == OR )
        alt_23 = 1
      end
      case alt_23
      when 1
        # at line 207:11: ( GREATER | GREATEQ | LESS | LEQ | NEQ | EQ | AND | OR ) exp
        # at line 207:11: ( GREATER | GREATEQ | LESS | LEQ | NEQ | EQ | AND | OR )
        alt_22 = 8
        case look_22 = @input.peek( 1 )
        when GREATER then alt_22 = 1
        when GREATEQ then alt_22 = 2
        when LESS then alt_22 = 3
        when LEQ then alt_22 = 4
        when NEQ then alt_22 = 5
        when EQ then alt_22 = 6
        when AND then alt_22 = 7
        when OR then alt_22 = 8
        else
          raise NoViableAlternative( "", 22, 0 )

        end
        case alt_22
        when 1
          # at line 207:13: GREATER
          __GREATER18__ = match( GREATER, TOKENS_FOLLOWING_GREATER_IN_expresion_1921 )

          # --> action
           $quads.add_operator(__GREATER18__.text) 
          # <-- action


        when 2
          # at line 208:13: GREATEQ
          __GREATEQ19__ = match( GREATEQ, TOKENS_FOLLOWING_GREATEQ_IN_expresion_1937 )

          # --> action
           $quads.add_operator(__GREATEQ19__.text) 
          # <-- action


        when 3
          # at line 209:13: LESS
          __LESS20__ = match( LESS, TOKENS_FOLLOWING_LESS_IN_expresion_1953 )

          # --> action
           $quads.add_operator(__LESS20__.text) 
          # <-- action


        when 4
          # at line 210:13: LEQ
          __LEQ21__ = match( LEQ, TOKENS_FOLLOWING_LEQ_IN_expresion_1969 )

          # --> action
           $quads.add_operator(__LEQ21__.text) 
          # <-- action


        when 5
          # at line 211:13: NEQ
          __NEQ22__ = match( NEQ, TOKENS_FOLLOWING_NEQ_IN_expresion_1985 )

          # --> action
           $quads.add_operator(__NEQ22__.text) 
          # <-- action


        when 6
          # at line 212:13: EQ
          __EQ23__ = match( EQ, TOKENS_FOLLOWING_EQ_IN_expresion_2001 )

          # --> action
           $quads.add_operator(__EQ23__.text) 
          # <-- action


        when 7
          # at line 213:13: AND
          __AND24__ = match( AND, TOKENS_FOLLOWING_AND_IN_expresion_2017 )

          # --> action
           $quads.add_operator(__AND24__.text) 
          # <-- action


        when 8
          # at line 214:13: OR
          __OR25__ = match( OR, TOKENS_FOLLOWING_OR_IN_expresion_2033 )

          # --> action
           $quads.add_operator(__OR25__.text) 
          # <-- action


        end
        @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_2049 )
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
    # 219:1: exp : term ( ( PLUS | MINUS ) term )* ;
    #
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      __PLUS26__ = nil
      __MINUS27__ = nil


      begin
      # at line 220:5: term ( ( PLUS | MINUS ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_2077 )
      term
      @state.following.pop
      # at line 220:10: ( ( PLUS | MINUS ) term )*
      while true # decision 25
        alt_25 = 2
        look_25_0 = @input.peek( 1 )

        if ( look_25_0 == MINUS || look_25_0 == PLUS )
          alt_25 = 1

        end
        case alt_25
        when 1
          # at line 220:12: ( PLUS | MINUS ) term
          # at line 220:12: ( PLUS | MINUS )
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
            # at line 220:14: PLUS
            __PLUS26__ = match( PLUS, TOKENS_FOLLOWING_PLUS_IN_exp_2083 )

            # --> action
             $quads.add_operator(__PLUS26__.text) 
            # <-- action


          when 2
            # at line 221:14: MINUS
            __MINUS27__ = match( MINUS, TOKENS_FOLLOWING_MINUS_IN_exp_2100 )

            # --> action
             $quads.add_operator(__MINUS27__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_2117 )
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
    # 226:1: term : factor ( ( MULT | DIV ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )


      __MULT28__ = nil
      __DIV29__ = nil


      begin
      # at line 227:5: factor ( ( MULT | DIV ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_2146 )
      factor
      @state.following.pop
      # at line 227:12: ( ( MULT | DIV ) factor )*
      while true # decision 27
        alt_27 = 2
        look_27_0 = @input.peek( 1 )

        if ( look_27_0 == DIV || look_27_0 == MULT )
          alt_27 = 1

        end
        case alt_27
        when 1
          # at line 227:14: ( MULT | DIV ) factor
          # at line 227:14: ( MULT | DIV )
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
            # at line 227:16: MULT
            __MULT28__ = match( MULT, TOKENS_FOLLOWING_MULT_IN_term_2152 )

            # --> action
             $quads.add_operator(__MULT28__.text) 
            # <-- action


          when 2
            # at line 228:16: DIV
            __DIV29__ = match( DIV, TOKENS_FOLLOWING_DIV_IN_term_2171 )

            # --> action
             $quads.add_operator(__DIV29__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_2190 )
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
    # 233:1: factor : ( ID ( dim_struct )? | LPAR expresion RPAR | value | func_call );
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )


      __ID30__ = nil
      __LPAR31__ = nil
      value32 = nil


      begin
      # at line 234:3: ( ID ( dim_struct )? | LPAR expresion RPAR | value | func_call )
      alt_29 = 4
      case look_29 = @input.peek( 1 )
      when ID then look_29_1 = @input.peek( 2 )

      if ( look_29_1 == AND || look_29_1 == COMMA || look_29_1.between?( DIV, DOT ) || look_29_1 == EQ || look_29_1.between?( GREATEQ, GREATER ) || look_29_1.between?( LBRACK, LESS ) || look_29_1.between?( MINUS, NEQ ) || look_29_1.between?( OR, PLUS ) || look_29_1 == RBRACK || look_29_1 == RPAR )
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
        # at line 234:5: ID ( dim_struct )?
        __ID30__ = match( ID, TOKENS_FOLLOWING_ID_IN_factor_2221 )

        # --> action
         $quads.add_id(__ID30__.text, nil) 
        # <-- action

        # at line 234:42: ( dim_struct )?
        alt_28 = 2
        look_28_0 = @input.peek( 1 )

        if ( look_28_0 == LBRACK )
          alt_28 = 1
        end
        case alt_28
        when 1
          # at line 234:44: dim_struct
          # --> action
           $dim_aux = __ID30__.text 
          # <-- action

          @state.following.push( TOKENS_FOLLOWING_dim_struct_IN_factor_2229 )
          dim_struct
          @state.following.pop

        end

        # --> action
         $quads.check_dim(__ID30__.text) 
        # <-- action


      when 2
        # at line 235:7: LPAR expresion RPAR
        __LPAR31__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_2242 )

        # --> action
         $quads.add_false_bottom(__LPAR31__.text) 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_expresion_IN_factor_2246 )
        expresion
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_2248 )

        # --> action
         $quads.remove_false_bottom() 
        # <-- action


      when 3
        # at line 236:7: value
        @state.following.push( TOKENS_FOLLOWING_value_IN_factor_2258 )
        value32 = value
        @state.following.pop

        # --> action
         $quads.add_id(nil, ( value32 && @input.to_s( value32.start, value32.stop ) )) 
        # <-- action


      when 4
        # at line 237:7: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_factor_2268 )
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
    # 240:1: type : ( R_STRING | R_BOOL | R_FLOAT | R_INTEGER | VOID | ID );
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
    # 249:1: value : ( STRING | FLOAT | INTEGER | BOOL );
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



    TOKENS_FOLLOWING_r_class_IN_start_524 = Set[ 17, 36, 42 ]
    TOKENS_FOLLOWING_function_IN_start_532 = Set[ 17, 36 ]
    TOKENS_FOLLOWING_program_IN_start_537 = Set[ 1 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_550 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_r_class_552 = Set[ 8, 20 ]
    TOKENS_FOLLOWING_heritage_IN_r_class_558 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_r_class_562 = Set[ 10, 17, 43 ]
    TOKENS_FOLLOWING_function_IN_r_class_566 = Set[ 10, 17, 43 ]
    TOKENS_FOLLOWING_dim_dec_IN_r_class_641 = Set[ 10, 17, 43 ]
    TOKENS_FOLLOWING_var_dec_IN_r_class_716 = Set[ 10, 17, 43 ]
    TOKENS_FOLLOWING_R_END_IN_r_class_792 = Set[ 42 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_794 = Set[ 1 ]
    TOKENS_FOLLOWING_HER_IN_heritage_811 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_heritage_813 = Set[ 1 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_832 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_program_836 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_program_838 = Set[ 10, 21, 22, 35, 38, 43, 49 ]
    TOKENS_FOLLOWING_estatute_IN_program_842 = Set[ 10, 21, 22, 35, 38, 43, 49 ]
    TOKENS_FOLLOWING_dim_dec_IN_program_890 = Set[ 10, 21, 22, 35, 38, 43, 49 ]
    TOKENS_FOLLOWING_var_dec_IN_program_938 = Set[ 10, 21, 22, 35, 38, 43, 49 ]
    TOKENS_FOLLOWING_R_END_IN_program_987 = Set[ 36 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_989 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_dim_dec_1004 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_dim_dec_1006 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_dim_dec_1010 = Set[ 21, 41, 44, 45, 46, 48 ]
    TOKENS_FOLLOWING_type_IN_dim_dec_1012 = Set[ 25 ]
    TOKENS_FOLLOWING_LBRACK_IN_dim_dec_1016 = Set[ 24 ]
    TOKENS_FOLLOWING_INTEGER_IN_dim_dec_1020 = Set[ 9, 37 ]
    TOKENS_FOLLOWING_mat_dim_IN_dim_dec_1026 = Set[ 37 ]
    TOKENS_FOLLOWING_RBRACK_IN_dim_dec_1031 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_dim_dec_1035 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_mat_dim_1050 = Set[ 24 ]
    TOKENS_FOLLOWING_INTEGER_IN_mat_dim_1054 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACK_IN_dim_struct_1069 = Set[ 7, 15, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_exp_IN_dim_struct_1073 = Set[ 9, 37 ]
    TOKENS_FOLLOWING_COMMA_IN_dim_struct_1079 = Set[ 7, 15, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_exp_IN_dim_struct_1083 = Set[ 37 ]
    TOKENS_FOLLOWING_RBRACK_IN_dim_struct_1090 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_var_dec_1105 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_var_dec_1107 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_var_dec_1109 = Set[ 21, 41, 44, 45, 46, 48 ]
    TOKENS_FOLLOWING_type_IN_var_dec_1111 = Set[ 6, 12 ]
    TOKENS_FOLLOWING_ASGN_IN_var_dec_1117 = Set[ 7, 15, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_expresion_IN_var_dec_1125 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_var_dec_1134 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1147 = Set[ 21, 41, 44, 45, 46, 48 ]
    TOKENS_FOLLOWING_type_IN_function_1151 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_function_1155 = Set[ 28 ]
    TOKENS_FOLLOWING_parameters_IN_function_1157 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_function_1159 = Set[ 10, 21, 22, 35, 38, 39, 43, 49 ]
    TOKENS_FOLLOWING_estatute_IN_function_1207 = Set[ 10, 21, 22, 35, 38, 39, 43, 49 ]
    TOKENS_FOLLOWING_var_dec_IN_function_1253 = Set[ 10, 21, 22, 35, 38, 39, 43, 49 ]
    TOKENS_FOLLOWING_dim_dec_IN_function_1299 = Set[ 10, 21, 22, 35, 38, 39, 43, 49 ]
    TOKENS_FOLLOWING_RETURN_IN_function_1348 = Set[ 7, 15, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_expresion_IN_function_1350 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_function_1354 = Set[ 43 ]
    TOKENS_FOLLOWING_R_END_IN_function_1359 = Set[ 17 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1361 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_parameters_1378 = Set[ 21, 40, 41, 44, 45, 46, 48 ]
    TOKENS_FOLLOWING_type_IN_parameters_1382 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1384 = Set[ 9, 40 ]
    TOKENS_FOLLOWING_COMMA_IN_parameters_1388 = Set[ 21, 41, 44, 45, 46, 48 ]
    TOKENS_FOLLOWING_type_IN_parameters_1390 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1392 = Set[ 9, 40 ]
    TOKENS_FOLLOWING_RPAR_IN_parameters_1400 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatute_1413 = Set[ 1 ]
    TOKENS_FOLLOWING_assignment_IN_estatute_1419 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatute_1425 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_estatute_1431 = Set[ 1 ]
    TOKENS_FOLLOWING_reading_IN_estatute_1437 = Set[ 1 ]
    TOKENS_FOLLOWING_writing_IN_estatute_1443 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatute_1449 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_estatute_1451 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1464 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_1468 = Set[ 21 ]
    TOKENS_FOLLOWING_method_call_2_IN_method_call_1470 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_2_1485 = Set[ 28 ]
    TOKENS_FOLLOWING_method_call_parameters_IN_method_call_2_1491 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_2_1495 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_method_call_parameters_1508 = Set[ 7, 15, 21, 24, 28, 40, 47 ]
    TOKENS_FOLLOWING_expresion_IN_method_call_parameters_1514 = Set[ 9, 40 ]
    TOKENS_FOLLOWING_COMMA_IN_method_call_parameters_1522 = Set[ 7, 15, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_expresion_IN_method_call_parameters_1526 = Set[ 9, 40 ]
    TOKENS_FOLLOWING_RPAR_IN_method_call_parameters_1541 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_assignment_1556 = Set[ 6, 25 ]
    TOKENS_FOLLOWING_dim_struct_IN_assignment_1564 = Set[ 6 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_1573 = Set[ 7, 15, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_expresion_IN_assignment_1582 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_assignment_1590 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_1603 = Set[ 28 ]
    TOKENS_FOLLOWING_LPAR_IN_condition_1605 = Set[ 7, 15, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_expresion_IN_condition_1607 = Set[ 40 ]
    TOKENS_FOLLOWING_RPAR_IN_condition_1609 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_condition_1613 = Set[ 13, 21, 22, 35, 38, 43, 49 ]
    TOKENS_FOLLOWING_estatute_IN_condition_1617 = Set[ 13, 21, 22, 35, 38, 43, 49 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_1624 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_condition_1628 = Set[ 22 ]
    TOKENS_FOLLOWING_R_END_IN_condition_1725 = Set[ 22 ]
    TOKENS_FOLLOWING_IF_IN_condition_1731 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1744 = Set[ 28 ]
    TOKENS_FOLLOWING_LPAR_IN_while_loop_1748 = Set[ 7, 15, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_expresion_IN_while_loop_1750 = Set[ 40 ]
    TOKENS_FOLLOWING_RPAR_IN_while_loop_1752 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_while_loop_1756 = Set[ 49 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1758 = Set[ 1 ]
    TOKENS_FOLLOWING_COLON_IN_block_1773 = Set[ 21, 22, 35, 38, 43, 49 ]
    TOKENS_FOLLOWING_estatute_IN_block_1777 = Set[ 21, 22, 35, 38, 43, 49 ]
    TOKENS_FOLLOWING_R_END_IN_block_1783 = Set[ 1 ]
    TOKENS_FOLLOWING_READ_IN_reading_1796 = Set[ 28 ]
    TOKENS_FOLLOWING_LPAR_IN_reading_1798 = Set[ 7, 15, 24, 47 ]
    TOKENS_FOLLOWING_value_IN_reading_1800 = Set[ 9 ]
    TOKENS_FOLLOWING_COMMA_IN_reading_1802 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_reading_1804 = Set[ 40 ]
    TOKENS_FOLLOWING_RPAR_IN_reading_1806 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_reading_1808 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_writing_1821 = Set[ 28 ]
    TOKENS_FOLLOWING_LPAR_IN_writing_1823 = Set[ 7, 15, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_expresion_IN_writing_1825 = Set[ 40 ]
    TOKENS_FOLLOWING_RPAR_IN_writing_1827 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_writing_1829 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1844 = Set[ 28 ]
    TOKENS_FOLLOWING_func_call_parameters_IN_func_call_1852 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_func_call_parameters_1867 = Set[ 7, 15, 21, 24, 28, 40, 47 ]
    TOKENS_FOLLOWING_expresion_IN_func_call_parameters_1873 = Set[ 9, 40 ]
    TOKENS_FOLLOWING_COMMA_IN_func_call_parameters_1881 = Set[ 7, 15, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_expresion_IN_func_call_parameters_1885 = Set[ 9, 40 ]
    TOKENS_FOLLOWING_RPAR_IN_func_call_parameters_1900 = Set[ 1 ]
    TOKENS_FOLLOWING_exp_IN_expresion_1915 = Set[ 1, 4, 14, 18, 19, 26, 27, 31, 33 ]
    TOKENS_FOLLOWING_GREATER_IN_expresion_1921 = Set[ 7, 15, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_GREATEQ_IN_expresion_1937 = Set[ 7, 15, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_LESS_IN_expresion_1953 = Set[ 7, 15, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_LEQ_IN_expresion_1969 = Set[ 7, 15, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_NEQ_IN_expresion_1985 = Set[ 7, 15, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_EQ_IN_expresion_2001 = Set[ 7, 15, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_AND_IN_expresion_2017 = Set[ 7, 15, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_OR_IN_expresion_2033 = Set[ 7, 15, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_exp_IN_expresion_2049 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_exp_2077 = Set[ 1, 29, 34 ]
    TOKENS_FOLLOWING_PLUS_IN_exp_2083 = Set[ 7, 15, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_MINUS_IN_exp_2100 = Set[ 7, 15, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_term_IN_exp_2117 = Set[ 1, 29, 34 ]
    TOKENS_FOLLOWING_factor_IN_term_2146 = Set[ 1, 11, 30 ]
    TOKENS_FOLLOWING_MULT_IN_term_2152 = Set[ 7, 15, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_DIV_IN_term_2171 = Set[ 7, 15, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_factor_IN_term_2190 = Set[ 1, 11, 30 ]
    TOKENS_FOLLOWING_ID_IN_factor_2221 = Set[ 1, 25 ]
    TOKENS_FOLLOWING_dim_struct_IN_factor_2229 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_2242 = Set[ 7, 15, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_expresion_IN_factor_2246 = Set[ 40 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_2248 = Set[ 1 ]
    TOKENS_FOLLOWING_value_IN_factor_2258 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_factor_2268 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
