#!/usr/bin/env ruby
#
# Hephaestus.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Hephaestus.g
# Generated at: 2017-10-24 20:20:36
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

    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    #
    # parser rule start
    #
    # (in Hephaestus.g)
    # 97:1: start : ( r_class )* program ;
    #
    def start
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 98:5: ( r_class )* program
      # at line 98:5: ( r_class )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == R_CLASS )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 98:7: r_class
          @state.following.push( TOKENS_FOLLOWING_r_class_IN_start_510 )
          r_class
          @state.following.pop

        else
          break # out of loop for decision 1
        end
      end # loop for decision 1

      @state.following.push( TOKENS_FOLLOWING_program_IN_start_515 )
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
    # 101:1: program : PROGRAM ID COLON ( estatute | var_dec | function )* R_END PROGRAM ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      begin
      # at line 102:5: PROGRAM ID COLON ( estatute | var_dec | function )* R_END PROGRAM
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_529 )
      match( ID, TOKENS_FOLLOWING_ID_IN_program_531 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_program_533 )
      # at line 102:22: ( estatute | var_dec | function )*
      while true # decision 2
        alt_2 = 4
        case look_2 = @input.peek( 1 )
        when FOR, ID, IF, PRINT, READ, WHILE then alt_2 = 1
        when DEFINE then alt_2 = 2
        when FUNCTION then alt_2 = 3
        end
        case alt_2
        when 1
          # at line 102:24: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_program_537 )
          estatute
          @state.following.pop

        when 2
          # at line 103:24: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_program_563 )
          var_dec
          @state.following.pop

        when 3
          # at line 104:24: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_program_589 )
          function
          @state.following.pop

        else
          break # out of loop for decision 2
        end
      end # loop for decision 2

      match( R_END, TOKENS_FOLLOWING_R_END_IN_program_616 )
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_618 )

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
    # 108:1: estatute : ( func_call DOT | condition | reading | writing | assignment | loops | method_call );
    #
    def estatute
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      begin
      # at line 109:3: ( func_call DOT | condition | reading | writing | assignment | loops | method_call )
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
        # at line 109:5: func_call DOT
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatute_651 )
        func_call
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_estatute_653 )

      when 2
        # at line 110:5: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatute_660 )
        condition
        @state.following.pop

      when 3
        # at line 111:5: reading
        @state.following.push( TOKENS_FOLLOWING_reading_IN_estatute_667 )
        reading
        @state.following.pop

      when 4
        # at line 112:5: writing
        @state.following.push( TOKENS_FOLLOWING_writing_IN_estatute_674 )
        writing
        @state.following.pop

      when 5
        # at line 113:5: assignment
        @state.following.push( TOKENS_FOLLOWING_assignment_IN_estatute_681 )
        assignment
        @state.following.pop

      when 6
        # at line 114:5: loops
        @state.following.push( TOKENS_FOLLOWING_loops_IN_estatute_688 )
        loops
        @state.following.pop

      when 7
        # at line 115:5: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatute_695 )
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
    # 118:1: var_dec : DEFINE ID AS type ( ASGN ( expresion | func_call ) )? DOT ;
    #
    def var_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      __ID1__ = nil
      type2 = nil
      expresion3 = nil
      func_call4 = nil


      begin
      # at line 119:5: DEFINE ID AS type ( ASGN ( expresion | func_call ) )? DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_var_dec_709 )
      __ID1__ = match( ID, TOKENS_FOLLOWING_ID_IN_var_dec_711 )
      match( AS, TOKENS_FOLLOWING_AS_IN_var_dec_713 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_var_dec_715 )
      type2 = type
      @state.following.pop
      # at line 119:23: ( ASGN ( expresion | func_call ) )?
      alt_5 = 2
      look_5_0 = @input.peek( 1 )

      if ( look_5_0 == ASGN )
        alt_5 = 1
      end
      case alt_5
      when 1
        # at line 119:25: ASGN ( expresion | func_call )
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_var_dec_719 )
        # at line 119:30: ( expresion | func_call )
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
          # at line 119:32: expresion
          @state.following.push( TOKENS_FOLLOWING_expresion_IN_var_dec_723 )
          expresion3 = expresion
          @state.following.pop

          # --> action
           $program.add_variable(__ID1__.text, ( type2 && @input.to_s( type2.start, type2.stop ) ) , ( expresion3 && @input.to_s( expresion3.start, expresion3.stop ) )) 
          # <-- action


        when 2
          # at line 121:32: func_call
          @state.following.push( TOKENS_FOLLOWING_func_call_IN_var_dec_790 )
          func_call4 = func_call
          @state.following.pop

          # --> action
           $program.add_variable(__ID1__.text, ( type2 && @input.to_s( type2.start, type2.stop ) ) , ( func_call4 && @input.to_s( func_call4.start, func_call4.stop ) )) 
          # <-- action


        end

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_var_dec_883 )

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
    # 127:1: assignment : ID ( ASGN ( expresion | func_call ) | array_dec ASGN type ) DOT ;
    #
    def assignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      begin
      # at line 128:5: ID ( ASGN ( expresion | func_call ) | array_dec ASGN type ) DOT
      match( ID, TOKENS_FOLLOWING_ID_IN_assignment_899 )
      # at line 128:8: ( ASGN ( expresion | func_call ) | array_dec ASGN type )
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
        # at line 128:10: ASGN ( expresion | func_call )
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_903 )
        # at line 128:15: ( expresion | func_call )
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
          # at line 128:17: expresion
          @state.following.push( TOKENS_FOLLOWING_expresion_IN_assignment_907 )
          expresion
          @state.following.pop

        when 2
          # at line 129:17: func_call
          @state.following.push( TOKENS_FOLLOWING_func_call_IN_assignment_926 )
          func_call
          @state.following.pop

        end

      when 2
        # at line 130:17: array_dec ASGN type
        @state.following.push( TOKENS_FOLLOWING_array_dec_IN_assignment_947 )
        array_dec
        @state.following.pop
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_949 )
        @state.following.push( TOKENS_FOLLOWING_type_IN_assignment_951 )
        type
        @state.following.pop

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_assignment_963 )

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
    # 134:1: array_dec : LBRACK exp ( COMMA exp )* RBRACK ;
    #
    def array_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      begin
      # at line 135:5: LBRACK exp ( COMMA exp )* RBRACK
      match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_array_dec_976 )
      @state.following.push( TOKENS_FOLLOWING_exp_IN_array_dec_978 )
      exp
      @state.following.pop
      # at line 135:16: ( COMMA exp )*
      while true # decision 8
        alt_8 = 2
        look_8_0 = @input.peek( 1 )

        if ( look_8_0 == COMMA )
          alt_8 = 1

        end
        case alt_8
        when 1
          # at line 135:18: COMMA exp
          match( COMMA, TOKENS_FOLLOWING_COMMA_IN_array_dec_982 )
          @state.following.push( TOKENS_FOLLOWING_exp_IN_array_dec_984 )
          exp
          @state.following.pop

        else
          break # out of loop for decision 8
        end
      end # loop for decision 8

      match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_array_dec_989 )

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
    # 138:1: condition : IF LPAR expresion RPAR COLON ( estatute )? ( RETURN expresion DOT )? ( ELSE block | R_END ) IF ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      begin
      # at line 139:5: IF LPAR expresion RPAR COLON ( estatute )? ( RETURN expresion DOT )? ( ELSE block | R_END ) IF
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1002 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_condition_1004 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_condition_1006 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_condition_1008 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_condition_1010 )
      # at line 139:34: ( estatute )?
      alt_9 = 2
      look_9_0 = @input.peek( 1 )

      if ( look_9_0 == FOR || look_9_0.between?( ID, IF ) || look_9_0 == PRINT || look_9_0 == READ || look_9_0 == WHILE )
        alt_9 = 1
      end
      case alt_9
      when 1
        # at line 139:36: estatute
        @state.following.push( TOKENS_FOLLOWING_estatute_IN_condition_1014 )
        estatute
        @state.following.pop

      end
      # at line 139:48: ( RETURN expresion DOT )?
      alt_10 = 2
      look_10_0 = @input.peek( 1 )

      if ( look_10_0 == RETURN )
        alt_10 = 1
      end
      case alt_10
      when 1
        # at line 139:50: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_condition_1021 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_condition_1023 )
        expresion
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_condition_1025 )

      end
      # at line 139:74: ( ELSE block | R_END )
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
        # at line 139:76: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_1032 )
        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_1034 )
        block
        @state.following.pop

      when 2
        # at line 140:76: R_END
        match( R_END, TOKENS_FOLLOWING_R_END_IN_condition_1112 )

      end
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1190 )

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
    # 144:1: loops : ( while_loop | for_loop );
    #
    def loops
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      begin
      # at line 145:3: ( while_loop | for_loop )
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
        # at line 145:5: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_loops_1203 )
        while_loop
        @state.following.pop

      when 2
        # at line 146:5: for_loop
        @state.following.push( TOKENS_FOLLOWING_for_loop_IN_loops_1210 )
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
    # 149:1: while_loop : WHILE LPAR expresion RPAR block WHILE ;
    #
    def while_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      begin
      # at line 150:5: WHILE LPAR expresion RPAR block WHILE
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1223 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_while_loop_1225 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_while_loop_1227 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_while_loop_1229 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_1231 )
      block
      @state.following.pop
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1233 )

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
    # 153:1: for_loop : FOR ID IN ID block FOR ;
    #
    def for_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      begin
      # at line 154:5: FOR ID IN ID block FOR
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_1246 )
      match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_1248 )
      match( IN, TOKENS_FOLLOWING_IN_IN_for_loop_1250 )
      match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_1252 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_for_loop_1254 )
      block
      @state.following.pop
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_1256 )

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
    # 157:1: reading : READ LPAR value RPAR DOT ;
    #
    def reading
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      begin
      # at line 158:5: READ LPAR value RPAR DOT
      match( READ, TOKENS_FOLLOWING_READ_IN_reading_1269 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_reading_1271 )
      @state.following.push( TOKENS_FOLLOWING_value_IN_reading_1273 )
      value
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_reading_1275 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_reading_1277 )

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
    # 161:1: writing : PRINT LPAR expresion RPAR DOT ;
    #
    def writing
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      begin
      # at line 162:5: PRINT LPAR expresion RPAR DOT
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_writing_1290 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_writing_1292 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_writing_1294 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_writing_1296 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_writing_1298 )

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
    # 165:1: parameters : LPAR ( type ( ID | value ) ( COMMA type ( ID | value ) )* )? RPAR ;
    #
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      return_value = ParametersReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 166:5: LPAR ( type ( ID | value ) ( COMMA type ( ID | value ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_parameters_1311 )
      # at line 166:10: ( type ( ID | value ) ( COMMA type ( ID | value ) )* )?
      alt_16 = 2
      look_16_0 = @input.peek( 1 )

      if ( look_16_0 == ID || look_16_0 == R_BOOL || look_16_0.between?( R_FLOAT, R_STRING ) || look_16_0 == VOID )
        alt_16 = 1
      end
      case alt_16
      when 1
        # at line 166:12: type ( ID | value ) ( COMMA type ( ID | value ) )*
        @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1315 )
        type
        @state.following.pop
        # at line 166:17: ( ID | value )
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
          # at line 166:19: ID
          match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1319 )

        when 2
          # at line 167:19: value
          @state.following.push( TOKENS_FOLLOWING_value_IN_parameters_1340 )
          value
          @state.following.pop

        end
        # at line 168:19: ( COMMA type ( ID | value ) )*
        while true # decision 15
          alt_15 = 2
          look_15_0 = @input.peek( 1 )

          if ( look_15_0 == COMMA )
            alt_15 = 1

          end
          case alt_15
          when 1
            # at line 168:21: COMMA type ( ID | value )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_parameters_1363 )
            @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1365 )
            type
            @state.following.pop
            # at line 168:32: ( ID | value )
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
              # at line 168:34: ID
              match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1369 )

            when 2
              # at line 169:34: value
              @state.following.push( TOKENS_FOLLOWING_value_IN_parameters_1405 )
              value
              @state.following.pop

            end

          else
            break # out of loop for decision 15
          end
        end # loop for decision 15


      end
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_parameters_1476 )

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
    # 175:1: function : FUNCTION ( type ) ID parameters COLON ( estatute | var_dec )* ( RETURN expresion DOT )? R_END FUNCTION ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      __ID5__ = nil
      parameters6 = nil
      type7 = nil


      begin
      # at line 176:5: FUNCTION ( type ) ID parameters COLON ( estatute | var_dec )* ( RETURN expresion DOT )? R_END FUNCTION
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1489 )
      # at line 176:14: ( type )
      # at line 176:16: type
      @state.following.push( TOKENS_FOLLOWING_type_IN_function_1493 )
      type7 = type
      @state.following.pop

      __ID5__ = match( ID, TOKENS_FOLLOWING_ID_IN_function_1497 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_1499 )
      parameters6 = parameters
      @state.following.pop
      match( COLON, TOKENS_FOLLOWING_COLON_IN_function_1501 )

      # --> action
       $program.add_function(__ID5__.text, ( parameters6 && @input.to_s( parameters6.start, parameters6.stop ) ), ( type7 && @input.to_s( type7.start, type7.stop ) ))
      # <-- action

      # at line 177:43: ( estatute | var_dec )*
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
          # at line 177:45: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_function_1549 )
          estatute
          @state.following.pop

        when 2
          # at line 178:45: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_function_1596 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 17
        end
      end # loop for decision 17

      # at line 179:46: ( RETURN expresion DOT )?
      alt_18 = 2
      look_18_0 = @input.peek( 1 )

      if ( look_18_0 == RETURN )
        alt_18 = 1
      end
      case alt_18
      when 1
        # at line 179:48: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_function_1646 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_function_1648 )
        expresion
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_function_1650 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_1655 )
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1657 )

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
    # 182:1: block : COLON ( estatute )* ( RETURN expresion DOT )? R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      begin
      # at line 183:5: COLON ( estatute )* ( RETURN expresion DOT )? R_END
      match( COLON, TOKENS_FOLLOWING_COLON_IN_block_1707 )
      # at line 183:11: ( estatute )*
      while true # decision 19
        alt_19 = 2
        look_19_0 = @input.peek( 1 )

        if ( look_19_0 == FOR || look_19_0.between?( ID, IF ) || look_19_0 == PRINT || look_19_0 == READ || look_19_0 == WHILE )
          alt_19 = 1

        end
        case alt_19
        when 1
          # at line 183:13: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_block_1711 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 19
        end
      end # loop for decision 19

      # at line 183:25: ( RETURN expresion DOT )?
      alt_20 = 2
      look_20_0 = @input.peek( 1 )

      if ( look_20_0 == RETURN )
        alt_20 = 1
      end
      case alt_20
      when 1
        # at line 183:27: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_block_1718 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_block_1720 )
        expresion
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_block_1722 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_1727 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 15 )


      end

      return 
    end

    FuncCallReturnValue = define_return_scope

    #
    # parser rule func_call
    #
    # (in Hephaestus.g)
    # 186:1: func_call : ID parameters ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      return_value = FuncCallReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 187:5: ID parameters
      match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1740 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_func_call_1742 )
      parameters
      @state.following.pop

      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 16 )


      end

      return return_value
    end

    ExpresionReturnValue = define_return_scope

    #
    # parser rule expresion
    #
    # (in Hephaestus.g)
    # 190:1: expresion : exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )? ;
    #
    def expresion
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      return_value = ExpresionReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 191:5: exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_1755 )
      exp
      @state.following.pop
      # at line 191:9: ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      alt_21 = 2
      look_21_0 = @input.peek( 1 )

      if ( look_21_0 == AND || look_21_0 == EQ || look_21_0 == GREATER || look_21_0 == LESS || look_21_0 == NEQ || look_21_0 == OR )
        alt_21 = 1
      end
      case alt_21
      when 1
        # at line 191:11: ( GREATER | LESS | NEQ | EQ | AND | OR ) exp
        if @input.peek(1) == AND || @input.peek(1) == EQ || @input.peek(1) == GREATER || @input.peek(1) == LESS || @input.peek(1) == NEQ || @input.peek(1) == OR
          @input.consume
          @state.error_recovery = false

        else
          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_1851 )
        exp
        @state.following.pop

      end

      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 17 )


      end

      return return_value
    end



    #
    # parser rule exp
    #
    # (in Hephaestus.g)
    # 201:1: exp : term ( ( PLUS | MINUS ) term )* ;
    #
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


      begin
      # at line 202:5: term ( ( PLUS | MINUS ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1876 )
      term
      @state.following.pop
      # at line 202:10: ( ( PLUS | MINUS ) term )*
      while true # decision 22
        alt_22 = 2
        look_22_0 = @input.peek( 1 )

        if ( look_22_0 == MINUS || look_22_0 == PLUS )
          alt_22 = 1

        end
        case alt_22
        when 1
          # at line 202:12: ( PLUS | MINUS ) term
          if @input.peek(1) == MINUS || @input.peek(1) == PLUS
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1914 )
          term
          @state.following.pop

        else
          break # out of loop for decision 22
        end
      end # loop for decision 22


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
    # 208:1: term : factor ( ( MULT | DIV ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      begin
      # at line 209:5: factor ( ( MULT | DIV ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1940 )
      factor
      @state.following.pop
      # at line 209:12: ( ( MULT | DIV ) factor )*
      while true # decision 23
        alt_23 = 2
        look_23_0 = @input.peek( 1 )

        if ( look_23_0 == DIV || look_23_0 == MULT )
          alt_23 = 1

        end
        case alt_23
        when 1
          # at line 209:14: ( MULT | DIV ) factor
          if @input.peek(1) == DIV || @input.peek(1) == MULT
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1982 )
          factor
          @state.following.pop

        else
          break # out of loop for decision 23
        end
      end # loop for decision 23


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
    # 215:1: factor : ( ID ( array_dec )? | LPAR expresion RPAR | value );
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      begin
      # at line 216:3: ( ID ( array_dec )? | LPAR expresion RPAR | value )
      alt_25 = 3
      case look_25 = @input.peek( 1 )
      when ID then alt_25 = 1
      when LPAR then alt_25 = 2
      when BOOL, FLOAT, INTEGER, STRING then alt_25 = 3
      else
        raise NoViableAlternative( "", 25, 0 )

      end
      case alt_25
      when 1
        # at line 216:5: ID ( array_dec )?
        match( ID, TOKENS_FOLLOWING_ID_IN_factor_2010 )
        # at line 216:8: ( array_dec )?
        alt_24 = 2
        look_24_0 = @input.peek( 1 )

        if ( look_24_0 == LBRACK )
          alt_24 = 1
        end
        case alt_24
        when 1
          # at line 216:10: array_dec
          @state.following.push( TOKENS_FOLLOWING_array_dec_IN_factor_2014 )
          array_dec
          @state.following.pop

        end

      when 2
        # at line 217:7: LPAR expresion RPAR
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_2026 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_factor_2028 )
        expresion
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_2030 )

      when 3
        # at line 218:7: value
        @state.following.push( TOKENS_FOLLOWING_value_IN_factor_2039 )
        value
        @state.following.pop

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
    # 221:1: type : ( R_STRING | R_BOOL | R_FLOAT | R_INTEGER | VOID | ID );
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



    #
    # parser rule value
    #
    # (in Hephaestus.g)
    # 230:1: value : ( STRING | FLOAT | INTEGER | BOOL );
    #
    def value
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


      begin
      # at line 
      if @input.peek(1) == BOOL || @input.peek(1) == FLOAT || @input.peek(1) == INTEGER || @input.peek(1) == STRING
        @input.consume
        @state.error_recovery = false

      else
        mse = MismatchedSet( nil )
        raise mse

      end



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
    # parser rule r_class
    #
    # (in Hephaestus.g)
    # 237:1: r_class : R_CLASS ID ( HER ID )? COLON ( function | var_dec )* R_END R_CLASS ;
    #
    def r_class
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )


      begin
      # at line 238:5: R_CLASS ID ( HER ID )? COLON ( function | var_dec )* R_END R_CLASS
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_2133 )
      match( ID, TOKENS_FOLLOWING_ID_IN_r_class_2135 )
      # at line 238:16: ( HER ID )?
      alt_26 = 2
      look_26_0 = @input.peek( 1 )

      if ( look_26_0 == HER )
        alt_26 = 1
      end
      case alt_26
      when 1
        # at line 238:18: HER ID
        match( HER, TOKENS_FOLLOWING_HER_IN_r_class_2139 )
        match( ID, TOKENS_FOLLOWING_ID_IN_r_class_2141 )

      end
      match( COLON, TOKENS_FOLLOWING_COLON_IN_r_class_2146 )
      # at line 238:34: ( function | var_dec )*
      while true # decision 27
        alt_27 = 3
        look_27_0 = @input.peek( 1 )

        if ( look_27_0 == FUNCTION )
          alt_27 = 1
        elsif ( look_27_0 == DEFINE )
          alt_27 = 2

        end
        case alt_27
        when 1
          # at line 238:36: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_r_class_2150 )
          function
          @state.following.pop

        when 2
          # at line 239:36: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_r_class_2188 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 27
        end
      end # loop for decision 27

      match( R_END, TOKENS_FOLLOWING_R_END_IN_r_class_2227 )
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_2229 )

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
    # 243:1: method_call : ID DOT ( func_call | ID ) DOT ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      begin
      # at line 244:5: ID DOT ( func_call | ID ) DOT
      match( ID, TOKENS_FOLLOWING_ID_IN_method_call_2242 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_2244 )
      # at line 244:12: ( func_call | ID )
      alt_28 = 2
      look_28_0 = @input.peek( 1 )

      if ( look_28_0 == ID )
        look_28_1 = @input.peek( 2 )

        if ( look_28_1 == LPAR )
          alt_28 = 1
        elsif ( look_28_1 == DOT )
          alt_28 = 2
        else
          raise NoViableAlternative( "", 28, 1 )

        end
      else
        raise NoViableAlternative( "", 28, 0 )

      end
      case alt_28
      when 1
        # at line 244:14: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_method_call_2248 )
        func_call
        @state.following.pop

      when 2
        # at line 245:14: ID
        match( ID, TOKENS_FOLLOWING_ID_IN_method_call_2264 )

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_2280 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 24 )


      end

      return 
    end



    TOKENS_FOLLOWING_r_class_IN_start_510 = Set[ 35, 41 ]
    TOKENS_FOLLOWING_program_IN_start_515 = Set[ 1 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_529 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_program_531 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_program_533 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_program_537 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_var_dec_IN_program_563 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_function_IN_program_589 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_R_END_IN_program_616 = Set[ 35 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_618 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatute_651 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_estatute_653 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatute_660 = Set[ 1 ]
    TOKENS_FOLLOWING_reading_IN_estatute_667 = Set[ 1 ]
    TOKENS_FOLLOWING_writing_IN_estatute_674 = Set[ 1 ]
    TOKENS_FOLLOWING_assignment_IN_estatute_681 = Set[ 1 ]
    TOKENS_FOLLOWING_loops_IN_estatute_688 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatute_695 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_var_dec_709 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_var_dec_711 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_var_dec_713 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_var_dec_715 = Set[ 6, 12 ]
    TOKENS_FOLLOWING_ASGN_IN_var_dec_719 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_var_dec_723 = Set[ 12 ]
    TOKENS_FOLLOWING_func_call_IN_var_dec_790 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_var_dec_883 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_assignment_899 = Set[ 6, 24 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_903 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_assignment_907 = Set[ 12 ]
    TOKENS_FOLLOWING_func_call_IN_assignment_926 = Set[ 12 ]
    TOKENS_FOLLOWING_array_dec_IN_assignment_947 = Set[ 6 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_949 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_assignment_951 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_assignment_963 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACK_IN_array_dec_976 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_array_dec_978 = Set[ 9, 36 ]
    TOKENS_FOLLOWING_COMMA_IN_array_dec_982 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_array_dec_984 = Set[ 9, 36 ]
    TOKENS_FOLLOWING_RBRACK_IN_array_dec_989 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_1002 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_condition_1004 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_condition_1006 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_condition_1008 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_condition_1010 = Set[ 13, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_condition_1014 = Set[ 13, 38, 42 ]
    TOKENS_FOLLOWING_RETURN_IN_condition_1021 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_condition_1023 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_condition_1025 = Set[ 13, 42 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_1032 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_condition_1034 = Set[ 21 ]
    TOKENS_FOLLOWING_R_END_IN_condition_1112 = Set[ 21 ]
    TOKENS_FOLLOWING_IF_IN_condition_1190 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_loops_1203 = Set[ 1 ]
    TOKENS_FOLLOWING_for_loop_IN_loops_1210 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1223 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_while_loop_1225 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_while_loop_1227 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_while_loop_1229 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_while_loop_1231 = Set[ 48 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1233 = Set[ 1 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_1246 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_1248 = Set[ 22 ]
    TOKENS_FOLLOWING_IN_IN_for_loop_1250 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_1252 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_for_loop_1254 = Set[ 16 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_1256 = Set[ 1 ]
    TOKENS_FOLLOWING_READ_IN_reading_1269 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_reading_1271 = Set[ 7, 15, 23, 46 ]
    TOKENS_FOLLOWING_value_IN_reading_1273 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_reading_1275 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_reading_1277 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_writing_1290 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_writing_1292 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_writing_1294 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_writing_1296 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_writing_1298 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_parameters_1311 = Set[ 20, 39, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_parameters_1315 = Set[ 7, 15, 20, 23, 46 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1319 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_value_IN_parameters_1340 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_parameters_1363 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_parameters_1365 = Set[ 7, 15, 20, 23, 46 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1369 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_value_IN_parameters_1405 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_parameters_1476 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1489 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_function_1493 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_function_1497 = Set[ 27 ]
    TOKENS_FOLLOWING_parameters_IN_function_1499 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_function_1501 = Set[ 10, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_function_1549 = Set[ 10, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_var_dec_IN_function_1596 = Set[ 10, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_RETURN_IN_function_1646 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_function_1648 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_function_1650 = Set[ 42 ]
    TOKENS_FOLLOWING_R_END_IN_function_1655 = Set[ 17 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1657 = Set[ 1 ]
    TOKENS_FOLLOWING_COLON_IN_block_1707 = Set[ 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_block_1711 = Set[ 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_RETURN_IN_block_1718 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_block_1720 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_block_1722 = Set[ 42 ]
    TOKENS_FOLLOWING_R_END_IN_block_1727 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1740 = Set[ 27 ]
    TOKENS_FOLLOWING_parameters_IN_func_call_1742 = Set[ 1 ]
    TOKENS_FOLLOWING_exp_IN_expresion_1755 = Set[ 1, 4, 14, 18, 25, 30, 32 ]
    TOKENS_FOLLOWING_set_IN_expresion_1759 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_expresion_1851 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_exp_1876 = Set[ 1, 28, 33 ]
    TOKENS_FOLLOWING_set_IN_exp_1880 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_term_IN_exp_1914 = Set[ 1, 28, 33 ]
    TOKENS_FOLLOWING_factor_IN_term_1940 = Set[ 1, 11, 29 ]
    TOKENS_FOLLOWING_set_IN_term_1944 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_factor_IN_term_1982 = Set[ 1, 11, 29 ]
    TOKENS_FOLLOWING_ID_IN_factor_2010 = Set[ 1, 24 ]
    TOKENS_FOLLOWING_array_dec_IN_factor_2014 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_2026 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_factor_2028 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_2030 = Set[ 1 ]
    TOKENS_FOLLOWING_value_IN_factor_2039 = Set[ 1 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_2133 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_r_class_2135 = Set[ 8, 19 ]
    TOKENS_FOLLOWING_HER_IN_r_class_2139 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_r_class_2141 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_r_class_2146 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_function_IN_r_class_2150 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_var_dec_IN_r_class_2188 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_R_END_IN_r_class_2227 = Set[ 41 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_2229 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_2242 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_2244 = Set[ 20 ]
    TOKENS_FOLLOWING_func_call_IN_method_call_2248 = Set[ 12 ]
    TOKENS_FOLLOWING_ID_IN_method_call_2264 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_2280 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
