#!/usr/bin/env ruby
#
# Hephaestus.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Hephaestus.g
# Generated at: 2017-10-19 20:34:34
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
                   :CLASS => 8, :COLON => 9, :COMMA => 10, :DEFINE => 11, 
                   :DIV => 12, :DOT => 13, :ELSE => 14, :EQ => 15, :FLOAT => 16, 
                   :FOR => 17, :FUNCTION => 18, :GREATER => 19, :HER => 20, 
                   :ID => 21, :IF => 22, :IN => 23, :INTEGER => 24, :LBRACK => 25, 
                   :LESS => 26, :LPAR => 27, :MINUS => 28, :MULT => 29, 
                   :NEQ => 30, :NEWLINE => 31, :OR => 32, :PLUS => 33, :PRINT => 34, 
                   :PROGRAM => 35, :RBRACK => 36, :READ => 37, :RETURN => 38, 
                   :RPAR => 39, :R_BOOL => 40, :R_END => 41, :R_FLOAT => 42, 
                   :R_INTEGER => 43, :R_STRING => 44, :STRING => 45, :VOID => 46, 
                   :WHILE => 47, :WS => 48 )


    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "AND", "AS", "ASGN", "BOOL", "CLASS", "COLON", "COMMA", 
                    "DEFINE", "DIV", "DOT", "ELSE", "EQ", "FLOAT", "FOR", 
                    "FUNCTION", "GREATER", "HER", "ID", "IF", "IN", "INTEGER", 
                    "LBRACK", "LESS", "LPAR", "MINUS", "MULT", "NEQ", "NEWLINE", 
                    "OR", "PLUS", "PRINT", "PROGRAM", "RBRACK", "READ", 
                    "RETURN", "RPAR", "R_BOOL", "R_END", "R_FLOAT", "R_INTEGER", 
                    "R_STRING", "STRING", "VOID", "WHILE", "WS" )


  end


  class Parser < ANTLR3::Parser
    @grammar_home = Hephaestus

    RULE_METHODS = [ :start, :program, :estatute, :var_dec, :assignment, 
                     :array_dec, :condition, :loops, :while_loop, :for_loop, 
                     :reading, :writing, :parameters, :function, :block, 
                     :func_call, :expresion, :exp, :factor, :term, :type, 
                     :value, :class, :method_call ].freeze

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
    # 87:1: start : ( class )* program ;
    #
    def start
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 87:8: ( class )* program
      # at line 87:8: ( class )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == CLASS )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 87:10: class
          @state.following.push( TOKENS_FOLLOWING_class_IN_start_495 )
          class
          @state.following.pop

        else
          break # out of loop for decision 1
        end
      end # loop for decision 1

      @state.following.push( TOKENS_FOLLOWING_program_IN_start_500 )
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
    # 89:1: program : PROGRAM ID COLON ( estatute | var_dec )+ R_END PROGRAM ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      begin
      # at line 89:10: PROGRAM ID COLON ( estatute | var_dec )+ R_END PROGRAM
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_507 )
      match( ID, TOKENS_FOLLOWING_ID_IN_program_509 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_program_511 )
      # at file 89:27: ( estatute | var_dec )+
      match_count_2 = 0
      while true
        alt_2 = 3
        look_2_0 = @input.peek( 1 )

        if ( look_2_0 == FOR || look_2_0.between?( ID, IF ) || look_2_0 == PRINT || look_2_0 == READ || look_2_0 == WHILE )
          alt_2 = 1
        elsif ( look_2_0 == DEFINE )
          alt_2 = 2

        end
        case alt_2
        when 1
          # at line 89:29: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_program_515 )
          estatute
          @state.following.pop

        when 2
          # at line 89:40: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_program_519 )
          var_dec
          @state.following.pop

        else
          match_count_2 > 0 and break
          eee = EarlyExit(2)


          raise eee
        end
        match_count_2 += 1
      end


      match( R_END, TOKENS_FOLLOWING_R_END_IN_program_524 )
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_526 )

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
    # 91:1: estatute : ( func_call | condition | reading | writing | assignment | loops | method_call );
    #
    def estatute
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      begin
      # at line 91:9: ( func_call | condition | reading | writing | assignment | loops | method_call )
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
        # at line 91:11: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatute_533 )
        func_call
        @state.following.pop

      when 2
        # at line 91:23: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatute_537 )
        condition
        @state.following.pop

      when 3
        # at line 91:35: reading
        @state.following.push( TOKENS_FOLLOWING_reading_IN_estatute_541 )
        reading
        @state.following.pop

      when 4
        # at line 91:45: writing
        @state.following.push( TOKENS_FOLLOWING_writing_IN_estatute_545 )
        writing
        @state.following.pop

      when 5
        # at line 91:55: assignment
        @state.following.push( TOKENS_FOLLOWING_assignment_IN_estatute_549 )
        assignment
        @state.following.pop

      when 6
        # at line 91:68: loops
        @state.following.push( TOKENS_FOLLOWING_loops_IN_estatute_553 )
        loops
        @state.following.pop

      when 7
        # at line 91:76: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatute_557 )
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
    # 93:1: var_dec : DEFINE ID AS type ( ASGN expresion | array_dec )? DOT ;
    #
    def var_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      begin
      # at line 93:10: DEFINE ID AS type ( ASGN expresion | array_dec )? DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_var_dec_564 )
      match( ID, TOKENS_FOLLOWING_ID_IN_var_dec_566 )
      match( AS, TOKENS_FOLLOWING_AS_IN_var_dec_568 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_var_dec_570 )
      type
      @state.following.pop
      # at line 93:28: ( ASGN expresion | array_dec )?
      alt_4 = 3
      look_4_0 = @input.peek( 1 )

      if ( look_4_0 == ASGN )
        alt_4 = 1
      elsif ( look_4_0 == LBRACK )
        alt_4 = 2
      end
      case alt_4
      when 1
        # at line 93:30: ASGN expresion
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_var_dec_574 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_var_dec_576 )
        expresion
        @state.following.pop

      when 2
        # at line 93:47: array_dec
        @state.following.push( TOKENS_FOLLOWING_array_dec_IN_var_dec_580 )
        array_dec
        @state.following.pop

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_var_dec_585 )

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
    # 95:1: assignment : ID ( ASGN ( expresion | func_call ) | array_dec ASGN type ) DOT ;
    #
    def assignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      begin
      # at line 95:13: ID ( ASGN ( expresion | func_call ) | array_dec ASGN type ) DOT
      match( ID, TOKENS_FOLLOWING_ID_IN_assignment_592 )
      # at line 95:16: ( ASGN ( expresion | func_call ) | array_dec ASGN type )
      alt_6 = 2
      look_6_0 = @input.peek( 1 )

      if ( look_6_0 == ASGN )
        alt_6 = 1
      elsif ( look_6_0 == LBRACK )
        alt_6 = 2
      else
        raise NoViableAlternative( "", 6, 0 )

      end
      case alt_6
      when 1
        # at line 95:18: ASGN ( expresion | func_call )
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_596 )
        # at line 95:23: ( expresion | func_call )
        alt_5 = 2
        look_5_0 = @input.peek( 1 )

        if ( look_5_0 == ID )
          look_5_1 = @input.peek( 2 )

          if ( look_5_1 == LBRACK )
            alt_5 = 1
          elsif ( look_5_1 == LPAR )
            alt_5 = 2
          else
            raise NoViableAlternative( "", 5, 1 )

          end
        elsif ( look_5_0 == LPAR )
          alt_5 = 1
        else
          raise NoViableAlternative( "", 5, 0 )

        end
        case alt_5
        when 1
          # at line 95:25: expresion
          @state.following.push( TOKENS_FOLLOWING_expresion_IN_assignment_600 )
          expresion
          @state.following.pop

        when 2
          # at line 95:37: func_call
          @state.following.push( TOKENS_FOLLOWING_func_call_IN_assignment_604 )
          func_call
          @state.following.pop

        end

      when 2
        # at line 95:51: array_dec ASGN type
        @state.following.push( TOKENS_FOLLOWING_array_dec_IN_assignment_610 )
        array_dec
        @state.following.pop
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_612 )
        @state.following.push( TOKENS_FOLLOWING_type_IN_assignment_614 )
        type
        @state.following.pop

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_assignment_618 )

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
    # 97:1: array_dec : LBRACK exp ( COMMA exp )* RBRACK ;
    #
    def array_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      begin
      # at line 97:12: LBRACK exp ( COMMA exp )* RBRACK
      match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_array_dec_625 )
      @state.following.push( TOKENS_FOLLOWING_exp_IN_array_dec_627 )
      exp
      @state.following.pop
      # at line 97:23: ( COMMA exp )*
      while true # decision 7
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0 == COMMA )
          alt_7 = 1

        end
        case alt_7
        when 1
          # at line 97:25: COMMA exp
          match( COMMA, TOKENS_FOLLOWING_COMMA_IN_array_dec_631 )
          @state.following.push( TOKENS_FOLLOWING_exp_IN_array_dec_633 )
          exp
          @state.following.pop

        else
          break # out of loop for decision 7
        end
      end # loop for decision 7

      match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_array_dec_638 )

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
    # 99:1: condition : IF LPAR expresion RPAR COLON ( estatute )? ( RETURN expresion DOT )? ( ELSE block | R_END ) IF ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      begin
      # at line 99:12: IF LPAR expresion RPAR COLON ( estatute )? ( RETURN expresion DOT )? ( ELSE block | R_END ) IF
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_645 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_condition_647 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_condition_649 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_condition_651 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_condition_653 )
      # at line 99:41: ( estatute )?
      alt_8 = 2
      look_8_0 = @input.peek( 1 )

      if ( look_8_0 == FOR || look_8_0.between?( ID, IF ) || look_8_0 == PRINT || look_8_0 == READ || look_8_0 == WHILE )
        alt_8 = 1
      end
      case alt_8
      when 1
        # at line 99:43: estatute
        @state.following.push( TOKENS_FOLLOWING_estatute_IN_condition_657 )
        estatute
        @state.following.pop

      end
      # at line 99:55: ( RETURN expresion DOT )?
      alt_9 = 2
      look_9_0 = @input.peek( 1 )

      if ( look_9_0 == RETURN )
        alt_9 = 1
      end
      case alt_9
      when 1
        # at line 99:57: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_condition_664 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_condition_666 )
        expresion
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_condition_668 )

      end
      # at line 99:81: ( ELSE block | R_END )
      alt_10 = 2
      look_10_0 = @input.peek( 1 )

      if ( look_10_0 == ELSE )
        alt_10 = 1
      elsif ( look_10_0 == R_END )
        alt_10 = 2
      else
        raise NoViableAlternative( "", 10, 0 )

      end
      case alt_10
      when 1
        # at line 99:83: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_675 )
        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_677 )
        block
        @state.following.pop

      when 2
        # at line 99:96: R_END
        match( R_END, TOKENS_FOLLOWING_R_END_IN_condition_681 )

      end
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_685 )

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
    # 101:1: loops : ( while_loop | for_loop );
    #
    def loops
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      begin
      # at line 101:6: ( while_loop | for_loop )
      alt_11 = 2
      look_11_0 = @input.peek( 1 )

      if ( look_11_0 == WHILE )
        alt_11 = 1
      elsif ( look_11_0 == FOR )
        alt_11 = 2
      else
        raise NoViableAlternative( "", 11, 0 )

      end
      case alt_11
      when 1
        # at line 101:8: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_loops_692 )
        while_loop
        @state.following.pop

      when 2
        # at line 101:21: for_loop
        @state.following.push( TOKENS_FOLLOWING_for_loop_IN_loops_696 )
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
    # 103:1: while_loop : WHILE LPAR expresion RPAR block WHILE ;
    #
    def while_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      begin
      # at line 103:13: WHILE LPAR expresion RPAR block WHILE
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_703 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_while_loop_705 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_while_loop_707 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_while_loop_709 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_711 )
      block
      @state.following.pop
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_713 )

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
    # 105:1: for_loop : FOR ID IN ID block FOR ;
    #
    def for_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      begin
      # at line 105:11: FOR ID IN ID block FOR
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_720 )
      match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_722 )
      match( IN, TOKENS_FOLLOWING_IN_IN_for_loop_724 )
      match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_726 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_for_loop_728 )
      block
      @state.following.pop
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_730 )

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
    # 107:1: reading : READ LPAR value RPAR DOT ;
    #
    def reading
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      begin
      # at line 107:10: READ LPAR value RPAR DOT
      match( READ, TOKENS_FOLLOWING_READ_IN_reading_737 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_reading_739 )
      @state.following.push( TOKENS_FOLLOWING_value_IN_reading_741 )
      value
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_reading_743 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_reading_745 )

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
    # 109:1: writing : PRINT LPAR expresion RPAR DOT ;
    #
    def writing
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      begin
      # at line 109:10: PRINT LPAR expresion RPAR DOT
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_writing_752 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_writing_754 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_writing_756 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_writing_758 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_writing_760 )

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
    # 111:1: parameters : LPAR type ID ( COMMA type ID )* RPAR ;
    #
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      begin
      # at line 111:13: LPAR type ID ( COMMA type ID )* RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_parameters_767 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_769 )
      type
      @state.following.pop
      match( ID, TOKENS_FOLLOWING_ID_IN_parameters_771 )
      # at line 111:26: ( COMMA type ID )*
      while true # decision 12
        alt_12 = 2
        look_12_0 = @input.peek( 1 )

        if ( look_12_0 == COMMA )
          alt_12 = 1

        end
        case alt_12
        when 1
          # at line 111:28: COMMA type ID
          match( COMMA, TOKENS_FOLLOWING_COMMA_IN_parameters_775 )
          @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_777 )
          type
          @state.following.pop
          match( ID, TOKENS_FOLLOWING_ID_IN_parameters_779 )

        else
          break # out of loop for decision 12
        end
      end # loop for decision 12

      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_parameters_784 )

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
    # 113:1: function : FUNCTION ( type | VOID ) ID parameters COLON ( estatute | var_dec )* RETURN expresion DOT R_END FUNCTION ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      begin
      # at line 113:11: FUNCTION ( type | VOID ) ID parameters COLON ( estatute | var_dec )* RETURN expresion DOT R_END FUNCTION
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_791 )
      # at line 113:20: ( type | VOID )
      alt_13 = 2
      look_13_0 = @input.peek( 1 )

      if ( look_13_0 == R_BOOL || look_13_0.between?( R_FLOAT, R_STRING ) )
        alt_13 = 1
      elsif ( look_13_0 == VOID )
        alt_13 = 2
      else
        raise NoViableAlternative( "", 13, 0 )

      end
      case alt_13
      when 1
        # at line 113:22: type
        @state.following.push( TOKENS_FOLLOWING_type_IN_function_795 )
        type
        @state.following.pop

      when 2
        # at line 113:29: VOID
        match( VOID, TOKENS_FOLLOWING_VOID_IN_function_799 )

      end
      match( ID, TOKENS_FOLLOWING_ID_IN_function_803 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_805 )
      parameters
      @state.following.pop
      match( COLON, TOKENS_FOLLOWING_COLON_IN_function_807 )
      # at line 113:56: ( estatute | var_dec )*
      while true # decision 14
        alt_14 = 3
        look_14_0 = @input.peek( 1 )

        if ( look_14_0 == FOR || look_14_0.between?( ID, IF ) || look_14_0 == PRINT || look_14_0 == READ || look_14_0 == WHILE )
          alt_14 = 1
        elsif ( look_14_0 == DEFINE )
          alt_14 = 2

        end
        case alt_14
        when 1
          # at line 113:58: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_function_811 )
          estatute
          @state.following.pop

        when 2
          # at line 113:69: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_function_815 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 14
        end
      end # loop for decision 14

      match( RETURN, TOKENS_FOLLOWING_RETURN_IN_function_820 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_function_822 )
      expresion
      @state.following.pop
      match( DOT, TOKENS_FOLLOWING_DOT_IN_function_824 )
      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_826 )
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_828 )

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
    # 115:1: block : COLON ( estatute )* ( RETURN expresion DOT )? R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      begin
      # at line 115:8: COLON ( estatute )* ( RETURN expresion DOT )? R_END
      match( COLON, TOKENS_FOLLOWING_COLON_IN_block_835 )
      # at line 115:14: ( estatute )*
      while true # decision 15
        alt_15 = 2
        look_15_0 = @input.peek( 1 )

        if ( look_15_0 == FOR || look_15_0.between?( ID, IF ) || look_15_0 == PRINT || look_15_0 == READ || look_15_0 == WHILE )
          alt_15 = 1

        end
        case alt_15
        when 1
          # at line 115:16: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_block_839 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 15
        end
      end # loop for decision 15

      # at line 115:28: ( RETURN expresion DOT )?
      alt_16 = 2
      look_16_0 = @input.peek( 1 )

      if ( look_16_0 == RETURN )
        alt_16 = 1
      end
      case alt_16
      when 1
        # at line 115:30: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_block_846 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_block_848 )
        expresion
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_block_850 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_855 )

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
    # 117:1: func_call : ID parameters DOT ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      begin
      # at line 117:12: ID parameters DOT
      match( ID, TOKENS_FOLLOWING_ID_IN_func_call_862 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_func_call_864 )
      parameters
      @state.following.pop
      match( DOT, TOKENS_FOLLOWING_DOT_IN_func_call_866 )

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
    # 119:1: expresion : exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )? ;
    #
    def expresion
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      begin
      # at line 119:12: exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_873 )
      exp
      @state.following.pop
      # at line 119:16: ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      alt_17 = 2
      look_17_0 = @input.peek( 1 )

      if ( look_17_0 == AND || look_17_0 == EQ || look_17_0 == GREATER || look_17_0 == LESS || look_17_0 == NEQ || look_17_0 == OR )
        alt_17 = 1
      end
      case alt_17
      when 1
        # at line 119:18: ( GREATER | LESS | NEQ | EQ | AND | OR ) exp
        if @input.peek(1) == AND || @input.peek(1) == EQ || @input.peek(1) == GREATER || @input.peek(1) == LESS || @input.peek(1) == NEQ || @input.peek(1) == OR
          @input.consume
          @state.error_recovery = false

        else
          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_902 )
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
    # 121:1: exp : term ( ( PLUS | MINUS ) term )* ;
    #
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


      begin
      # at line 121:6: term ( ( PLUS | MINUS ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_912 )
      term
      @state.following.pop
      # at line 121:11: ( ( PLUS | MINUS ) term )*
      while true # decision 18
        alt_18 = 2
        look_18_0 = @input.peek( 1 )

        if ( look_18_0 == MINUS || look_18_0 == PLUS )
          alt_18 = 1

        end
        case alt_18
        when 1
          # at line 121:13: ( PLUS | MINUS ) term
          if @input.peek(1) == MINUS || @input.peek(1) == PLUS
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_926 )
          term
          @state.following.pop

        else
          break # out of loop for decision 18
        end
      end # loop for decision 18


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
    # 123:1: factor : ( ID array_dec | LPAR expresion RPAR );
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      begin
      # at line 123:7: ( ID array_dec | LPAR expresion RPAR )
      alt_19 = 2
      look_19_0 = @input.peek( 1 )

      if ( look_19_0 == ID )
        alt_19 = 1
      elsif ( look_19_0 == LPAR )
        alt_19 = 2
      else
        raise NoViableAlternative( "", 19, 0 )

      end
      case alt_19
      when 1
        # at line 123:9: ID array_dec
        match( ID, TOKENS_FOLLOWING_ID_IN_factor_936 )
        @state.following.push( TOKENS_FOLLOWING_array_dec_IN_factor_938 )
        array_dec
        @state.following.pop

      when 2
        # at line 123:24: LPAR expresion RPAR
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_942 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_factor_944 )
        expresion
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_946 )

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
    # 125:1: term : factor ( ( MULT | DIV ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      begin
      # at line 125:7: factor ( ( MULT | DIV ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_953 )
      factor
      @state.following.pop
      # at line 125:14: ( ( MULT | DIV ) factor )*
      while true # decision 20
        alt_20 = 2
        look_20_0 = @input.peek( 1 )

        if ( look_20_0 == DIV || look_20_0 == MULT )
          alt_20 = 1

        end
        case alt_20
        when 1
          # at line 125:16: ( MULT | DIV ) factor
          if @input.peek(1) == DIV || @input.peek(1) == MULT
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_967 )
          factor
          @state.following.pop

        else
          break # out of loop for decision 20
        end
      end # loop for decision 20


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
    # 127:1: type : ( R_STRING | R_BOOL | R_FLOAT | R_INTEGER );
    #
    def type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      begin
      # at line 
      if @input.peek(1) == R_BOOL || @input.peek( 1 ).between?( R_FLOAT, R_STRING )
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
    # 129:1: value : ( STRING | FLOAT | INTEGER | BOOL );
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
    # parser rule class
    #
    # (in Hephaestus.g)
    # 131:1: class : CLASS ID ( HER ID )? COLON ( func_call | var_dec )+ R_END CLASS ;
    #
    def class
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )


      begin
      # at line 131:8: CLASS ID ( HER ID )? COLON ( func_call | var_dec )+ R_END CLASS
      match( CLASS, TOKENS_FOLLOWING_CLASS_IN_class_1015 )
      match( ID, TOKENS_FOLLOWING_ID_IN_class_1017 )
      # at line 131:17: ( HER ID )?
      alt_21 = 2
      look_21_0 = @input.peek( 1 )

      if ( look_21_0 == HER )
        alt_21 = 1
      end
      case alt_21
      when 1
        # at line 131:19: HER ID
        match( HER, TOKENS_FOLLOWING_HER_IN_class_1021 )
        match( ID, TOKENS_FOLLOWING_ID_IN_class_1023 )

      end
      match( COLON, TOKENS_FOLLOWING_COLON_IN_class_1028 )
      # at file 131:35: ( func_call | var_dec )+
      match_count_22 = 0
      while true
        alt_22 = 3
        look_22_0 = @input.peek( 1 )

        if ( look_22_0 == ID )
          alt_22 = 1
        elsif ( look_22_0 == DEFINE )
          alt_22 = 2

        end
        case alt_22
        when 1
          # at line 131:37: func_call
          @state.following.push( TOKENS_FOLLOWING_func_call_IN_class_1032 )
          func_call
          @state.following.pop

        when 2
          # at line 131:48: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_class_1035 )
          var_dec
          @state.following.pop

        else
          match_count_22 > 0 and break
          eee = EarlyExit(22)


          raise eee
        end
        match_count_22 += 1
      end


      match( R_END, TOKENS_FOLLOWING_R_END_IN_class_1040 )
      match( CLASS, TOKENS_FOLLOWING_CLASS_IN_class_1042 )

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
    # 133:1: method_call : ID DOT ( func_call | ID ) DOT ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      begin
      # at line 133:14: ID DOT ( func_call | ID ) DOT
      match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1049 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_1051 )
      # at line 133:21: ( func_call | ID )
      alt_23 = 2
      look_23_0 = @input.peek( 1 )

      if ( look_23_0 == ID )
        look_23_1 = @input.peek( 2 )

        if ( look_23_1 == LPAR )
          alt_23 = 1
        elsif ( look_23_1 == DOT )
          alt_23 = 2
        else
          raise NoViableAlternative( "", 23, 1 )

        end
      else
        raise NoViableAlternative( "", 23, 0 )

      end
      case alt_23
      when 1
        # at line 133:22: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_method_call_1054 )
        func_call
        @state.following.pop

      when 2
        # at line 133:34: ID
        match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1058 )

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_1061 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 24 )


      end

      return 
    end



    TOKENS_FOLLOWING_class_IN_start_495 = Set[ 8, 35 ]
    TOKENS_FOLLOWING_program_IN_start_500 = Set[ 1 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_507 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_program_509 = Set[ 9 ]
    TOKENS_FOLLOWING_COLON_IN_program_511 = Set[ 11, 17, 21, 22, 34, 37, 47 ]
    TOKENS_FOLLOWING_estatute_IN_program_515 = Set[ 11, 17, 21, 22, 34, 37, 41, 47 ]
    TOKENS_FOLLOWING_var_dec_IN_program_519 = Set[ 11, 17, 21, 22, 34, 37, 41, 47 ]
    TOKENS_FOLLOWING_R_END_IN_program_524 = Set[ 35 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_526 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatute_533 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatute_537 = Set[ 1 ]
    TOKENS_FOLLOWING_reading_IN_estatute_541 = Set[ 1 ]
    TOKENS_FOLLOWING_writing_IN_estatute_545 = Set[ 1 ]
    TOKENS_FOLLOWING_assignment_IN_estatute_549 = Set[ 1 ]
    TOKENS_FOLLOWING_loops_IN_estatute_553 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatute_557 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_var_dec_564 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_var_dec_566 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_var_dec_568 = Set[ 40, 42, 43, 44 ]
    TOKENS_FOLLOWING_type_IN_var_dec_570 = Set[ 6, 13, 25 ]
    TOKENS_FOLLOWING_ASGN_IN_var_dec_574 = Set[ 21, 27 ]
    TOKENS_FOLLOWING_expresion_IN_var_dec_576 = Set[ 13 ]
    TOKENS_FOLLOWING_array_dec_IN_var_dec_580 = Set[ 13 ]
    TOKENS_FOLLOWING_DOT_IN_var_dec_585 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_assignment_592 = Set[ 6, 25 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_596 = Set[ 21, 27 ]
    TOKENS_FOLLOWING_expresion_IN_assignment_600 = Set[ 13 ]
    TOKENS_FOLLOWING_func_call_IN_assignment_604 = Set[ 13 ]
    TOKENS_FOLLOWING_array_dec_IN_assignment_610 = Set[ 6 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_612 = Set[ 40, 42, 43, 44 ]
    TOKENS_FOLLOWING_type_IN_assignment_614 = Set[ 13 ]
    TOKENS_FOLLOWING_DOT_IN_assignment_618 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACK_IN_array_dec_625 = Set[ 21, 27 ]
    TOKENS_FOLLOWING_exp_IN_array_dec_627 = Set[ 10, 36 ]
    TOKENS_FOLLOWING_COMMA_IN_array_dec_631 = Set[ 21, 27 ]
    TOKENS_FOLLOWING_exp_IN_array_dec_633 = Set[ 10, 36 ]
    TOKENS_FOLLOWING_RBRACK_IN_array_dec_638 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_645 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_condition_647 = Set[ 21, 27 ]
    TOKENS_FOLLOWING_expresion_IN_condition_649 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_condition_651 = Set[ 9 ]
    TOKENS_FOLLOWING_COLON_IN_condition_653 = Set[ 14, 17, 21, 22, 34, 37, 38, 41, 47 ]
    TOKENS_FOLLOWING_estatute_IN_condition_657 = Set[ 14, 38, 41 ]
    TOKENS_FOLLOWING_RETURN_IN_condition_664 = Set[ 21, 27 ]
    TOKENS_FOLLOWING_expresion_IN_condition_666 = Set[ 13 ]
    TOKENS_FOLLOWING_DOT_IN_condition_668 = Set[ 14, 41 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_675 = Set[ 9 ]
    TOKENS_FOLLOWING_block_IN_condition_677 = Set[ 22 ]
    TOKENS_FOLLOWING_R_END_IN_condition_681 = Set[ 22 ]
    TOKENS_FOLLOWING_IF_IN_condition_685 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_loops_692 = Set[ 1 ]
    TOKENS_FOLLOWING_for_loop_IN_loops_696 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_703 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_while_loop_705 = Set[ 21, 27 ]
    TOKENS_FOLLOWING_expresion_IN_while_loop_707 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_while_loop_709 = Set[ 9 ]
    TOKENS_FOLLOWING_block_IN_while_loop_711 = Set[ 47 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_713 = Set[ 1 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_720 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_722 = Set[ 23 ]
    TOKENS_FOLLOWING_IN_IN_for_loop_724 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_726 = Set[ 9 ]
    TOKENS_FOLLOWING_block_IN_for_loop_728 = Set[ 17 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_730 = Set[ 1 ]
    TOKENS_FOLLOWING_READ_IN_reading_737 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_reading_739 = Set[ 7, 16, 24, 45 ]
    TOKENS_FOLLOWING_value_IN_reading_741 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_reading_743 = Set[ 13 ]
    TOKENS_FOLLOWING_DOT_IN_reading_745 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_writing_752 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_writing_754 = Set[ 21, 27 ]
    TOKENS_FOLLOWING_expresion_IN_writing_756 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_writing_758 = Set[ 13 ]
    TOKENS_FOLLOWING_DOT_IN_writing_760 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_parameters_767 = Set[ 40, 42, 43, 44 ]
    TOKENS_FOLLOWING_type_IN_parameters_769 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_parameters_771 = Set[ 10, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_parameters_775 = Set[ 40, 42, 43, 44 ]
    TOKENS_FOLLOWING_type_IN_parameters_777 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_parameters_779 = Set[ 10, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_parameters_784 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_791 = Set[ 40, 42, 43, 44, 46 ]
    TOKENS_FOLLOWING_type_IN_function_795 = Set[ 21 ]
    TOKENS_FOLLOWING_VOID_IN_function_799 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_function_803 = Set[ 27 ]
    TOKENS_FOLLOWING_parameters_IN_function_805 = Set[ 9 ]
    TOKENS_FOLLOWING_COLON_IN_function_807 = Set[ 11, 17, 21, 22, 34, 37, 38, 47 ]
    TOKENS_FOLLOWING_estatute_IN_function_811 = Set[ 11, 17, 21, 22, 34, 37, 38, 47 ]
    TOKENS_FOLLOWING_var_dec_IN_function_815 = Set[ 11, 17, 21, 22, 34, 37, 38, 47 ]
    TOKENS_FOLLOWING_RETURN_IN_function_820 = Set[ 21, 27 ]
    TOKENS_FOLLOWING_expresion_IN_function_822 = Set[ 13 ]
    TOKENS_FOLLOWING_DOT_IN_function_824 = Set[ 41 ]
    TOKENS_FOLLOWING_R_END_IN_function_826 = Set[ 18 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_828 = Set[ 1 ]
    TOKENS_FOLLOWING_COLON_IN_block_835 = Set[ 17, 21, 22, 34, 37, 38, 41, 47 ]
    TOKENS_FOLLOWING_estatute_IN_block_839 = Set[ 17, 21, 22, 34, 37, 38, 41, 47 ]
    TOKENS_FOLLOWING_RETURN_IN_block_846 = Set[ 21, 27 ]
    TOKENS_FOLLOWING_expresion_IN_block_848 = Set[ 13 ]
    TOKENS_FOLLOWING_DOT_IN_block_850 = Set[ 41 ]
    TOKENS_FOLLOWING_R_END_IN_block_855 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_862 = Set[ 27 ]
    TOKENS_FOLLOWING_parameters_IN_func_call_864 = Set[ 13 ]
    TOKENS_FOLLOWING_DOT_IN_func_call_866 = Set[ 1 ]
    TOKENS_FOLLOWING_exp_IN_expresion_873 = Set[ 1, 4, 15, 19, 26, 30, 32 ]
    TOKENS_FOLLOWING_set_IN_expresion_877 = Set[ 21, 27 ]
    TOKENS_FOLLOWING_exp_IN_expresion_902 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_exp_912 = Set[ 1, 28, 33 ]
    TOKENS_FOLLOWING_set_IN_exp_916 = Set[ 21, 27 ]
    TOKENS_FOLLOWING_term_IN_exp_926 = Set[ 1, 28, 33 ]
    TOKENS_FOLLOWING_ID_IN_factor_936 = Set[ 25 ]
    TOKENS_FOLLOWING_array_dec_IN_factor_938 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_942 = Set[ 21, 27 ]
    TOKENS_FOLLOWING_expresion_IN_factor_944 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_946 = Set[ 1 ]
    TOKENS_FOLLOWING_factor_IN_term_953 = Set[ 1, 12, 29 ]
    TOKENS_FOLLOWING_set_IN_term_957 = Set[ 21, 27 ]
    TOKENS_FOLLOWING_factor_IN_term_967 = Set[ 1, 12, 29 ]
    TOKENS_FOLLOWING_CLASS_IN_class_1015 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_class_1017 = Set[ 9, 20 ]
    TOKENS_FOLLOWING_HER_IN_class_1021 = Set[ 21 ]
    TOKENS_FOLLOWING_ID_IN_class_1023 = Set[ 9 ]
    TOKENS_FOLLOWING_COLON_IN_class_1028 = Set[ 11, 21 ]
    TOKENS_FOLLOWING_func_call_IN_class_1032 = Set[ 11, 21, 41 ]
    TOKENS_FOLLOWING_var_dec_IN_class_1035 = Set[ 11, 21, 41 ]
    TOKENS_FOLLOWING_R_END_IN_class_1040 = Set[ 8 ]
    TOKENS_FOLLOWING_CLASS_IN_class_1042 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1049 = Set[ 13 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_1051 = Set[ 21 ]
    TOKENS_FOLLOWING_func_call_IN_method_call_1054 = Set[ 13 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1058 = Set[ 13 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_1061 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
