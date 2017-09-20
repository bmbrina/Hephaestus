#!/usr/bin/env ruby
#
# Hephaestus.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Hephaestus.g
# Generated at: 2017-09-20 15:31:04
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
                   :FUNCTION => 17, :GREATER => 18, :ID => 19, :IF => 20, 
                   :IN => 21, :INTEGER => 22, :LBRACK => 23, :LESS => 24, 
                   :LPAR => 25, :MINUS => 26, :MULT => 27, :NEQ => 28, :NEWLINE => 29, 
                   :OR => 30, :PLUS => 31, :PRINT => 32, :PROGRAM => 33, 
                   :RBRACK => 34, :READ => 35, :RETURN => 36, :RPAR => 37, 
                   :R_BOOL => 38, :R_END => 39, :R_FLOAT => 40, :R_INTEGER => 41, 
                   :R_STRING => 42, :STRING => 43, :VOID => 44, :WHILE => 45, 
                   :WS => 46 )


    # register the proper human-readable name or literal value
    # for each token type
    #
    # this is necessary because anonymous tokens, which are
    # created from literal values in the grammar, do not
    # have descriptive names
    register_names( "AND", "AS", "ASGN", "BOOL", "COLON", "COMMA", "DEFINE", 
                    "DIV", "DOT", "ELSE", "EQ", "FLOAT", "FOR", "FUNCTION", 
                    "GREATER", "ID", "IF", "IN", "INTEGER", "LBRACK", "LESS", 
                    "LPAR", "MINUS", "MULT", "NEQ", "NEWLINE", "OR", "PLUS", 
                    "PRINT", "PROGRAM", "RBRACK", "READ", "RETURN", "RPAR", 
                    "R_BOOL", "R_END", "R_FLOAT", "R_INTEGER", "R_STRING", 
                    "STRING", "VOID", "WHILE", "WS" )


  end


  class Parser < ANTLR3::Parser
    @grammar_home = Hephaestus

    RULE_METHODS = [ :program, :block, :estatute, :declaration, :assignment, 
                     :reading, :writing, :condition, :loops, :while_loop, 
                     :for_loop, :type, :function, :expresion, :exp, :term, 
                     :factor, :value ].freeze

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
    # parser rule program
    #
    # (in Hephaestus.g)
    # 85:1: program : PROGRAM ID block PROGRAM ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 85:10: PROGRAM ID block PROGRAM
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_481 )
      match( ID, TOKENS_FOLLOWING_ID_IN_program_483 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_program_485 )
      block
      @state.following.pop
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_487 )

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
    # parser rule block
    #
    # (in Hephaestus.g)
    # 87:1: block : COLON ( ( estatute )* ( ( RETURN ) ( ID ) DOT )? ) R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      begin
      # at line 87:8: COLON ( ( estatute )* ( ( RETURN ) ( ID ) DOT )? ) R_END
      match( COLON, TOKENS_FOLLOWING_COLON_IN_block_494 )
      # at line 87:14: ( ( estatute )* ( ( RETURN ) ( ID ) DOT )? )
      # at line 87:16: ( estatute )* ( ( RETURN ) ( ID ) DOT )?
      # at line 87:16: ( estatute )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == DEFINE || look_1_0.between?( FOR, FUNCTION ) || look_1_0.between?( ID, IF ) || look_1_0 == PRINT || look_1_0 == READ || look_1_0 == WHILE )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 87:18: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_block_500 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 1
        end
      end # loop for decision 1

      # at line 87:30: ( ( RETURN ) ( ID ) DOT )?
      alt_2 = 2
      look_2_0 = @input.peek( 1 )

      if ( look_2_0 == RETURN )
        alt_2 = 1
      end
      case alt_2
      when 1
        # at line 87:32: ( RETURN ) ( ID ) DOT
        # at line 87:32: ( RETURN )
        # at line 87:34: RETURN
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_block_509 )

        # at line 87:43: ( ID )
        # at line 87:45: ID
        match( ID, TOKENS_FOLLOWING_ID_IN_block_515 )

        match( DOT, TOKENS_FOLLOWING_DOT_IN_block_519 )

      end

      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_526 )

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
    # 89:1: estatute : ( declaration | condition | reading | writing | assignment | loops | function );
    #
    def estatute
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      begin
      # at line 89:9: ( declaration | condition | reading | writing | assignment | loops | function )
      alt_3 = 7
      case look_3 = @input.peek( 1 )
      when DEFINE then alt_3 = 1
      when IF then alt_3 = 2
      when READ then alt_3 = 3
      when PRINT then alt_3 = 4
      when ID then alt_3 = 5
      when FOR, WHILE then alt_3 = 6
      when FUNCTION then alt_3 = 7
      else
        raise NoViableAlternative( "", 3, 0 )

      end
      case alt_3
      when 1
        # at line 89:11: declaration
        @state.following.push( TOKENS_FOLLOWING_declaration_IN_estatute_534 )
        declaration
        @state.following.pop

      when 2
        # at line 89:25: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatute_538 )
        condition
        @state.following.pop

      when 3
        # at line 89:37: reading
        @state.following.push( TOKENS_FOLLOWING_reading_IN_estatute_542 )
        reading
        @state.following.pop

      when 4
        # at line 89:47: writing
        @state.following.push( TOKENS_FOLLOWING_writing_IN_estatute_546 )
        writing
        @state.following.pop

      when 5
        # at line 89:57: assignment
        @state.following.push( TOKENS_FOLLOWING_assignment_IN_estatute_550 )
        assignment
        @state.following.pop

      when 6
        # at line 89:70: loops
        @state.following.push( TOKENS_FOLLOWING_loops_IN_estatute_554 )
        loops
        @state.following.pop

      when 7
        # at line 89:78: function
        @state.following.push( TOKENS_FOLLOWING_function_IN_estatute_558 )
        function
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
    # parser rule declaration
    #
    # (in Hephaestus.g)
    # 91:1: declaration : DEFINE ID AS type ( ASGN expresion )? DOT ;
    #
    def declaration
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      begin
      # at line 91:14: DEFINE ID AS type ( ASGN expresion )? DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_declaration_565 )
      match( ID, TOKENS_FOLLOWING_ID_IN_declaration_567 )
      match( AS, TOKENS_FOLLOWING_AS_IN_declaration_569 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_declaration_571 )
      type
      @state.following.pop
      # at line 91:32: ( ASGN expresion )?
      alt_4 = 2
      look_4_0 = @input.peek( 1 )

      if ( look_4_0 == ASGN )
        alt_4 = 1
      end
      case alt_4
      when 1
        # at line 91:33: ASGN expresion
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_declaration_574 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_declaration_576 )
        expresion
        @state.following.pop

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_declaration_580 )

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
    # 93:1: assignment : ID ASGN expresion DOT ;
    #
    def assignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      begin
      # at line 93:13: ID ASGN expresion DOT
      match( ID, TOKENS_FOLLOWING_ID_IN_assignment_587 )
      match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_589 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_assignment_591 )
      expresion
      @state.following.pop
      match( DOT, TOKENS_FOLLOWING_DOT_IN_assignment_593 )

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
    # parser rule reading
    #
    # (in Hephaestus.g)
    # 95:1: reading : READ LPAR value RPAR DOT ;
    #
    def reading
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      begin
      # at line 95:10: READ LPAR value RPAR DOT
      match( READ, TOKENS_FOLLOWING_READ_IN_reading_600 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_reading_602 )
      @state.following.push( TOKENS_FOLLOWING_value_IN_reading_604 )
      value
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_reading_606 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_reading_608 )

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
    # parser rule writing
    #
    # (in Hephaestus.g)
    # 97:1: writing : PRINT LPAR expresion RPAR DOT ;
    #
    def writing
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      begin
      # at line 97:10: PRINT LPAR expresion RPAR DOT
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_writing_615 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_writing_617 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_writing_619 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_writing_621 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_writing_623 )

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
    # parser rule condition
    #
    # (in Hephaestus.g)
    # 99:1: condition : IF LPAR expresion RPAR COLON ( estatute )? ( RETURN ID DOT )? ( ELSE block | R_END ) IF ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      begin
      # at line 99:12: IF LPAR expresion RPAR COLON ( estatute )? ( RETURN ID DOT )? ( ELSE block | R_END ) IF
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_630 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_condition_632 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_condition_634 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_condition_636 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_condition_638 )
      # at line 99:41: ( estatute )?
      alt_5 = 2
      look_5_0 = @input.peek( 1 )

      if ( look_5_0 == DEFINE || look_5_0.between?( FOR, FUNCTION ) || look_5_0.between?( ID, IF ) || look_5_0 == PRINT || look_5_0 == READ || look_5_0 == WHILE )
        alt_5 = 1
      end
      case alt_5
      when 1
        # at line 99:43: estatute
        @state.following.push( TOKENS_FOLLOWING_estatute_IN_condition_642 )
        estatute
        @state.following.pop

      end
      # at line 99:55: ( RETURN ID DOT )?
      alt_6 = 2
      look_6_0 = @input.peek( 1 )

      if ( look_6_0 == RETURN )
        alt_6 = 1
      end
      case alt_6
      when 1
        # at line 99:57: RETURN ID DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_condition_649 )
        match( ID, TOKENS_FOLLOWING_ID_IN_condition_651 )
        match( DOT, TOKENS_FOLLOWING_DOT_IN_condition_653 )

      end
      # at line 99:74: ( ELSE block | R_END )
      alt_7 = 2
      look_7_0 = @input.peek( 1 )

      if ( look_7_0 == ELSE )
        alt_7 = 1
      elsif ( look_7_0 == R_END )
        alt_7 = 2
      else
        raise NoViableAlternative( "", 7, 0 )

      end
      case alt_7
      when 1
        # at line 99:76: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_660 )
        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_662 )
        block
        @state.following.pop

      when 2
        # at line 99:89: R_END
        match( R_END, TOKENS_FOLLOWING_R_END_IN_condition_666 )

      end
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_670 )

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
    # parser rule loops
    #
    # (in Hephaestus.g)
    # 101:1: loops : ( while_loop | for_loop );
    #
    def loops
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      begin
      # at line 101:6: ( while_loop | for_loop )
      alt_8 = 2
      look_8_0 = @input.peek( 1 )

      if ( look_8_0 == WHILE )
        alt_8 = 1
      elsif ( look_8_0 == FOR )
        alt_8 = 2
      else
        raise NoViableAlternative( "", 8, 0 )

      end
      case alt_8
      when 1
        # at line 101:8: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_loops_677 )
        while_loop
        @state.following.pop

      when 2
        # at line 101:21: for_loop
        @state.following.push( TOKENS_FOLLOWING_for_loop_IN_loops_681 )
        for_loop
        @state.following.pop

      end
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
    # parser rule while_loop
    #
    # (in Hephaestus.g)
    # 103:1: while_loop : WHILE LPAR expresion RPAR block WHILE ;
    #
    def while_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      begin
      # at line 103:13: WHILE LPAR expresion RPAR block WHILE
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_688 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_while_loop_690 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_while_loop_692 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_while_loop_694 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_696 )
      block
      @state.following.pop
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_698 )

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
    # parser rule for_loop
    #
    # (in Hephaestus.g)
    # 105:1: for_loop : FOR ID IN ID block FOR ;
    #
    def for_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      begin
      # at line 105:11: FOR ID IN ID block FOR
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_705 )
      match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_707 )
      match( IN, TOKENS_FOLLOWING_IN_IN_for_loop_709 )
      match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_711 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_for_loop_713 )
      block
      @state.following.pop
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_715 )

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
    # parser rule type
    #
    # (in Hephaestus.g)
    # 107:1: type : ( R_STRING | R_BOOL | R_FLOAT | R_INTEGER );
    #
    def type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


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
        # trace_out( __method__, 12 )


      end

      return 
    end



    #
    # parser rule function
    #
    # (in Hephaestus.g)
    # 109:1: function : FUNCTION ( type | VOID ) ID LPAR ( ID | ( ID COMMA )+ ID )? RPAR block FUNCTION ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      begin
      # at line 109:11: FUNCTION ( type | VOID ) ID LPAR ( ID | ( ID COMMA )+ ID )? RPAR block FUNCTION
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_741 )
      # at line 109:20: ( type | VOID )
      alt_9 = 2
      look_9_0 = @input.peek( 1 )

      if ( look_9_0 == R_BOOL || look_9_0.between?( R_FLOAT, R_STRING ) )
        alt_9 = 1
      elsif ( look_9_0 == VOID )
        alt_9 = 2
      else
        raise NoViableAlternative( "", 9, 0 )

      end
      case alt_9
      when 1
        # at line 109:22: type
        @state.following.push( TOKENS_FOLLOWING_type_IN_function_745 )
        type
        @state.following.pop

      when 2
        # at line 109:29: VOID
        match( VOID, TOKENS_FOLLOWING_VOID_IN_function_749 )

      end
      match( ID, TOKENS_FOLLOWING_ID_IN_function_753 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_function_755 )
      # at line 109:44: ( ID | ( ID COMMA )+ ID )?
      alt_11 = 3
      look_11_0 = @input.peek( 1 )

      if ( look_11_0 == ID )
        look_11_1 = @input.peek( 2 )

        if ( look_11_1 == COMMA )
          alt_11 = 2
        elsif ( look_11_1 == RPAR )
          alt_11 = 1
        end
      end
      case alt_11
      when 1
        # at line 109:46: ID
        match( ID, TOKENS_FOLLOWING_ID_IN_function_759 )

      when 2
        # at line 109:51: ( ID COMMA )+ ID
        # at file 109:51: ( ID COMMA )+
        match_count_10 = 0
        while true
          alt_10 = 2
          look_10_0 = @input.peek( 1 )

          if ( look_10_0 == ID )
            look_10_1 = @input.peek( 2 )

            if ( look_10_1 == COMMA )
              alt_10 = 1

            end

          end
          case alt_10
          when 1
            # at line 109:53: ID COMMA
            match( ID, TOKENS_FOLLOWING_ID_IN_function_765 )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_function_767 )

          else
            match_count_10 > 0 and break
            eee = EarlyExit(10)


            raise eee
          end
          match_count_10 += 1
        end


        match( ID, TOKENS_FOLLOWING_ID_IN_function_772 )

      end
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_function_777 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_function_779 )
      block
      @state.following.pop
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_781 )

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
    # parser rule expresion
    #
    # (in Hephaestus.g)
    # 111:1: expresion : exp ( ( GREATER | LESS | NEQ | EQ ) exp )? ;
    #
    def expresion
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      begin
      # at line 111:12: exp ( ( GREATER | LESS | NEQ | EQ ) exp )?
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_788 )
      exp
      @state.following.pop
      # at line 111:16: ( ( GREATER | LESS | NEQ | EQ ) exp )?
      alt_12 = 2
      look_12_0 = @input.peek( 1 )

      if ( look_12_0 == EQ || look_12_0 == GREATER || look_12_0 == LESS || look_12_0 == NEQ )
        alt_12 = 1
      end
      case alt_12
      when 1
        # at line 111:18: ( GREATER | LESS | NEQ | EQ ) exp
        if @input.peek(1) == EQ || @input.peek(1) == GREATER || @input.peek(1) == LESS || @input.peek(1) == NEQ
          @input.consume
          @state.error_recovery = false

        else
          mse = MismatchedSet( nil )
          raise mse

        end


        @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_810 )
        exp
        @state.following.pop

      end

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
    # parser rule exp
    #
    # (in Hephaestus.g)
    # 113:1: exp : term ( ( PLUS | MINUS ) term )* ;
    #
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      begin
      # at line 113:6: term ( ( PLUS | MINUS ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_820 )
      term
      @state.following.pop
      # at line 113:11: ( ( PLUS | MINUS ) term )*
      while true # decision 13
        alt_13 = 2
        look_13_0 = @input.peek( 1 )

        if ( look_13_0 == MINUS || look_13_0 == PLUS )
          alt_13 = 1

        end
        case alt_13
        when 1
          # at line 113:13: ( PLUS | MINUS ) term
          if @input.peek(1) == MINUS || @input.peek(1) == PLUS
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_834 )
          term
          @state.following.pop

        else
          break # out of loop for decision 13
        end
      end # loop for decision 13


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
    # parser rule term
    #
    # (in Hephaestus.g)
    # 115:1: term : factor ( ( MULT | DIV ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      begin
      # at line 115:7: factor ( ( MULT | DIV ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_844 )
      factor
      @state.following.pop
      # at line 115:14: ( ( MULT | DIV ) factor )*
      while true # decision 14
        alt_14 = 2
        look_14_0 = @input.peek( 1 )

        if ( look_14_0 == DIV || look_14_0 == MULT )
          alt_14 = 1

        end
        case alt_14
        when 1
          # at line 115:16: ( MULT | DIV ) factor
          if @input.peek(1) == DIV || @input.peek(1) == MULT
            @input.consume
            @state.error_recovery = false

          else
            mse = MismatchedSet( nil )
            raise mse

          end


          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_858 )
          factor
          @state.following.pop

        else
          break # out of loop for decision 14
        end
      end # loop for decision 14


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
    # parser rule factor
    #
    # (in Hephaestus.g)
    # 117:1: factor : ( ID | value | LPAR expresion RPAR );
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      begin
      # at line 117:7: ( ID | value | LPAR expresion RPAR )
      alt_15 = 3
      case look_15 = @input.peek( 1 )
      when ID then alt_15 = 1
      when BOOL, FLOAT, INTEGER, STRING then alt_15 = 2
      when LPAR then alt_15 = 3
      else
        raise NoViableAlternative( "", 15, 0 )

      end
      case alt_15
      when 1
        # at line 117:9: ID
        match( ID, TOKENS_FOLLOWING_ID_IN_factor_868 )

      when 2
        # at line 117:14: value
        @state.following.push( TOKENS_FOLLOWING_value_IN_factor_872 )
        value
        @state.following.pop

      when 3
        # at line 117:22: LPAR expresion RPAR
        match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_876 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_factor_878 )
        expresion
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_880 )

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
    # parser rule value
    #
    # (in Hephaestus.g)
    # 119:1: value : ( STRING | FLOAT | INTEGER | BOOL );
    #
    def value
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


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
        # trace_out( __method__, 18 )


      end

      return 
    end



    TOKENS_FOLLOWING_PROGRAM_IN_program_481 = Set[ 19 ]
    TOKENS_FOLLOWING_ID_IN_program_483 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_program_485 = Set[ 33 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_487 = Set[ 1 ]
    TOKENS_FOLLOWING_COLON_IN_block_494 = Set[ 10, 16, 17, 19, 20, 32, 35, 36, 39, 45 ]
    TOKENS_FOLLOWING_estatute_IN_block_500 = Set[ 10, 16, 17, 19, 20, 32, 35, 36, 39, 45 ]
    TOKENS_FOLLOWING_RETURN_IN_block_509 = Set[ 19 ]
    TOKENS_FOLLOWING_ID_IN_block_515 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_block_519 = Set[ 39 ]
    TOKENS_FOLLOWING_R_END_IN_block_526 = Set[ 1 ]
    TOKENS_FOLLOWING_declaration_IN_estatute_534 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatute_538 = Set[ 1 ]
    TOKENS_FOLLOWING_reading_IN_estatute_542 = Set[ 1 ]
    TOKENS_FOLLOWING_writing_IN_estatute_546 = Set[ 1 ]
    TOKENS_FOLLOWING_assignment_IN_estatute_550 = Set[ 1 ]
    TOKENS_FOLLOWING_loops_IN_estatute_554 = Set[ 1 ]
    TOKENS_FOLLOWING_function_IN_estatute_558 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_declaration_565 = Set[ 19 ]
    TOKENS_FOLLOWING_ID_IN_declaration_567 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_declaration_569 = Set[ 38, 40, 41, 42 ]
    TOKENS_FOLLOWING_type_IN_declaration_571 = Set[ 6, 12 ]
    TOKENS_FOLLOWING_ASGN_IN_declaration_574 = Set[ 7, 15, 19, 22, 25, 43 ]
    TOKENS_FOLLOWING_expresion_IN_declaration_576 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_declaration_580 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_assignment_587 = Set[ 6 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_589 = Set[ 7, 15, 19, 22, 25, 43 ]
    TOKENS_FOLLOWING_expresion_IN_assignment_591 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_assignment_593 = Set[ 1 ]
    TOKENS_FOLLOWING_READ_IN_reading_600 = Set[ 25 ]
    TOKENS_FOLLOWING_LPAR_IN_reading_602 = Set[ 7, 15, 22, 43 ]
    TOKENS_FOLLOWING_value_IN_reading_604 = Set[ 37 ]
    TOKENS_FOLLOWING_RPAR_IN_reading_606 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_reading_608 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_writing_615 = Set[ 25 ]
    TOKENS_FOLLOWING_LPAR_IN_writing_617 = Set[ 7, 15, 19, 22, 25, 43 ]
    TOKENS_FOLLOWING_expresion_IN_writing_619 = Set[ 37 ]
    TOKENS_FOLLOWING_RPAR_IN_writing_621 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_writing_623 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_630 = Set[ 25 ]
    TOKENS_FOLLOWING_LPAR_IN_condition_632 = Set[ 7, 15, 19, 22, 25, 43 ]
    TOKENS_FOLLOWING_expresion_IN_condition_634 = Set[ 37 ]
    TOKENS_FOLLOWING_RPAR_IN_condition_636 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_condition_638 = Set[ 10, 13, 16, 17, 19, 20, 32, 35, 36, 39, 45 ]
    TOKENS_FOLLOWING_estatute_IN_condition_642 = Set[ 13, 36, 39 ]
    TOKENS_FOLLOWING_RETURN_IN_condition_649 = Set[ 19 ]
    TOKENS_FOLLOWING_ID_IN_condition_651 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_condition_653 = Set[ 13, 39 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_660 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_condition_662 = Set[ 20 ]
    TOKENS_FOLLOWING_R_END_IN_condition_666 = Set[ 20 ]
    TOKENS_FOLLOWING_IF_IN_condition_670 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_loops_677 = Set[ 1 ]
    TOKENS_FOLLOWING_for_loop_IN_loops_681 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_688 = Set[ 25 ]
    TOKENS_FOLLOWING_LPAR_IN_while_loop_690 = Set[ 7, 15, 19, 22, 25, 43 ]
    TOKENS_FOLLOWING_expresion_IN_while_loop_692 = Set[ 37 ]
    TOKENS_FOLLOWING_RPAR_IN_while_loop_694 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_while_loop_696 = Set[ 45 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_698 = Set[ 1 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_705 = Set[ 19 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_707 = Set[ 21 ]
    TOKENS_FOLLOWING_IN_IN_for_loop_709 = Set[ 19 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_711 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_for_loop_713 = Set[ 16 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_715 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_741 = Set[ 38, 40, 41, 42, 44 ]
    TOKENS_FOLLOWING_type_IN_function_745 = Set[ 19 ]
    TOKENS_FOLLOWING_VOID_IN_function_749 = Set[ 19 ]
    TOKENS_FOLLOWING_ID_IN_function_753 = Set[ 25 ]
    TOKENS_FOLLOWING_LPAR_IN_function_755 = Set[ 19, 37 ]
    TOKENS_FOLLOWING_ID_IN_function_759 = Set[ 37 ]
    TOKENS_FOLLOWING_ID_IN_function_765 = Set[ 9 ]
    TOKENS_FOLLOWING_COMMA_IN_function_767 = Set[ 19 ]
    TOKENS_FOLLOWING_ID_IN_function_772 = Set[ 37 ]
    TOKENS_FOLLOWING_RPAR_IN_function_777 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_function_779 = Set[ 17 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_781 = Set[ 1 ]
    TOKENS_FOLLOWING_exp_IN_expresion_788 = Set[ 1, 14, 18, 24, 28 ]
    TOKENS_FOLLOWING_set_IN_expresion_792 = Set[ 7, 15, 19, 22, 25, 43 ]
    TOKENS_FOLLOWING_exp_IN_expresion_810 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_exp_820 = Set[ 1, 26, 31 ]
    TOKENS_FOLLOWING_set_IN_exp_824 = Set[ 7, 15, 19, 22, 25, 43 ]
    TOKENS_FOLLOWING_term_IN_exp_834 = Set[ 1, 26, 31 ]
    TOKENS_FOLLOWING_factor_IN_term_844 = Set[ 1, 11, 27 ]
    TOKENS_FOLLOWING_set_IN_term_848 = Set[ 7, 15, 19, 22, 25, 43 ]
    TOKENS_FOLLOWING_factor_IN_term_858 = Set[ 1, 11, 27 ]
    TOKENS_FOLLOWING_ID_IN_factor_868 = Set[ 1 ]
    TOKENS_FOLLOWING_value_IN_factor_872 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_876 = Set[ 7, 15, 19, 22, 25, 43 ]
    TOKENS_FOLLOWING_expresion_IN_factor_878 = Set[ 37 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_880 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
