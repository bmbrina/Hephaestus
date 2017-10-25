#!/usr/bin/env ruby
#
# Hephaestus.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Hephaestus.g
# Generated at: 2017-10-25 11:12:08
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

    RULE_METHODS = [ :start, :program, :estatute, :var_dec, :assignment, 
                     :array_dec, :condition, :loops, :while_loop, :for_loop, 
                     :reading, :writing, :parameters, :function, :block, 
                     :func_call, :expresion, :exp, :term, :factor, :type, 
                     :value, :r_class, :method_call ].freeze

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

    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    #
    # parser rule start
    #
    # (in Hephaestus.g)
    # 96:1: start : ( r_class )* program ;
    #
    def start
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 97:5: ( r_class )* program
      # at line 97:5: ( r_class )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == R_CLASS )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 97:7: r_class
          @state.following.push( TOKENS_FOLLOWING_r_class_IN_start_506 )
          r_class
          @state.following.pop

        else
          break # out of loop for decision 1
        end
      end # loop for decision 1

      @state.following.push( TOKENS_FOLLOWING_program_IN_start_511 )
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
    # parser rule program
    #
    # (in Hephaestus.g)
    # 100:1: program : PROGRAM ID COLON ( estatute | var_dec | function )* R_END PROGRAM ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      begin
      # at line 101:5: PROGRAM ID COLON ( estatute | var_dec | function )* R_END PROGRAM
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_524 )
      match( ID, TOKENS_FOLLOWING_ID_IN_program_526 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_program_528 )
      # at line 101:22: ( estatute | var_dec | function )*
      while true # decision 2
        alt_2 = 4
        case look_2 = @input.peek( 1 )
        when FOR, ID, IF, PRINT, READ, WHILE then alt_2 = 1
        when DEFINE then alt_2 = 2
        when FUNCTION then alt_2 = 3
        end
        case alt_2
        when 1
          # at line 101:24: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_program_532 )
          estatute
          @state.following.pop

        when 2
          # at line 102:24: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_program_557 )
          var_dec
          @state.following.pop

        when 3
          # at line 103:24: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_program_582 )
          function
          @state.following.pop

        else
          break # out of loop for decision 2
        end
      end # loop for decision 2

      match( R_END, TOKENS_FOLLOWING_R_END_IN_program_608 )
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_610 )

      # --> action
      $program.print_quadruples()
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
    # parser rule estatute
    #
    # (in Hephaestus.g)
    # 107:1: estatute : ( func_call DOT | condition | reading | writing | assignment | loops | method_call );
    #
    def estatute
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      begin
      # at line 108:3: ( func_call DOT | condition | reading | writing | assignment | loops | method_call )
      alt_3 = 7
      case look_3 = @input.peek( 1 )
      when ID then case look_3 = @input.peek( 2 )
      when DOT then alt_3 = 7
      when LPAR then alt_3 = 1
      when ASGN, LBRACK then alt_3 = 5
      else
        raise NoViableAlternative( "", 3, 1 )

      end
      when IF then alt_3 = 2
      when READ then alt_3 = 3
      when PRINT then alt_3 = 4
      when FOR, WHILE then alt_3 = 6
      else
        raise NoViableAlternative( "", 3, 0 )

      end
      case alt_3
      when 1
        # at line 108:5: func_call DOT
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatute_644 )
        func_call
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_estatute_646 )

      when 2
        # at line 109:5: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatute_652 )
        condition
        @state.following.pop

      when 3
        # at line 110:5: reading
        @state.following.push( TOKENS_FOLLOWING_reading_IN_estatute_658 )
        reading
        @state.following.pop

      when 4
        # at line 111:5: writing
        @state.following.push( TOKENS_FOLLOWING_writing_IN_estatute_664 )
        writing
        @state.following.pop

      when 5
        # at line 112:5: assignment
        @state.following.push( TOKENS_FOLLOWING_assignment_IN_estatute_670 )
        assignment
        @state.following.pop

      when 6
        # at line 113:5: loops
        @state.following.push( TOKENS_FOLLOWING_loops_IN_estatute_676 )
        loops
        @state.following.pop

      when 7
        # at line 114:5: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatute_682 )
        method_call
        @state.following.pop

      end
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
    # parser rule var_dec
    #
    # (in Hephaestus.g)
    # 117:1: var_dec : DEFINE ID AS type ( ASGN ( expresion | func_call ) )? DOT ;
    #
    def var_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      __ID1__ = nil
      type2 = nil


      begin
      # at line 118:5: DEFINE ID AS type ( ASGN ( expresion | func_call ) )? DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_var_dec_695 )
      __ID1__ = match( ID, TOKENS_FOLLOWING_ID_IN_var_dec_697 )
      match( AS, TOKENS_FOLLOWING_AS_IN_var_dec_699 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_var_dec_701 )
      type2 = type
      @state.following.pop

      # --> action
       $program.add_variable(__ID1__.text, ( type2 && @input.to_s( type2.start, type2.stop ) ),nil) 
      # <-- action

      # at line 119:30: ( ASGN ( expresion | func_call ) )?
      alt_5 = 2
      look_5_0 = @input.peek( 1 )

      if ( look_5_0 == ASGN )
        alt_5 = 1
      end
      case alt_5
      when 1
        # at line 119:32: ASGN ( expresion | func_call )
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_var_dec_736 )
        # at line 119:37: ( expresion | func_call )
        alt_4 = 2
        look_4_0 = @input.peek( 1 )

        if ( look_4_0 == ID )
          look_4_1 = @input.peek( 2 )

          if ( look_4_1 == AND || look_4_1.between?( DIV, DOT ) || look_4_1 == EQ || look_4_1 == GREATER || look_4_1.between?( LBRACK, LESS ) || look_4_1.between?( MINUS, NEQ ) || look_4_1.between?( OR, PLUS ) )
            alt_4 = 1
          elsif ( look_4_1 == LPAR )
            alt_4 = 2
          else
            raise NoViableAlternative( "", 4, 1 )

          end
        elsif ( look_4_0 == BOOL || look_4_0 == FLOAT || look_4_0 == INTEGER || look_4_0 == LPAR || look_4_0 == STRING )
          alt_4 = 1
        else
          raise NoViableAlternative( "", 4, 0 )

        end
        case alt_4
        when 1
          # at line 119:39: expresion
          @state.following.push( TOKENS_FOLLOWING_expresion_IN_var_dec_740 )
          expresion
          @state.following.pop

        when 2
          # at line 120:32: func_call
          @state.following.push( TOKENS_FOLLOWING_func_call_IN_var_dec_773 )
          func_call
          @state.following.pop

        end

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_var_dec_831 )

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
    # parser rule assignment
    #
    # (in Hephaestus.g)
    # 125:1: assignment : ID ( ASGN ( expresion | func_call ) | array_dec ASGN type ) DOT ;
    #
    def assignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      begin
      # at line 126:5: ID ( ASGN ( expresion | func_call ) | array_dec ASGN type ) DOT
      match( ID, TOKENS_FOLLOWING_ID_IN_assignment_844 )
      # at line 126:8: ( ASGN ( expresion | func_call ) | array_dec ASGN type )
      alt_7 = 2
      look_7_0 = @input.peek( 1 )

      if ( look_7_0 == ASGN )
        alt_7 = 1
      elsif ( look_7_0 == LBRACK )
        alt_7 = 2
      else
        raise NoViableAlternative( "", 7, 0 )

      end
      case alt_7
      when 1
        # at line 126:10: ASGN ( expresion | func_call )
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_848 )
        # at line 126:15: ( expresion | func_call )
        alt_6 = 2
        look_6_0 = @input.peek( 1 )

        if ( look_6_0 == ID )
          look_6_1 = @input.peek( 2 )

          if ( look_6_1 == AND || look_6_1.between?( DIV, DOT ) || look_6_1 == EQ || look_6_1 == GREATER || look_6_1.between?( LBRACK, LESS ) || look_6_1.between?( MINUS, NEQ ) || look_6_1.between?( OR, PLUS ) )
            alt_6 = 1
          elsif ( look_6_1 == LPAR )
            alt_6 = 2
          else
            raise NoViableAlternative( "", 6, 1 )

          end
        elsif ( look_6_0 == BOOL || look_6_0 == FLOAT || look_6_0 == INTEGER || look_6_0 == LPAR || look_6_0 == STRING )
          alt_6 = 1
        else
          raise NoViableAlternative( "", 6, 0 )

        end
        case alt_6
        when 1
          # at line 126:17: expresion
          @state.following.push( TOKENS_FOLLOWING_expresion_IN_assignment_852 )
          expresion
          @state.following.pop

        when 2
          # at line 127:17: func_call
          @state.following.push( TOKENS_FOLLOWING_func_call_IN_assignment_870 )
          func_call
          @state.following.pop

        end

      when 2
        # at line 128:17: array_dec ASGN type
        @state.following.push( TOKENS_FOLLOWING_array_dec_IN_assignment_890 )
        array_dec
        @state.following.pop
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_892 )
        @state.following.push( TOKENS_FOLLOWING_type_IN_assignment_894 )
        type
        @state.following.pop

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_assignment_905 )

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
    # parser rule array_dec
    #
    # (in Hephaestus.g)
    # 132:1: array_dec : LBRACK exp ( COMMA exp )? RBRACK ;
    #
    def array_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      begin
      # at line 133:5: LBRACK exp ( COMMA exp )? RBRACK
      match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_array_dec_918 )
      @state.following.push( TOKENS_FOLLOWING_exp_IN_array_dec_920 )
      exp
      @state.following.pop
      # at line 133:16: ( COMMA exp )?
      alt_8 = 2
      look_8_0 = @input.peek( 1 )

      if ( look_8_0 == COMMA )
        alt_8 = 1
      end
      case alt_8
      when 1
        # at line 133:18: COMMA exp
        match( COMMA, TOKENS_FOLLOWING_COMMA_IN_array_dec_924 )
        @state.following.push( TOKENS_FOLLOWING_exp_IN_array_dec_926 )
        exp
        @state.following.pop

      end
      match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_array_dec_931 )

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
    # parser rule condition
    #
    # (in Hephaestus.g)
    # 136:1: condition : IF LPAR expresion RPAR COLON ( estatute )? ( RETURN expresion DOT )? ( ELSE block | R_END ) IF ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      begin
      # at line 137:5: IF LPAR expresion RPAR COLON ( estatute )? ( RETURN expresion DOT )? ( ELSE block | R_END ) IF
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_944 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_condition_946 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_condition_948 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_condition_950 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_condition_952 )
      # at line 137:34: ( estatute )?
      alt_9 = 2
      look_9_0 = @input.peek( 1 )

      if ( look_9_0 == FOR || look_9_0.between?( ID, IF ) || look_9_0 == PRINT || look_9_0 == READ || look_9_0 == WHILE )
        alt_9 = 1
      end
      case alt_9
      when 1
        # at line 137:36: estatute
        @state.following.push( TOKENS_FOLLOWING_estatute_IN_condition_956 )
        estatute
        @state.following.pop

      end
      # at line 137:48: ( RETURN expresion DOT )?
      alt_10 = 2
      look_10_0 = @input.peek( 1 )

      if ( look_10_0 == RETURN )
        alt_10 = 1
      end
      case alt_10
      when 1
        # at line 137:50: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_condition_963 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_condition_965 )
        expresion
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_condition_967 )

      end
      # at line 137:74: ( ELSE block | R_END )
      alt_11 = 2
      look_11_0 = @input.peek( 1 )

      if ( look_11_0 == ELSE )
        alt_11 = 1
      elsif ( look_11_0 == R_END )
        alt_11 = 2
      else
        raise NoViableAlternative( "", 11, 0 )

      end
      case alt_11
      when 1
        # at line 137:76: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_974 )
        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_976 )
        block
        @state.following.pop

      when 2
        # at line 138:76: R_END
        match( R_END, TOKENS_FOLLOWING_R_END_IN_condition_1053 )

      end
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1130 )

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
    # parser rule loops
    #
    # (in Hephaestus.g)
    # 142:1: loops : ( while_loop | for_loop );
    #
    def loops
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      begin
      # at line 143:3: ( while_loop | for_loop )
      alt_12 = 2
      look_12_0 = @input.peek( 1 )

      if ( look_12_0 == WHILE )
        alt_12 = 1
      elsif ( look_12_0 == FOR )
        alt_12 = 2
      else
        raise NoViableAlternative( "", 12, 0 )

      end
      case alt_12
      when 1
        # at line 143:5: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_loops_1143 )
        while_loop
        @state.following.pop

      when 2
        # at line 144:5: for_loop
        @state.following.push( TOKENS_FOLLOWING_for_loop_IN_loops_1149 )
        for_loop
        @state.following.pop

      end
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
    # parser rule while_loop
    #
    # (in Hephaestus.g)
    # 147:1: while_loop : WHILE LPAR expresion RPAR block WHILE ;
    #
    def while_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      begin
      # at line 148:5: WHILE LPAR expresion RPAR block WHILE
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1162 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_while_loop_1164 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_while_loop_1166 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_while_loop_1168 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_1170 )
      block
      @state.following.pop
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1172 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 9 )


      end

      return 
    end



    #
    # parser rule for_loop
    #
    # (in Hephaestus.g)
    # 151:1: for_loop : FOR ID IN ID block FOR ;
    #
    def for_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      begin
      # at line 152:5: FOR ID IN ID block FOR
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_1185 )
      match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_1187 )
      match( IN, TOKENS_FOLLOWING_IN_IN_for_loop_1189 )
      match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_1191 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_for_loop_1193 )
      block
      @state.following.pop
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_1195 )

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
    # parser rule reading
    #
    # (in Hephaestus.g)
    # 155:1: reading : READ LPAR value RPAR DOT ;
    #
    def reading
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      begin
      # at line 156:5: READ LPAR value RPAR DOT
      match( READ, TOKENS_FOLLOWING_READ_IN_reading_1208 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_reading_1210 )
      @state.following.push( TOKENS_FOLLOWING_value_IN_reading_1212 )
      value
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_reading_1214 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_reading_1216 )

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
    # parser rule writing
    #
    # (in Hephaestus.g)
    # 159:1: writing : PRINT LPAR expresion RPAR DOT ;
    #
    def writing
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      begin
      # at line 160:5: PRINT LPAR expresion RPAR DOT
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_writing_1229 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_writing_1231 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_writing_1233 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_writing_1235 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_writing_1237 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 12 )


      end

      return 
    end

    ParametersReturnValue = define_return_scope

    #
    # parser rule parameters
    #
    # (in Hephaestus.g)
    # 163:1: parameters : LPAR ( type ( ID | value ) ( COMMA type ( ID | value ) )* )? RPAR ;
    #
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      return_value = ParametersReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 164:5: LPAR ( type ( ID | value ) ( COMMA type ( ID | value ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_parameters_1250 )
      # at line 164:10: ( type ( ID | value ) ( COMMA type ( ID | value ) )* )?
      alt_16 = 2
      look_16_0 = @input.peek( 1 )

      if ( look_16_0 == ID || look_16_0 == R_BOOL || look_16_0.between?( R_FLOAT, R_STRING ) || look_16_0 == VOID )
        alt_16 = 1
      end
      case alt_16
      when 1
        # at line 164:12: type ( ID | value ) ( COMMA type ( ID | value ) )*
        @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1254 )
        type
        @state.following.pop
        # at line 164:17: ( ID | value )
        alt_13 = 2
        look_13_0 = @input.peek( 1 )

        if ( look_13_0 == ID )
          alt_13 = 1
        elsif ( look_13_0 == BOOL || look_13_0 == FLOAT || look_13_0 == INTEGER || look_13_0 == STRING )
          alt_13 = 2
        else
          raise NoViableAlternative( "", 13, 0 )

        end
        case alt_13
        when 1
          # at line 164:19: ID
          match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1258 )

        when 2
          # at line 165:19: value
          @state.following.push( TOKENS_FOLLOWING_value_IN_parameters_1278 )
          value
          @state.following.pop

        end
        # at line 166:19: ( COMMA type ( ID | value ) )*
        while true # decision 15
          alt_15 = 2
          look_15_0 = @input.peek( 1 )

          if ( look_15_0 == COMMA )
            alt_15 = 1

          end
          case alt_15
          when 1
            # at line 166:21: COMMA type ( ID | value )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_parameters_1300 )
            @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1302 )
            type
            @state.following.pop
            # at line 166:32: ( ID | value )
            alt_14 = 2
            look_14_0 = @input.peek( 1 )

            if ( look_14_0 == ID )
              alt_14 = 1
            elsif ( look_14_0 == BOOL || look_14_0 == FLOAT || look_14_0 == INTEGER || look_14_0 == STRING )
              alt_14 = 2
            else
              raise NoViableAlternative( "", 14, 0 )

            end
            case alt_14
            when 1
              # at line 166:34: ID
              match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1306 )

            when 2
              # at line 167:34: value
              @state.following.push( TOKENS_FOLLOWING_value_IN_parameters_1341 )
              value
              @state.following.pop

            end

          else
            break # out of loop for decision 15
          end
        end # loop for decision 15


      end
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_parameters_1409 )

      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 13 )


      end

      return return_value
    end



    #
    # parser rule function
    #
    # (in Hephaestus.g)
    # 173:1: function : FUNCTION ( type ) ID parameters COLON ( estatute | var_dec )* ( RETURN expresion DOT )? R_END FUNCTION ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      __ID3__ = nil
      parameters4 = nil
      type5 = nil


      begin
      # at line 174:5: FUNCTION ( type ) ID parameters COLON ( estatute | var_dec )* ( RETURN expresion DOT )? R_END FUNCTION
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1422 )
      # at line 174:14: ( type )
      # at line 174:16: type
      @state.following.push( TOKENS_FOLLOWING_type_IN_function_1426 )
      type5 = type
      @state.following.pop

      __ID3__ = match( ID, TOKENS_FOLLOWING_ID_IN_function_1430 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_1432 )
      parameters4 = parameters
      @state.following.pop
      match( COLON, TOKENS_FOLLOWING_COLON_IN_function_1434 )

      # --> action
       $program.add_function(__ID3__.text, ( parameters4 && @input.to_s( parameters4.start, parameters4.stop ) ), ( type5 && @input.to_s( type5.start, type5.stop ) ))
      # <-- action

      # at line 175:43: ( estatute | var_dec )*
      while true # decision 17
        alt_17 = 3
        look_17_0 = @input.peek( 1 )

        if ( look_17_0 == FOR || look_17_0.between?( ID, IF ) || look_17_0 == PRINT || look_17_0 == READ || look_17_0 == WHILE )
          alt_17 = 1
        elsif ( look_17_0 == DEFINE )
          alt_17 = 2

        end
        case alt_17
        when 1
          # at line 175:45: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_function_1482 )
          estatute
          @state.following.pop

        when 2
          # at line 176:45: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_function_1528 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 17
        end
      end # loop for decision 17

      # at line 177:46: ( RETURN expresion DOT )?
      alt_18 = 2
      look_18_0 = @input.peek( 1 )

      if ( look_18_0 == RETURN )
        alt_18 = 1
      end
      case alt_18
      when 1
        # at line 177:48: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_function_1577 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_function_1579 )
        expresion
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_function_1581 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_1586 )
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1588 )

      # --> action
       $program.reset_context() 
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
    # 180:1: block : COLON ( estatute )* ( RETURN expresion DOT )? R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      begin
      # at line 181:5: COLON ( estatute )* ( RETURN expresion DOT )? R_END
      match( COLON, TOKENS_FOLLOWING_COLON_IN_block_1601 )
      # at line 181:11: ( estatute )*
      while true # decision 19
        alt_19 = 2
        look_19_0 = @input.peek( 1 )

        if ( look_19_0 == FOR || look_19_0.between?( ID, IF ) || look_19_0 == PRINT || look_19_0 == READ || look_19_0 == WHILE )
          alt_19 = 1

        end
        case alt_19
        when 1
          # at line 181:13: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_block_1605 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 19
        end
      end # loop for decision 19

      # at line 181:25: ( RETURN expresion DOT )?
      alt_20 = 2
      look_20_0 = @input.peek( 1 )

      if ( look_20_0 == RETURN )
        alt_20 = 1
      end
      case alt_20
      when 1
        # at line 181:27: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_block_1612 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_block_1614 )
        expresion
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_block_1616 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_1621 )

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
    # parser rule func_call
    #
    # (in Hephaestus.g)
    # 184:1: func_call : ID parameters ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      begin
      # at line 185:5: ID parameters
      match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1634 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_func_call_1636 )
      parameters
      @state.following.pop

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
    # parser rule expresion
    #
    # (in Hephaestus.g)
    # 188:1: expresion : exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )? ;
    #
    def expresion
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      __GREATER6__ = nil
      __LESS7__ = nil
      __NEQ8__ = nil
      __EQ9__ = nil
      __AND10__ = nil
      __OR11__ = nil


      begin
      # at line 189:5: exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_1649 )
      exp
      @state.following.pop
      # at line 189:9: ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      alt_22 = 2
      look_22_0 = @input.peek( 1 )

      if ( look_22_0 == AND || look_22_0 == EQ || look_22_0 == GREATER || look_22_0 == LESS || look_22_0 == NEQ || look_22_0 == OR )
        alt_22 = 1
      end
      case alt_22
      when 1
        # at line 189:11: ( GREATER | LESS | NEQ | EQ | AND | OR ) exp
        # at line 189:11: ( GREATER | LESS | NEQ | EQ | AND | OR )
        alt_21 = 6
        case look_21 = @input.peek( 1 )
        when GREATER then alt_21 = 1
        when LESS then alt_21 = 2
        when NEQ then alt_21 = 3
        when EQ then alt_21 = 4
        when AND then alt_21 = 5
        when OR then alt_21 = 6
        else
          raise NoViableAlternative( "", 21, 0 )

        end
        case alt_21
        when 1
          # at line 189:13: GREATER
          __GREATER6__ = match( GREATER, TOKENS_FOLLOWING_GREATER_IN_expresion_1655 )

          # --> action
           $quads.add_operator(__GREATER6__.text) 
          # <-- action


        when 2
          # at line 190:13: LESS
          __LESS7__ = match( LESS, TOKENS_FOLLOWING_LESS_IN_expresion_1671 )

          # --> action
           $quads.add_operator(__LESS7__.text) 
          # <-- action


        when 3
          # at line 191:13: NEQ
          __NEQ8__ = match( NEQ, TOKENS_FOLLOWING_NEQ_IN_expresion_1687 )

          # --> action
           $quads.add_operator(__NEQ8__.text) 
          # <-- action


        when 4
          # at line 192:13: EQ
          __EQ9__ = match( EQ, TOKENS_FOLLOWING_EQ_IN_expresion_1703 )

          # --> action
           $quads.add_operator(__EQ9__.text) 
          # <-- action


        when 5
          # at line 193:13: AND
          __AND10__ = match( AND, TOKENS_FOLLOWING_AND_IN_expresion_1719 )

          # --> action
           $quads.add_operator(__AND10__.text) 
          # <-- action


        when 6
          # at line 194:13: OR
          __OR11__ = match( OR, TOKENS_FOLLOWING_OR_IN_expresion_1735 )

          # --> action
           $quads.add_operator(__OR11__.text) 
          # <-- action


        end
        @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_1751 )
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
        # trace_out( __method__, 17 )


      end

      return 
    end



    #
    # parser rule exp
    #
    # (in Hephaestus.g)
    # 199:1: exp : term ( ( PLUS | MINUS ) term )* ;
    #
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


      __PLUS12__ = nil
      __MINUS13__ = nil


      begin
      # at line 200:5: term ( ( PLUS | MINUS ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1777 )
      term
      @state.following.pop
      # at line 200:10: ( ( PLUS | MINUS ) term )*
      while true # decision 24
        alt_24 = 2
        look_24_0 = @input.peek( 1 )

        if ( look_24_0 == MINUS || look_24_0 == PLUS )
          alt_24 = 1

        end
        case alt_24
        when 1
          # at line 200:12: ( PLUS | MINUS ) term
          # at line 200:12: ( PLUS | MINUS )
          alt_23 = 2
          look_23_0 = @input.peek( 1 )

          if ( look_23_0 == PLUS )
            alt_23 = 1
          elsif ( look_23_0 == MINUS )
            alt_23 = 2
          else
            raise NoViableAlternative( "", 23, 0 )

          end
          case alt_23
          when 1
            # at line 200:14: PLUS
            __PLUS12__ = match( PLUS, TOKENS_FOLLOWING_PLUS_IN_exp_1783 )

            # --> action
             $quads.add_operator(__PLUS12__.text) 
            # <-- action


          when 2
            # at line 201:14: MINUS
            __MINUS13__ = match( MINUS, TOKENS_FOLLOWING_MINUS_IN_exp_1800 )

            # --> action
             $quads.add_operator(__MINUS13__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1817 )
          term
          @state.following.pop

        else
          break # out of loop for decision 24
        end
      end # loop for decision 24


      # --> action
       $quads.is_exp_pending() 
      # <-- action


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
    # parser rule term
    #
    # (in Hephaestus.g)
    # 206:1: term : factor ( ( MULT | DIV ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      __MULT14__ = nil
      __DIV15__ = nil


      begin
      # at line 207:5: factor ( ( MULT | DIV ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1844 )
      factor
      @state.following.pop
      # at line 207:12: ( ( MULT | DIV ) factor )*
      while true # decision 26
        alt_26 = 2
        look_26_0 = @input.peek( 1 )

        if ( look_26_0 == DIV || look_26_0 == MULT )
          alt_26 = 1

        end
        case alt_26
        when 1
          # at line 207:14: ( MULT | DIV ) factor
          # at line 207:14: ( MULT | DIV )
          alt_25 = 2
          look_25_0 = @input.peek( 1 )

          if ( look_25_0 == MULT )
            alt_25 = 1
          elsif ( look_25_0 == DIV )
            alt_25 = 2
          else
            raise NoViableAlternative( "", 25, 0 )

          end
          case alt_25
          when 1
            # at line 207:16: MULT
            __MULT14__ = match( MULT, TOKENS_FOLLOWING_MULT_IN_term_1850 )

            # --> action
             $quads.add_operator(__MULT14__.text) 
            # <-- action


          when 2
            # at line 208:16: DIV
            __DIV15__ = match( DIV, TOKENS_FOLLOWING_DIV_IN_term_1869 )

            # --> action
             $quads.add_operator(__DIV15__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1888 )
          factor
          @state.following.pop

        else
          break # out of loop for decision 26
        end
      end # loop for decision 26


      # --> action
       $quads.is_term_pending() 
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
    # parser rule factor
    #
    # (in Hephaestus.g)
    # 213:1: factor : ( ID ( array_dec )? | LPAR expresion RPAR | value );
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      __ID16__ = nil
      __LPAR17__ = nil
      value18 = nil


      begin
      # at line 214:3: ( ID ( array_dec )? | LPAR expresion RPAR | value )
      alt_28 = 3
      case look_28 = @input.peek( 1 )
      when ID then alt_28 = 1
      when LPAR then alt_28 = 2
      when BOOL, FLOAT, INTEGER, STRING then alt_28 = 3
      else
        raise NoViableAlternative( "", 28, 0 )

      end
      case alt_28
      when 1
        # at line 214:5: ID ( array_dec )?
        __ID16__ = match( ID, TOKENS_FOLLOWING_ID_IN_factor_1917 )
        # at line 214:8: ( array_dec )?
        alt_27 = 2
        look_27_0 = @input.peek( 1 )

        if ( look_27_0 == LBRACK )
          alt_27 = 1
        end
        case alt_27
        when 1
          # at line 214:10: array_dec
          @state.following.push( TOKENS_FOLLOWING_array_dec_IN_factor_1921 )
          array_dec
          @state.following.pop

        end

        # --> action
         $quads.add_id(__ID16__.text, nil) 
        # <-- action


      when 2
        # at line 215:7: LPAR expresion RPAR
        __LPAR17__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_1934 )

        # --> action
         $quads.add_false_bottom(__LPAR17__.text) 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_expresion_IN_factor_1938 )
        expresion
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_1940 )

        # --> action
         $quads.remove_false_bottom() 
        # <-- action


      when 3
        # at line 216:7: value
        @state.following.push( TOKENS_FOLLOWING_value_IN_factor_1950 )
        value18 = value
        @state.following.pop

        # --> action
         $quads.add_id(nil, ( value18 && @input.to_s( value18.start, value18.stop ) )) 
        # <-- action


      end
      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 20 )


      end

      return 
    end

    TypeReturnValue = define_return_scope

    #
    # parser rule type
    #
    # (in Hephaestus.g)
    # 220:1: type : ( R_STRING | R_BOOL | R_FLOAT | R_INTEGER | VOID | ID );
    #
    def type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


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
        # trace_out( __method__, 21 )


      end

      return return_value
    end

    ValueReturnValue = define_return_scope

    #
    # parser rule value
    #
    # (in Hephaestus.g)
    # 229:1: value : ( STRING | FLOAT | INTEGER | BOOL );
    #
    def value
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


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
        # trace_out( __method__, 22 )


      end

      return return_value
    end



    #
    # parser rule r_class
    #
    # (in Hephaestus.g)
    # 236:1: r_class : R_CLASS ID ( HER ID )? COLON ( function | var_dec )* R_END R_CLASS ;
    #
    def r_class
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )


      begin
      # at line 237:5: R_CLASS ID ( HER ID )? COLON ( function | var_dec )* R_END R_CLASS
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_2040 )
      match( ID, TOKENS_FOLLOWING_ID_IN_r_class_2042 )
      # at line 237:16: ( HER ID )?
      alt_29 = 2
      look_29_0 = @input.peek( 1 )

      if ( look_29_0 == HER )
        alt_29 = 1
      end
      case alt_29
      when 1
        # at line 237:18: HER ID
        match( HER, TOKENS_FOLLOWING_HER_IN_r_class_2046 )
        match( ID, TOKENS_FOLLOWING_ID_IN_r_class_2048 )

      end
      match( COLON, TOKENS_FOLLOWING_COLON_IN_r_class_2053 )
      # at line 237:34: ( function | var_dec )*
      while true # decision 30
        alt_30 = 3
        look_30_0 = @input.peek( 1 )

        if ( look_30_0 == FUNCTION )
          alt_30 = 1
        elsif ( look_30_0 == DEFINE )
          alt_30 = 2

        end
        case alt_30
        when 1
          # at line 237:36: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_r_class_2057 )
          function
          @state.following.pop

        when 2
          # at line 238:36: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_r_class_2094 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 30
        end
      end # loop for decision 30

      match( R_END, TOKENS_FOLLOWING_R_END_IN_r_class_2132 )
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_2134 )

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
    # parser rule method_call
    #
    # (in Hephaestus.g)
    # 242:1: method_call : ID DOT ( func_call | ID ) DOT ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      begin
      # at line 243:5: ID DOT ( func_call | ID ) DOT
      match( ID, TOKENS_FOLLOWING_ID_IN_method_call_2147 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_2149 )
      # at line 243:12: ( func_call | ID )
      alt_31 = 2
      look_31_0 = @input.peek( 1 )

      if ( look_31_0 == ID )
        look_31_1 = @input.peek( 2 )

        if ( look_31_1 == LPAR )
          alt_31 = 1
        elsif ( look_31_1 == DOT )
          alt_31 = 2
        else
          raise NoViableAlternative( "", 31, 1 )

        end
      else
        raise NoViableAlternative( "", 31, 0 )

      end
      case alt_31
      when 1
        # at line 243:14: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_method_call_2153 )
        func_call
        @state.following.pop

      when 2
        # at line 244:14: ID
        match( ID, TOKENS_FOLLOWING_ID_IN_method_call_2168 )

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_2183 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 24 )


      end

      return 
    end



    TOKENS_FOLLOWING_r_class_IN_start_506 = Set[ 35, 41 ]
    TOKENS_FOLLOWING_program_IN_start_511 = Set[ 1 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_524 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_program_526 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_program_528 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_program_532 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_var_dec_IN_program_557 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_function_IN_program_582 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_R_END_IN_program_608 = Set[ 35 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_610 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatute_644 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_estatute_646 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatute_652 = Set[ 1 ]
    TOKENS_FOLLOWING_reading_IN_estatute_658 = Set[ 1 ]
    TOKENS_FOLLOWING_writing_IN_estatute_664 = Set[ 1 ]
    TOKENS_FOLLOWING_assignment_IN_estatute_670 = Set[ 1 ]
    TOKENS_FOLLOWING_loops_IN_estatute_676 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatute_682 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_var_dec_695 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_var_dec_697 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_var_dec_699 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_var_dec_701 = Set[ 6, 12 ]
    TOKENS_FOLLOWING_ASGN_IN_var_dec_736 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_var_dec_740 = Set[ 12 ]
    TOKENS_FOLLOWING_func_call_IN_var_dec_773 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_var_dec_831 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_assignment_844 = Set[ 6, 24 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_848 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_assignment_852 = Set[ 12 ]
    TOKENS_FOLLOWING_func_call_IN_assignment_870 = Set[ 12 ]
    TOKENS_FOLLOWING_array_dec_IN_assignment_890 = Set[ 6 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_892 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_assignment_894 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_assignment_905 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACK_IN_array_dec_918 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_array_dec_920 = Set[ 9, 36 ]
    TOKENS_FOLLOWING_COMMA_IN_array_dec_924 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_array_dec_926 = Set[ 36 ]
    TOKENS_FOLLOWING_RBRACK_IN_array_dec_931 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_944 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_condition_946 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_condition_948 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_condition_950 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_condition_952 = Set[ 13, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_condition_956 = Set[ 13, 38, 42 ]
    TOKENS_FOLLOWING_RETURN_IN_condition_963 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_condition_965 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_condition_967 = Set[ 13, 42 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_974 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_condition_976 = Set[ 21 ]
    TOKENS_FOLLOWING_R_END_IN_condition_1053 = Set[ 21 ]
    TOKENS_FOLLOWING_IF_IN_condition_1130 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_loops_1143 = Set[ 1 ]
    TOKENS_FOLLOWING_for_loop_IN_loops_1149 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1162 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_while_loop_1164 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_while_loop_1166 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_while_loop_1168 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_while_loop_1170 = Set[ 48 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1172 = Set[ 1 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_1185 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_1187 = Set[ 22 ]
    TOKENS_FOLLOWING_IN_IN_for_loop_1189 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_1191 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_for_loop_1193 = Set[ 16 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_1195 = Set[ 1 ]
    TOKENS_FOLLOWING_READ_IN_reading_1208 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_reading_1210 = Set[ 7, 15, 23, 46 ]
    TOKENS_FOLLOWING_value_IN_reading_1212 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_reading_1214 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_reading_1216 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_writing_1229 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_writing_1231 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_writing_1233 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_writing_1235 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_writing_1237 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_parameters_1250 = Set[ 20, 39, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_parameters_1254 = Set[ 7, 15, 20, 23, 46 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1258 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_value_IN_parameters_1278 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_parameters_1300 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_parameters_1302 = Set[ 7, 15, 20, 23, 46 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1306 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_value_IN_parameters_1341 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_parameters_1409 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1422 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_function_1426 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_function_1430 = Set[ 27 ]
    TOKENS_FOLLOWING_parameters_IN_function_1432 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_function_1434 = Set[ 10, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_function_1482 = Set[ 10, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_var_dec_IN_function_1528 = Set[ 10, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_RETURN_IN_function_1577 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_function_1579 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_function_1581 = Set[ 42 ]
    TOKENS_FOLLOWING_R_END_IN_function_1586 = Set[ 17 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1588 = Set[ 1 ]
    TOKENS_FOLLOWING_COLON_IN_block_1601 = Set[ 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_block_1605 = Set[ 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_RETURN_IN_block_1612 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_block_1614 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_block_1616 = Set[ 42 ]
    TOKENS_FOLLOWING_R_END_IN_block_1621 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1634 = Set[ 27 ]
    TOKENS_FOLLOWING_parameters_IN_func_call_1636 = Set[ 1 ]
    TOKENS_FOLLOWING_exp_IN_expresion_1649 = Set[ 1, 4, 14, 18, 25, 30, 32 ]
    TOKENS_FOLLOWING_GREATER_IN_expresion_1655 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_LESS_IN_expresion_1671 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_NEQ_IN_expresion_1687 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_EQ_IN_expresion_1703 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_AND_IN_expresion_1719 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_OR_IN_expresion_1735 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_expresion_1751 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_exp_1777 = Set[ 1, 28, 33 ]
    TOKENS_FOLLOWING_PLUS_IN_exp_1783 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_MINUS_IN_exp_1800 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_term_IN_exp_1817 = Set[ 1, 28, 33 ]
    TOKENS_FOLLOWING_factor_IN_term_1844 = Set[ 1, 11, 29 ]
    TOKENS_FOLLOWING_MULT_IN_term_1850 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_DIV_IN_term_1869 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_factor_IN_term_1888 = Set[ 1, 11, 29 ]
    TOKENS_FOLLOWING_ID_IN_factor_1917 = Set[ 1, 24 ]
    TOKENS_FOLLOWING_array_dec_IN_factor_1921 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_1934 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_factor_1938 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_1940 = Set[ 1 ]
    TOKENS_FOLLOWING_value_IN_factor_1950 = Set[ 1 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_2040 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_r_class_2042 = Set[ 8, 19 ]
    TOKENS_FOLLOWING_HER_IN_r_class_2046 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_r_class_2048 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_r_class_2053 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_function_IN_r_class_2057 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_var_dec_IN_r_class_2094 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_R_END_IN_r_class_2132 = Set[ 41 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_2134 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_2147 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_2149 = Set[ 20 ]
    TOKENS_FOLLOWING_func_call_IN_method_call_2153 = Set[ 12 ]
    TOKENS_FOLLOWING_ID_IN_method_call_2168 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_2183 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
