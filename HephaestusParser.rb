#!/usr/bin/env ruby
#
# Hephaestus.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Hephaestus.g
# Generated at: 2017-10-19 20:49:16
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
    # 87:1: start : ( r_class )* ( function )* program ;
    #
    def start
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 87:8: ( r_class )* ( function )* program
      # at line 87:8: ( r_class )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == R_CLASS )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 87:10: r_class
          @state.following.push( TOKENS_FOLLOWING_r_class_IN_start_495 )
          r_class
          @state.following.pop

        else
          break # out of loop for decision 1
        end
      end # loop for decision 1

      # at line 87:21: ( function )*
      while true # decision 2
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0 == FUNCTION )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 87:23: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_start_502 )
          function
          @state.following.pop

        else
          break # out of loop for decision 2
        end
      end # loop for decision 2

      @state.following.push( TOKENS_FOLLOWING_program_IN_start_507 )
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
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_514 )
      match( ID, TOKENS_FOLLOWING_ID_IN_program_516 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_program_518 )
      # at file 89:27: ( estatute | var_dec )+
      match_count_3 = 0
      while true
        alt_3 = 3
        look_3_0 = @input.peek( 1 )

        if ( look_3_0 == FOR || look_3_0.between?( ID, IF ) || look_3_0 == PRINT || look_3_0 == READ || look_3_0 == WHILE )
          alt_3 = 1
        elsif ( look_3_0 == DEFINE )
          alt_3 = 2

        end
        case alt_3
        when 1
          # at line 89:29: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_program_522 )
          estatute
          @state.following.pop

        when 2
          # at line 89:40: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_program_526 )
          var_dec
          @state.following.pop

        else
          match_count_3 > 0 and break
          eee = EarlyExit(3)


          raise eee
        end
        match_count_3 += 1
      end


      match( R_END, TOKENS_FOLLOWING_R_END_IN_program_531 )
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_533 )

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
        # at line 91:11: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatute_540 )
        func_call
        @state.following.pop

      when 2
        # at line 91:23: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatute_544 )
        condition
        @state.following.pop

      when 3
        # at line 91:35: reading
        @state.following.push( TOKENS_FOLLOWING_reading_IN_estatute_548 )
        reading
        @state.following.pop

      when 4
        # at line 91:45: writing
        @state.following.push( TOKENS_FOLLOWING_writing_IN_estatute_552 )
        writing
        @state.following.pop

      when 5
        # at line 91:55: assignment
        @state.following.push( TOKENS_FOLLOWING_assignment_IN_estatute_556 )
        assignment
        @state.following.pop

      when 6
        # at line 91:68: loops
        @state.following.push( TOKENS_FOLLOWING_loops_IN_estatute_560 )
        loops
        @state.following.pop

      when 7
        # at line 91:76: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatute_564 )
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
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_var_dec_571 )
      match( ID, TOKENS_FOLLOWING_ID_IN_var_dec_573 )
      match( AS, TOKENS_FOLLOWING_AS_IN_var_dec_575 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_var_dec_577 )
      type
      @state.following.pop
      # at line 93:28: ( ASGN expresion | array_dec )?
      alt_5 = 3
      look_5_0 = @input.peek( 1 )

      if ( look_5_0 == ASGN )
        alt_5 = 1
      elsif ( look_5_0 == LBRACK )
        alt_5 = 2
      end
      case alt_5
      when 1
        # at line 93:30: ASGN expresion
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_var_dec_581 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_var_dec_583 )
        expresion
        @state.following.pop

      when 2
        # at line 93:47: array_dec
        @state.following.push( TOKENS_FOLLOWING_array_dec_IN_var_dec_587 )
        array_dec
        @state.following.pop

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_var_dec_592 )

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
      match( ID, TOKENS_FOLLOWING_ID_IN_assignment_599 )
      # at line 95:16: ( ASGN ( expresion | func_call ) | array_dec ASGN type )
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
        # at line 95:18: ASGN ( expresion | func_call )
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_603 )
        # at line 95:23: ( expresion | func_call )
        alt_6 = 2
        look_6_0 = @input.peek( 1 )

        if ( look_6_0 == ID )
          look_6_1 = @input.peek( 2 )

          if ( look_6_1 == LBRACK )
            alt_6 = 1
          elsif ( look_6_1 == LPAR )
            alt_6 = 2
          else
            raise NoViableAlternative( "", 6, 1 )

          end
        elsif ( look_6_0 == LPAR )
          alt_6 = 1
        else
          raise NoViableAlternative( "", 6, 0 )

        end
        case alt_6
        when 1
          # at line 95:25: expresion
          @state.following.push( TOKENS_FOLLOWING_expresion_IN_assignment_607 )
          expresion
          @state.following.pop

        when 2
          # at line 95:37: func_call
          @state.following.push( TOKENS_FOLLOWING_func_call_IN_assignment_611 )
          func_call
          @state.following.pop

        end

      when 2
        # at line 95:51: array_dec ASGN type
        @state.following.push( TOKENS_FOLLOWING_array_dec_IN_assignment_617 )
        array_dec
        @state.following.pop
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_619 )
        @state.following.push( TOKENS_FOLLOWING_type_IN_assignment_621 )
        type
        @state.following.pop

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_assignment_625 )

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
      match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_array_dec_632 )
      @state.following.push( TOKENS_FOLLOWING_exp_IN_array_dec_634 )
      exp
      @state.following.pop
      # at line 97:23: ( COMMA exp )*
      while true # decision 8
        alt_8 = 2
        look_8_0 = @input.peek( 1 )

        if ( look_8_0 == COMMA )
          alt_8 = 1

        end
        case alt_8
        when 1
          # at line 97:25: COMMA exp
          match( COMMA, TOKENS_FOLLOWING_COMMA_IN_array_dec_638 )
          @state.following.push( TOKENS_FOLLOWING_exp_IN_array_dec_640 )
          exp
          @state.following.pop

        else
          break # out of loop for decision 8
        end
      end # loop for decision 8

      match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_array_dec_645 )

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
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_652 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_condition_654 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_condition_656 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_condition_658 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_condition_660 )
      # at line 99:41: ( estatute )?
      alt_9 = 2
      look_9_0 = @input.peek( 1 )

      if ( look_9_0 == FOR || look_9_0.between?( ID, IF ) || look_9_0 == PRINT || look_9_0 == READ || look_9_0 == WHILE )
        alt_9 = 1
      end
      case alt_9
      when 1
        # at line 99:43: estatute
        @state.following.push( TOKENS_FOLLOWING_estatute_IN_condition_664 )
        estatute
        @state.following.pop

      end
      # at line 99:55: ( RETURN expresion DOT )?
      alt_10 = 2
      look_10_0 = @input.peek( 1 )

      if ( look_10_0 == RETURN )
        alt_10 = 1
      end
      case alt_10
      when 1
        # at line 99:57: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_condition_671 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_condition_673 )
        expresion
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_condition_675 )

      end
      # at line 99:81: ( ELSE block | R_END )
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
        # at line 99:83: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_682 )
        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_684 )
        block
        @state.following.pop

      when 2
        # at line 99:96: R_END
        match( R_END, TOKENS_FOLLOWING_R_END_IN_condition_688 )

      end
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_692 )

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
        # at line 101:8: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_loops_699 )
        while_loop
        @state.following.pop

      when 2
        # at line 101:21: for_loop
        @state.following.push( TOKENS_FOLLOWING_for_loop_IN_loops_703 )
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
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_710 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_while_loop_712 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_while_loop_714 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_while_loop_716 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_718 )
      block
      @state.following.pop
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_720 )

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
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_727 )
      match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_729 )
      match( IN, TOKENS_FOLLOWING_IN_IN_for_loop_731 )
      match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_733 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_for_loop_735 )
      block
      @state.following.pop
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_737 )

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
      match( READ, TOKENS_FOLLOWING_READ_IN_reading_744 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_reading_746 )
      @state.following.push( TOKENS_FOLLOWING_value_IN_reading_748 )
      value
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_reading_750 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_reading_752 )

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
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_writing_759 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_writing_761 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_writing_763 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_writing_765 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_writing_767 )

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
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_parameters_774 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_776 )
      type
      @state.following.pop
      match( ID, TOKENS_FOLLOWING_ID_IN_parameters_778 )
      # at line 111:26: ( COMMA type ID )*
      while true # decision 13
        alt_13 = 2
        look_13_0 = @input.peek( 1 )

        if ( look_13_0 == COMMA )
          alt_13 = 1

        end
        case alt_13
        when 1
          # at line 111:28: COMMA type ID
          match( COMMA, TOKENS_FOLLOWING_COMMA_IN_parameters_782 )
          @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_784 )
          type
          @state.following.pop
          match( ID, TOKENS_FOLLOWING_ID_IN_parameters_786 )

        else
          break # out of loop for decision 13
        end
      end # loop for decision 13

      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_parameters_791 )

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
    # 113:1: function : FUNCTION ( type | VOID ) ID parameters COLON ( estatute | var_dec )* ( RETURN expresion DOT )? R_END FUNCTION ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      begin
      # at line 113:11: FUNCTION ( type | VOID ) ID parameters COLON ( estatute | var_dec )* ( RETURN expresion DOT )? R_END FUNCTION
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_798 )
      # at line 113:20: ( type | VOID )
      alt_14 = 2
      look_14_0 = @input.peek( 1 )

      if ( look_14_0 == R_BOOL || look_14_0.between?( R_FLOAT, R_STRING ) )
        alt_14 = 1
      elsif ( look_14_0 == VOID )
        alt_14 = 2
      else
        raise NoViableAlternative( "", 14, 0 )

      end
      case alt_14
      when 1
        # at line 113:22: type
        @state.following.push( TOKENS_FOLLOWING_type_IN_function_802 )
        type
        @state.following.pop

      when 2
        # at line 113:29: VOID
        match( VOID, TOKENS_FOLLOWING_VOID_IN_function_806 )

      end
      match( ID, TOKENS_FOLLOWING_ID_IN_function_810 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_812 )
      parameters
      @state.following.pop
      match( COLON, TOKENS_FOLLOWING_COLON_IN_function_814 )
      # at line 113:56: ( estatute | var_dec )*
      while true # decision 15
        alt_15 = 3
        look_15_0 = @input.peek( 1 )

        if ( look_15_0 == FOR || look_15_0.between?( ID, IF ) || look_15_0 == PRINT || look_15_0 == READ || look_15_0 == WHILE )
          alt_15 = 1
        elsif ( look_15_0 == DEFINE )
          alt_15 = 2

        end
        case alt_15
        when 1
          # at line 113:58: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_function_818 )
          estatute
          @state.following.pop

        when 2
          # at line 113:69: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_function_822 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 15
        end
      end # loop for decision 15

      # at line 113:80: ( RETURN expresion DOT )?
      alt_16 = 2
      look_16_0 = @input.peek( 1 )

      if ( look_16_0 == RETURN )
        alt_16 = 1
      end
      case alt_16
      when 1
        # at line 113:82: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_function_829 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_function_831 )
        expresion
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_function_833 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_838 )
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_840 )

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
      match( COLON, TOKENS_FOLLOWING_COLON_IN_block_847 )
      # at line 115:14: ( estatute )*
      while true # decision 17
        alt_17 = 2
        look_17_0 = @input.peek( 1 )

        if ( look_17_0 == FOR || look_17_0.between?( ID, IF ) || look_17_0 == PRINT || look_17_0 == READ || look_17_0 == WHILE )
          alt_17 = 1

        end
        case alt_17
        when 1
          # at line 115:16: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_block_851 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 17
        end
      end # loop for decision 17

      # at line 115:28: ( RETURN expresion DOT )?
      alt_18 = 2
      look_18_0 = @input.peek( 1 )

      if ( look_18_0 == RETURN )
        alt_18 = 1
      end
      case alt_18
      when 1
        # at line 115:30: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_block_858 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_block_860 )
        expresion
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_block_862 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_867 )

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
      match( ID, TOKENS_FOLLOWING_ID_IN_func_call_874 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_func_call_876 )
      parameters
      @state.following.pop
      match( DOT, TOKENS_FOLLOWING_DOT_IN_func_call_878 )

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
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_885 )
      exp
      @state.following.pop
      # at line 119:16: ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      alt_19 = 2
      look_19_0 = @input.peek( 1 )

      if ( look_19_0 == AND || look_19_0 == EQ || look_19_0 == GREATER || look_19_0 == LESS || look_19_0 == NEQ || look_19_0 == OR )
        alt_19 = 1
      end
      case alt_19
      when 1
        # at line 119:18: ( GREATER | LESS | NEQ | EQ | AND | OR ) exp
        if @input.peek(1) == AND || @input.peek(1) == EQ || @input.peek(1) == GREATER || @input.peek(1) == LESS || @input.peek(1) == NEQ || @input.peek(1) == OR
          @input.consume
          @state.error_recovery = false

        else
          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_914 )
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
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_924 )
      term
      @state.following.pop
      # at line 121:11: ( ( PLUS | MINUS ) term )*
      while true # decision 20
        alt_20 = 2
        look_20_0 = @input.peek( 1 )

        if ( look_20_0 == MINUS || look_20_0 == PLUS )
          alt_20 = 1

        end
        case alt_20
        when 1
          # at line 121:13: ( PLUS | MINUS ) term
          if @input.peek(1) == MINUS || @input.peek(1) == PLUS
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_938 )
          term
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
      alt_21 = 2
      look_21_0 = @input.peek( 1 )

      if ( look_21_0 == ID )
        alt_21 = 1
      elsif ( look_21_0 == LPAR )
        alt_21 = 2
      else
        raise NoViableAlternative( "", 21, 0 )

      end
      case alt_21
      when 1
        # at line 123:9: ID array_dec
        match( ID, TOKENS_FOLLOWING_ID_IN_factor_948 )
        @state.following.push( TOKENS_FOLLOWING_array_dec_IN_factor_950 )
        array_dec
        @state.following.pop

      when 2
        # at line 123:24: LPAR expresion RPAR
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_954 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_factor_956 )
        expresion
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_958 )

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
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_965 )
      factor
      @state.following.pop
      # at line 125:14: ( ( MULT | DIV ) factor )*
      while true # decision 22
        alt_22 = 2
        look_22_0 = @input.peek( 1 )

        if ( look_22_0 == DIV || look_22_0 == MULT )
          alt_22 = 1

        end
        case alt_22
        when 1
          # at line 125:16: ( MULT | DIV ) factor
          if @input.peek(1) == DIV || @input.peek(1) == MULT
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_979 )
          factor
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
    # parser rule r_class
    #
    # (in Hephaestus.g)
    # 131:1: r_class : R_CLASS ID ( HER ID )? COLON ( function | var_dec )+ R_END R_CLASS ;
    #
    def r_class
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )


      begin
      # at line 131:10: R_CLASS ID ( HER ID )? COLON ( function | var_dec )+ R_END R_CLASS
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_1027 )
      match( ID, TOKENS_FOLLOWING_ID_IN_r_class_1029 )
      # at line 131:21: ( HER ID )?
      alt_23 = 2
      look_23_0 = @input.peek( 1 )

      if ( look_23_0 == HER )
        alt_23 = 1
      end
      case alt_23
      when 1
        # at line 131:23: HER ID
        match( HER, TOKENS_FOLLOWING_HER_IN_r_class_1033 )
        match( ID, TOKENS_FOLLOWING_ID_IN_r_class_1035 )

      end
      match( COLON, TOKENS_FOLLOWING_COLON_IN_r_class_1040 )
      # at file 131:39: ( function | var_dec )+
      match_count_24 = 0
      while true
        alt_24 = 3
        look_24_0 = @input.peek( 1 )

        if ( look_24_0 == FUNCTION )
          alt_24 = 1
        elsif ( look_24_0 == DEFINE )
          alt_24 = 2

        end
        case alt_24
        when 1
          # at line 131:41: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_r_class_1044 )
          function
          @state.following.pop

        when 2
          # at line 131:52: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_r_class_1048 )
          var_dec
          @state.following.pop

        else
          match_count_24 > 0 and break
          eee = EarlyExit(24)


          raise eee
        end
        match_count_24 += 1
      end


      match( R_END, TOKENS_FOLLOWING_R_END_IN_r_class_1053 )
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_1055 )

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
      match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1062 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_1064 )
      # at line 133:21: ( func_call | ID )
      alt_25 = 2
      look_25_0 = @input.peek( 1 )

      if ( look_25_0 == ID )
        look_25_1 = @input.peek( 2 )

        if ( look_25_1 == LPAR )
          alt_25 = 1
        elsif ( look_25_1 == DOT )
          alt_25 = 2
        else
          raise NoViableAlternative( "", 25, 1 )

        end
      else
        raise NoViableAlternative( "", 25, 0 )

      end
      case alt_25
      when 1
        # at line 133:22: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_method_call_1067 )
        func_call
        @state.following.pop

      when 2
        # at line 133:34: ID
        match( ID, TOKENS_FOLLOWING_ID_IN_method_call_1071 )

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_1074 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 24 )


      end

      return 
    end



    TOKENS_FOLLOWING_r_class_IN_start_495 = Set[ 17, 34, 40 ]
    TOKENS_FOLLOWING_function_IN_start_502 = Set[ 17, 34 ]
    TOKENS_FOLLOWING_program_IN_start_507 = Set[ 1 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_514 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_program_516 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_program_518 = Set[ 10, 16, 20, 21, 33, 36, 47 ]
    TOKENS_FOLLOWING_estatute_IN_program_522 = Set[ 10, 16, 20, 21, 33, 36, 41, 47 ]
    TOKENS_FOLLOWING_var_dec_IN_program_526 = Set[ 10, 16, 20, 21, 33, 36, 41, 47 ]
    TOKENS_FOLLOWING_R_END_IN_program_531 = Set[ 34 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_533 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatute_540 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatute_544 = Set[ 1 ]
    TOKENS_FOLLOWING_reading_IN_estatute_548 = Set[ 1 ]
    TOKENS_FOLLOWING_writing_IN_estatute_552 = Set[ 1 ]
    TOKENS_FOLLOWING_assignment_IN_estatute_556 = Set[ 1 ]
    TOKENS_FOLLOWING_loops_IN_estatute_560 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatute_564 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_var_dec_571 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_var_dec_573 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_var_dec_575 = Set[ 39, 42, 43, 44 ]
    TOKENS_FOLLOWING_type_IN_var_dec_577 = Set[ 6, 12, 24 ]
    TOKENS_FOLLOWING_ASGN_IN_var_dec_581 = Set[ 20, 26 ]
    TOKENS_FOLLOWING_expresion_IN_var_dec_583 = Set[ 12 ]
    TOKENS_FOLLOWING_array_dec_IN_var_dec_587 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_var_dec_592 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_assignment_599 = Set[ 6, 24 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_603 = Set[ 20, 26 ]
    TOKENS_FOLLOWING_expresion_IN_assignment_607 = Set[ 12 ]
    TOKENS_FOLLOWING_func_call_IN_assignment_611 = Set[ 12 ]
    TOKENS_FOLLOWING_array_dec_IN_assignment_617 = Set[ 6 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_619 = Set[ 39, 42, 43, 44 ]
    TOKENS_FOLLOWING_type_IN_assignment_621 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_assignment_625 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACK_IN_array_dec_632 = Set[ 20, 26 ]
    TOKENS_FOLLOWING_exp_IN_array_dec_634 = Set[ 9, 35 ]
    TOKENS_FOLLOWING_COMMA_IN_array_dec_638 = Set[ 20, 26 ]
    TOKENS_FOLLOWING_exp_IN_array_dec_640 = Set[ 9, 35 ]
    TOKENS_FOLLOWING_RBRACK_IN_array_dec_645 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_652 = Set[ 26 ]
    TOKENS_FOLLOWING_LPAR_IN_condition_654 = Set[ 20, 26 ]
    TOKENS_FOLLOWING_expresion_IN_condition_656 = Set[ 38 ]
    TOKENS_FOLLOWING_RPAR_IN_condition_658 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_condition_660 = Set[ 13, 16, 20, 21, 33, 36, 37, 41, 47 ]
    TOKENS_FOLLOWING_estatute_IN_condition_664 = Set[ 13, 37, 41 ]
    TOKENS_FOLLOWING_RETURN_IN_condition_671 = Set[ 20, 26 ]
    TOKENS_FOLLOWING_expresion_IN_condition_673 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_condition_675 = Set[ 13, 41 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_682 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_condition_684 = Set[ 21 ]
    TOKENS_FOLLOWING_R_END_IN_condition_688 = Set[ 21 ]
    TOKENS_FOLLOWING_IF_IN_condition_692 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_loops_699 = Set[ 1 ]
    TOKENS_FOLLOWING_for_loop_IN_loops_703 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_710 = Set[ 26 ]
    TOKENS_FOLLOWING_LPAR_IN_while_loop_712 = Set[ 20, 26 ]
    TOKENS_FOLLOWING_expresion_IN_while_loop_714 = Set[ 38 ]
    TOKENS_FOLLOWING_RPAR_IN_while_loop_716 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_while_loop_718 = Set[ 47 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_720 = Set[ 1 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_727 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_729 = Set[ 22 ]
    TOKENS_FOLLOWING_IN_IN_for_loop_731 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_733 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_for_loop_735 = Set[ 16 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_737 = Set[ 1 ]
    TOKENS_FOLLOWING_READ_IN_reading_744 = Set[ 26 ]
    TOKENS_FOLLOWING_LPAR_IN_reading_746 = Set[ 7, 15, 23, 45 ]
    TOKENS_FOLLOWING_value_IN_reading_748 = Set[ 38 ]
    TOKENS_FOLLOWING_RPAR_IN_reading_750 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_reading_752 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_writing_759 = Set[ 26 ]
    TOKENS_FOLLOWING_LPAR_IN_writing_761 = Set[ 20, 26 ]
    TOKENS_FOLLOWING_expresion_IN_writing_763 = Set[ 38 ]
    TOKENS_FOLLOWING_RPAR_IN_writing_765 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_writing_767 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_parameters_774 = Set[ 39, 42, 43, 44 ]
    TOKENS_FOLLOWING_type_IN_parameters_776 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_parameters_778 = Set[ 9, 38 ]
    TOKENS_FOLLOWING_COMMA_IN_parameters_782 = Set[ 39, 42, 43, 44 ]
    TOKENS_FOLLOWING_type_IN_parameters_784 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_parameters_786 = Set[ 9, 38 ]
    TOKENS_FOLLOWING_RPAR_IN_parameters_791 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_798 = Set[ 39, 42, 43, 44, 46 ]
    TOKENS_FOLLOWING_type_IN_function_802 = Set[ 20 ]
    TOKENS_FOLLOWING_VOID_IN_function_806 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_function_810 = Set[ 26 ]
    TOKENS_FOLLOWING_parameters_IN_function_812 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_function_814 = Set[ 10, 16, 20, 21, 33, 36, 37, 41, 47 ]
    TOKENS_FOLLOWING_estatute_IN_function_818 = Set[ 10, 16, 20, 21, 33, 36, 37, 41, 47 ]
    TOKENS_FOLLOWING_var_dec_IN_function_822 = Set[ 10, 16, 20, 21, 33, 36, 37, 41, 47 ]
    TOKENS_FOLLOWING_RETURN_IN_function_829 = Set[ 20, 26 ]
    TOKENS_FOLLOWING_expresion_IN_function_831 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_function_833 = Set[ 41 ]
    TOKENS_FOLLOWING_R_END_IN_function_838 = Set[ 17 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_840 = Set[ 1 ]
    TOKENS_FOLLOWING_COLON_IN_block_847 = Set[ 16, 20, 21, 33, 36, 37, 41, 47 ]
    TOKENS_FOLLOWING_estatute_IN_block_851 = Set[ 16, 20, 21, 33, 36, 37, 41, 47 ]
    TOKENS_FOLLOWING_RETURN_IN_block_858 = Set[ 20, 26 ]
    TOKENS_FOLLOWING_expresion_IN_block_860 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_block_862 = Set[ 41 ]
    TOKENS_FOLLOWING_R_END_IN_block_867 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_874 = Set[ 26 ]
    TOKENS_FOLLOWING_parameters_IN_func_call_876 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_func_call_878 = Set[ 1 ]
    TOKENS_FOLLOWING_exp_IN_expresion_885 = Set[ 1, 4, 14, 18, 25, 29, 31 ]
    TOKENS_FOLLOWING_set_IN_expresion_889 = Set[ 20, 26 ]
    TOKENS_FOLLOWING_exp_IN_expresion_914 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_exp_924 = Set[ 1, 27, 32 ]
    TOKENS_FOLLOWING_set_IN_exp_928 = Set[ 20, 26 ]
    TOKENS_FOLLOWING_term_IN_exp_938 = Set[ 1, 27, 32 ]
    TOKENS_FOLLOWING_ID_IN_factor_948 = Set[ 24 ]
    TOKENS_FOLLOWING_array_dec_IN_factor_950 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_954 = Set[ 20, 26 ]
    TOKENS_FOLLOWING_expresion_IN_factor_956 = Set[ 38 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_958 = Set[ 1 ]
    TOKENS_FOLLOWING_factor_IN_term_965 = Set[ 1, 11, 28 ]
    TOKENS_FOLLOWING_set_IN_term_969 = Set[ 20, 26 ]
    TOKENS_FOLLOWING_factor_IN_term_979 = Set[ 1, 11, 28 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_1027 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_r_class_1029 = Set[ 8, 19 ]
    TOKENS_FOLLOWING_HER_IN_r_class_1033 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_r_class_1035 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_r_class_1040 = Set[ 10, 17 ]
    TOKENS_FOLLOWING_function_IN_r_class_1044 = Set[ 10, 17, 41 ]
    TOKENS_FOLLOWING_var_dec_IN_r_class_1048 = Set[ 10, 17, 41 ]
    TOKENS_FOLLOWING_R_END_IN_r_class_1053 = Set[ 40 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_1055 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1062 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_1064 = Set[ 20 ]
    TOKENS_FOLLOWING_func_call_IN_method_call_1067 = Set[ 12 ]
    TOKENS_FOLLOWING_ID_IN_method_call_1071 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_1074 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
