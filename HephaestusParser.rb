#!/usr/bin/env ruby
#
# Hephaestus.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Hephaestus.g
# Generated at: 2017-11-20 21:40:46
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
                   :NEQ => 31, :NEWLINE => 32, :OBJ => 33, :OR => 34, :PLUS => 35, 
                   :PRINT => 36, :PROGRAM => 37, :RBRACK => 38, :READ => 39, 
                   :RETURN => 40, :RPAR => 41, :R_BOOL => 42, :R_CLASS => 43, 
                   :R_END => 44, :R_FLOAT => 45, :R_INTEGER => 46, :R_STRING => 47, 
                   :STRING => 48, :VOID => 49, :WHILE => 50, :WS => 51 )


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
                    "NEWLINE", "OBJ", "OR", "PLUS", "PRINT", "PROGRAM", 
                    "RBRACK", "READ", "RETURN", "RPAR", "R_BOOL", "R_CLASS", 
                    "R_END", "R_FLOAT", "R_INTEGER", "R_STRING", "STRING", 
                    "VOID", "WHILE", "WS" )


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
    # 103:1: start : ( r_class )* ( function )* program ;
    #
    def start
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 104:5: ( r_class )* ( function )* program
      # --> action
       $quads.goto_program() 
      # <-- action

      # at line 104:32: ( r_class )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == R_CLASS )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 104:34: r_class
          @state.following.push( TOKENS_FOLLOWING_r_class_IN_start_530 )
          r_class
          @state.following.pop

        else
          break # out of loop for decision 1
        end
      end # loop for decision 1

      # at line 104:46: ( function )*
      while true # decision 2
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0 == FUNCTION )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 104:48: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_start_538 )
          function
          @state.following.pop

        else
          break # out of loop for decision 2
        end
      end # loop for decision 2

      @state.following.push( TOKENS_FOLLOWING_program_IN_start_543 )
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
    # 108:1: r_class : R_CLASS ID ( heritage )? COLON ( function | dim_dec | var_dec )* R_END R_CLASS ;
    #
    def r_class
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      __ID1__ = nil


      begin
      # at line 109:5: R_CLASS ID ( heritage )? COLON ( function | dim_dec | var_dec )* R_END R_CLASS
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_562 )
      __ID1__ = match( ID, TOKENS_FOLLOWING_ID_IN_r_class_564 )

      # --> action
       $class_aux = __ID1__.text 
      # <-- action


      # --> action
       $program.add_class(__ID1__.text, nil) 
      # <-- action

      # at line 109:82: ( heritage )?
      alt_3 = 2
      look_3_0 = @input.peek( 1 )

      if ( look_3_0 == HER )
        alt_3 = 1
      end
      case alt_3
      when 1
        # at line 109:82: heritage
        @state.following.push( TOKENS_FOLLOWING_heritage_IN_r_class_570 )
        heritage
        @state.following.pop

      end
      match( COLON, TOKENS_FOLLOWING_COLON_IN_r_class_574 )
      # at line 109:99: ( function | dim_dec | var_dec )*
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
          # at line 109:101: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_r_class_578 )
          function
          @state.following.pop

        when 2
          # at line 110:74: dim_dec
          @state.following.push( TOKENS_FOLLOWING_dim_dec_IN_r_class_653 )
          dim_dec
          @state.following.pop

        when 3
          # at line 111:74: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_r_class_728 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 4
        end
      end # loop for decision 4

      match( R_END, TOKENS_FOLLOWING_R_END_IN_r_class_804 )
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_806 )

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
    # 115:1: heritage : ( HER ID ) ;
    #
    def heritage
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      __ID2__ = nil


      begin
      # at line 116:5: ( HER ID )
      # at line 116:5: ( HER ID )
      # at line 116:7: HER ID
      match( HER, TOKENS_FOLLOWING_HER_IN_heritage_823 )
      __ID2__ = match( ID, TOKENS_FOLLOWING_ID_IN_heritage_825 )


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
    # 119:1: program : PROGRAM ID COLON ( estatute | dim_dec | var_dec )* R_END PROGRAM ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      begin
      # at line 120:5: PROGRAM ID COLON ( estatute | dim_dec | var_dec )* R_END PROGRAM
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_844 )

      # --> action
       $quads.fill_program_quad() 
      # <-- action

      match( ID, TOKENS_FOLLOWING_ID_IN_program_848 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_program_850 )
      # at line 120:54: ( estatute | dim_dec | var_dec )*
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
          # at line 120:56: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_program_854 )
          estatute
          @state.following.pop

        when 2
          # at line 121:47: dim_dec
          @state.following.push( TOKENS_FOLLOWING_dim_dec_IN_program_902 )
          dim_dec
          @state.following.pop

        when 3
          # at line 122:47: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_program_950 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 5
        end
      end # loop for decision 5

      match( R_END, TOKENS_FOLLOWING_R_END_IN_program_999 )
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_1001 )

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
    # 126:1: dim_dec : DEFINE ID AS type LBRACK INTEGER ( mat_dim )? RBRACK DOT ;
    #
    def dim_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      __ID3__ = nil
      __INTEGER5__ = nil
      type4 = nil


      begin
      # at line 127:5: DEFINE ID AS type LBRACK INTEGER ( mat_dim )? RBRACK DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_dim_dec_1016 )
      __ID3__ = match( ID, TOKENS_FOLLOWING_ID_IN_dim_dec_1018 )

      # --> action
       $dim_aux = __ID3__.text 
      # <-- action

      match( AS, TOKENS_FOLLOWING_AS_IN_dim_dec_1022 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_dim_dec_1024 )
      type4 = type
      @state.following.pop

      # --> action
       $program.add_dim_variable(__ID3__.text, ( type4 && @input.to_s( type4.start, type4.stop ) ), true) 
      # <-- action

      match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_dim_dec_1028 )

      # --> action
       $dim.generate_dim_structure(__ID3__.text) 
      # <-- action

      __INTEGER5__ = match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_dim_dec_1032 )

      # --> action
       $dim.add_limit(__ID3__.text, __INTEGER5__.text) 
      # <-- action

      # at line 127:210: ( mat_dim )?
      alt_6 = 2
      look_6_0 = @input.peek( 1 )

      if ( look_6_0 == COMMA )
        alt_6 = 1
      end
      case alt_6
      when 1
        # at line 127:212: mat_dim
        @state.following.push( TOKENS_FOLLOWING_mat_dim_IN_dim_dec_1038 )
        mat_dim
        @state.following.pop

      end
      match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_dim_dec_1043 )

      # --> action
       $dim.calculate_m(__ID3__.text) 
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_dim_dec_1047 )

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
    # 130:1: mat_dim : COMMA INTEGER ;
    #
    def mat_dim
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      __INTEGER6__ = nil


      begin
      # at line 131:5: COMMA INTEGER
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_mat_dim_1062 )

      # --> action
       $dim.generate_dim_structure($dim_aux) 
      # <-- action

      __INTEGER6__ = match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_mat_dim_1066 )

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
    # 134:1: dim_struct : LBRACK exp ( COMMA exp )? RBRACK ;
    #
    def dim_struct
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      begin
      # at line 135:5: LBRACK exp ( COMMA exp )? RBRACK
      match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_dim_struct_1081 )

      # --> action
       $quads.is_dim() 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_exp_IN_dim_struct_1085 )
      exp
      @state.following.pop

      # --> action
       $quads.generate_limit_quad() 
      # <-- action

      # at line 135:71: ( COMMA exp )?
      alt_7 = 2
      look_7_0 = @input.peek( 1 )

      if ( look_7_0 == COMMA )
        alt_7 = 1
      end
      case alt_7
      when 1
        # at line 135:73: COMMA exp
        match( COMMA, TOKENS_FOLLOWING_COMMA_IN_dim_struct_1091 )

        # --> action
         $quads.update_dim() 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_exp_IN_dim_struct_1095 )
        exp
        @state.following.pop

        # --> action
         $quads.generate_limit_quad() 
        # <-- action


      end
      match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_dim_struct_1102 )

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
    # 138:1: var_dec : DEFINE ID AS type ( ASGN ( super_expression | reading ) )? DOT ;
    #
    def var_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      __ID7__ = nil
      __ASGN9__ = nil
      type8 = nil


      begin
      # at line 139:5: DEFINE ID AS type ( ASGN ( super_expression | reading ) )? DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_var_dec_1117 )
      __ID7__ = match( ID, TOKENS_FOLLOWING_ID_IN_var_dec_1119 )

      # --> action
       $assgn_aux = __ID7__.text
      # <-- action

      match( AS, TOKENS_FOLLOWING_AS_IN_var_dec_1123 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_var_dec_1125 )
      type8 = type
      @state.following.pop

      # --> action
       $program.add_variable(__ID7__.text, ( type8 && @input.to_s( type8.start, type8.stop ) )) 
      # <-- action

      # at line 139:98: ( ASGN ( super_expression | reading ) )?
      alt_9 = 2
      look_9_0 = @input.peek( 1 )

      if ( look_9_0 == ASGN )
        alt_9 = 1
      end
      case alt_9
      when 1
        # at line 139:100: ASGN ( super_expression | reading )
        __ASGN9__ = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_var_dec_1131 )

        # --> action
         $quads.add_id(__ID7__.text, nil) 
        # <-- action


        # --> action
         $quads.add_operator(__ASGN9__.text) 
        # <-- action

        # at line 139:176: ( super_expression | reading )
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
          # at line 139:178: super_expression
          @state.following.push( TOKENS_FOLLOWING_super_expression_IN_var_dec_1139 )
          super_expression
          @state.following.pop

          # --> action
           $quads.assgn_quad() 
          # <-- action


        when 2
          # at line 139:222: reading
          @state.following.push( TOKENS_FOLLOWING_reading_IN_var_dec_1145 )
          reading
          @state.following.pop

          # --> action
           $quads.assgn_read() 
          # <-- action


        end

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_var_dec_1154 )

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
    # 142:1: function : FUNCTION ( type ) ID parameters COLON ( estatute | var_dec | dim_dec )* ( RETURN super_expression DOT )? R_END FUNCTION ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      __ID10__ = nil
      parameters11 = nil
      type12 = nil


      begin
      # at line 143:5: FUNCTION ( type ) ID parameters COLON ( estatute | var_dec | dim_dec )* ( RETURN super_expression DOT )? R_END FUNCTION
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1167 )
      # at line 143:14: ( type )
      # at line 143:16: type
      @state.following.push( TOKENS_FOLLOWING_type_IN_function_1171 )
      type12 = type
      @state.following.pop

      __ID10__ = match( ID, TOKENS_FOLLOWING_ID_IN_function_1175 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_1177 )
      parameters11 = parameters
      @state.following.pop
      match( COLON, TOKENS_FOLLOWING_COLON_IN_function_1179 )

      # --> action
       $program.add_function(__ID10__.text, ( parameters11 && @input.to_s( parameters11.start, parameters11.stop ) ), ( type12 && @input.to_s( type12.start, type12.stop ) ))
      # <-- action

      # at line 144:43: ( estatute | var_dec | dim_dec )*
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
          # at line 144:45: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_function_1227 )
          estatute
          @state.following.pop

        when 2
          # at line 145:45: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_function_1273 )
          var_dec
          @state.following.pop

        when 3
          # at line 146:45: dim_dec
          @state.following.push( TOKENS_FOLLOWING_dim_dec_IN_function_1319 )
          dim_dec
          @state.following.pop

        else
          break # out of loop for decision 10
        end
      end # loop for decision 10

      # at line 147:46: ( RETURN super_expression DOT )?
      alt_11 = 2
      look_11_0 = @input.peek( 1 )

      if ( look_11_0 == RETURN )
        alt_11 = 1
      end
      case alt_11
      when 1
        # at line 147:48: RETURN super_expression DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_function_1368 )
        @state.following.push( TOKENS_FOLLOWING_super_expression_IN_function_1370 )
        super_expression
        @state.following.pop

        # --> action
         $quads.return(__ID10__.text) 
        # <-- action

        match( DOT, TOKENS_FOLLOWING_DOT_IN_function_1374 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_1379 )
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1381 )

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
    # 150:1: parameters : LPAR ( type ID ( COMMA type ID )* )? RPAR ;
    #
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      return_value = ParametersReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 151:5: LPAR ( type ID ( COMMA type ID )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_parameters_1398 )
      # at line 151:10: ( type ID ( COMMA type ID )* )?
      alt_13 = 2
      look_13_0 = @input.peek( 1 )

      if ( look_13_0 == ID || look_13_0 == R_BOOL || look_13_0.between?( R_FLOAT, R_STRING ) || look_13_0 == VOID )
        alt_13 = 1
      end
      case alt_13
      when 1
        # at line 151:12: type ID ( COMMA type ID )*
        @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1402 )
        type
        @state.following.pop
        match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1404 )
        # at line 151:20: ( COMMA type ID )*
        while true # decision 12
          alt_12 = 2
          look_12_0 = @input.peek( 1 )

          if ( look_12_0 == COMMA )
            alt_12 = 1

          end
          case alt_12
          when 1
            # at line 151:22: COMMA type ID
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_parameters_1408 )
            @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1410 )
            type
            @state.following.pop
            match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1412 )

          else
            break # out of loop for decision 12
          end
        end # loop for decision 12


      end
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_parameters_1420 )

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
    # 154:1: estatute : ( assignment | condition | while_loop | writing | method_call DOT | func_call DOT );
    #
    def estatute
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      begin
      # at line 155:3: ( assignment | condition | while_loop | writing | method_call DOT | func_call DOT )
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
        # at line 155:5: assignment
        @state.following.push( TOKENS_FOLLOWING_assignment_IN_estatute_1433 )
        assignment
        @state.following.pop

      when 2
        # at line 156:5: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatute_1439 )
        condition
        @state.following.pop

      when 3
        # at line 157:5: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_estatute_1445 )
        while_loop
        @state.following.pop

      when 4
        # at line 158:5: writing
        @state.following.push( TOKENS_FOLLOWING_writing_IN_estatute_1451 )
        writing
        @state.following.pop

      when 5
        # at line 159:5: method_call DOT
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatute_1457 )
        method_call
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_estatute_1459 )

      when 6
        # at line 160:5: func_call DOT
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatute_1465 )
        func_call
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_estatute_1467 )

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
    # 163:1: method_call : ID OBJ method_call_2 ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      __ID13__ = nil


      begin
      # at line 164:5: ID OBJ method_call_2
      __ID13__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1480 )

      # --> action
      $method_aux = __ID13__.text
      # <-- action

      match( OBJ, TOKENS_FOLLOWING_OBJ_IN_method_call_1484 )
      @state.following.push( TOKENS_FOLLOWING_method_call_2_IN_method_call_1486 )
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
    # 167:1: method_call_2 : ID method_call_parameters ;
    #
    def method_call_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      __ID14__ = nil


      begin
      # at line 168:5: ID method_call_parameters
      __ID14__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_2_1501 )

      # --> action
       $func_aux = __ID14__.text 
      # <-- action


      # --> action
       $quads.era_method($method_aux, __ID14__.text) 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_method_call_parameters_IN_method_call_2_1507 )
      method_call_parameters
      @state.following.pop

      # --> action
       $quads.method_exists?($method_aux, __ID14__.text) 
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
    # parser rule method_call_parameters
    #
    # (in Hephaestus.g)
    # 171:1: method_call_parameters : LPAR ( ( super_expression ) ( COMMA ( super_expression ) )* )? RPAR ;
    #
    def method_call_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      begin
      # at line 172:5: LPAR ( ( super_expression ) ( COMMA ( super_expression ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_method_call_parameters_1522 )
      # at line 172:10: ( ( super_expression ) ( COMMA ( super_expression ) )* )?
      alt_16 = 2
      look_16_0 = @input.peek( 1 )

      if ( look_16_0 == BOOL || look_16_0 == FLOAT || look_16_0 == ID || look_16_0 == INTEGER || look_16_0 == LPAR || look_16_0 == STRING )
        alt_16 = 1
      end
      case alt_16
      when 1
        # at line 172:12: ( super_expression ) ( COMMA ( super_expression ) )*
        # at line 172:12: ( super_expression )
        # at line 172:14: super_expression
        @state.following.push( TOKENS_FOLLOWING_super_expression_IN_method_call_parameters_1528 )
        super_expression
        @state.following.pop


        # --> action
         $quads.method_parameter($method_aux ,$func_aux) 
        # <-- action

        # at line 172:88: ( COMMA ( super_expression ) )*
        while true # decision 15
          alt_15 = 2
          look_15_0 = @input.peek( 1 )

          if ( look_15_0 == COMMA )
            alt_15 = 1

          end
          case alt_15
          when 1
            # at line 172:90: COMMA ( super_expression )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_method_call_parameters_1536 )
            # at line 172:96: ( super_expression )
            # at line 172:98: super_expression
            @state.following.push( TOKENS_FOLLOWING_super_expression_IN_method_call_parameters_1540 )
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

      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_method_call_parameters_1555 )

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
    # 175:1: assignment : ID ( dim_struct )? ( ASGN ( super_expression | reading ) ) DOT ;
    #
    def assignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      __ID15__ = nil
      __ASGN16__ = nil


      begin
      # at line 176:5: ID ( dim_struct )? ( ASGN ( super_expression | reading ) ) DOT
      __ID15__ = match( ID, TOKENS_FOLLOWING_ID_IN_assignment_1570 )

      # --> action
       $assgn_aux = __ID15__.text
      # <-- action


      # --> action
       $quads.add_id(__ID15__.text, nil) 
      # <-- action

      # at line 176:68: ( dim_struct )?
      alt_17 = 2
      look_17_0 = @input.peek( 1 )

      if ( look_17_0 == LBRACK )
        alt_17 = 1
      end
      case alt_17
      when 1
        # at line 176:70: dim_struct
        # --> action
         $dim_aux = __ID15__.text 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_dim_struct_IN_assignment_1580 )
        dim_struct
        @state.following.pop

      end

      # --> action
       $quads.check_dim(__ID15__.text) 
      # <-- action

      # at line 176:141: ( ASGN ( super_expression | reading ) )
      # at line 176:143: ASGN ( super_expression | reading )
      __ASGN16__ = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_1589 )

      # --> action
       $quads.add_operator(__ASGN16__.text) 
      # <-- action


      # --> action
       $quads.variable_exists?(__ID15__.text) 
      # <-- action

      # at line 176:225: ( super_expression | reading )
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
        # at line 176:227: super_expression
        @state.following.push( TOKENS_FOLLOWING_super_expression_IN_assignment_1598 )
        super_expression
        @state.following.pop

        # --> action
         $quads.assgn_quad() 
        # <-- action


      when 2
        # at line 176:271: reading
        @state.following.push( TOKENS_FOLLOWING_reading_IN_assignment_1604 )
        reading
        @state.following.pop

        # --> action
         $quads.assgn_read() 
        # <-- action


      end

      match( DOT, TOKENS_FOLLOWING_DOT_IN_assignment_1612 )

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
    # 179:1: condition : IF LPAR super_expression RPAR COLON ( estatute )* ( ELSE block | R_END ) IF ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      begin
      # at line 180:5: IF LPAR super_expression RPAR COLON ( estatute )* ( ELSE block | R_END ) IF
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1625 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_condition_1627 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_condition_1629 )
      super_expression
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_condition_1631 )

      # --> action
       $quads.gotof() 
      # <-- action

      match( COLON, TOKENS_FOLLOWING_COLON_IN_condition_1635 )
      # at line 180:61: ( estatute )*
      while true # decision 19
        alt_19 = 2
        look_19_0 = @input.peek( 1 )

        if ( look_19_0.between?( ID, IF ) || look_19_0 == PRINT || look_19_0 == WHILE )
          alt_19 = 1

        end
        case alt_19
        when 1
          # at line 180:63: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_condition_1639 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 19
        end
      end # loop for decision 19

      # at line 180:75: ( ELSE block | R_END )
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
        # at line 180:77: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_1646 )

        # --> action
         $quads.goto() 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_1650 )
        block
        @state.following.pop

      when 2
        # at line 181:96: R_END
        match( R_END, TOKENS_FOLLOWING_R_END_IN_condition_1747 )

      end

      # --> action
       $quads.fill_program_quad() 
      # <-- action

      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1753 )

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
    # 184:1: while_loop : WHILE LPAR super_expression RPAR block WHILE ;
    #
    def while_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      begin
      # at line 185:5: WHILE LPAR super_expression RPAR block WHILE
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1766 )

      # --> action
       $quads.add_jump() 
      # <-- action

      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_while_loop_1770 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_while_loop_1772 )
      super_expression
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_while_loop_1774 )

      # --> action
       $quads.gotof() 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_1778 )
      block
      @state.following.pop
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1780 )

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
    # 188:1: block : COLON ( estatute )* R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


      begin
      # at line 189:5: COLON ( estatute )* R_END
      match( COLON, TOKENS_FOLLOWING_COLON_IN_block_1795 )
      # at line 189:11: ( estatute )*
      while true # decision 21
        alt_21 = 2
        look_21_0 = @input.peek( 1 )

        if ( look_21_0.between?( ID, IF ) || look_21_0 == PRINT || look_21_0 == WHILE )
          alt_21 = 1

        end
        case alt_21
        when 1
          # at line 189:13: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_block_1799 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 21
        end
      end # loop for decision 21

      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_1805 )

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
    # 192:1: reading : READ LPAR RPAR ;
    #
    def reading
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      begin
      # at line 193:5: READ LPAR RPAR
      match( READ, TOKENS_FOLLOWING_READ_IN_reading_1818 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_reading_1820 )

      # --> action
       $quads.read($assgn_aux)
      # <-- action

      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_reading_1824 )

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
    # 196:1: writing : PRINT LPAR super_expression RPAR DOT ;
    #
    def writing
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      begin
      # at line 197:5: PRINT LPAR super_expression RPAR DOT
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_writing_1837 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_writing_1839 )
      @state.following.push( TOKENS_FOLLOWING_super_expression_IN_writing_1841 )
      super_expression
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_writing_1843 )

      # --> action
       $quads.write() 
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_writing_1847 )

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
    # 200:1: func_call : ID func_call_parameters ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      __ID17__ = nil


      begin
      # at line 201:5: ID func_call_parameters
      __ID17__ = match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1861 )

      # --> action
       $quads.function_exists?(__ID17__.text) 
      # <-- action


      # --> action
       $func_aux = __ID17__.text 
      # <-- action


      # --> action
       $quads.era(__ID17__.text) 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_func_call_parameters_IN_func_call_1869 )
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
    # 204:1: func_call_parameters : LPAR ( ( super_expression ) ( COMMA ( super_expression ) )* )? RPAR ;
    #
    def func_call_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


      begin
      # at line 205:5: LPAR ( ( super_expression ) ( COMMA ( super_expression ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_func_call_parameters_1884 )
      # at line 205:10: ( ( super_expression ) ( COMMA ( super_expression ) )* )?
      alt_23 = 2
      look_23_0 = @input.peek( 1 )

      if ( look_23_0 == BOOL || look_23_0 == FLOAT || look_23_0 == ID || look_23_0 == INTEGER || look_23_0 == LPAR || look_23_0 == STRING )
        alt_23 = 1
      end
      case alt_23
      when 1
        # at line 205:12: ( super_expression ) ( COMMA ( super_expression ) )*
        # at line 205:12: ( super_expression )
        # at line 205:14: super_expression
        @state.following.push( TOKENS_FOLLOWING_super_expression_IN_func_call_parameters_1890 )
        super_expression
        @state.following.pop


        # --> action
         $quads.parameter($func_aux) 
        # <-- action

        # at line 205:67: ( COMMA ( super_expression ) )*
        while true # decision 22
          alt_22 = 2
          look_22_0 = @input.peek( 1 )

          if ( look_22_0 == COMMA )
            alt_22 = 1

          end
          case alt_22
          when 1
            # at line 205:69: COMMA ( super_expression )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_func_call_parameters_1898 )
            # at line 205:75: ( super_expression )
            # at line 205:77: super_expression
            @state.following.push( TOKENS_FOLLOWING_super_expression_IN_func_call_parameters_1902 )
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

      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_func_call_parameters_1917 )

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
    # 208:1: super_expression : expression ( ( AND | OR ) expression )? ;
    #
    def super_expression
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )


      __AND18__ = nil
      __OR19__ = nil


      begin
      # at line 209:5: expression ( ( AND | OR ) expression )?
      @state.following.push( TOKENS_FOLLOWING_expression_IN_super_expression_1932 )
      expression
      @state.following.pop
      # at line 209:16: ( ( AND | OR ) expression )?
      alt_25 = 2
      look_25_0 = @input.peek( 1 )

      if ( look_25_0 == AND || look_25_0 == OR )
        alt_25 = 1
      end
      case alt_25
      when 1
        # at line 209:18: ( AND | OR ) expression
        # at line 209:18: ( AND | OR )
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
          # at line 209:20: AND
          __AND18__ = match( AND, TOKENS_FOLLOWING_AND_IN_super_expression_1938 )

          # --> action
           $quads.add_operator(__AND18__.text) 
          # <-- action


        when 2
          # at line 210:20: OR
          __OR19__ = match( OR, TOKENS_FOLLOWING_OR_IN_super_expression_1961 )

          # --> action
           $quads.add_operator(__OR19__.text) 
          # <-- action


        end
        @state.following.push( TOKENS_FOLLOWING_expression_IN_super_expression_1984 )
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
    # 214:1: expression : exp ( ( GREATER | GREATEQ | LESS | LEQ | NEQ | EQ ) exp )? ;
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
      # at line 215:5: exp ( ( GREATER | GREATEQ | LESS | LEQ | NEQ | EQ ) exp )?
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_2018 )
      exp
      @state.following.pop
      # at line 215:9: ( ( GREATER | GREATEQ | LESS | LEQ | NEQ | EQ ) exp )?
      alt_27 = 2
      look_27_0 = @input.peek( 1 )

      if ( look_27_0 == EQ || look_27_0.between?( GREATEQ, GREATER ) || look_27_0.between?( LEQ, LESS ) || look_27_0 == NEQ )
        alt_27 = 1
      end
      case alt_27
      when 1
        # at line 215:11: ( GREATER | GREATEQ | LESS | LEQ | NEQ | EQ ) exp
        # at line 215:11: ( GREATER | GREATEQ | LESS | LEQ | NEQ | EQ )
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
          # at line 215:13: GREATER
          __GREATER20__ = match( GREATER, TOKENS_FOLLOWING_GREATER_IN_expression_2024 )

          # --> action
           $quads.add_operator(__GREATER20__.text) 
          # <-- action


        when 2
          # at line 216:13: GREATEQ
          __GREATEQ21__ = match( GREATEQ, TOKENS_FOLLOWING_GREATEQ_IN_expression_2040 )

          # --> action
           $quads.add_operator(__GREATEQ21__.text) 
          # <-- action


        when 3
          # at line 217:13: LESS
          __LESS22__ = match( LESS, TOKENS_FOLLOWING_LESS_IN_expression_2056 )

          # --> action
           $quads.add_operator(__LESS22__.text) 
          # <-- action


        when 4
          # at line 218:13: LEQ
          __LEQ23__ = match( LEQ, TOKENS_FOLLOWING_LEQ_IN_expression_2072 )

          # --> action
           $quads.add_operator(__LEQ23__.text) 
          # <-- action


        when 5
          # at line 219:13: NEQ
          __NEQ24__ = match( NEQ, TOKENS_FOLLOWING_NEQ_IN_expression_2088 )

          # --> action
           $quads.add_operator(__NEQ24__.text) 
          # <-- action


        when 6
          # at line 220:13: EQ
          __EQ25__ = match( EQ, TOKENS_FOLLOWING_EQ_IN_expression_2104 )

          # --> action
           $quads.add_operator(__EQ25__.text) 
          # <-- action


        end
        @state.following.push( TOKENS_FOLLOWING_exp_IN_expression_2120 )
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
    # 225:1: exp : term ( ( PLUS | MINUS ) term )* ;
    #
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )


      __PLUS26__ = nil
      __MINUS27__ = nil


      begin
      # at line 226:5: term ( ( PLUS | MINUS ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_2148 )
      term
      @state.following.pop
      # at line 226:10: ( ( PLUS | MINUS ) term )*
      while true # decision 29
        alt_29 = 2
        look_29_0 = @input.peek( 1 )

        if ( look_29_0 == MINUS || look_29_0 == PLUS )
          alt_29 = 1

        end
        case alt_29
        when 1
          # at line 226:12: ( PLUS | MINUS ) term
          # at line 226:12: ( PLUS | MINUS )
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
            # at line 226:14: PLUS
            __PLUS26__ = match( PLUS, TOKENS_FOLLOWING_PLUS_IN_exp_2154 )

            # --> action
             $quads.add_operator(__PLUS26__.text) 
            # <-- action


          when 2
            # at line 227:14: MINUS
            __MINUS27__ = match( MINUS, TOKENS_FOLLOWING_MINUS_IN_exp_2171 )

            # --> action
             $quads.add_operator(__MINUS27__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_2188 )
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
    # 232:1: term : factor ( ( MULT | DIV ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )


      __MULT28__ = nil
      __DIV29__ = nil


      begin
      # at line 233:5: factor ( ( MULT | DIV ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_2217 )
      factor
      @state.following.pop
      # at line 233:12: ( ( MULT | DIV ) factor )*
      while true # decision 31
        alt_31 = 2
        look_31_0 = @input.peek( 1 )

        if ( look_31_0 == DIV || look_31_0 == MULT )
          alt_31 = 1

        end
        case alt_31
        when 1
          # at line 233:14: ( MULT | DIV ) factor
          # at line 233:14: ( MULT | DIV )
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
            # at line 233:16: MULT
            __MULT28__ = match( MULT, TOKENS_FOLLOWING_MULT_IN_term_2223 )

            # --> action
             $quads.add_operator(__MULT28__.text) 
            # <-- action


          when 2
            # at line 234:16: DIV
            __DIV29__ = match( DIV, TOKENS_FOLLOWING_DIV_IN_term_2242 )

            # --> action
             $quads.add_operator(__DIV29__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_2261 )
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
    # 239:1: factor : ( ID ( dim_struct )? | LPAR super_expression RPAR | value | func_call | method_call );
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )


      __ID30__ = nil
      __LPAR31__ = nil
      value32 = nil


      begin
      # at line 240:3: ( ID ( dim_struct )? | LPAR super_expression RPAR | value | func_call | method_call )
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
        # at line 240:5: ID ( dim_struct )?
        __ID30__ = match( ID, TOKENS_FOLLOWING_ID_IN_factor_2292 )

        # --> action
         $quads.add_id(__ID30__.text, nil) 
        # <-- action

        # at line 240:42: ( dim_struct )?
        alt_32 = 2
        look_32_0 = @input.peek( 1 )

        if ( look_32_0 == LBRACK )
          alt_32 = 1
        end
        case alt_32
        when 1
          # at line 240:44: dim_struct
          # --> action
           $dim_aux = __ID30__.text 
          # <-- action

          @state.following.push( TOKENS_FOLLOWING_dim_struct_IN_factor_2300 )
          dim_struct
          @state.following.pop

        end

        # --> action
         $quads.check_dim(__ID30__.text) 
        # <-- action


      when 2
        # at line 241:7: LPAR super_expression RPAR
        __LPAR31__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_2313 )

        # --> action
         $quads.add_false_bottom(__LPAR31__.text) 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_super_expression_IN_factor_2317 )
        super_expression
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_2319 )

        # --> action
         $quads.remove_false_bottom() 
        # <-- action


      when 3
        # at line 242:7: value
        @state.following.push( TOKENS_FOLLOWING_value_IN_factor_2329 )
        value32 = value
        @state.following.pop

        # --> action
         $quads.add_id(nil, ( value32 && @input.to_s( value32.start, value32.stop ) )) 
        # <-- action


      when 4
        # at line 243:7: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_factor_2339 )
        func_call
        @state.following.pop

      when 5
        # at line 244:7: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_factor_2347 )
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
    # 247:1: type : ( R_STRING | R_BOOL | R_FLOAT | R_INTEGER | VOID | ID );
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
    # 256:1: value : ( STRING | FLOAT | INTEGER | BOOL );
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



    TOKENS_FOLLOWING_r_class_IN_start_530 = Set[ 17, 37, 43 ]
    TOKENS_FOLLOWING_function_IN_start_538 = Set[ 17, 37 ]
    TOKENS_FOLLOWING_program_IN_start_543 = Set[ 1 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_562 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_r_class_564 = Set[ 8, 20 ]
    TOKENS_FOLLOWING_heritage_IN_r_class_570 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_r_class_574 = Set[ 10, 17, 44 ]
    TOKENS_FOLLOWING_function_IN_r_class_578 = Set[ 10, 17, 44 ]
    TOKENS_FOLLOWING_dim_dec_IN_r_class_653 = Set[ 10, 17, 44 ]
    TOKENS_FOLLOWING_var_dec_IN_r_class_728 = Set[ 10, 17, 44 ]
    TOKENS_FOLLOWING_R_END_IN_r_class_804 = Set[ 43 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_806 = Set[ 1 ]
    TOKENS_FOLLOWING_HER_IN_heritage_823 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_heritage_825 = Set[ 1 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_844 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_program_848 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_program_850 = Set[ 10, 21, 22, 36, 44, 50 ]
    TOKENS_FOLLOWING_estatute_IN_program_854 = Set[ 10, 21, 22, 36, 44, 50 ]
    TOKENS_FOLLOWING_dim_dec_IN_program_902 = Set[ 10, 21, 22, 36, 44, 50 ]
    TOKENS_FOLLOWING_var_dec_IN_program_950 = Set[ 10, 21, 22, 36, 44, 50 ]
    TOKENS_FOLLOWING_R_END_IN_program_999 = Set[ 37 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_1001 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_dim_dec_1016 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_dim_dec_1018 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_dim_dec_1022 = Set[ 21, 42, 45, 46, 47, 49 ]
    TOKENS_FOLLOWING_type_IN_dim_dec_1024 = Set[ 25 ]
    TOKENS_FOLLOWING_LBRACK_IN_dim_dec_1028 = Set[ 24 ]
    TOKENS_FOLLOWING_INTEGER_IN_dim_dec_1032 = Set[ 9, 38 ]
    TOKENS_FOLLOWING_mat_dim_IN_dim_dec_1038 = Set[ 38 ]
    TOKENS_FOLLOWING_RBRACK_IN_dim_dec_1043 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_dim_dec_1047 = Set[ 1 ]
    TOKENS_FOLLOWING_COMMA_IN_mat_dim_1062 = Set[ 24 ]
    TOKENS_FOLLOWING_INTEGER_IN_mat_dim_1066 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACK_IN_dim_struct_1081 = Set[ 7, 15, 21, 24, 28, 48 ]
    TOKENS_FOLLOWING_exp_IN_dim_struct_1085 = Set[ 9, 38 ]
    TOKENS_FOLLOWING_COMMA_IN_dim_struct_1091 = Set[ 7, 15, 21, 24, 28, 48 ]
    TOKENS_FOLLOWING_exp_IN_dim_struct_1095 = Set[ 38 ]
    TOKENS_FOLLOWING_RBRACK_IN_dim_struct_1102 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_var_dec_1117 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_var_dec_1119 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_var_dec_1123 = Set[ 21, 42, 45, 46, 47, 49 ]
    TOKENS_FOLLOWING_type_IN_var_dec_1125 = Set[ 6, 12 ]
    TOKENS_FOLLOWING_ASGN_IN_var_dec_1131 = Set[ 7, 15, 21, 24, 28, 39, 48 ]
    TOKENS_FOLLOWING_super_expression_IN_var_dec_1139 = Set[ 12 ]
    TOKENS_FOLLOWING_reading_IN_var_dec_1145 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_var_dec_1154 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1167 = Set[ 21, 42, 45, 46, 47, 49 ]
    TOKENS_FOLLOWING_type_IN_function_1171 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_function_1175 = Set[ 28 ]
    TOKENS_FOLLOWING_parameters_IN_function_1177 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_function_1179 = Set[ 10, 21, 22, 36, 40, 44, 50 ]
    TOKENS_FOLLOWING_estatute_IN_function_1227 = Set[ 10, 21, 22, 36, 40, 44, 50 ]
    TOKENS_FOLLOWING_var_dec_IN_function_1273 = Set[ 10, 21, 22, 36, 40, 44, 50 ]
    TOKENS_FOLLOWING_dim_dec_IN_function_1319 = Set[ 10, 21, 22, 36, 40, 44, 50 ]
    TOKENS_FOLLOWING_RETURN_IN_function_1368 = Set[ 7, 15, 21, 24, 28, 48 ]
    TOKENS_FOLLOWING_super_expression_IN_function_1370 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_function_1374 = Set[ 44 ]
    TOKENS_FOLLOWING_R_END_IN_function_1379 = Set[ 17 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1381 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_parameters_1398 = Set[ 21, 41, 42, 45, 46, 47, 49 ]
    TOKENS_FOLLOWING_type_IN_parameters_1402 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1404 = Set[ 9, 41 ]
    TOKENS_FOLLOWING_COMMA_IN_parameters_1408 = Set[ 21, 42, 45, 46, 47, 49 ]
    TOKENS_FOLLOWING_type_IN_parameters_1410 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1412 = Set[ 9, 41 ]
    TOKENS_FOLLOWING_RPAR_IN_parameters_1420 = Set[ 1 ]
    TOKENS_FOLLOWING_assignment_IN_estatute_1433 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatute_1439 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_estatute_1445 = Set[ 1 ]
    TOKENS_FOLLOWING_writing_IN_estatute_1451 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatute_1457 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_estatute_1459 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatute_1465 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_estatute_1467 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1480 = Set[ 33 ]
    TOKENS_FOLLOWING_OBJ_IN_method_call_1484 = Set[ 21 ]
    TOKENS_FOLLOWING_method_call_2_IN_method_call_1486 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_2_1501 = Set[ 28 ]
    TOKENS_FOLLOWING_method_call_parameters_IN_method_call_2_1507 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_method_call_parameters_1522 = Set[ 7, 15, 21, 24, 28, 41, 48 ]
    TOKENS_FOLLOWING_super_expression_IN_method_call_parameters_1528 = Set[ 9, 41 ]
    TOKENS_FOLLOWING_COMMA_IN_method_call_parameters_1536 = Set[ 7, 15, 21, 24, 28, 48 ]
    TOKENS_FOLLOWING_super_expression_IN_method_call_parameters_1540 = Set[ 9, 41 ]
    TOKENS_FOLLOWING_RPAR_IN_method_call_parameters_1555 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_assignment_1570 = Set[ 6, 25 ]
    TOKENS_FOLLOWING_dim_struct_IN_assignment_1580 = Set[ 6 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_1589 = Set[ 7, 15, 21, 24, 28, 39, 48 ]
    TOKENS_FOLLOWING_super_expression_IN_assignment_1598 = Set[ 12 ]
    TOKENS_FOLLOWING_reading_IN_assignment_1604 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_assignment_1612 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_1625 = Set[ 28 ]
    TOKENS_FOLLOWING_LPAR_IN_condition_1627 = Set[ 7, 15, 21, 24, 28, 48 ]
    TOKENS_FOLLOWING_super_expression_IN_condition_1629 = Set[ 41 ]
    TOKENS_FOLLOWING_RPAR_IN_condition_1631 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_condition_1635 = Set[ 13, 21, 22, 36, 44, 50 ]
    TOKENS_FOLLOWING_estatute_IN_condition_1639 = Set[ 13, 21, 22, 36, 44, 50 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_1646 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_condition_1650 = Set[ 22 ]
    TOKENS_FOLLOWING_R_END_IN_condition_1747 = Set[ 22 ]
    TOKENS_FOLLOWING_IF_IN_condition_1753 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1766 = Set[ 28 ]
    TOKENS_FOLLOWING_LPAR_IN_while_loop_1770 = Set[ 7, 15, 21, 24, 28, 48 ]
    TOKENS_FOLLOWING_super_expression_IN_while_loop_1772 = Set[ 41 ]
    TOKENS_FOLLOWING_RPAR_IN_while_loop_1774 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_while_loop_1778 = Set[ 50 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1780 = Set[ 1 ]
    TOKENS_FOLLOWING_COLON_IN_block_1795 = Set[ 21, 22, 36, 44, 50 ]
    TOKENS_FOLLOWING_estatute_IN_block_1799 = Set[ 21, 22, 36, 44, 50 ]
    TOKENS_FOLLOWING_R_END_IN_block_1805 = Set[ 1 ]
    TOKENS_FOLLOWING_READ_IN_reading_1818 = Set[ 28 ]
    TOKENS_FOLLOWING_LPAR_IN_reading_1820 = Set[ 41 ]
    TOKENS_FOLLOWING_RPAR_IN_reading_1824 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_writing_1837 = Set[ 28 ]
    TOKENS_FOLLOWING_LPAR_IN_writing_1839 = Set[ 7, 15, 21, 24, 28, 48 ]
    TOKENS_FOLLOWING_super_expression_IN_writing_1841 = Set[ 41 ]
    TOKENS_FOLLOWING_RPAR_IN_writing_1843 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_writing_1847 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1861 = Set[ 28 ]
    TOKENS_FOLLOWING_func_call_parameters_IN_func_call_1869 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_func_call_parameters_1884 = Set[ 7, 15, 21, 24, 28, 41, 48 ]
    TOKENS_FOLLOWING_super_expression_IN_func_call_parameters_1890 = Set[ 9, 41 ]
    TOKENS_FOLLOWING_COMMA_IN_func_call_parameters_1898 = Set[ 7, 15, 21, 24, 28, 48 ]
    TOKENS_FOLLOWING_super_expression_IN_func_call_parameters_1902 = Set[ 9, 41 ]
    TOKENS_FOLLOWING_RPAR_IN_func_call_parameters_1917 = Set[ 1 ]
    TOKENS_FOLLOWING_expression_IN_super_expression_1932 = Set[ 1, 4, 34 ]
    TOKENS_FOLLOWING_AND_IN_super_expression_1938 = Set[ 7, 15, 21, 24, 28, 48 ]
    TOKENS_FOLLOWING_OR_IN_super_expression_1961 = Set[ 7, 15, 21, 24, 28, 48 ]
    TOKENS_FOLLOWING_expression_IN_super_expression_1984 = Set[ 1 ]
    TOKENS_FOLLOWING_exp_IN_expression_2018 = Set[ 1, 14, 18, 19, 26, 27, 31 ]
    TOKENS_FOLLOWING_GREATER_IN_expression_2024 = Set[ 7, 15, 21, 24, 28, 48 ]
    TOKENS_FOLLOWING_GREATEQ_IN_expression_2040 = Set[ 7, 15, 21, 24, 28, 48 ]
    TOKENS_FOLLOWING_LESS_IN_expression_2056 = Set[ 7, 15, 21, 24, 28, 48 ]
    TOKENS_FOLLOWING_LEQ_IN_expression_2072 = Set[ 7, 15, 21, 24, 28, 48 ]
    TOKENS_FOLLOWING_NEQ_IN_expression_2088 = Set[ 7, 15, 21, 24, 28, 48 ]
    TOKENS_FOLLOWING_EQ_IN_expression_2104 = Set[ 7, 15, 21, 24, 28, 48 ]
    TOKENS_FOLLOWING_exp_IN_expression_2120 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_exp_2148 = Set[ 1, 29, 35 ]
    TOKENS_FOLLOWING_PLUS_IN_exp_2154 = Set[ 7, 15, 21, 24, 28, 48 ]
    TOKENS_FOLLOWING_MINUS_IN_exp_2171 = Set[ 7, 15, 21, 24, 28, 48 ]
    TOKENS_FOLLOWING_term_IN_exp_2188 = Set[ 1, 29, 35 ]
    TOKENS_FOLLOWING_factor_IN_term_2217 = Set[ 1, 11, 30 ]
    TOKENS_FOLLOWING_MULT_IN_term_2223 = Set[ 7, 15, 21, 24, 28, 48 ]
    TOKENS_FOLLOWING_DIV_IN_term_2242 = Set[ 7, 15, 21, 24, 28, 48 ]
    TOKENS_FOLLOWING_factor_IN_term_2261 = Set[ 1, 11, 30 ]
    TOKENS_FOLLOWING_ID_IN_factor_2292 = Set[ 1, 25 ]
    TOKENS_FOLLOWING_dim_struct_IN_factor_2300 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_2313 = Set[ 7, 15, 21, 24, 28, 48 ]
    TOKENS_FOLLOWING_super_expression_IN_factor_2317 = Set[ 41 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_2319 = Set[ 1 ]
    TOKENS_FOLLOWING_value_IN_factor_2329 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_factor_2339 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_factor_2347 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
