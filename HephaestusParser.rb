#!/usr/bin/env ruby
#
# Hephaestus.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Hephaestus.g
# Generated at: 2017-10-24 17:38:52
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

      program = Program.new()

    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    #
    # parser rule start
    #
    # (in Hephaestus.g)
    # 95:1: start : ( r_class )* program ;
    #
    def start
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 95:8: ( r_class )* program
      # at line 95:8: ( r_class )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == R_CLASS )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 95:10: r_class
          @state.following.push( TOKENS_FOLLOWING_r_class_IN_start_504 )
          r_class
          @state.following.pop

        else
          break # out of loop for decision 1
        end
      end # loop for decision 1

      @state.following.push( TOKENS_FOLLOWING_program_IN_start_509 )
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
    # 97:1: program : PROGRAM ID COLON ( estatute | var_dec | function )* R_END PROGRAM ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      begin
      # at line 97:10: PROGRAM ID COLON ( estatute | var_dec | function )* R_END PROGRAM
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_516 )
      match( ID, TOKENS_FOLLOWING_ID_IN_program_518 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_program_520 )
      # at line 97:27: ( estatute | var_dec | function )*
      while true # decision 2
        alt_2 = 4
        case look_2 = @input.peek( 1 )
        when FOR, ID, IF, PRINT, READ, WHILE then alt_2 = 1
        when DEFINE then alt_2 = 2
        when FUNCTION then alt_2 = 3
        end
        case alt_2
        when 1
          # at line 97:29: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_program_524 )
          estatute
          @state.following.pop

        when 2
          # at line 97:40: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_program_528 )
          var_dec
          @state.following.pop

        when 3
          # at line 97:50: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_program_532 )
          function
          @state.following.pop

        else
          break # out of loop for decision 2
        end
      end # loop for decision 2

      match( R_END, TOKENS_FOLLOWING_R_END_IN_program_537 )
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_539 )

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
    # 99:1: estatute : ( func_call DOT | condition | reading | writing | assignment | loops | method_call );
    #
    def estatute
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      begin
      # at line 99:9: ( func_call DOT | condition | reading | writing | assignment | loops | method_call )
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
        # at line 99:11: func_call DOT
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatute_546 )
        func_call
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_estatute_548 )

      when 2
        # at line 99:27: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatute_552 )
        condition
        @state.following.pop

      when 3
        # at line 99:39: reading
        @state.following.push( TOKENS_FOLLOWING_reading_IN_estatute_556 )
        reading
        @state.following.pop

      when 4
        # at line 99:49: writing
        @state.following.push( TOKENS_FOLLOWING_writing_IN_estatute_560 )
        writing
        @state.following.pop

      when 5
        # at line 99:59: assignment
        @state.following.push( TOKENS_FOLLOWING_assignment_IN_estatute_564 )
        assignment
        @state.following.pop

      when 6
        # at line 99:72: loops
        @state.following.push( TOKENS_FOLLOWING_loops_IN_estatute_568 )
        loops
        @state.following.pop

      when 7
        # at line 99:80: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatute_572 )
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
    # 101:1: var_dec : DEFINE ID AS type ( ASGN ( expresion | array_dec | func_call ) )? DOT ;
    #
    def var_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      begin
      # at line 101:10: DEFINE ID AS type ( ASGN ( expresion | array_dec | func_call ) )? DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_var_dec_579 )
      match( ID, TOKENS_FOLLOWING_ID_IN_var_dec_581 )
      match( AS, TOKENS_FOLLOWING_AS_IN_var_dec_583 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_var_dec_585 )
      type
      @state.following.pop
      # at line 101:28: ( ASGN ( expresion | array_dec | func_call ) )?
      alt_5 = 2
      look_5_0 = @input.peek( 1 )

      if ( look_5_0 == ASGN )
        alt_5 = 1
      end
      case alt_5
      when 1
        # at line 101:30: ASGN ( expresion | array_dec | func_call )
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_var_dec_589 )
        # at line 101:35: ( expresion | array_dec | func_call )
        alt_4 = 3
        case look_4 = @input.peek( 1 )
        when ID then look_4_1 = @input.peek( 2 )

        if ( look_4_1 == AND || look_4_1.between?( DIV, DOT ) || look_4_1 == EQ || look_4_1 == GREATER || look_4_1.between?( LBRACK, LESS ) || look_4_1.between?( MINUS, NEQ ) || look_4_1.between?( OR, PLUS ) )
          alt_4 = 1
        elsif ( look_4_1 == LPAR )
          alt_4 = 3
        else
          raise NoViableAlternative( "", 4, 1 )

        end
        when BOOL, FLOAT, INTEGER, LPAR, STRING then alt_4 = 1
        when LBRACK then alt_4 = 2
        else
          raise NoViableAlternative( "", 4, 0 )

        end
        case alt_4
        when 1
          # at line 101:37: expresion
          @state.following.push( TOKENS_FOLLOWING_expresion_IN_var_dec_593 )
          expresion
          @state.following.pop

        when 2
          # at line 101:49: array_dec
          @state.following.push( TOKENS_FOLLOWING_array_dec_IN_var_dec_597 )
          array_dec
          @state.following.pop

        when 3
          # at line 101:61: func_call
          @state.following.push( TOKENS_FOLLOWING_func_call_IN_var_dec_601 )
          func_call
          @state.following.pop

        end

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_var_dec_608 )

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
    # 103:1: assignment : ID ( ASGN ( expresion | func_call ) | array_dec ASGN type ) DOT ;
    #
    def assignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      begin
      # at line 103:13: ID ( ASGN ( expresion | func_call ) | array_dec ASGN type ) DOT
      match( ID, TOKENS_FOLLOWING_ID_IN_assignment_615 )
      # at line 103:16: ( ASGN ( expresion | func_call ) | array_dec ASGN type )
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
        # at line 103:18: ASGN ( expresion | func_call )
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_619 )
        # at line 103:23: ( expresion | func_call )
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
          # at line 103:25: expresion
          @state.following.push( TOKENS_FOLLOWING_expresion_IN_assignment_623 )
          expresion
          @state.following.pop

        when 2
          # at line 103:37: func_call
          @state.following.push( TOKENS_FOLLOWING_func_call_IN_assignment_627 )
          func_call
          @state.following.pop

        end

      when 2
        # at line 103:51: array_dec ASGN type
        @state.following.push( TOKENS_FOLLOWING_array_dec_IN_assignment_633 )
        array_dec
        @state.following.pop
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_635 )
        @state.following.push( TOKENS_FOLLOWING_type_IN_assignment_637 )
        type
        @state.following.pop

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_assignment_641 )

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
    # 105:1: array_dec : LBRACK exp ( COMMA exp )* RBRACK ;
    #
    def array_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      begin
      # at line 105:12: LBRACK exp ( COMMA exp )* RBRACK
      match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_array_dec_648 )
      @state.following.push( TOKENS_FOLLOWING_exp_IN_array_dec_650 )
      exp
      @state.following.pop
      # at line 105:23: ( COMMA exp )*
      while true # decision 8
        alt_8 = 2
        look_8_0 = @input.peek( 1 )

        if ( look_8_0 == COMMA )
          alt_8 = 1

        end
        case alt_8
        when 1
          # at line 105:25: COMMA exp
          match( COMMA, TOKENS_FOLLOWING_COMMA_IN_array_dec_654 )
          @state.following.push( TOKENS_FOLLOWING_exp_IN_array_dec_656 )
          exp
          @state.following.pop

        else
          break # out of loop for decision 8
        end
      end # loop for decision 8

      match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_array_dec_661 )

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
    # 107:1: condition : IF LPAR expresion RPAR COLON ( estatute )? ( RETURN expresion DOT )? ( ELSE block | R_END ) IF ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      begin
      # at line 107:12: IF LPAR expresion RPAR COLON ( estatute )? ( RETURN expresion DOT )? ( ELSE block | R_END ) IF
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_668 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_condition_670 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_condition_672 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_condition_674 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_condition_676 )
      # at line 107:41: ( estatute )?
      alt_9 = 2
      look_9_0 = @input.peek( 1 )

      if ( look_9_0 == FOR || look_9_0.between?( ID, IF ) || look_9_0 == PRINT || look_9_0 == READ || look_9_0 == WHILE )
        alt_9 = 1
      end
      case alt_9
      when 1
        # at line 107:43: estatute
        @state.following.push( TOKENS_FOLLOWING_estatute_IN_condition_680 )
        estatute
        @state.following.pop

      end
      # at line 107:55: ( RETURN expresion DOT )?
      alt_10 = 2
      look_10_0 = @input.peek( 1 )

      if ( look_10_0 == RETURN )
        alt_10 = 1
      end
      case alt_10
      when 1
        # at line 107:57: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_condition_687 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_condition_689 )
        expresion
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_condition_691 )

      end
      # at line 107:81: ( ELSE block | R_END )
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
        # at line 107:83: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_698 )
        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_700 )
        block
        @state.following.pop

      when 2
        # at line 107:96: R_END
        match( R_END, TOKENS_FOLLOWING_R_END_IN_condition_704 )

      end
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_708 )

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
    # 109:1: loops : ( while_loop | for_loop );
    #
    def loops
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      begin
      # at line 109:6: ( while_loop | for_loop )
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
        # at line 109:8: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_loops_715 )
        while_loop
        @state.following.pop

      when 2
        # at line 109:21: for_loop
        @state.following.push( TOKENS_FOLLOWING_for_loop_IN_loops_719 )
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
    # 111:1: while_loop : WHILE LPAR expresion RPAR block WHILE ;
    #
    def while_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      begin
      # at line 111:13: WHILE LPAR expresion RPAR block WHILE
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_726 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_while_loop_728 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_while_loop_730 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_while_loop_732 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_734 )
      block
      @state.following.pop
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_736 )

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
    # 113:1: for_loop : FOR ID IN ID block FOR ;
    #
    def for_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      begin
      # at line 113:11: FOR ID IN ID block FOR
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_743 )
      match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_745 )
      match( IN, TOKENS_FOLLOWING_IN_IN_for_loop_747 )
      match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_749 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_for_loop_751 )
      block
      @state.following.pop
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_753 )

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
    # 115:1: reading : READ LPAR value RPAR DOT ;
    #
    def reading
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      begin
      # at line 115:10: READ LPAR value RPAR DOT
      match( READ, TOKENS_FOLLOWING_READ_IN_reading_760 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_reading_762 )
      @state.following.push( TOKENS_FOLLOWING_value_IN_reading_764 )
      value
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_reading_766 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_reading_768 )

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
    # 117:1: writing : PRINT LPAR expresion RPAR DOT ;
    #
    def writing
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      begin
      # at line 117:10: PRINT LPAR expresion RPAR DOT
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_writing_775 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_writing_777 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_writing_779 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_writing_781 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_writing_783 )

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
    # parser rule parameters
    #
    # (in Hephaestus.g)
    # 119:1: parameters : LPAR ( type ( ID | value ) ( COMMA type ( ID | value ) )* )? RPAR ;
    #
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      begin
      # at line 119:13: LPAR ( type ( ID | value ) ( COMMA type ( ID | value ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_parameters_790 )
      # at line 119:18: ( type ( ID | value ) ( COMMA type ( ID | value ) )* )?
      alt_16 = 2
      look_16_0 = @input.peek( 1 )

      if ( look_16_0 == ID || look_16_0 == R_BOOL || look_16_0.between?( R_FLOAT, R_STRING ) )
        alt_16 = 1
      end
      case alt_16
      when 1
        # at line 119:20: type ( ID | value ) ( COMMA type ( ID | value ) )*
        @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_794 )
        type
        @state.following.pop
        # at line 119:25: ( ID | value )
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
          # at line 119:26: ID
          match( ID, TOKENS_FOLLOWING_ID_IN_parameters_797 )

        when 2
          # at line 119:31: value
          @state.following.push( TOKENS_FOLLOWING_value_IN_parameters_801 )
          value
          @state.following.pop

        end
        # at line 119:39: ( COMMA type ( ID | value ) )*
        while true # decision 15
          alt_15 = 2
          look_15_0 = @input.peek( 1 )

          if ( look_15_0 == COMMA )
            alt_15 = 1

          end
          case alt_15
          when 1
            # at line 119:41: COMMA type ( ID | value )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_parameters_807 )
            @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_809 )
            type
            @state.following.pop
            # at line 119:52: ( ID | value )
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
              # at line 119:53: ID
              match( ID, TOKENS_FOLLOWING_ID_IN_parameters_812 )

            when 2
              # at line 119:58: value
              @state.following.push( TOKENS_FOLLOWING_value_IN_parameters_816 )
              value
              @state.following.pop

            end

          else
            break # out of loop for decision 15
          end
        end # loop for decision 15


      end
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_parameters_826 )

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
    # parser rule function
    #
    # (in Hephaestus.g)
    # 121:1: function : FUNCTION ( type | VOID ) ID parameters COLON ( estatute | var_dec )* ( RETURN expresion DOT )? R_END FUNCTION ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      begin
      # at line 121:11: FUNCTION ( type | VOID ) ID parameters COLON ( estatute | var_dec )* ( RETURN expresion DOT )? R_END FUNCTION
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_833 )
      # at line 121:20: ( type | VOID )
      alt_17 = 2
      look_17_0 = @input.peek( 1 )

      if ( look_17_0 == ID || look_17_0 == R_BOOL || look_17_0.between?( R_FLOAT, R_STRING ) )
        alt_17 = 1
      elsif ( look_17_0 == VOID )
        alt_17 = 2
      else
        raise NoViableAlternative( "", 17, 0 )

      end
      case alt_17
      when 1
        # at line 121:22: type
        @state.following.push( TOKENS_FOLLOWING_type_IN_function_837 )
        type
        @state.following.pop

      when 2
        # at line 121:29: VOID
        match( VOID, TOKENS_FOLLOWING_VOID_IN_function_841 )

      end
      match( ID, TOKENS_FOLLOWING_ID_IN_function_845 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_847 )
      parameters
      @state.following.pop
      match( COLON, TOKENS_FOLLOWING_COLON_IN_function_849 )
      # at line 121:56: ( estatute | var_dec )*
      while true # decision 18
        alt_18 = 3
        look_18_0 = @input.peek( 1 )

        if ( look_18_0 == FOR || look_18_0.between?( ID, IF ) || look_18_0 == PRINT || look_18_0 == READ || look_18_0 == WHILE )
          alt_18 = 1
        elsif ( look_18_0 == DEFINE )
          alt_18 = 2

        end
        case alt_18
        when 1
          # at line 121:58: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_function_853 )
          estatute
          @state.following.pop

        when 2
          # at line 121:69: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_function_857 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 18
        end
      end # loop for decision 18

      # at line 121:80: ( RETURN expresion DOT )?
      alt_19 = 2
      look_19_0 = @input.peek( 1 )

      if ( look_19_0 == RETURN )
        alt_19 = 1
      end
      case alt_19
      when 1
        # at line 121:82: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_function_864 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_function_866 )
        expresion
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_function_868 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_873 )
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_875 )

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
    # 123:1: block : COLON ( estatute )* ( RETURN expresion DOT )? R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      begin
      # at line 123:8: COLON ( estatute )* ( RETURN expresion DOT )? R_END
      match( COLON, TOKENS_FOLLOWING_COLON_IN_block_882 )
      # at line 123:14: ( estatute )*
      while true # decision 20
        alt_20 = 2
        look_20_0 = @input.peek( 1 )

        if ( look_20_0 == FOR || look_20_0.between?( ID, IF ) || look_20_0 == PRINT || look_20_0 == READ || look_20_0 == WHILE )
          alt_20 = 1

        end
        case alt_20
        when 1
          # at line 123:16: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_block_886 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 20
        end
      end # loop for decision 20

      # at line 123:28: ( RETURN expresion DOT )?
      alt_21 = 2
      look_21_0 = @input.peek( 1 )

      if ( look_21_0 == RETURN )
        alt_21 = 1
      end
      case alt_21
      when 1
        # at line 123:30: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_block_893 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_block_895 )
        expresion
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_block_897 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_902 )

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
    # 125:1: func_call : ID parameters ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      begin
      # at line 125:12: ID parameters
      match( ID, TOKENS_FOLLOWING_ID_IN_func_call_909 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_func_call_911 )
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
    # 127:1: expresion : exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )? ;
    #
    def expresion
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      begin
      # at line 127:12: exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_918 )
      exp
      @state.following.pop
      # at line 127:16: ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      alt_22 = 2
      look_22_0 = @input.peek( 1 )

      if ( look_22_0 == AND || look_22_0 == EQ || look_22_0 == GREATER || look_22_0 == LESS || look_22_0 == NEQ || look_22_0 == OR )
        alt_22 = 1
      end
      case alt_22
      when 1
        # at line 127:18: ( GREATER | LESS | NEQ | EQ | AND | OR ) exp
        if @input.peek(1) == AND || @input.peek(1) == EQ || @input.peek(1) == GREATER || @input.peek(1) == LESS || @input.peek(1) == NEQ || @input.peek(1) == OR
          @input.consume
          @state.error_recovery = false

        else
          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_947 )
        exp
        @state.following.pop

      end

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
    # 129:1: exp : term ( ( PLUS | MINUS ) term )* ;
    #
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


      begin
      # at line 129:6: term ( ( PLUS | MINUS ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_957 )
      term
      @state.following.pop
      # at line 129:11: ( ( PLUS | MINUS ) term )*
      while true # decision 23
        alt_23 = 2
        look_23_0 = @input.peek( 1 )

        if ( look_23_0 == MINUS || look_23_0 == PLUS )
          alt_23 = 1

        end
        case alt_23
        when 1
          # at line 129:13: ( PLUS | MINUS ) term
          if @input.peek(1) == MINUS || @input.peek(1) == PLUS
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_971 )
          term
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
        # trace_out( __method__, 18 )


      end

      return 
    end



    #
    # parser rule term
    #
    # (in Hephaestus.g)
    # 131:1: term : factor ( ( MULT | DIV ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      begin
      # at line 131:7: factor ( ( MULT | DIV ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_981 )
      factor
      @state.following.pop
      # at line 131:14: ( ( MULT | DIV ) factor )*
      while true # decision 24
        alt_24 = 2
        look_24_0 = @input.peek( 1 )

        if ( look_24_0 == DIV || look_24_0 == MULT )
          alt_24 = 1

        end
        case alt_24
        when 1
          # at line 131:16: ( MULT | DIV ) factor
          if @input.peek(1) == DIV || @input.peek(1) == MULT
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_995 )
          factor
          @state.following.pop

        else
          break # out of loop for decision 24
        end
      end # loop for decision 24


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
    # 133:1: factor : ( ID ( array_dec )? | LPAR expresion RPAR | value );
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      begin
      # at line 133:7: ( ID ( array_dec )? | LPAR expresion RPAR | value )
      alt_26 = 3
      case look_26 = @input.peek( 1 )
      when ID then alt_26 = 1
      when LPAR then alt_26 = 2
      when BOOL, FLOAT, INTEGER, STRING then alt_26 = 3
      else
        raise NoViableAlternative( "", 26, 0 )

      end
      case alt_26
      when 1
        # at line 133:9: ID ( array_dec )?
        match( ID, TOKENS_FOLLOWING_ID_IN_factor_1005 )
        # at line 133:12: ( array_dec )?
        alt_25 = 2
        look_25_0 = @input.peek( 1 )

        if ( look_25_0 == LBRACK )
          alt_25 = 1
        end
        case alt_25
        when 1
          # at line 133:14: array_dec
          @state.following.push( TOKENS_FOLLOWING_array_dec_IN_factor_1009 )
          array_dec
          @state.following.pop

        end

      when 2
        # at line 133:29: LPAR expresion RPAR
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_1016 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_factor_1018 )
        expresion
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_1020 )

      when 3
        # at line 133:51: value
        @state.following.push( TOKENS_FOLLOWING_value_IN_factor_1024 )
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



    #
    # parser rule type
    #
    # (in Hephaestus.g)
    # 135:1: type : ( R_STRING | R_BOOL | R_FLOAT | R_INTEGER | ID );
    #
    def type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      begin
      # at line 
      if @input.peek(1) == ID || @input.peek(1) == R_BOOL || @input.peek( 1 ).between?( R_FLOAT, R_STRING )
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
        # trace_out( __method__, 21 )


      end

      return 
    end



    #
    # parser rule value
    #
    # (in Hephaestus.g)
    # 137:1: value : ( STRING | FLOAT | INTEGER | BOOL );
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
    # 139:1: r_class : R_CLASS ID ( HER ID )? COLON ( function | var_dec )* R_END R_CLASS ;
    #
    def r_class
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )


      begin
      # at line 139:10: R_CLASS ID ( HER ID )? COLON ( function | var_dec )* R_END R_CLASS
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_1073 )
      match( ID, TOKENS_FOLLOWING_ID_IN_r_class_1075 )
      # at line 139:22: ( HER ID )?
      alt_27 = 2
      look_27_0 = @input.peek( 1 )

      if ( look_27_0 == HER )
        alt_27 = 1
      end
      case alt_27
      when 1
        # at line 139:24: HER ID
        match( HER, TOKENS_FOLLOWING_HER_IN_r_class_1080 )
        match( ID, TOKENS_FOLLOWING_ID_IN_r_class_1082 )

      end
      match( COLON, TOKENS_FOLLOWING_COLON_IN_r_class_1087 )
      # at line 139:40: ( function | var_dec )*
      while true # decision 28
        alt_28 = 3
        look_28_0 = @input.peek( 1 )

        if ( look_28_0 == FUNCTION )
          alt_28 = 1
        elsif ( look_28_0 == DEFINE )
          alt_28 = 2

        end
        case alt_28
        when 1
          # at line 139:42: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_r_class_1091 )
          function
          @state.following.pop

        when 2
          # at line 139:53: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_r_class_1095 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 28
        end
      end # loop for decision 28

      match( R_END, TOKENS_FOLLOWING_R_END_IN_r_class_1100 )
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_1102 )

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
    # 141:1: method_call : ID DOT ( func_call | ID ) DOT ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      begin
      # at line 141:14: ID DOT ( func_call | ID ) DOT
      match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1109 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_1111 )
      # at line 141:21: ( func_call | ID )
      alt_29 = 2
      look_29_0 = @input.peek( 1 )

      if ( look_29_0 == ID )
        look_29_1 = @input.peek( 2 )

        if ( look_29_1 == LPAR )
          alt_29 = 1
        elsif ( look_29_1 == DOT )
          alt_29 = 2
        else
          raise NoViableAlternative( "", 29, 1 )

        end
      else
        raise NoViableAlternative( "", 29, 0 )

      end
      case alt_29
      when 1
        # at line 141:23: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_method_call_1115 )
        func_call
        @state.following.pop

      when 2
        # at line 141:35: ID
        match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1119 )

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_1123 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 24 )


      end

      return 
    end



    TOKENS_FOLLOWING_r_class_IN_start_504 = Set[ 35, 41 ]
    TOKENS_FOLLOWING_program_IN_start_509 = Set[ 1 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_516 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_program_518 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_program_520 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_program_524 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_var_dec_IN_program_528 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_function_IN_program_532 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_R_END_IN_program_537 = Set[ 35 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_539 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatute_546 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_estatute_548 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatute_552 = Set[ 1 ]
    TOKENS_FOLLOWING_reading_IN_estatute_556 = Set[ 1 ]
    TOKENS_FOLLOWING_writing_IN_estatute_560 = Set[ 1 ]
    TOKENS_FOLLOWING_assignment_IN_estatute_564 = Set[ 1 ]
    TOKENS_FOLLOWING_loops_IN_estatute_568 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatute_572 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_var_dec_579 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_var_dec_581 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_var_dec_583 = Set[ 20, 40, 43, 44, 45 ]
    TOKENS_FOLLOWING_type_IN_var_dec_585 = Set[ 6, 12 ]
    TOKENS_FOLLOWING_ASGN_IN_var_dec_589 = Set[ 7, 15, 20, 23, 24, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_var_dec_593 = Set[ 12 ]
    TOKENS_FOLLOWING_array_dec_IN_var_dec_597 = Set[ 12 ]
    TOKENS_FOLLOWING_func_call_IN_var_dec_601 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_var_dec_608 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_assignment_615 = Set[ 6, 24 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_619 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_assignment_623 = Set[ 12 ]
    TOKENS_FOLLOWING_func_call_IN_assignment_627 = Set[ 12 ]
    TOKENS_FOLLOWING_array_dec_IN_assignment_633 = Set[ 6 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_635 = Set[ 20, 40, 43, 44, 45 ]
    TOKENS_FOLLOWING_type_IN_assignment_637 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_assignment_641 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACK_IN_array_dec_648 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_array_dec_650 = Set[ 9, 36 ]
    TOKENS_FOLLOWING_COMMA_IN_array_dec_654 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_array_dec_656 = Set[ 9, 36 ]
    TOKENS_FOLLOWING_RBRACK_IN_array_dec_661 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_668 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_condition_670 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_condition_672 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_condition_674 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_condition_676 = Set[ 13, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_condition_680 = Set[ 13, 38, 42 ]
    TOKENS_FOLLOWING_RETURN_IN_condition_687 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_condition_689 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_condition_691 = Set[ 13, 42 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_698 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_condition_700 = Set[ 21 ]
    TOKENS_FOLLOWING_R_END_IN_condition_704 = Set[ 21 ]
    TOKENS_FOLLOWING_IF_IN_condition_708 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_loops_715 = Set[ 1 ]
    TOKENS_FOLLOWING_for_loop_IN_loops_719 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_726 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_while_loop_728 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_while_loop_730 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_while_loop_732 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_while_loop_734 = Set[ 48 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_736 = Set[ 1 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_743 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_745 = Set[ 22 ]
    TOKENS_FOLLOWING_IN_IN_for_loop_747 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_749 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_for_loop_751 = Set[ 16 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_753 = Set[ 1 ]
    TOKENS_FOLLOWING_READ_IN_reading_760 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_reading_762 = Set[ 7, 15, 23, 46 ]
    TOKENS_FOLLOWING_value_IN_reading_764 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_reading_766 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_reading_768 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_writing_775 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_writing_777 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_writing_779 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_writing_781 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_writing_783 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_parameters_790 = Set[ 20, 39, 40, 43, 44, 45 ]
    TOKENS_FOLLOWING_type_IN_parameters_794 = Set[ 7, 15, 20, 23, 46 ]
    TOKENS_FOLLOWING_ID_IN_parameters_797 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_value_IN_parameters_801 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_parameters_807 = Set[ 20, 40, 43, 44, 45 ]
    TOKENS_FOLLOWING_type_IN_parameters_809 = Set[ 7, 15, 20, 23, 46 ]
    TOKENS_FOLLOWING_ID_IN_parameters_812 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_value_IN_parameters_816 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_parameters_826 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_833 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_function_837 = Set[ 20 ]
    TOKENS_FOLLOWING_VOID_IN_function_841 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_function_845 = Set[ 27 ]
    TOKENS_FOLLOWING_parameters_IN_function_847 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_function_849 = Set[ 10, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_function_853 = Set[ 10, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_var_dec_IN_function_857 = Set[ 10, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_RETURN_IN_function_864 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_function_866 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_function_868 = Set[ 42 ]
    TOKENS_FOLLOWING_R_END_IN_function_873 = Set[ 17 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_875 = Set[ 1 ]
    TOKENS_FOLLOWING_COLON_IN_block_882 = Set[ 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_block_886 = Set[ 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_RETURN_IN_block_893 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_block_895 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_block_897 = Set[ 42 ]
    TOKENS_FOLLOWING_R_END_IN_block_902 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_909 = Set[ 27 ]
    TOKENS_FOLLOWING_parameters_IN_func_call_911 = Set[ 1 ]
    TOKENS_FOLLOWING_exp_IN_expresion_918 = Set[ 1, 4, 14, 18, 25, 30, 32 ]
    TOKENS_FOLLOWING_set_IN_expresion_922 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_expresion_947 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_exp_957 = Set[ 1, 28, 33 ]
    TOKENS_FOLLOWING_set_IN_exp_961 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_term_IN_exp_971 = Set[ 1, 28, 33 ]
    TOKENS_FOLLOWING_factor_IN_term_981 = Set[ 1, 11, 29 ]
    TOKENS_FOLLOWING_set_IN_term_985 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_factor_IN_term_995 = Set[ 1, 11, 29 ]
    TOKENS_FOLLOWING_ID_IN_factor_1005 = Set[ 1, 24 ]
    TOKENS_FOLLOWING_array_dec_IN_factor_1009 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_1016 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_factor_1018 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_1020 = Set[ 1 ]
    TOKENS_FOLLOWING_value_IN_factor_1024 = Set[ 1 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_1073 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_r_class_1075 = Set[ 8, 19 ]
    TOKENS_FOLLOWING_HER_IN_r_class_1080 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_r_class_1082 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_r_class_1087 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_function_IN_r_class_1091 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_var_dec_IN_r_class_1095 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_R_END_IN_r_class_1100 = Set[ 41 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_1102 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1109 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_1111 = Set[ 20 ]
    TOKENS_FOLLOWING_func_call_IN_method_call_1115 = Set[ 12 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1119 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_1123 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
