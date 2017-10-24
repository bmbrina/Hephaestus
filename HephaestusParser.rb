#!/usr/bin/env ruby
#
# Hephaestus.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Hephaestus.g
# Generated at: 2017-10-24 15:38:56
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
    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    #
    # parser rule start
    #
    # (in Hephaestus.g)
    # 88:1: start : ( r_class )* program ;
    #
    def start
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 88:8: ( r_class )* program
      # at line 88:8: ( r_class )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == R_CLASS )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 88:10: r_class
          @state.following.push( TOKENS_FOLLOWING_r_class_IN_start_493 )
          r_class
          @state.following.pop

        else
          break # out of loop for decision 1
        end
      end # loop for decision 1

      @state.following.push( TOKENS_FOLLOWING_program_IN_start_498 )
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
    # 90:1: program : PROGRAM ID COLON ( estatute | var_dec | function )* R_END PROGRAM ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      begin
      # at line 90:10: PROGRAM ID COLON ( estatute | var_dec | function )* R_END PROGRAM
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_505 )
      match( ID, TOKENS_FOLLOWING_ID_IN_program_507 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_program_509 )
      # at line 90:27: ( estatute | var_dec | function )*
      while true # decision 2
        alt_2 = 4
        case look_2 = @input.peek( 1 )
        when FOR, ID, IF, PRINT, READ, WHILE then alt_2 = 1
        when DEFINE then alt_2 = 2
        when FUNCTION then alt_2 = 3
        end
        case alt_2
        when 1
          # at line 90:29: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_program_513 )
          estatute
          @state.following.pop

        when 2
          # at line 90:40: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_program_517 )
          var_dec
          @state.following.pop

        when 3
          # at line 90:50: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_program_521 )
          function
          @state.following.pop

        else
          break # out of loop for decision 2
        end
      end # loop for decision 2

      match( R_END, TOKENS_FOLLOWING_R_END_IN_program_526 )
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_528 )

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
    # 92:1: estatute : ( func_call DOT | condition | reading | writing | assignment | loops | method_call );
    #
    def estatute
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      begin
      # at line 92:9: ( func_call DOT | condition | reading | writing | assignment | loops | method_call )
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
        # at line 92:11: func_call DOT
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatute_535 )
        func_call
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_estatute_537 )

      when 2
        # at line 92:27: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatute_541 )
        condition
        @state.following.pop

      when 3
        # at line 92:39: reading
        @state.following.push( TOKENS_FOLLOWING_reading_IN_estatute_545 )
        reading
        @state.following.pop

      when 4
        # at line 92:49: writing
        @state.following.push( TOKENS_FOLLOWING_writing_IN_estatute_549 )
        writing
        @state.following.pop

      when 5
        # at line 92:59: assignment
        @state.following.push( TOKENS_FOLLOWING_assignment_IN_estatute_553 )
        assignment
        @state.following.pop

      when 6
        # at line 92:72: loops
        @state.following.push( TOKENS_FOLLOWING_loops_IN_estatute_557 )
        loops
        @state.following.pop

      when 7
        # at line 92:80: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatute_561 )
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
    # 94:1: var_dec : DEFINE ID AS type ( ASGN ( expresion | array_dec | func_call ) )? DOT ;
    #
    def var_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      begin
      # at line 94:10: DEFINE ID AS type ( ASGN ( expresion | array_dec | func_call ) )? DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_var_dec_568 )
      match( ID, TOKENS_FOLLOWING_ID_IN_var_dec_570 )
      match( AS, TOKENS_FOLLOWING_AS_IN_var_dec_572 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_var_dec_574 )
      type
      @state.following.pop
      # at line 94:28: ( ASGN ( expresion | array_dec | func_call ) )?
      alt_5 = 2
      look_5_0 = @input.peek( 1 )

      if ( look_5_0 == ASGN )
        alt_5 = 1
      end
      case alt_5
      when 1
        # at line 94:30: ASGN ( expresion | array_dec | func_call )
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_var_dec_578 )
        # at line 94:35: ( expresion | array_dec | func_call )
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
          # at line 94:37: expresion
          @state.following.push( TOKENS_FOLLOWING_expresion_IN_var_dec_582 )
          expresion
          @state.following.pop

        when 2
          # at line 94:49: array_dec
          @state.following.push( TOKENS_FOLLOWING_array_dec_IN_var_dec_586 )
          array_dec
          @state.following.pop

        when 3
          # at line 94:61: func_call
          @state.following.push( TOKENS_FOLLOWING_func_call_IN_var_dec_590 )
          func_call
          @state.following.pop

        end

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_var_dec_597 )

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
    # 96:1: assignment : ID ( ASGN ( expresion | func_call ) | array_dec ASGN type ) DOT ;
    #
    def assignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      begin
      # at line 96:13: ID ( ASGN ( expresion | func_call ) | array_dec ASGN type ) DOT
      match( ID, TOKENS_FOLLOWING_ID_IN_assignment_604 )
      # at line 96:16: ( ASGN ( expresion | func_call ) | array_dec ASGN type )
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
        # at line 96:18: ASGN ( expresion | func_call )
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_608 )
        # at line 96:23: ( expresion | func_call )
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
          # at line 96:25: expresion
          @state.following.push( TOKENS_FOLLOWING_expresion_IN_assignment_612 )
          expresion
          @state.following.pop

        when 2
          # at line 96:37: func_call
          @state.following.push( TOKENS_FOLLOWING_func_call_IN_assignment_616 )
          func_call
          @state.following.pop

        end

      when 2
        # at line 96:51: array_dec ASGN type
        @state.following.push( TOKENS_FOLLOWING_array_dec_IN_assignment_622 )
        array_dec
        @state.following.pop
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_624 )
        @state.following.push( TOKENS_FOLLOWING_type_IN_assignment_626 )
        type
        @state.following.pop

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_assignment_630 )

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
    # 98:1: array_dec : LBRACK exp ( COMMA exp )* RBRACK ;
    #
    def array_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      begin
      # at line 98:12: LBRACK exp ( COMMA exp )* RBRACK
      match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_array_dec_637 )
      @state.following.push( TOKENS_FOLLOWING_exp_IN_array_dec_639 )
      exp
      @state.following.pop
      # at line 98:23: ( COMMA exp )*
      while true # decision 8
        alt_8 = 2
        look_8_0 = @input.peek( 1 )

        if ( look_8_0 == COMMA )
          alt_8 = 1

        end
        case alt_8
        when 1
          # at line 98:25: COMMA exp
          match( COMMA, TOKENS_FOLLOWING_COMMA_IN_array_dec_643 )
          @state.following.push( TOKENS_FOLLOWING_exp_IN_array_dec_645 )
          exp
          @state.following.pop

        else
          break # out of loop for decision 8
        end
      end # loop for decision 8

      match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_array_dec_650 )

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
    # 100:1: condition : IF LPAR expresion RPAR COLON ( estatute )? ( RETURN expresion DOT )? ( ELSE block | R_END ) IF ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      begin
      # at line 100:12: IF LPAR expresion RPAR COLON ( estatute )? ( RETURN expresion DOT )? ( ELSE block | R_END ) IF
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_657 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_condition_659 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_condition_661 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_condition_663 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_condition_665 )
      # at line 100:41: ( estatute )?
      alt_9 = 2
      look_9_0 = @input.peek( 1 )

      if ( look_9_0 == FOR || look_9_0.between?( ID, IF ) || look_9_0 == PRINT || look_9_0 == READ || look_9_0 == WHILE )
        alt_9 = 1
      end
      case alt_9
      when 1
        # at line 100:43: estatute
        @state.following.push( TOKENS_FOLLOWING_estatute_IN_condition_669 )
        estatute
        @state.following.pop

      end
      # at line 100:55: ( RETURN expresion DOT )?
      alt_10 = 2
      look_10_0 = @input.peek( 1 )

      if ( look_10_0 == RETURN )
        alt_10 = 1
      end
      case alt_10
      when 1
        # at line 100:57: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_condition_676 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_condition_678 )
        expresion
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_condition_680 )

      end
      # at line 100:81: ( ELSE block | R_END )
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
        # at line 100:83: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_687 )
        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_689 )
        block
        @state.following.pop

      when 2
        # at line 100:96: R_END
        match( R_END, TOKENS_FOLLOWING_R_END_IN_condition_693 )

      end
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_697 )

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
    # 102:1: loops : ( while_loop | for_loop );
    #
    def loops
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      begin
      # at line 102:6: ( while_loop | for_loop )
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
        # at line 102:8: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_loops_704 )
        while_loop
        @state.following.pop

      when 2
        # at line 102:21: for_loop
        @state.following.push( TOKENS_FOLLOWING_for_loop_IN_loops_708 )
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
    # 104:1: while_loop : WHILE LPAR expresion RPAR block WHILE ;
    #
    def while_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      begin
      # at line 104:13: WHILE LPAR expresion RPAR block WHILE
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_715 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_while_loop_717 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_while_loop_719 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_while_loop_721 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_723 )
      block
      @state.following.pop
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_725 )

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
    # 106:1: for_loop : FOR ID IN ID block FOR ;
    #
    def for_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      begin
      # at line 106:11: FOR ID IN ID block FOR
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_732 )
      match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_734 )
      match( IN, TOKENS_FOLLOWING_IN_IN_for_loop_736 )
      match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_738 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_for_loop_740 )
      block
      @state.following.pop
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_742 )

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
    # 108:1: reading : READ LPAR value RPAR DOT ;
    #
    def reading
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      begin
      # at line 108:10: READ LPAR value RPAR DOT
      match( READ, TOKENS_FOLLOWING_READ_IN_reading_749 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_reading_751 )
      @state.following.push( TOKENS_FOLLOWING_value_IN_reading_753 )
      value
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_reading_755 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_reading_757 )

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
    # 110:1: writing : PRINT LPAR expresion RPAR DOT ;
    #
    def writing
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      begin
      # at line 110:10: PRINT LPAR expresion RPAR DOT
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_writing_764 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_writing_766 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_writing_768 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_writing_770 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_writing_772 )

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
    # 112:1: parameters : LPAR ( type ( ID | value ) ( COMMA type ( ID | value ) )* )? RPAR ;
    #
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      begin
      # at line 112:13: LPAR ( type ( ID | value ) ( COMMA type ( ID | value ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_parameters_779 )
      # at line 112:18: ( type ( ID | value ) ( COMMA type ( ID | value ) )* )?
      alt_16 = 2
      look_16_0 = @input.peek( 1 )

      if ( look_16_0 == ID || look_16_0 == R_BOOL || look_16_0.between?( R_FLOAT, R_STRING ) )
        alt_16 = 1
      end
      case alt_16
      when 1
        # at line 112:20: type ( ID | value ) ( COMMA type ( ID | value ) )*
        @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_783 )
        type
        @state.following.pop
        # at line 112:25: ( ID | value )
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
          # at line 112:26: ID
          match( ID, TOKENS_FOLLOWING_ID_IN_parameters_786 )

        when 2
          # at line 112:31: value
          @state.following.push( TOKENS_FOLLOWING_value_IN_parameters_790 )
          value
          @state.following.pop

        end
        # at line 112:39: ( COMMA type ( ID | value ) )*
        while true # decision 15
          alt_15 = 2
          look_15_0 = @input.peek( 1 )

          if ( look_15_0 == COMMA )
            alt_15 = 1

          end
          case alt_15
          when 1
            # at line 112:41: COMMA type ( ID | value )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_parameters_796 )
            @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_798 )
            type
            @state.following.pop
            # at line 112:52: ( ID | value )
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
              # at line 112:53: ID
              match( ID, TOKENS_FOLLOWING_ID_IN_parameters_801 )

            when 2
              # at line 112:58: value
              @state.following.push( TOKENS_FOLLOWING_value_IN_parameters_805 )
              value
              @state.following.pop

            end

          else
            break # out of loop for decision 15
          end
        end # loop for decision 15


      end
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_parameters_815 )

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
    # 114:1: function : FUNCTION ( type | VOID ) ID parameters COLON ( estatute | var_dec )* ( RETURN expresion DOT )? R_END FUNCTION ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      begin
      # at line 114:11: FUNCTION ( type | VOID ) ID parameters COLON ( estatute | var_dec )* ( RETURN expresion DOT )? R_END FUNCTION
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_822 )
      # at line 114:20: ( type | VOID )
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
        # at line 114:22: type
        @state.following.push( TOKENS_FOLLOWING_type_IN_function_826 )
        type
        @state.following.pop

      when 2
        # at line 114:29: VOID
        match( VOID, TOKENS_FOLLOWING_VOID_IN_function_830 )

      end
      match( ID, TOKENS_FOLLOWING_ID_IN_function_834 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_836 )
      parameters
      @state.following.pop
      match( COLON, TOKENS_FOLLOWING_COLON_IN_function_838 )
      # at line 114:56: ( estatute | var_dec )*
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
          # at line 114:58: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_function_842 )
          estatute
          @state.following.pop

        when 2
          # at line 114:69: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_function_846 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 18
        end
      end # loop for decision 18

      # at line 114:80: ( RETURN expresion DOT )?
      alt_19 = 2
      look_19_0 = @input.peek( 1 )

      if ( look_19_0 == RETURN )
        alt_19 = 1
      end
      case alt_19
      when 1
        # at line 114:82: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_function_853 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_function_855 )
        expresion
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_function_857 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_862 )
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_864 )

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
    # 116:1: block : COLON ( estatute )* ( RETURN expresion DOT )? R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      begin
      # at line 116:8: COLON ( estatute )* ( RETURN expresion DOT )? R_END
      match( COLON, TOKENS_FOLLOWING_COLON_IN_block_871 )
      # at line 116:14: ( estatute )*
      while true # decision 20
        alt_20 = 2
        look_20_0 = @input.peek( 1 )

        if ( look_20_0 == FOR || look_20_0.between?( ID, IF ) || look_20_0 == PRINT || look_20_0 == READ || look_20_0 == WHILE )
          alt_20 = 1

        end
        case alt_20
        when 1
          # at line 116:16: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_block_875 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 20
        end
      end # loop for decision 20

      # at line 116:28: ( RETURN expresion DOT )?
      alt_21 = 2
      look_21_0 = @input.peek( 1 )

      if ( look_21_0 == RETURN )
        alt_21 = 1
      end
      case alt_21
      when 1
        # at line 116:30: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_block_882 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_block_884 )
        expresion
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_block_886 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_891 )

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
    # 118:1: func_call : ID parameters ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      begin
      # at line 118:12: ID parameters
      match( ID, TOKENS_FOLLOWING_ID_IN_func_call_898 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_func_call_900 )
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
    # 120:1: expresion : exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )? ;
    #
    def expresion
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      begin
      # at line 120:12: exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_907 )
      exp
      @state.following.pop
      # at line 120:16: ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      alt_22 = 2
      look_22_0 = @input.peek( 1 )

      if ( look_22_0 == AND || look_22_0 == EQ || look_22_0 == GREATER || look_22_0 == LESS || look_22_0 == NEQ || look_22_0 == OR )
        alt_22 = 1
      end
      case alt_22
      when 1
        # at line 120:18: ( GREATER | LESS | NEQ | EQ | AND | OR ) exp
        if @input.peek(1) == AND || @input.peek(1) == EQ || @input.peek(1) == GREATER || @input.peek(1) == LESS || @input.peek(1) == NEQ || @input.peek(1) == OR
          @input.consume
          @state.error_recovery = false

        else
          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_936 )
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
    # 122:1: exp : term ( ( PLUS | MINUS ) term )* ;
    #
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


      begin
      # at line 122:6: term ( ( PLUS | MINUS ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_946 )
      term
      @state.following.pop
      # at line 122:11: ( ( PLUS | MINUS ) term )*
      while true # decision 23
        alt_23 = 2
        look_23_0 = @input.peek( 1 )

        if ( look_23_0 == MINUS || look_23_0 == PLUS )
          alt_23 = 1

        end
        case alt_23
        when 1
          # at line 122:13: ( PLUS | MINUS ) term
          if @input.peek(1) == MINUS || @input.peek(1) == PLUS
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_960 )
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
    # 124:1: term : factor ( ( MULT | DIV ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      begin
      # at line 124:7: factor ( ( MULT | DIV ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_970 )
      factor
      @state.following.pop
      # at line 124:14: ( ( MULT | DIV ) factor )*
      while true # decision 24
        alt_24 = 2
        look_24_0 = @input.peek( 1 )

        if ( look_24_0 == DIV || look_24_0 == MULT )
          alt_24 = 1

        end
        case alt_24
        when 1
          # at line 124:16: ( MULT | DIV ) factor
          if @input.peek(1) == DIV || @input.peek(1) == MULT
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_984 )
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
    # 126:1: factor : ( ID ( array_dec )? | LPAR expresion RPAR | value );
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      begin
      # at line 126:7: ( ID ( array_dec )? | LPAR expresion RPAR | value )
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
        # at line 126:9: ID ( array_dec )?
        match( ID, TOKENS_FOLLOWING_ID_IN_factor_994 )
        # at line 126:12: ( array_dec )?
        alt_25 = 2
        look_25_0 = @input.peek( 1 )

        if ( look_25_0 == LBRACK )
          alt_25 = 1
        end
        case alt_25
        when 1
          # at line 126:14: array_dec
          @state.following.push( TOKENS_FOLLOWING_array_dec_IN_factor_998 )
          array_dec
          @state.following.pop

        end

      when 2
        # at line 126:29: LPAR expresion RPAR
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_1005 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_factor_1007 )
        expresion
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_1009 )

      when 3
        # at line 126:51: value
        @state.following.push( TOKENS_FOLLOWING_value_IN_factor_1013 )
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
    # 128:1: type : ( R_STRING | R_BOOL | R_FLOAT | R_INTEGER | ID );
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
    # 130:1: value : ( STRING | FLOAT | INTEGER | BOOL );
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
    # 132:1: r_class : R_CLASS ID ( HER ID )? COLON ( function | var_dec )* R_END R_CLASS ;
    #
    def r_class
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )


      begin
      # at line 132:10: R_CLASS ID ( HER ID )? COLON ( function | var_dec )* R_END R_CLASS
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_1062 )
      match( ID, TOKENS_FOLLOWING_ID_IN_r_class_1064 )
      # at line 132:22: ( HER ID )?
      alt_27 = 2
      look_27_0 = @input.peek( 1 )

      if ( look_27_0 == HER )
        alt_27 = 1
      end
      case alt_27
      when 1
        # at line 132:24: HER ID
        match( HER, TOKENS_FOLLOWING_HER_IN_r_class_1069 )
        match( ID, TOKENS_FOLLOWING_ID_IN_r_class_1071 )

      end
      match( COLON, TOKENS_FOLLOWING_COLON_IN_r_class_1076 )
      # at line 132:40: ( function | var_dec )*
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
          # at line 132:42: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_r_class_1080 )
          function
          @state.following.pop

        when 2
          # at line 132:53: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_r_class_1084 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 28
        end
      end # loop for decision 28

      match( R_END, TOKENS_FOLLOWING_R_END_IN_r_class_1089 )
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_1091 )

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
    # 134:1: method_call : ID DOT ( func_call | ID ) DOT ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      begin
      # at line 134:14: ID DOT ( func_call | ID ) DOT
      match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1098 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_1100 )
      # at line 134:21: ( func_call | ID )
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
        # at line 134:23: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_method_call_1104 )
        func_call
        @state.following.pop

      when 2
        # at line 134:35: ID
        match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1108 )

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_1112 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 24 )


      end

      return 
    end



    TOKENS_FOLLOWING_r_class_IN_start_493 = Set[ 35, 41 ]
    TOKENS_FOLLOWING_program_IN_start_498 = Set[ 1 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_505 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_program_507 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_program_509 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_program_513 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_var_dec_IN_program_517 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_function_IN_program_521 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_R_END_IN_program_526 = Set[ 35 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_528 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatute_535 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_estatute_537 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatute_541 = Set[ 1 ]
    TOKENS_FOLLOWING_reading_IN_estatute_545 = Set[ 1 ]
    TOKENS_FOLLOWING_writing_IN_estatute_549 = Set[ 1 ]
    TOKENS_FOLLOWING_assignment_IN_estatute_553 = Set[ 1 ]
    TOKENS_FOLLOWING_loops_IN_estatute_557 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatute_561 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_var_dec_568 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_var_dec_570 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_var_dec_572 = Set[ 20, 40, 43, 44, 45 ]
    TOKENS_FOLLOWING_type_IN_var_dec_574 = Set[ 6, 12 ]
    TOKENS_FOLLOWING_ASGN_IN_var_dec_578 = Set[ 7, 15, 20, 23, 24, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_var_dec_582 = Set[ 12 ]
    TOKENS_FOLLOWING_array_dec_IN_var_dec_586 = Set[ 12 ]
    TOKENS_FOLLOWING_func_call_IN_var_dec_590 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_var_dec_597 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_assignment_604 = Set[ 6, 24 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_608 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_assignment_612 = Set[ 12 ]
    TOKENS_FOLLOWING_func_call_IN_assignment_616 = Set[ 12 ]
    TOKENS_FOLLOWING_array_dec_IN_assignment_622 = Set[ 6 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_624 = Set[ 20, 40, 43, 44, 45 ]
    TOKENS_FOLLOWING_type_IN_assignment_626 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_assignment_630 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACK_IN_array_dec_637 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_array_dec_639 = Set[ 9, 36 ]
    TOKENS_FOLLOWING_COMMA_IN_array_dec_643 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_array_dec_645 = Set[ 9, 36 ]
    TOKENS_FOLLOWING_RBRACK_IN_array_dec_650 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_657 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_condition_659 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_condition_661 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_condition_663 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_condition_665 = Set[ 13, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_condition_669 = Set[ 13, 38, 42 ]
    TOKENS_FOLLOWING_RETURN_IN_condition_676 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_condition_678 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_condition_680 = Set[ 13, 42 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_687 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_condition_689 = Set[ 21 ]
    TOKENS_FOLLOWING_R_END_IN_condition_693 = Set[ 21 ]
    TOKENS_FOLLOWING_IF_IN_condition_697 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_loops_704 = Set[ 1 ]
    TOKENS_FOLLOWING_for_loop_IN_loops_708 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_715 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_while_loop_717 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_while_loop_719 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_while_loop_721 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_while_loop_723 = Set[ 48 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_725 = Set[ 1 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_732 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_734 = Set[ 22 ]
    TOKENS_FOLLOWING_IN_IN_for_loop_736 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_738 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_for_loop_740 = Set[ 16 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_742 = Set[ 1 ]
    TOKENS_FOLLOWING_READ_IN_reading_749 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_reading_751 = Set[ 7, 15, 23, 46 ]
    TOKENS_FOLLOWING_value_IN_reading_753 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_reading_755 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_reading_757 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_writing_764 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_writing_766 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_writing_768 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_writing_770 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_writing_772 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_parameters_779 = Set[ 20, 39, 40, 43, 44, 45 ]
    TOKENS_FOLLOWING_type_IN_parameters_783 = Set[ 7, 15, 20, 23, 46 ]
    TOKENS_FOLLOWING_ID_IN_parameters_786 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_value_IN_parameters_790 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_parameters_796 = Set[ 20, 40, 43, 44, 45 ]
    TOKENS_FOLLOWING_type_IN_parameters_798 = Set[ 7, 15, 20, 23, 46 ]
    TOKENS_FOLLOWING_ID_IN_parameters_801 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_value_IN_parameters_805 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_parameters_815 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_822 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_function_826 = Set[ 20 ]
    TOKENS_FOLLOWING_VOID_IN_function_830 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_function_834 = Set[ 27 ]
    TOKENS_FOLLOWING_parameters_IN_function_836 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_function_838 = Set[ 10, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_function_842 = Set[ 10, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_var_dec_IN_function_846 = Set[ 10, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_RETURN_IN_function_853 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_function_855 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_function_857 = Set[ 42 ]
    TOKENS_FOLLOWING_R_END_IN_function_862 = Set[ 17 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_864 = Set[ 1 ]
    TOKENS_FOLLOWING_COLON_IN_block_871 = Set[ 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_block_875 = Set[ 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_RETURN_IN_block_882 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_block_884 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_block_886 = Set[ 42 ]
    TOKENS_FOLLOWING_R_END_IN_block_891 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_898 = Set[ 27 ]
    TOKENS_FOLLOWING_parameters_IN_func_call_900 = Set[ 1 ]
    TOKENS_FOLLOWING_exp_IN_expresion_907 = Set[ 1, 4, 14, 18, 25, 30, 32 ]
    TOKENS_FOLLOWING_set_IN_expresion_911 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_expresion_936 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_exp_946 = Set[ 1, 28, 33 ]
    TOKENS_FOLLOWING_set_IN_exp_950 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_term_IN_exp_960 = Set[ 1, 28, 33 ]
    TOKENS_FOLLOWING_factor_IN_term_970 = Set[ 1, 11, 29 ]
    TOKENS_FOLLOWING_set_IN_term_974 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_factor_IN_term_984 = Set[ 1, 11, 29 ]
    TOKENS_FOLLOWING_ID_IN_factor_994 = Set[ 1, 24 ]
    TOKENS_FOLLOWING_array_dec_IN_factor_998 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_1005 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_factor_1007 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_1009 = Set[ 1 ]
    TOKENS_FOLLOWING_value_IN_factor_1013 = Set[ 1 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_1062 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_r_class_1064 = Set[ 8, 19 ]
    TOKENS_FOLLOWING_HER_IN_r_class_1069 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_r_class_1071 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_r_class_1076 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_function_IN_r_class_1080 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_var_dec_IN_r_class_1084 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_R_END_IN_r_class_1089 = Set[ 41 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_1091 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1098 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_1100 = Set[ 20 ]
    TOKENS_FOLLOWING_func_call_IN_method_call_1104 = Set[ 12 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1108 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_1112 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
