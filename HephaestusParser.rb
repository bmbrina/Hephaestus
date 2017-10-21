#!/usr/bin/env ruby
#
# Hephaestus.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Hephaestus.g
# Generated at: 2017-10-21 12:49:14
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
                   :COLON => 8, :COMMA => 9, :DEFINE => 10, :DIGIT => 11, 
                   :DIV => 12, :DOT => 13, :ELSE => 14, :EQ => 15, :FLOAT => 16, 
                   :FOR => 17, :FUNCTION => 18, :GREATER => 19, :HER => 20, 
                   :ID => 21, :IF => 22, :IN => 23, :INTEGER => 24, :LBRACK => 25, 
                   :LESS => 26, :LETTER => 27, :LPAR => 28, :MINUS => 29, 
                   :MULT => 30, :NEQ => 31, :NEWLINE => 32, :OR => 33, :PLUS => 34, 
                   :PRINT => 35, :PROGRAM => 36, :RBRACK => 37, :READ => 38, 
                   :RETURN => 39, :RPAR => 40, :R_BOOL => 41, :R_CLASS => 42, 
                   :R_END => 43, :R_FLOAT => 44, :R_INTEGER => 45, :R_STRING => 46, 
                   :STRING => 47, :VOID => 48, :WHILE => 49, :WS => 50 )


    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "AND", "AS", "ASGN", "BOOL", "COLON", "COMMA", "DEFINE", 
                    "DIGIT", "DIV", "DOT", "ELSE", "EQ", "FLOAT", "FOR", 
                    "FUNCTION", "GREATER", "HER", "ID", "IF", "IN", "INTEGER", 
                    "LBRACK", "LESS", "LETTER", "LPAR", "MINUS", "MULT", 
                    "NEQ", "NEWLINE", "OR", "PLUS", "PRINT", "PROGRAM", 
                    "RBRACK", "READ", "RETURN", "RPAR", "R_BOOL", "R_CLASS", 
                    "R_END", "R_FLOAT", "R_INTEGER", "R_STRING", "STRING", 
                    "VOID", "WHILE", "WS" )


  end


  class Parser < ANTLR3::Parser
    @grammar_home = Hephaestus

    RULE_METHODS = [ :start, :program, :estatute, :var_dec, :assignment, 
                     :array_dec, :condition, :loops, :while_loop, :for_loop, 
                     :reading, :writing, :parameters, :function, :block, 
                     :func_call, :expresion, :exp, :factor, :term, :type, 
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
    # 88:1: start : ( r_class )* ( function )* program ;
    #
    def start
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 88:8: ( r_class )* ( function )* program
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
          @state.following.push( TOKENS_FOLLOWING_r_class_IN_start_496 )
          r_class
          @state.following.pop

        else
          break # out of loop for decision 1
        end
      end # loop for decision 1

      # at line 88:21: ( function )*
      while true # decision 2
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0 == FUNCTION )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 88:23: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_start_503 )
          function
          @state.following.pop

        else
          break # out of loop for decision 2
        end
      end # loop for decision 2

      @state.following.push( TOKENS_FOLLOWING_program_IN_start_508 )
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
    # 90:1: program : PROGRAM ID COLON ( estatute | var_dec )* R_END PROGRAM ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      begin
      # at line 90:10: PROGRAM ID COLON ( estatute | var_dec )* R_END PROGRAM
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_515 )
      match( ID, TOKENS_FOLLOWING_ID_IN_program_517 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_program_519 )
      # at line 90:27: ( estatute | var_dec )*
      while true # decision 3
        alt_3 = 3
        look_3_0 = @input.peek( 1 )

        if ( look_3_0 == FOR || look_3_0.between?( ID, IF ) || look_3_0 == PRINT || look_3_0 == READ || look_3_0 == WHILE )
          alt_3 = 1
        elsif ( look_3_0 == DEFINE )
          alt_3 = 2

        end
        case alt_3
        when 1
          # at line 90:29: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_program_523 )
          estatute
          @state.following.pop

        when 2
          # at line 90:40: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_program_527 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 3
        end
      end # loop for decision 3

      match( R_END, TOKENS_FOLLOWING_R_END_IN_program_532 )
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_534 )

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
    # 92:1: estatute : ( func_call | condition | reading | writing | assignment | loops | method_call );
    #
    def estatute
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      begin
      # at line 92:9: ( func_call | condition | reading | writing | assignment | loops | method_call )
      alt_4 = 7
      case look_4 = @input.peek( 1 )
      when ID then case look_4 = @input.peek( 2 )
      when DOT then alt_4 = 7
      when LPAR then alt_4 = 1
      when ASGN, LBRACK then alt_4 = 5
      else
        raise NoViableAlternative( "", 4, 1 )

      end
      when IF then alt_4 = 2
      when READ then alt_4 = 3
      when PRINT then alt_4 = 4
      when FOR, WHILE then alt_4 = 6
      else
        raise NoViableAlternative( "", 4, 0 )

      end
      case alt_4
      when 1
        # at line 92:11: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatute_541 )
        func_call
        @state.following.pop

      when 2
        # at line 92:23: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatute_545 )
        condition
        @state.following.pop

      when 3
        # at line 92:35: reading
        @state.following.push( TOKENS_FOLLOWING_reading_IN_estatute_549 )
        reading
        @state.following.pop

      when 4
        # at line 92:45: writing
        @state.following.push( TOKENS_FOLLOWING_writing_IN_estatute_553 )
        writing
        @state.following.pop

      when 5
        # at line 92:55: assignment
        @state.following.push( TOKENS_FOLLOWING_assignment_IN_estatute_557 )
        assignment
        @state.following.pop

      when 6
        # at line 92:68: loops
        @state.following.push( TOKENS_FOLLOWING_loops_IN_estatute_561 )
        loops
        @state.following.pop

      when 7
        # at line 92:76: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatute_565 )
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
    # 94:1: var_dec : DEFINE ID AS type ( ASGN expresion | array_dec )? DOT ;
    #
    def var_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      begin
      # at line 94:10: DEFINE ID AS type ( ASGN expresion | array_dec )? DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_var_dec_572 )
      match( ID, TOKENS_FOLLOWING_ID_IN_var_dec_574 )
      match( AS, TOKENS_FOLLOWING_AS_IN_var_dec_576 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_var_dec_578 )
      type
      @state.following.pop
      # at line 94:28: ( ASGN expresion | array_dec )?
      alt_5 = 3
      look_5_0 = @input.peek( 1 )

      if ( look_5_0 == ASGN )
        alt_5 = 1
      elsif ( look_5_0 == LBRACK )
        alt_5 = 2
      end
      case alt_5
      when 1
        # at line 94:30: ASGN expresion
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_var_dec_582 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_var_dec_584 )
        expresion
        @state.following.pop

      when 2
        # at line 94:47: array_dec
        @state.following.push( TOKENS_FOLLOWING_array_dec_IN_var_dec_588 )
        array_dec
        @state.following.pop

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_var_dec_593 )

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
      match( ID, TOKENS_FOLLOWING_ID_IN_assignment_600 )
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
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_604 )
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
          @state.following.push( TOKENS_FOLLOWING_expresion_IN_assignment_608 )
          expresion
          @state.following.pop

        when 2
          # at line 96:37: func_call
          @state.following.push( TOKENS_FOLLOWING_func_call_IN_assignment_612 )
          func_call
          @state.following.pop

        end

      when 2
        # at line 96:51: array_dec ASGN type
        @state.following.push( TOKENS_FOLLOWING_array_dec_IN_assignment_618 )
        array_dec
        @state.following.pop
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_620 )
        @state.following.push( TOKENS_FOLLOWING_type_IN_assignment_622 )
        type
        @state.following.pop

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_assignment_626 )

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
      match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_array_dec_633 )
      @state.following.push( TOKENS_FOLLOWING_exp_IN_array_dec_635 )
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
          match( COMMA, TOKENS_FOLLOWING_COMMA_IN_array_dec_639 )
          @state.following.push( TOKENS_FOLLOWING_exp_IN_array_dec_641 )
          exp
          @state.following.pop

        else
          break # out of loop for decision 8
        end
      end # loop for decision 8

      match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_array_dec_646 )

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
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_653 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_condition_655 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_condition_657 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_condition_659 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_condition_661 )
      # at line 100:41: ( estatute )?
      alt_9 = 2
      look_9_0 = @input.peek( 1 )

      if ( look_9_0 == FOR || look_9_0.between?( ID, IF ) || look_9_0 == PRINT || look_9_0 == READ || look_9_0 == WHILE )
        alt_9 = 1
      end
      case alt_9
      when 1
        # at line 100:43: estatute
        @state.following.push( TOKENS_FOLLOWING_estatute_IN_condition_665 )
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
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_condition_672 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_condition_674 )
        expresion
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_condition_676 )

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
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_683 )
        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_685 )
        block
        @state.following.pop

      when 2
        # at line 100:96: R_END
        match( R_END, TOKENS_FOLLOWING_R_END_IN_condition_689 )

      end
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_693 )

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
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_loops_700 )
        while_loop
        @state.following.pop

      when 2
        # at line 102:21: for_loop
        @state.following.push( TOKENS_FOLLOWING_for_loop_IN_loops_704 )
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
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_711 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_while_loop_713 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_while_loop_715 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_while_loop_717 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_719 )
      block
      @state.following.pop
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_721 )

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
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_728 )
      match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_730 )
      match( IN, TOKENS_FOLLOWING_IN_IN_for_loop_732 )
      match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_734 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_for_loop_736 )
      block
      @state.following.pop
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_738 )

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
      match( READ, TOKENS_FOLLOWING_READ_IN_reading_745 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_reading_747 )
      @state.following.push( TOKENS_FOLLOWING_value_IN_reading_749 )
      value
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_reading_751 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_reading_753 )

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
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_writing_760 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_writing_762 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_writing_764 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_writing_766 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_writing_768 )

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
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_parameters_775 )
      # at line 112:18: ( type ( ID | value ) ( COMMA type ( ID | value ) )* )?
      alt_16 = 2
      look_16_0 = @input.peek( 1 )

      if ( look_16_0 == ID || look_16_0 == R_BOOL || look_16_0.between?( R_FLOAT, R_STRING ) )
        alt_16 = 1
      end
      case alt_16
      when 1
        # at line 112:20: type ( ID | value ) ( COMMA type ( ID | value ) )*
        @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_779 )
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
          match( ID, TOKENS_FOLLOWING_ID_IN_parameters_782 )

        when 2
          # at line 112:31: value
          @state.following.push( TOKENS_FOLLOWING_value_IN_parameters_786 )
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
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_parameters_792 )
            @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_794 )
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
              match( ID, TOKENS_FOLLOWING_ID_IN_parameters_797 )

            when 2
              # at line 112:58: value
              @state.following.push( TOKENS_FOLLOWING_value_IN_parameters_801 )
              value
              @state.following.pop

            end

          else
            break # out of loop for decision 15
          end
        end # loop for decision 15


      end
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_parameters_811 )

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
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_818 )
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
        @state.following.push( TOKENS_FOLLOWING_type_IN_function_822 )
        type
        @state.following.pop

      when 2
        # at line 114:29: VOID
        match( VOID, TOKENS_FOLLOWING_VOID_IN_function_826 )

      end
      match( ID, TOKENS_FOLLOWING_ID_IN_function_830 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_832 )
      parameters
      @state.following.pop
      match( COLON, TOKENS_FOLLOWING_COLON_IN_function_834 )
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
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_function_838 )
          estatute
          @state.following.pop

        when 2
          # at line 114:69: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_function_842 )
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
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_function_849 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_function_851 )
        expresion
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_function_853 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_858 )
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_860 )

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
      match( COLON, TOKENS_FOLLOWING_COLON_IN_block_867 )
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
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_block_871 )
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
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_block_878 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_block_880 )
        expresion
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_block_882 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_887 )

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
    # 118:1: func_call : ID parameters DOT ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      begin
      # at line 118:12: ID parameters DOT
      match( ID, TOKENS_FOLLOWING_ID_IN_func_call_894 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_func_call_896 )
      parameters
      @state.following.pop
      match( DOT, TOKENS_FOLLOWING_DOT_IN_func_call_898 )

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
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_905 )
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


        @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_934 )
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
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_944 )
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


          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_958 )
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
    # parser rule factor
    #
    # (in Hephaestus.g)
    # 124:1: factor : ( ID ( array_dec )? | LPAR expresion RPAR | value );
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      begin
      # at line 124:7: ( ID ( array_dec )? | LPAR expresion RPAR | value )
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
        # at line 124:9: ID ( array_dec )?
        match( ID, TOKENS_FOLLOWING_ID_IN_factor_968 )
        # at line 124:12: ( array_dec )?
        alt_24 = 2
        look_24_0 = @input.peek( 1 )

        if ( look_24_0 == LBRACK )
          alt_24 = 1
        end
        case alt_24
        when 1
          # at line 124:14: array_dec
          @state.following.push( TOKENS_FOLLOWING_array_dec_IN_factor_972 )
          array_dec
          @state.following.pop

        end

      when 2
        # at line 124:29: LPAR expresion RPAR
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_979 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_factor_981 )
        expresion
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_983 )

      when 3
        # at line 124:51: value
        @state.following.push( TOKENS_FOLLOWING_value_IN_factor_987 )
        value
        @state.following.pop

      end
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
    # parser rule term
    #
    # (in Hephaestus.g)
    # 126:1: term : factor ( ( MULT | DIV ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      begin
      # at line 126:7: factor ( ( MULT | DIV ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_994 )
      factor
      @state.following.pop
      # at line 126:14: ( ( MULT | DIV ) factor )*
      while true # decision 26
        alt_26 = 2
        look_26_0 = @input.peek( 1 )

        if ( look_26_0 == DIV || look_26_0 == MULT )
          alt_26 = 1

        end
        case alt_26
        when 1
          # at line 126:16: ( MULT | DIV ) factor
          if @input.peek(1) == DIV || @input.peek(1) == MULT
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1008 )
          factor
          @state.following.pop

        else
          break # out of loop for decision 26
        end
      end # loop for decision 26


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
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_1060 )
      match( ID, TOKENS_FOLLOWING_ID_IN_r_class_1062 )
      # at line 132:21: ( HER ID )?
      alt_27 = 2
      look_27_0 = @input.peek( 1 )

      if ( look_27_0 == HER )
        alt_27 = 1
      end
      case alt_27
      when 1
        # at line 132:23: HER ID
        match( HER, TOKENS_FOLLOWING_HER_IN_r_class_1066 )
        match( ID, TOKENS_FOLLOWING_ID_IN_r_class_1068 )

      end
      match( COLON, TOKENS_FOLLOWING_COLON_IN_r_class_1073 )
      # at line 132:39: ( function | var_dec )*
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
          # at line 132:41: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_r_class_1077 )
          function
          @state.following.pop

        when 2
          # at line 132:52: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_r_class_1081 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 28
        end
      end # loop for decision 28

      match( R_END, TOKENS_FOLLOWING_R_END_IN_r_class_1086 )
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_1088 )

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
    # 134:1: method_call : ID DOT ( func_call | ID DOT ) ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      begin
      # at line 134:14: ID DOT ( func_call | ID DOT )
      match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1095 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_1097 )
      # at line 134:21: ( func_call | ID DOT )
      alt_29 = 2
      look_29_0 = @input.peek( 1 )

      if ( look_29_0 == ID )
        look_29_1 = @input.peek( 2 )

        if ( look_29_1 == DOT )
          alt_29 = 2
        elsif ( look_29_1 == LPAR )
          alt_29 = 1
        else
          raise NoViableAlternative( "", 29, 1 )

        end
      else
        raise NoViableAlternative( "", 29, 0 )

      end
      case alt_29
      when 1
        # at line 134:22: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_method_call_1100 )
        func_call
        @state.following.pop

      when 2
        # at line 134:34: ID DOT
        match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1104 )
        match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_1106 )

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



    TOKENS_FOLLOWING_r_class_IN_start_496 = Set[ 18, 36, 42 ]
    TOKENS_FOLLOWING_function_IN_start_503 = Set[ 18, 36 ]
    TOKENS_FOLLOWING_program_IN_start_508 = Set[ 1 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_515 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_program_517 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_program_519 = Set[ 10, 17, 21, 22, 35, 38, 43, 49 ]
    TOKENS_FOLLOWING_estatute_IN_program_523 = Set[ 10, 17, 21, 22, 35, 38, 43, 49 ]
    TOKENS_FOLLOWING_var_dec_IN_program_527 = Set[ 10, 17, 21, 22, 35, 38, 43, 49 ]
    TOKENS_FOLLOWING_R_END_IN_program_532 = Set[ 36 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_534 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatute_541 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatute_545 = Set[ 1 ]
    TOKENS_FOLLOWING_reading_IN_estatute_549 = Set[ 1 ]
    TOKENS_FOLLOWING_writing_IN_estatute_553 = Set[ 1 ]
    TOKENS_FOLLOWING_assignment_IN_estatute_557 = Set[ 1 ]
    TOKENS_FOLLOWING_loops_IN_estatute_561 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatute_565 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_var_dec_572 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_var_dec_574 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_var_dec_576 = Set[ 21, 41, 44, 45, 46 ]
    TOKENS_FOLLOWING_type_IN_var_dec_578 = Set[ 6, 13, 25 ]
    TOKENS_FOLLOWING_ASGN_IN_var_dec_582 = Set[ 7, 16, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_expresion_IN_var_dec_584 = Set[ 13 ]
    TOKENS_FOLLOWING_array_dec_IN_var_dec_588 = Set[ 13 ]
    TOKENS_FOLLOWING_DOT_IN_var_dec_593 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_assignment_600 = Set[ 6, 25 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_604 = Set[ 7, 16, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_expresion_IN_assignment_608 = Set[ 13 ]
    TOKENS_FOLLOWING_func_call_IN_assignment_612 = Set[ 13 ]
    TOKENS_FOLLOWING_array_dec_IN_assignment_618 = Set[ 6 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_620 = Set[ 21, 41, 44, 45, 46 ]
    TOKENS_FOLLOWING_type_IN_assignment_622 = Set[ 13 ]
    TOKENS_FOLLOWING_DOT_IN_assignment_626 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACK_IN_array_dec_633 = Set[ 7, 16, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_exp_IN_array_dec_635 = Set[ 9, 37 ]
    TOKENS_FOLLOWING_COMMA_IN_array_dec_639 = Set[ 7, 16, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_exp_IN_array_dec_641 = Set[ 9, 37 ]
    TOKENS_FOLLOWING_RBRACK_IN_array_dec_646 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_653 = Set[ 28 ]
    TOKENS_FOLLOWING_LPAR_IN_condition_655 = Set[ 7, 16, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_expresion_IN_condition_657 = Set[ 40 ]
    TOKENS_FOLLOWING_RPAR_IN_condition_659 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_condition_661 = Set[ 14, 17, 21, 22, 35, 38, 39, 43, 49 ]
    TOKENS_FOLLOWING_estatute_IN_condition_665 = Set[ 14, 39, 43 ]
    TOKENS_FOLLOWING_RETURN_IN_condition_672 = Set[ 7, 16, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_expresion_IN_condition_674 = Set[ 13 ]
    TOKENS_FOLLOWING_DOT_IN_condition_676 = Set[ 14, 43 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_683 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_condition_685 = Set[ 22 ]
    TOKENS_FOLLOWING_R_END_IN_condition_689 = Set[ 22 ]
    TOKENS_FOLLOWING_IF_IN_condition_693 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_loops_700 = Set[ 1 ]
    TOKENS_FOLLOWING_for_loop_IN_loops_704 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_711 = Set[ 28 ]
    TOKENS_FOLLOWING_LPAR_IN_while_loop_713 = Set[ 7, 16, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_expresion_IN_while_loop_715 = Set[ 40 ]
    TOKENS_FOLLOWING_RPAR_IN_while_loop_717 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_while_loop_719 = Set[ 49 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_721 = Set[ 1 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_728 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_730 = Set[ 23 ]
    TOKENS_FOLLOWING_IN_IN_for_loop_732 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_734 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_for_loop_736 = Set[ 17 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_738 = Set[ 1 ]
    TOKENS_FOLLOWING_READ_IN_reading_745 = Set[ 28 ]
    TOKENS_FOLLOWING_LPAR_IN_reading_747 = Set[ 7, 16, 24, 47 ]
    TOKENS_FOLLOWING_value_IN_reading_749 = Set[ 40 ]
    TOKENS_FOLLOWING_RPAR_IN_reading_751 = Set[ 13 ]
    TOKENS_FOLLOWING_DOT_IN_reading_753 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_writing_760 = Set[ 28 ]
    TOKENS_FOLLOWING_LPAR_IN_writing_762 = Set[ 7, 16, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_expresion_IN_writing_764 = Set[ 40 ]
    TOKENS_FOLLOWING_RPAR_IN_writing_766 = Set[ 13 ]
    TOKENS_FOLLOWING_DOT_IN_writing_768 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_parameters_775 = Set[ 21, 40, 41, 44, 45, 46 ]
    TOKENS_FOLLOWING_type_IN_parameters_779 = Set[ 7, 16, 21, 24, 47 ]
    TOKENS_FOLLOWING_ID_IN_parameters_782 = Set[ 9, 40 ]
    TOKENS_FOLLOWING_value_IN_parameters_786 = Set[ 9, 40 ]
    TOKENS_FOLLOWING_COMMA_IN_parameters_792 = Set[ 21, 41, 44, 45, 46 ]
    TOKENS_FOLLOWING_type_IN_parameters_794 = Set[ 7, 16, 21, 24, 47 ]
    TOKENS_FOLLOWING_ID_IN_parameters_797 = Set[ 9, 40 ]
    TOKENS_FOLLOWING_value_IN_parameters_801 = Set[ 9, 40 ]
    TOKENS_FOLLOWING_RPAR_IN_parameters_811 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_818 = Set[ 21, 41, 44, 45, 46, 48 ]
    TOKENS_FOLLOWING_type_IN_function_822 = Set[ 21 ]
    TOKENS_FOLLOWING_VOID_IN_function_826 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_function_830 = Set[ 28 ]
    TOKENS_FOLLOWING_parameters_IN_function_832 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_function_834 = Set[ 10, 17, 21, 22, 35, 38, 39, 43, 49 ]
    TOKENS_FOLLOWING_estatute_IN_function_838 = Set[ 10, 17, 21, 22, 35, 38, 39, 43, 49 ]
    TOKENS_FOLLOWING_var_dec_IN_function_842 = Set[ 10, 17, 21, 22, 35, 38, 39, 43, 49 ]
    TOKENS_FOLLOWING_RETURN_IN_function_849 = Set[ 7, 16, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_expresion_IN_function_851 = Set[ 13 ]
    TOKENS_FOLLOWING_DOT_IN_function_853 = Set[ 43 ]
    TOKENS_FOLLOWING_R_END_IN_function_858 = Set[ 18 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_860 = Set[ 1 ]
    TOKENS_FOLLOWING_COLON_IN_block_867 = Set[ 17, 21, 22, 35, 38, 39, 43, 49 ]
    TOKENS_FOLLOWING_estatute_IN_block_871 = Set[ 17, 21, 22, 35, 38, 39, 43, 49 ]
    TOKENS_FOLLOWING_RETURN_IN_block_878 = Set[ 7, 16, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_expresion_IN_block_880 = Set[ 13 ]
    TOKENS_FOLLOWING_DOT_IN_block_882 = Set[ 43 ]
    TOKENS_FOLLOWING_R_END_IN_block_887 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_894 = Set[ 28 ]
    TOKENS_FOLLOWING_parameters_IN_func_call_896 = Set[ 13 ]
    TOKENS_FOLLOWING_DOT_IN_func_call_898 = Set[ 1 ]
    TOKENS_FOLLOWING_exp_IN_expresion_905 = Set[ 1, 4, 15, 19, 26, 31, 33 ]
    TOKENS_FOLLOWING_set_IN_expresion_909 = Set[ 7, 16, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_exp_IN_expresion_934 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_exp_944 = Set[ 1, 29, 34 ]
    TOKENS_FOLLOWING_set_IN_exp_948 = Set[ 7, 16, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_term_IN_exp_958 = Set[ 1, 29, 34 ]
    TOKENS_FOLLOWING_ID_IN_factor_968 = Set[ 1, 25 ]
    TOKENS_FOLLOWING_array_dec_IN_factor_972 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_979 = Set[ 7, 16, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_expresion_IN_factor_981 = Set[ 40 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_983 = Set[ 1 ]
    TOKENS_FOLLOWING_value_IN_factor_987 = Set[ 1 ]
    TOKENS_FOLLOWING_factor_IN_term_994 = Set[ 1, 12, 30 ]
    TOKENS_FOLLOWING_set_IN_term_998 = Set[ 7, 16, 21, 24, 28, 47 ]
    TOKENS_FOLLOWING_factor_IN_term_1008 = Set[ 1, 12, 30 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_1060 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_r_class_1062 = Set[ 8, 20 ]
    TOKENS_FOLLOWING_HER_IN_r_class_1066 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_r_class_1068 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_r_class_1073 = Set[ 10, 18, 43 ]
    TOKENS_FOLLOWING_function_IN_r_class_1077 = Set[ 10, 18, 43 ]
    TOKENS_FOLLOWING_var_dec_IN_r_class_1081 = Set[ 10, 18, 43 ]
    TOKENS_FOLLOWING_R_END_IN_r_class_1086 = Set[ 42 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_1088 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1095 = Set[ 13 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_1097 = Set[ 21 ]
    TOKENS_FOLLOWING_func_call_IN_method_call_1100 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1104 = Set[ 13 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_1106 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
