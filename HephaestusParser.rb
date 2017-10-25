#!/usr/bin/env ruby
#
# Hephaestus.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Hephaestus.g
# Generated at: 2017-10-25 13:11:37
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
                     :value, :r_class, :heritage, :method_call ].freeze

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
      $class_aux


    # - - - - - - - - - - - - Rules - - - - - - - - - - - - -

    #
    # parser rule start
    #
    # (in Hephaestus.g)
    # 98:1: start : ( r_class )* program ;
    #
    def start
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 99:5: ( r_class )* program
      # at line 99:5: ( r_class )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == R_CLASS )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 99:7: r_class
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
    # 102:1: program : PROGRAM ID COLON ( estatute | var_dec | function )* R_END PROGRAM ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      begin
      # at line 103:5: PROGRAM ID COLON ( estatute | var_dec | function )* R_END PROGRAM
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_524 )
      match( ID, TOKENS_FOLLOWING_ID_IN_program_526 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_program_528 )
      # at line 103:22: ( estatute | var_dec | function )*
      while true # decision 2
        alt_2 = 4
        case look_2 = @input.peek( 1 )
        when FOR, ID, IF, PRINT, READ, WHILE then alt_2 = 1
        when DEFINE then alt_2 = 2
        when FUNCTION then alt_2 = 3
        end
        case alt_2
        when 1
          # at line 103:24: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_program_532 )
          estatute
          @state.following.pop

        when 2
          # at line 104:24: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_program_557 )
          var_dec
          @state.following.pop

        when 3
          # at line 105:24: function
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
    # 109:1: estatute : ( func_call DOT | condition | reading | writing | assignment | loops | method_call );
    #
    def estatute
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      begin
      # at line 110:3: ( func_call DOT | condition | reading | writing | assignment | loops | method_call )
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
        # at line 110:5: func_call DOT
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatute_644 )
        func_call
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_estatute_646 )

      when 2
        # at line 111:5: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatute_652 )
        condition
        @state.following.pop

      when 3
        # at line 112:5: reading
        @state.following.push( TOKENS_FOLLOWING_reading_IN_estatute_658 )
        reading
        @state.following.pop

      when 4
        # at line 113:5: writing
        @state.following.push( TOKENS_FOLLOWING_writing_IN_estatute_664 )
        writing
        @state.following.pop

      when 5
        # at line 114:5: assignment
        @state.following.push( TOKENS_FOLLOWING_assignment_IN_estatute_670 )
        assignment
        @state.following.pop

      when 6
        # at line 115:5: loops
        @state.following.push( TOKENS_FOLLOWING_loops_IN_estatute_676 )
        loops
        @state.following.pop

      when 7
        # at line 116:5: method_call
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
    # 119:1: var_dec : DEFINE ID AS type ( ASGN ( expresion | func_call ) )? DOT ;
    #
    def var_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      __ID1__ = nil
      type2 = nil


      begin
      # at line 120:5: DEFINE ID AS type ( ASGN ( expresion | func_call ) )? DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_var_dec_695 )
      __ID1__ = match( ID, TOKENS_FOLLOWING_ID_IN_var_dec_697 )
      match( AS, TOKENS_FOLLOWING_AS_IN_var_dec_699 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_var_dec_701 )
      type2 = type
      @state.following.pop

      # --> action
       $program.add_variable(__ID1__.text, ( type2 && @input.to_s( type2.start, type2.stop ) ),nil) 
      # <-- action

      # at line 121:30: ( ASGN ( expresion | func_call ) )?
      alt_5 = 2
      look_5_0 = @input.peek( 1 )

      if ( look_5_0 == ASGN )
        alt_5 = 1
      end
      case alt_5
      when 1
        # at line 121:32: ASGN ( expresion | func_call )
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_var_dec_736 )
        # at line 121:37: ( expresion | func_call )
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
          # at line 121:39: expresion
          @state.following.push( TOKENS_FOLLOWING_expresion_IN_var_dec_740 )
          expresion
          @state.following.pop

        when 2
          # at line 122:32: func_call
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
    # 127:1: assignment : ID ( ASGN ( expresion | func_call ) | array_dec ASGN type ) DOT ;
    #
    def assignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      begin
      # at line 128:5: ID ( ASGN ( expresion | func_call ) | array_dec ASGN type ) DOT
      match( ID, TOKENS_FOLLOWING_ID_IN_assignment_844 )
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
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_848 )
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
          @state.following.push( TOKENS_FOLLOWING_expresion_IN_assignment_852 )
          expresion
          @state.following.pop

        when 2
          # at line 129:17: func_call
          @state.following.push( TOKENS_FOLLOWING_func_call_IN_assignment_870 )
          func_call
          @state.following.pop

        end

      when 2
        # at line 130:17: array_dec ASGN type
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
    # 134:1: array_dec : LBRACK exp ( COMMA exp )? RBRACK ;
    #
    def array_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      begin
      # at line 135:5: LBRACK exp ( COMMA exp )? RBRACK
      match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_array_dec_918 )
      @state.following.push( TOKENS_FOLLOWING_exp_IN_array_dec_920 )
      exp
      @state.following.pop
      # at line 135:16: ( COMMA exp )?
      alt_8 = 2
      look_8_0 = @input.peek( 1 )

      if ( look_8_0 == COMMA )
        alt_8 = 1
      end
      case alt_8
      when 1
        # at line 135:18: COMMA exp
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
    # 138:1: condition : IF LPAR expresion RPAR COLON ( estatute )? ( RETURN expresion DOT )? ( ELSE block | R_END ) IF ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      begin
      # at line 139:5: IF LPAR expresion RPAR COLON ( estatute )? ( RETURN expresion DOT )? ( ELSE block | R_END ) IF
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_944 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_condition_946 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_condition_948 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_condition_950 )

      # --> action
       $quads.gotof() 
      # <-- action

      match( COLON, TOKENS_FOLLOWING_COLON_IN_condition_954 )
      # at line 139:54: ( estatute )?
      alt_9 = 2
      look_9_0 = @input.peek( 1 )

      if ( look_9_0 == FOR || look_9_0.between?( ID, IF ) || look_9_0 == PRINT || look_9_0 == READ || look_9_0 == WHILE )
        alt_9 = 1
      end
      case alt_9
      when 1
        # at line 139:56: estatute
        @state.following.push( TOKENS_FOLLOWING_estatute_IN_condition_958 )
        estatute
        @state.following.pop

      end
      # at line 139:68: ( RETURN expresion DOT )?
      alt_10 = 2
      look_10_0 = @input.peek( 1 )

      if ( look_10_0 == RETURN )
        alt_10 = 1
      end
      case alt_10
      when 1
        # at line 139:70: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_condition_965 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_condition_967 )
        expresion
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_condition_969 )

      end
      # at line 139:94: ( ELSE block | R_END )
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
        # at line 139:96: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_976 )

        # --> action
         $quads.goto() 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_980 )
        block
        @state.following.pop

      when 2
        # at line 140:96: R_END
        match( R_END, TOKENS_FOLLOWING_R_END_IN_condition_1078 )

      end

      # --> action
       $quads.fill_quad() 
      # <-- action

      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1084 )

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
    # 143:1: loops : ( while_loop | for_loop );
    #
    def loops
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      begin
      # at line 144:3: ( while_loop | for_loop )
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
        # at line 144:5: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_loops_1098 )
        while_loop
        @state.following.pop

      when 2
        # at line 145:5: for_loop
        @state.following.push( TOKENS_FOLLOWING_for_loop_IN_loops_1104 )
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
    # 148:1: while_loop : WHILE LPAR expresion RPAR block WHILE ;
    #
    def while_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      begin
      # at line 149:5: WHILE LPAR expresion RPAR block WHILE
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1117 )

      # --> action
       $quads.add_jump() 
      # <-- action

      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_while_loop_1121 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_while_loop_1123 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_while_loop_1125 )

      # --> action
       $quads.gotof() 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_1129 )
      block
      @state.following.pop
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1131 )

      # --> action
       $quads.goto_while()
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



    #
    # parser rule for_loop
    #
    # (in Hephaestus.g)
    # 152:1: for_loop : FOR ID IN ID block FOR ;
    #
    def for_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      begin
      # at line 153:5: FOR ID IN ID block FOR
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_1146 )
      match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_1148 )
      match( IN, TOKENS_FOLLOWING_IN_IN_for_loop_1150 )
      match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_1152 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_for_loop_1154 )
      block
      @state.following.pop
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_1156 )

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
    # 156:1: reading : READ LPAR value RPAR DOT ;
    #
    def reading
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      begin
      # at line 157:5: READ LPAR value RPAR DOT
      match( READ, TOKENS_FOLLOWING_READ_IN_reading_1169 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_reading_1171 )
      @state.following.push( TOKENS_FOLLOWING_value_IN_reading_1173 )
      value
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_reading_1175 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_reading_1177 )

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
    # 160:1: writing : PRINT LPAR expresion RPAR DOT ;
    #
    def writing
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      begin
      # at line 161:5: PRINT LPAR expresion RPAR DOT
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_writing_1190 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_writing_1192 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_writing_1194 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_writing_1196 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_writing_1198 )

      # --> action
       $quads.write()
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

    ParametersReturnValue = define_return_scope

    #
    # parser rule parameters
    #
    # (in Hephaestus.g)
    # 164:1: parameters : LPAR ( type ( ID | value ) ( COMMA type ( ID | value ) )* )? RPAR ;
    #
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      return_value = ParametersReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 165:5: LPAR ( type ( ID | value ) ( COMMA type ( ID | value ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_parameters_1213 )
      # at line 165:10: ( type ( ID | value ) ( COMMA type ( ID | value ) )* )?
      alt_16 = 2
      look_16_0 = @input.peek( 1 )

      if ( look_16_0 == ID || look_16_0 == R_BOOL || look_16_0.between?( R_FLOAT, R_STRING ) || look_16_0 == VOID )
        alt_16 = 1
      end
      case alt_16
      when 1
        # at line 165:12: type ( ID | value ) ( COMMA type ( ID | value ) )*
        @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1217 )
        type
        @state.following.pop
        # at line 165:17: ( ID | value )
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
          # at line 165:19: ID
          match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1221 )

        when 2
          # at line 166:19: value
          @state.following.push( TOKENS_FOLLOWING_value_IN_parameters_1241 )
          value
          @state.following.pop

        end
        # at line 167:19: ( COMMA type ( ID | value ) )*
        while true # decision 15
          alt_15 = 2
          look_15_0 = @input.peek( 1 )

          if ( look_15_0 == COMMA )
            alt_15 = 1

          end
          case alt_15
          when 1
            # at line 167:21: COMMA type ( ID | value )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_parameters_1263 )
            @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1265 )
            type
            @state.following.pop
            # at line 167:32: ( ID | value )
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
              # at line 167:34: ID
              match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1269 )

            when 2
              # at line 168:34: value
              @state.following.push( TOKENS_FOLLOWING_value_IN_parameters_1304 )
              value
              @state.following.pop

            end

          else
            break # out of loop for decision 15
          end
        end # loop for decision 15


      end
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_parameters_1372 )

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
    # 174:1: function : FUNCTION ( type ) ID parameters COLON ( estatute | var_dec )* ( RETURN expresion DOT )? R_END FUNCTION ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      __ID3__ = nil
      parameters4 = nil
      type5 = nil


      begin
      # at line 175:5: FUNCTION ( type ) ID parameters COLON ( estatute | var_dec )* ( RETURN expresion DOT )? R_END FUNCTION
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1385 )
      # at line 175:14: ( type )
      # at line 175:16: type
      @state.following.push( TOKENS_FOLLOWING_type_IN_function_1389 )
      type5 = type
      @state.following.pop

      __ID3__ = match( ID, TOKENS_FOLLOWING_ID_IN_function_1393 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_1395 )
      parameters4 = parameters
      @state.following.pop
      match( COLON, TOKENS_FOLLOWING_COLON_IN_function_1397 )

      # --> action
       $program.add_function(__ID3__.text, ( parameters4 && @input.to_s( parameters4.start, parameters4.stop ) ), ( type5 && @input.to_s( type5.start, type5.stop ) ))
      # <-- action

      # at line 176:43: ( estatute | var_dec )*
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
          # at line 176:45: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_function_1445 )
          estatute
          @state.following.pop

        when 2
          # at line 177:45: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_function_1491 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 17
        end
      end # loop for decision 17

      # at line 178:46: ( RETURN expresion DOT )?
      alt_18 = 2
      look_18_0 = @input.peek( 1 )

      if ( look_18_0 == RETURN )
        alt_18 = 1
      end
      case alt_18
      when 1
        # at line 178:48: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_function_1540 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_function_1542 )
        expresion
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_function_1544 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_1549 )
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1551 )

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
    # 181:1: block : COLON ( estatute )* ( RETURN expresion DOT )? R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      begin
      # at line 182:5: COLON ( estatute )* ( RETURN expresion DOT )? R_END
      match( COLON, TOKENS_FOLLOWING_COLON_IN_block_1564 )
      # at line 182:11: ( estatute )*
      while true # decision 19
        alt_19 = 2
        look_19_0 = @input.peek( 1 )

        if ( look_19_0 == FOR || look_19_0.between?( ID, IF ) || look_19_0 == PRINT || look_19_0 == READ || look_19_0 == WHILE )
          alt_19 = 1

        end
        case alt_19
        when 1
          # at line 182:13: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_block_1568 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 19
        end
      end # loop for decision 19

      # at line 182:25: ( RETURN expresion DOT )?
      alt_20 = 2
      look_20_0 = @input.peek( 1 )

      if ( look_20_0 == RETURN )
        alt_20 = 1
      end
      case alt_20
      when 1
        # at line 182:27: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_block_1575 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_block_1577 )
        expresion
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_block_1579 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_1584 )

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
    # 185:1: func_call : ID parameters ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      begin
      # at line 186:5: ID parameters
      match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1597 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_func_call_1599 )
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
    # 189:1: expresion : exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )? ;
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
      # at line 190:5: exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_1612 )
      exp
      @state.following.pop
      # at line 190:9: ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      alt_22 = 2
      look_22_0 = @input.peek( 1 )

      if ( look_22_0 == AND || look_22_0 == EQ || look_22_0 == GREATER || look_22_0 == LESS || look_22_0 == NEQ || look_22_0 == OR )
        alt_22 = 1
      end
      case alt_22
      when 1
        # at line 190:11: ( GREATER | LESS | NEQ | EQ | AND | OR ) exp
        # at line 190:11: ( GREATER | LESS | NEQ | EQ | AND | OR )
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
          # at line 190:13: GREATER
          __GREATER6__ = match( GREATER, TOKENS_FOLLOWING_GREATER_IN_expresion_1618 )

          # --> action
           $quads.add_operator(__GREATER6__.text) 
          # <-- action


        when 2
          # at line 191:13: LESS
          __LESS7__ = match( LESS, TOKENS_FOLLOWING_LESS_IN_expresion_1634 )

          # --> action
           $quads.add_operator(__LESS7__.text) 
          # <-- action


        when 3
          # at line 192:13: NEQ
          __NEQ8__ = match( NEQ, TOKENS_FOLLOWING_NEQ_IN_expresion_1650 )

          # --> action
           $quads.add_operator(__NEQ8__.text) 
          # <-- action


        when 4
          # at line 193:13: EQ
          __EQ9__ = match( EQ, TOKENS_FOLLOWING_EQ_IN_expresion_1666 )

          # --> action
           $quads.add_operator(__EQ9__.text) 
          # <-- action


        when 5
          # at line 194:13: AND
          __AND10__ = match( AND, TOKENS_FOLLOWING_AND_IN_expresion_1682 )

          # --> action
           $quads.add_operator(__AND10__.text) 
          # <-- action


        when 6
          # at line 195:13: OR
          __OR11__ = match( OR, TOKENS_FOLLOWING_OR_IN_expresion_1698 )

          # --> action
           $quads.add_operator(__OR11__.text) 
          # <-- action


        end
        @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_1714 )
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
    # 200:1: exp : term ( ( PLUS | MINUS ) term )* ;
    #
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


      __PLUS12__ = nil
      __MINUS13__ = nil


      begin
      # at line 201:5: term ( ( PLUS | MINUS ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1740 )
      term
      @state.following.pop
      # at line 201:10: ( ( PLUS | MINUS ) term )*
      while true # decision 24
        alt_24 = 2
        look_24_0 = @input.peek( 1 )

        if ( look_24_0 == MINUS || look_24_0 == PLUS )
          alt_24 = 1

        end
        case alt_24
        when 1
          # at line 201:12: ( PLUS | MINUS ) term
          # at line 201:12: ( PLUS | MINUS )
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
            # at line 201:14: PLUS
            __PLUS12__ = match( PLUS, TOKENS_FOLLOWING_PLUS_IN_exp_1746 )

            # --> action
             $quads.add_operator(__PLUS12__.text) 
            # <-- action


          when 2
            # at line 202:14: MINUS
            __MINUS13__ = match( MINUS, TOKENS_FOLLOWING_MINUS_IN_exp_1763 )

            # --> action
             $quads.add_operator(__MINUS13__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1780 )
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
    # 207:1: term : factor ( ( MULT | DIV ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      __MULT14__ = nil
      __DIV15__ = nil


      begin
      # at line 208:5: factor ( ( MULT | DIV ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1807 )
      factor
      @state.following.pop
      # at line 208:12: ( ( MULT | DIV ) factor )*
      while true # decision 26
        alt_26 = 2
        look_26_0 = @input.peek( 1 )

        if ( look_26_0 == DIV || look_26_0 == MULT )
          alt_26 = 1

        end
        case alt_26
        when 1
          # at line 208:14: ( MULT | DIV ) factor
          # at line 208:14: ( MULT | DIV )
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
            # at line 208:16: MULT
            __MULT14__ = match( MULT, TOKENS_FOLLOWING_MULT_IN_term_1813 )

            # --> action
             $quads.add_operator(__MULT14__.text) 
            # <-- action


          when 2
            # at line 209:16: DIV
            __DIV15__ = match( DIV, TOKENS_FOLLOWING_DIV_IN_term_1832 )

            # --> action
             $quads.add_operator(__DIV15__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1851 )
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
    # 214:1: factor : ( ID ( array_dec )? | LPAR expresion RPAR | value );
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      __ID16__ = nil
      __LPAR17__ = nil
      value18 = nil


      begin
      # at line 215:3: ( ID ( array_dec )? | LPAR expresion RPAR | value )
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
        # at line 215:5: ID ( array_dec )?
        __ID16__ = match( ID, TOKENS_FOLLOWING_ID_IN_factor_1880 )
        # at line 215:8: ( array_dec )?
        alt_27 = 2
        look_27_0 = @input.peek( 1 )

        if ( look_27_0 == LBRACK )
          alt_27 = 1
        end
        case alt_27
        when 1
          # at line 215:10: array_dec
          @state.following.push( TOKENS_FOLLOWING_array_dec_IN_factor_1884 )
          array_dec
          @state.following.pop

        end

        # --> action
         $quads.add_id(__ID16__.text, nil) 
        # <-- action


      when 2
        # at line 216:7: LPAR expresion RPAR
        __LPAR17__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_1897 )

        # --> action
         $quads.add_false_bottom(__LPAR17__.text) 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_expresion_IN_factor_1901 )
        expresion
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_1903 )

        # --> action
         $quads.remove_false_bottom() 
        # <-- action


      when 3
        # at line 217:7: value
        @state.following.push( TOKENS_FOLLOWING_value_IN_factor_1913 )
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

    ValueReturnValue = define_return_scope

    #
    # parser rule value
    #
    # (in Hephaestus.g)
    # 230:1: value : ( STRING | FLOAT | INTEGER | BOOL );
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
    # 237:1: r_class : R_CLASS ID ( heritage )? COLON ( function | var_dec )* R_END R_CLASS ;
    #
    def r_class
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )


      __ID19__ = nil


      begin
      # at line 238:5: R_CLASS ID ( heritage )? COLON ( function | var_dec )* R_END R_CLASS
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_2003 )
      __ID19__ = match( ID, TOKENS_FOLLOWING_ID_IN_r_class_2005 )

      # --> action
       $class_aux = __ID19__.text 
      # <-- action


      # --> action
       $program.add_class(__ID19__.text, nil) 
      # <-- action

      # at line 238:82: ( heritage )?
      alt_29 = 2
      look_29_0 = @input.peek( 1 )

      if ( look_29_0 == HER )
        alt_29 = 1
      end
      case alt_29
      when 1
        # at line 238:82: heritage
        @state.following.push( TOKENS_FOLLOWING_heritage_IN_r_class_2011 )
        heritage
        @state.following.pop

      end
      match( COLON, TOKENS_FOLLOWING_COLON_IN_r_class_2015 )
      # at line 238:99: ( function | var_dec )*
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
          # at line 238:101: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_r_class_2019 )
          function
          @state.following.pop

        when 2
          # at line 239:74: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_r_class_2094 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 30
        end
      end # loop for decision 30

      match( R_END, TOKENS_FOLLOWING_R_END_IN_r_class_2170 )
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_2172 )

      # --> action
       $program.reset_class_context() 
      # <-- action


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
    # parser rule heritage
    #
    # (in Hephaestus.g)
    # 243:1: heritage : ( HER ID ) ;
    #
    def heritage
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      __ID20__ = nil


      begin
      # at line 244:5: ( HER ID )
      # at line 244:5: ( HER ID )
      # at line 244:7: HER ID
      match( HER, TOKENS_FOLLOWING_HER_IN_heritage_2189 )
      __ID20__ = match( ID, TOKENS_FOLLOWING_ID_IN_heritage_2191 )


      # --> action
       $program.main_context.classes_directory.classes[$class_aux].inherits_of = __ID20__.text 
      # <-- action


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
    # parser rule method_call
    #
    # (in Hephaestus.g)
    # 247:1: method_call : ID DOT ( func_call | ID ) DOT ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )


      begin
      # at line 248:5: ID DOT ( func_call | ID ) DOT
      match( ID, TOKENS_FOLLOWING_ID_IN_method_call_2208 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_2210 )
      # at line 248:12: ( func_call | ID )
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
        # at line 248:14: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_method_call_2214 )
        func_call
        @state.following.pop

      when 2
        # at line 249:14: ID
        match( ID, TOKENS_FOLLOWING_ID_IN_method_call_2229 )

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_2244 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 25 )


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
    TOKENS_FOLLOWING_COLON_IN_condition_954 = Set[ 13, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_condition_958 = Set[ 13, 38, 42 ]
    TOKENS_FOLLOWING_RETURN_IN_condition_965 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_condition_967 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_condition_969 = Set[ 13, 42 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_976 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_condition_980 = Set[ 21 ]
    TOKENS_FOLLOWING_R_END_IN_condition_1078 = Set[ 21 ]
    TOKENS_FOLLOWING_IF_IN_condition_1084 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_loops_1098 = Set[ 1 ]
    TOKENS_FOLLOWING_for_loop_IN_loops_1104 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1117 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_while_loop_1121 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_while_loop_1123 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_while_loop_1125 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_while_loop_1129 = Set[ 48 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1131 = Set[ 1 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_1146 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_1148 = Set[ 22 ]
    TOKENS_FOLLOWING_IN_IN_for_loop_1150 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_1152 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_for_loop_1154 = Set[ 16 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_1156 = Set[ 1 ]
    TOKENS_FOLLOWING_READ_IN_reading_1169 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_reading_1171 = Set[ 7, 15, 23, 46 ]
    TOKENS_FOLLOWING_value_IN_reading_1173 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_reading_1175 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_reading_1177 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_writing_1190 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_writing_1192 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_writing_1194 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_writing_1196 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_writing_1198 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_parameters_1213 = Set[ 20, 39, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_parameters_1217 = Set[ 7, 15, 20, 23, 46 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1221 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_value_IN_parameters_1241 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_parameters_1263 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_parameters_1265 = Set[ 7, 15, 20, 23, 46 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1269 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_value_IN_parameters_1304 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_parameters_1372 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1385 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_function_1389 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_function_1393 = Set[ 27 ]
    TOKENS_FOLLOWING_parameters_IN_function_1395 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_function_1397 = Set[ 10, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_function_1445 = Set[ 10, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_var_dec_IN_function_1491 = Set[ 10, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_RETURN_IN_function_1540 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_function_1542 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_function_1544 = Set[ 42 ]
    TOKENS_FOLLOWING_R_END_IN_function_1549 = Set[ 17 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1551 = Set[ 1 ]
    TOKENS_FOLLOWING_COLON_IN_block_1564 = Set[ 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_block_1568 = Set[ 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_RETURN_IN_block_1575 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_block_1577 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_block_1579 = Set[ 42 ]
    TOKENS_FOLLOWING_R_END_IN_block_1584 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1597 = Set[ 27 ]
    TOKENS_FOLLOWING_parameters_IN_func_call_1599 = Set[ 1 ]
    TOKENS_FOLLOWING_exp_IN_expresion_1612 = Set[ 1, 4, 14, 18, 25, 30, 32 ]
    TOKENS_FOLLOWING_GREATER_IN_expresion_1618 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_LESS_IN_expresion_1634 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_NEQ_IN_expresion_1650 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_EQ_IN_expresion_1666 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_AND_IN_expresion_1682 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_OR_IN_expresion_1698 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_expresion_1714 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_exp_1740 = Set[ 1, 28, 33 ]
    TOKENS_FOLLOWING_PLUS_IN_exp_1746 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_MINUS_IN_exp_1763 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_term_IN_exp_1780 = Set[ 1, 28, 33 ]
    TOKENS_FOLLOWING_factor_IN_term_1807 = Set[ 1, 11, 29 ]
    TOKENS_FOLLOWING_MULT_IN_term_1813 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_DIV_IN_term_1832 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_factor_IN_term_1851 = Set[ 1, 11, 29 ]
    TOKENS_FOLLOWING_ID_IN_factor_1880 = Set[ 1, 24 ]
    TOKENS_FOLLOWING_array_dec_IN_factor_1884 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_1897 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_factor_1901 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_1903 = Set[ 1 ]
    TOKENS_FOLLOWING_value_IN_factor_1913 = Set[ 1 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_2003 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_r_class_2005 = Set[ 8, 19 ]
    TOKENS_FOLLOWING_heritage_IN_r_class_2011 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_r_class_2015 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_function_IN_r_class_2019 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_var_dec_IN_r_class_2094 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_R_END_IN_r_class_2170 = Set[ 41 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_2172 = Set[ 1 ]
    TOKENS_FOLLOWING_HER_IN_heritage_2189 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_heritage_2191 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_2208 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_2210 = Set[ 20 ]
    TOKENS_FOLLOWING_func_call_IN_method_call_2214 = Set[ 12 ]
    TOKENS_FOLLOWING_ID_IN_method_call_2229 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_2244 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
