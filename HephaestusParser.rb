#!/usr/bin/env ruby
#
# Hephaestus.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Hephaestus.g
# Generated at: 2017-11-16 17:52:48
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
                     :func_call, :func_call_parameters, :expresion, :exp, 
                     :term, :factor, :type, :value, :r_class, :heritage, 
                     :method_call, :method_call_2, :method_call_parameters ].freeze

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
      $method_aux
      $func_aux


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
      # --> action
       $quads.goto_program() 
      # <-- action

      # at line 99:32: ( r_class )*
      while true # decision 1
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0 == R_CLASS )
          alt_1 = 1

        end
        case alt_1
        when 1
          # at line 99:34: r_class
          @state.following.push( TOKENS_FOLLOWING_r_class_IN_start_502 )
          r_class
          @state.following.pop

        else
          break # out of loop for decision 1
        end
      end # loop for decision 1

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
    # 102:1: program : PROGRAM ID COLON ( estatute | var_dec | function )* R_END PROGRAM ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      begin
      # at line 103:5: PROGRAM ID COLON ( estatute | var_dec | function )* R_END PROGRAM
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_520 )

      # --> action
       $quads.fill_program_quad() 
      # <-- action

      match( ID, TOKENS_FOLLOWING_ID_IN_program_524 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_program_526 )
      # at line 103:54: ( estatute | var_dec | function )*
      while true # decision 2
        alt_2 = 4
        case look_2 = @input.peek( 1 )
        when FOR, ID, IF, PRINT, READ, WHILE then alt_2 = 1
        when DEFINE then alt_2 = 2
        when FUNCTION then alt_2 = 3
        end
        case alt_2
        when 1
          # at line 103:56: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_program_530 )
          estatute
          @state.following.pop

        when 2
          # at line 104:47: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_program_578 )
          var_dec
          @state.following.pop

        when 3
          # at line 105:47: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_program_626 )
          function
          @state.following.pop

        else
          break # out of loop for decision 2
        end
      end # loop for decision 2

      match( R_END, TOKENS_FOLLOWING_R_END_IN_program_675 )
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_677 )

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
      when LPAR then alt_3 = 1
      when ASGN, LBRACK then alt_3 = 5
      when DOT then alt_3 = 7
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
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatute_692 )
        func_call
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_estatute_694 )

      when 2
        # at line 111:5: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatute_700 )
        condition
        @state.following.pop

      when 3
        # at line 112:5: reading
        @state.following.push( TOKENS_FOLLOWING_reading_IN_estatute_706 )
        reading
        @state.following.pop

      when 4
        # at line 113:5: writing
        @state.following.push( TOKENS_FOLLOWING_writing_IN_estatute_712 )
        writing
        @state.following.pop

      when 5
        # at line 114:5: assignment
        @state.following.push( TOKENS_FOLLOWING_assignment_IN_estatute_718 )
        assignment
        @state.following.pop

      when 6
        # at line 115:5: loops
        @state.following.push( TOKENS_FOLLOWING_loops_IN_estatute_724 )
        loops
        @state.following.pop

      when 7
        # at line 116:5: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatute_730 )
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
    # 119:1: var_dec : DEFINE ID AS type ( array_dec )? ( ASGN ( expresion | func_call ) )? DOT ;
    #
    def var_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      __ID1__ = nil
      type2 = nil


      begin
      # at line 120:5: DEFINE ID AS type ( array_dec )? ( ASGN ( expresion | func_call ) )? DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_var_dec_743 )
      __ID1__ = match( ID, TOKENS_FOLLOWING_ID_IN_var_dec_745 )
      match( AS, TOKENS_FOLLOWING_AS_IN_var_dec_747 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_var_dec_749 )
      type2 = type
      @state.following.pop
      # at line 120:23: ( array_dec )?
      alt_4 = 2
      look_4_0 = @input.peek( 1 )

      if ( look_4_0 == LBRACK )
        alt_4 = 1
      end
      case alt_4
      when 1
        # at line 120:24: array_dec
        @state.following.push( TOKENS_FOLLOWING_array_dec_IN_var_dec_752 )
        array_dec
        @state.following.pop

      end

      # --> action
       $program.add_variable(__ID1__.text, ( type2 && @input.to_s( type2.start, type2.stop ) ), nil) 
      # <-- action

      # at line 121:30: ( ASGN ( expresion | func_call ) )?
      alt_6 = 2
      look_6_0 = @input.peek( 1 )

      if ( look_6_0 == ASGN )
        alt_6 = 1
      end
      case alt_6
      when 1
        # at line 121:32: ASGN ( expresion | func_call )
        match( ASGN, TOKENS_FOLLOWING_ASGN_IN_var_dec_789 )
        # at line 121:37: ( expresion | func_call )
        alt_5 = 2
        look_5_0 = @input.peek( 1 )

        if ( look_5_0 == ID )
          look_5_1 = @input.peek( 2 )

          if ( look_5_1 == AND || look_5_1.between?( DIV, DOT ) || look_5_1 == EQ || look_5_1 == GREATER || look_5_1.between?( LBRACK, LESS ) || look_5_1.between?( MINUS, NEQ ) || look_5_1.between?( OR, PLUS ) )
            alt_5 = 1
          elsif ( look_5_1 == LPAR )
            alt_5 = 2
          else
            raise NoViableAlternative( "", 5, 1 )

          end
        elsif ( look_5_0 == BOOL || look_5_0 == FLOAT || look_5_0 == INTEGER || look_5_0 == LPAR || look_5_0 == STRING )
          alt_5 = 1
        else
          raise NoViableAlternative( "", 5, 0 )

        end
        case alt_5
        when 1
          # at line 121:39: expresion
          @state.following.push( TOKENS_FOLLOWING_expresion_IN_var_dec_793 )
          expresion
          @state.following.pop

        when 2
          # at line 122:39: func_call
          @state.following.push( TOKENS_FOLLOWING_func_call_IN_var_dec_833 )
          func_call
          @state.following.pop

        end

      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_var_dec_891 )

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
    # 127:1: assignment : ID ( ASGN ( expresion | func_call ) | array_dec ) DOT ;
    #
    def assignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      __ID3__ = nil
      __ASGN4__ = nil


      begin
      # at line 128:5: ID ( ASGN ( expresion | func_call ) | array_dec ) DOT
      __ID3__ = match( ID, TOKENS_FOLLOWING_ID_IN_assignment_904 )

      # --> action
       $quads.add_id(__ID3__.text, nil) 
      # <-- action

      # at line 128:42: ( ASGN ( expresion | func_call ) | array_dec )
      alt_8 = 2
      look_8_0 = @input.peek( 1 )

      if ( look_8_0 == ASGN )
        alt_8 = 1
      elsif ( look_8_0 == LBRACK )
        alt_8 = 2
      else
        raise NoViableAlternative( "", 8, 0 )

      end
      case alt_8
      when 1
        # at line 128:44: ASGN ( expresion | func_call )
        __ASGN4__ = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_910 )

        # --> action
         $quads.add_operator(__ASGN4__.text) 
        # <-- action


        # --> action
         $quads.variable_exists?(__ID3__.text) 
        # <-- action

        # at line 129:15: ( expresion | func_call )
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0 == ID )
          look_7_1 = @input.peek( 2 )

          if ( look_7_1 == AND || look_7_1.between?( DIV, DOT ) || look_7_1 == EQ || look_7_1 == GREATER || look_7_1.between?( LBRACK, LESS ) || look_7_1.between?( MINUS, NEQ ) || look_7_1.between?( OR, PLUS ) )
            alt_7 = 1
          elsif ( look_7_1 == LPAR )
            alt_7 = 2
          else
            raise NoViableAlternative( "", 7, 1 )

          end
        elsif ( look_7_0 == BOOL || look_7_0 == FLOAT || look_7_0 == INTEGER || look_7_0 == LPAR || look_7_0 == STRING )
          alt_7 = 1
        else
          raise NoViableAlternative( "", 7, 0 )

        end
        case alt_7
        when 1
          # at line 129:17: expresion
          @state.following.push( TOKENS_FOLLOWING_expresion_IN_assignment_934 )
          expresion
          @state.following.pop

        when 2
          # at line 130:17: func_call
          @state.following.push( TOKENS_FOLLOWING_func_call_IN_assignment_952 )
          func_call
          @state.following.pop

        end

      when 2
        # at line 131:17: array_dec
        @state.following.push( TOKENS_FOLLOWING_array_dec_IN_assignment_972 )
        array_dec
        @state.following.pop

      end

      # --> action
       $quads.assgn_quad() 
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_assignment_985 )

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
    # 135:1: array_dec : LBRACK exp ( COMMA exp )? RBRACK ;
    #
    def array_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      begin
      # at line 136:5: LBRACK exp ( COMMA exp )? RBRACK
      match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_array_dec_998 )
      @state.following.push( TOKENS_FOLLOWING_exp_IN_array_dec_1000 )
      exp
      @state.following.pop
      # at line 136:16: ( COMMA exp )?
      alt_9 = 2
      look_9_0 = @input.peek( 1 )

      if ( look_9_0 == COMMA )
        alt_9 = 1
      end
      case alt_9
      when 1
        # at line 136:18: COMMA exp
        match( COMMA, TOKENS_FOLLOWING_COMMA_IN_array_dec_1004 )
        @state.following.push( TOKENS_FOLLOWING_exp_IN_array_dec_1006 )
        exp
        @state.following.pop

      end
      match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_array_dec_1011 )

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
    # 139:1: condition : IF LPAR expresion RPAR COLON ( estatute )? ( ELSE block | R_END ) IF ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      begin
      # at line 140:5: IF LPAR expresion RPAR COLON ( estatute )? ( ELSE block | R_END ) IF
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1024 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_condition_1026 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_condition_1028 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_condition_1030 )

      # --> action
       $quads.gotof() 
      # <-- action

      match( COLON, TOKENS_FOLLOWING_COLON_IN_condition_1034 )
      # at line 140:54: ( estatute )?
      alt_10 = 2
      look_10_0 = @input.peek( 1 )

      if ( look_10_0 == FOR || look_10_0.between?( ID, IF ) || look_10_0 == PRINT || look_10_0 == READ || look_10_0 == WHILE )
        alt_10 = 1
      end
      case alt_10
      when 1
        # at line 140:56: estatute
        @state.following.push( TOKENS_FOLLOWING_estatute_IN_condition_1038 )
        estatute
        @state.following.pop

      end
      # at line 140:68: ( ELSE block | R_END )
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
        # at line 140:70: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_1045 )

        # --> action
         $quads.goto() 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_1049 )
        block
        @state.following.pop

      when 2
        # at line 141:96: R_END
        match( R_END, TOKENS_FOLLOWING_R_END_IN_condition_1147 )

      end

      # --> action
       $quads.fill_quad() 
      # <-- action

      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1153 )

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
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_loops_1167 )
        while_loop
        @state.following.pop

      when 2
        # at line 146:5: for_loop
        @state.following.push( TOKENS_FOLLOWING_for_loop_IN_loops_1173 )
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
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1186 )

      # --> action
       $quads.add_jump() 
      # <-- action

      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_while_loop_1190 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_while_loop_1192 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_while_loop_1194 )

      # --> action
       $quads.gotof() 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_1198 )
      block
      @state.following.pop
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1200 )

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
    # 153:1: for_loop : FOR ID IN ID block FOR ;
    #
    def for_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      begin
      # at line 154:5: FOR ID IN ID block FOR
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_1215 )
      match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_1217 )
      match( IN, TOKENS_FOLLOWING_IN_IN_for_loop_1219 )
      match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_1221 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_for_loop_1223 )
      block
      @state.following.pop
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_1225 )

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
    # 157:1: reading : READ LPAR value COMMA ID RPAR DOT ;
    #
    def reading
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      begin
      # at line 158:5: READ LPAR value COMMA ID RPAR DOT
      match( READ, TOKENS_FOLLOWING_READ_IN_reading_1238 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_reading_1240 )
      @state.following.push( TOKENS_FOLLOWING_value_IN_reading_1242 )
      value
      @state.following.pop
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_reading_1244 )
      match( ID, TOKENS_FOLLOWING_ID_IN_reading_1246 )
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_reading_1248 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_reading_1250 )

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
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_writing_1263 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_writing_1265 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_writing_1267 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_writing_1269 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_writing_1271 )

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
    # 165:1: parameters : LPAR ( type ID ( COMMA type ID )* )? RPAR ;
    #
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      return_value = ParametersReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 166:5: LPAR ( type ID ( COMMA type ID )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_parameters_1286 )
      # at line 166:10: ( type ID ( COMMA type ID )* )?
      alt_14 = 2
      look_14_0 = @input.peek( 1 )

      if ( look_14_0 == ID || look_14_0 == R_BOOL || look_14_0.between?( R_FLOAT, R_STRING ) || look_14_0 == VOID )
        alt_14 = 1
      end
      case alt_14
      when 1
        # at line 166:12: type ID ( COMMA type ID )*
        @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1290 )
        type
        @state.following.pop
        match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1292 )

        # --> action
        # <-- action

        # at line 166:23: ( COMMA type ID )*
        while true # decision 13
          alt_13 = 2
          look_13_0 = @input.peek( 1 )

          if ( look_13_0 == COMMA )
            alt_13 = 1

          end
          case alt_13
          when 1
            # at line 166:25: COMMA type ID
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_parameters_1298 )
            @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1300 )
            type
            @state.following.pop
            match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1302 )

            # --> action
            # <-- action


          else
            break # out of loop for decision 13
          end
        end # loop for decision 13


      end
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_parameters_1311 )

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
    # 169:1: function : FUNCTION ( type ) ID parameters COLON ( estatute | var_dec )* ( RETURN expresion DOT )? R_END FUNCTION ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      __ID5__ = nil
      parameters6 = nil
      type7 = nil


      begin
      # at line 170:5: FUNCTION ( type ) ID parameters COLON ( estatute | var_dec )* ( RETURN expresion DOT )? R_END FUNCTION
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1324 )
      # at line 170:14: ( type )
      # at line 170:16: type
      @state.following.push( TOKENS_FOLLOWING_type_IN_function_1328 )
      type7 = type
      @state.following.pop

      __ID5__ = match( ID, TOKENS_FOLLOWING_ID_IN_function_1332 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_1334 )
      parameters6 = parameters
      @state.following.pop
      match( COLON, TOKENS_FOLLOWING_COLON_IN_function_1336 )

      # --> action
       $program.add_function(__ID5__.text, ( parameters6 && @input.to_s( parameters6.start, parameters6.stop ) ), ( type7 && @input.to_s( type7.start, type7.stop ) ))
      # <-- action

      # at line 171:43: ( estatute | var_dec )*
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
          # at line 171:45: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_function_1384 )
          estatute
          @state.following.pop

        when 2
          # at line 172:45: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_function_1430 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 15
        end
      end # loop for decision 15

      # at line 173:46: ( RETURN expresion DOT )?
      alt_16 = 2
      look_16_0 = @input.peek( 1 )

      if ( look_16_0 == RETURN )
        alt_16 = 1
      end
      case alt_16
      when 1
        # at line 173:48: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_function_1479 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_function_1481 )
        expresion
        @state.following.pop

        # --> action
         $quads.return() 
        # <-- action

        match( DOT, TOKENS_FOLLOWING_DOT_IN_function_1485 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_1490 )
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1492 )

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
        # trace_out( __method__, 14 )


      end

      return 
    end



    #
    # parser rule block
    #
    # (in Hephaestus.g)
    # 176:1: block : COLON ( estatute )* R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      begin
      # at line 177:5: COLON ( estatute )* R_END
      match( COLON, TOKENS_FOLLOWING_COLON_IN_block_1507 )
      # at line 177:11: ( estatute )*
      while true # decision 17
        alt_17 = 2
        look_17_0 = @input.peek( 1 )

        if ( look_17_0 == FOR || look_17_0.between?( ID, IF ) || look_17_0 == PRINT || look_17_0 == READ || look_17_0 == WHILE )
          alt_17 = 1

        end
        case alt_17
        when 1
          # at line 177:13: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_block_1511 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 17
        end
      end # loop for decision 17

      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_1517 )

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
    # 180:1: func_call : ID func_call_parameters ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      __ID8__ = nil


      begin
      # at line 181:5: ID func_call_parameters
      __ID8__ = match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1530 )

      # --> action
       $quads.function_exists?(__ID8__.text) 
      # <-- action


      # --> action
       $func_aux = __ID8__.text 
      # <-- action


      # --> action
       $quads.era(__ID8__.text) 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_func_call_parameters_IN_func_call_1538 )
      func_call_parameters
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
    # parser rule func_call_parameters
    #
    # (in Hephaestus.g)
    # 184:1: func_call_parameters : LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR ;
    #
    def func_call_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      begin
      # at line 185:5: LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_func_call_parameters_1551 )
      # at line 185:10: ( ( expresion ) ( COMMA ( expresion ) )* )?
      alt_19 = 2
      look_19_0 = @input.peek( 1 )

      if ( look_19_0 == BOOL || look_19_0 == FLOAT || look_19_0 == ID || look_19_0 == INTEGER || look_19_0 == LPAR || look_19_0 == STRING )
        alt_19 = 1
      end
      case alt_19
      when 1
        # at line 185:12: ( expresion ) ( COMMA ( expresion ) )*
        # at line 185:12: ( expresion )
        # at line 185:14: expresion
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_func_call_parameters_1557 )
        expresion
        @state.following.pop


        # --> action
         $quads.parameter($func_aux) 
        # <-- action

        # at line 185:60: ( COMMA ( expresion ) )*
        while true # decision 18
          alt_18 = 2
          look_18_0 = @input.peek( 1 )

          if ( look_18_0 == COMMA )
            alt_18 = 1

          end
          case alt_18
          when 1
            # at line 185:62: COMMA ( expresion )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_func_call_parameters_1565 )

            # --> action
             $quads.increase_param_index 
            # <-- action

            # at line 185:101: ( expresion )
            # at line 185:103: expresion
            @state.following.push( TOKENS_FOLLOWING_expresion_IN_func_call_parameters_1571 )
            expresion
            @state.following.pop


            # --> action
             $quads.parameter($func_aux) 
            # <-- action


          else
            break # out of loop for decision 18
          end
        end # loop for decision 18


      end
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_func_call_parameters_1584 )

      # --> action
       $quads.go_sub($func_aux) 
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
    # parser rule expresion
    #
    # (in Hephaestus.g)
    # 188:1: expresion : exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )? ;
    #
    def expresion
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


      __GREATER9__ = nil
      __LESS10__ = nil
      __NEQ11__ = nil
      __EQ12__ = nil
      __AND13__ = nil
      __OR14__ = nil


      begin
      # at line 189:5: exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_1599 )
      exp
      @state.following.pop
      # at line 189:9: ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      alt_21 = 2
      look_21_0 = @input.peek( 1 )

      if ( look_21_0 == AND || look_21_0 == EQ || look_21_0 == GREATER || look_21_0 == LESS || look_21_0 == NEQ || look_21_0 == OR )
        alt_21 = 1
      end
      case alt_21
      when 1
        # at line 189:11: ( GREATER | LESS | NEQ | EQ | AND | OR ) exp
        # at line 189:11: ( GREATER | LESS | NEQ | EQ | AND | OR )
        alt_20 = 6
        case look_20 = @input.peek( 1 )
        when GREATER then alt_20 = 1
        when LESS then alt_20 = 2
        when NEQ then alt_20 = 3
        when EQ then alt_20 = 4
        when AND then alt_20 = 5
        when OR then alt_20 = 6
        else
          raise NoViableAlternative( "", 20, 0 )

        end
        case alt_20
        when 1
          # at line 189:13: GREATER
          __GREATER9__ = match( GREATER, TOKENS_FOLLOWING_GREATER_IN_expresion_1605 )

          # --> action
           $quads.add_operator(__GREATER9__.text) 
          # <-- action


        when 2
          # at line 190:13: LESS
          __LESS10__ = match( LESS, TOKENS_FOLLOWING_LESS_IN_expresion_1621 )

          # --> action
           $quads.add_operator(__LESS10__.text) 
          # <-- action


        when 3
          # at line 191:13: NEQ
          __NEQ11__ = match( NEQ, TOKENS_FOLLOWING_NEQ_IN_expresion_1637 )

          # --> action
           $quads.add_operator(__NEQ11__.text) 
          # <-- action


        when 4
          # at line 192:13: EQ
          __EQ12__ = match( EQ, TOKENS_FOLLOWING_EQ_IN_expresion_1653 )

          # --> action
           $quads.add_operator(__EQ12__.text) 
          # <-- action


        when 5
          # at line 193:13: AND
          __AND13__ = match( AND, TOKENS_FOLLOWING_AND_IN_expresion_1669 )

          # --> action
           $quads.add_operator(__AND13__.text) 
          # <-- action


        when 6
          # at line 194:13: OR
          __OR14__ = match( OR, TOKENS_FOLLOWING_OR_IN_expresion_1685 )

          # --> action
           $quads.add_operator(__OR14__.text) 
          # <-- action


        end
        @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_1701 )
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
        # trace_out( __method__, 18 )


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
      # trace_in( __method__, 19 )


      __PLUS15__ = nil
      __MINUS16__ = nil


      begin
      # at line 200:5: term ( ( PLUS | MINUS ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1727 )
      term
      @state.following.pop
      # at line 200:10: ( ( PLUS | MINUS ) term )*
      while true # decision 23
        alt_23 = 2
        look_23_0 = @input.peek( 1 )

        if ( look_23_0 == MINUS || look_23_0 == PLUS )
          alt_23 = 1

        end
        case alt_23
        when 1
          # at line 200:12: ( PLUS | MINUS ) term
          # at line 200:12: ( PLUS | MINUS )
          alt_22 = 2
          look_22_0 = @input.peek( 1 )

          if ( look_22_0 == PLUS )
            alt_22 = 1
          elsif ( look_22_0 == MINUS )
            alt_22 = 2
          else
            raise NoViableAlternative( "", 22, 0 )

          end
          case alt_22
          when 1
            # at line 200:14: PLUS
            __PLUS15__ = match( PLUS, TOKENS_FOLLOWING_PLUS_IN_exp_1733 )

            # --> action
             $quads.add_operator(__PLUS15__.text) 
            # <-- action


          when 2
            # at line 201:14: MINUS
            __MINUS16__ = match( MINUS, TOKENS_FOLLOWING_MINUS_IN_exp_1750 )

            # --> action
             $quads.add_operator(__MINUS16__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1767 )
          term
          @state.following.pop

        else
          break # out of loop for decision 23
        end
      end # loop for decision 23


      # --> action
       $quads.is_exp_pending() 
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
    # parser rule term
    #
    # (in Hephaestus.g)
    # 206:1: term : factor ( ( MULT | DIV ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      __MULT17__ = nil
      __DIV18__ = nil


      begin
      # at line 207:5: factor ( ( MULT | DIV ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1794 )
      factor
      @state.following.pop
      # at line 207:12: ( ( MULT | DIV ) factor )*
      while true # decision 25
        alt_25 = 2
        look_25_0 = @input.peek( 1 )

        if ( look_25_0 == DIV || look_25_0 == MULT )
          alt_25 = 1

        end
        case alt_25
        when 1
          # at line 207:14: ( MULT | DIV ) factor
          # at line 207:14: ( MULT | DIV )
          alt_24 = 2
          look_24_0 = @input.peek( 1 )

          if ( look_24_0 == MULT )
            alt_24 = 1
          elsif ( look_24_0 == DIV )
            alt_24 = 2
          else
            raise NoViableAlternative( "", 24, 0 )

          end
          case alt_24
          when 1
            # at line 207:16: MULT
            __MULT17__ = match( MULT, TOKENS_FOLLOWING_MULT_IN_term_1800 )

            # --> action
             $quads.add_operator(__MULT17__.text) 
            # <-- action


          when 2
            # at line 208:16: DIV
            __DIV18__ = match( DIV, TOKENS_FOLLOWING_DIV_IN_term_1819 )

            # --> action
             $quads.add_operator(__DIV18__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1838 )
          factor
          @state.following.pop

        else
          break # out of loop for decision 25
        end
      end # loop for decision 25


      # --> action
       $quads.is_term_pending() 
      # <-- action


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
    # parser rule factor
    #
    # (in Hephaestus.g)
    # 213:1: factor : ( ID ( array_dec )? | LPAR expresion RPAR | value );
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      __ID19__ = nil
      __LPAR20__ = nil
      value21 = nil


      begin
      # at line 214:3: ( ID ( array_dec )? | LPAR expresion RPAR | value )
      alt_27 = 3
      case look_27 = @input.peek( 1 )
      when ID then alt_27 = 1
      when LPAR then alt_27 = 2
      when BOOL, FLOAT, INTEGER, STRING then alt_27 = 3
      else
        raise NoViableAlternative( "", 27, 0 )

      end
      case alt_27
      when 1
        # at line 214:5: ID ( array_dec )?
        __ID19__ = match( ID, TOKENS_FOLLOWING_ID_IN_factor_1867 )
        # at line 214:8: ( array_dec )?
        alt_26 = 2
        look_26_0 = @input.peek( 1 )

        if ( look_26_0 == LBRACK )
          alt_26 = 1
        end
        case alt_26
        when 1
          # at line 214:10: array_dec
          @state.following.push( TOKENS_FOLLOWING_array_dec_IN_factor_1871 )
          array_dec
          @state.following.pop

        end

        # --> action
         $quads.add_id(__ID19__.text, nil) 
        # <-- action


      when 2
        # at line 215:7: LPAR expresion RPAR
        __LPAR20__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_1884 )

        # --> action
         $quads.add_false_bottom(__LPAR20__.text) 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_expresion_IN_factor_1888 )
        expresion
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_1890 )

        # --> action
         $quads.remove_false_bottom() 
        # <-- action


      when 3
        # at line 216:7: value
        @state.following.push( TOKENS_FOLLOWING_value_IN_factor_1900 )
        value21 = value
        @state.following.pop

        # --> action
         $quads.add_id(nil, ( value21 && @input.to_s( value21.start, value21.stop ) )) 
        # <-- action


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

    TypeReturnValue = define_return_scope

    #
    # parser rule type
    #
    # (in Hephaestus.g)
    # 220:1: type : ( R_STRING | R_BOOL | R_FLOAT | R_INTEGER | VOID | ID );
    #
    def type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


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
        # trace_out( __method__, 22 )


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
      # trace_in( __method__, 23 )


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
        # trace_out( __method__, 23 )


      end

      return return_value
    end



    #
    # parser rule r_class
    #
    # (in Hephaestus.g)
    # 236:1: r_class : R_CLASS ID ( heritage )? COLON ( function | var_dec )* R_END R_CLASS ;
    #
    def r_class
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


      __ID22__ = nil


      begin
      # at line 237:5: R_CLASS ID ( heritage )? COLON ( function | var_dec )* R_END R_CLASS
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_1990 )
      __ID22__ = match( ID, TOKENS_FOLLOWING_ID_IN_r_class_1992 )

      # --> action
       $class_aux = __ID22__.text 
      # <-- action


      # --> action
       $program.add_class(__ID22__.text, nil) 
      # <-- action

      # at line 237:82: ( heritage )?
      alt_28 = 2
      look_28_0 = @input.peek( 1 )

      if ( look_28_0 == HER )
        alt_28 = 1
      end
      case alt_28
      when 1
        # at line 237:82: heritage
        @state.following.push( TOKENS_FOLLOWING_heritage_IN_r_class_1998 )
        heritage
        @state.following.pop

      end
      match( COLON, TOKENS_FOLLOWING_COLON_IN_r_class_2002 )
      # at line 237:99: ( function | var_dec )*
      while true # decision 29
        alt_29 = 3
        look_29_0 = @input.peek( 1 )

        if ( look_29_0 == FUNCTION )
          alt_29 = 1
        elsif ( look_29_0 == DEFINE )
          alt_29 = 2

        end
        case alt_29
        when 1
          # at line 237:101: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_r_class_2006 )
          function
          @state.following.pop

        when 2
          # at line 238:74: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_r_class_2081 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 29
        end
      end # loop for decision 29

      match( R_END, TOKENS_FOLLOWING_R_END_IN_r_class_2157 )
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_2159 )

      # --> action
       $program.reset_class_context() 
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
    # parser rule heritage
    #
    # (in Hephaestus.g)
    # 242:1: heritage : ( HER ID ) ;
    #
    def heritage
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )


      __ID23__ = nil


      begin
      # at line 243:5: ( HER ID )
      # at line 243:5: ( HER ID )
      # at line 243:7: HER ID
      match( HER, TOKENS_FOLLOWING_HER_IN_heritage_2176 )
      __ID23__ = match( ID, TOKENS_FOLLOWING_ID_IN_heritage_2178 )


      # --> action
       $program.main_context.classes_directory.classes[$class_aux].inherits_of = __ID23__.text 
      # <-- action


      # --> action
       $program.inherits_class_context(__ID23__.text) 
      # <-- action


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
    # parser rule method_call
    #
    # (in Hephaestus.g)
    # 246:1: method_call : ID DOT method_call_2 ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )


      __ID24__ = nil


      begin
      # at line 247:5: ID DOT method_call_2
      __ID24__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_2197 )

      # --> action
      $method_aux = __ID24__.text
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_2201 )
      @state.following.push( TOKENS_FOLLOWING_method_call_2_IN_method_call_2203 )
      method_call_2
      @state.following.pop

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
    # parser rule method_call_2
    #
    # (in Hephaestus.g)
    # 250:1: method_call_2 : ID method_call_parameters DOT ;
    #
    def method_call_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )


      __ID25__ = nil


      begin
      # at line 251:5: ID method_call_parameters DOT
      __ID25__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_2_2216 )

      # --> action
       $func_aux = __ID25__.text 
      # <-- action


      # --> action
       $quads.era(__ID25__.text) 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_method_call_parameters_IN_method_call_2_2222 )
      method_call_parameters
      @state.following.pop

      # --> action
       $quads.method_exists?($method_aux, __ID25__.text) 
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_2_2226 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 27 )


      end

      return 
    end



    #
    # parser rule method_call_parameters
    #
    # (in Hephaestus.g)
    # 254:1: method_call_parameters : LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR ;
    #
    def method_call_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )


      begin
      # at line 255:5: LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_method_call_parameters_2239 )
      # at line 255:10: ( ( expresion ) ( COMMA ( expresion ) )* )?
      alt_31 = 2
      look_31_0 = @input.peek( 1 )

      if ( look_31_0 == BOOL || look_31_0 == FLOAT || look_31_0 == ID || look_31_0 == INTEGER || look_31_0 == LPAR || look_31_0 == STRING )
        alt_31 = 1
      end
      case alt_31
      when 1
        # at line 255:12: ( expresion ) ( COMMA ( expresion ) )*
        # at line 255:12: ( expresion )
        # at line 255:14: expresion
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_method_call_parameters_2245 )
        expresion
        @state.following.pop


        # --> action
         $quads.method_parameter($method_aux ,$func_aux) 
        # <-- action

        # at line 255:81: ( COMMA ( expresion ) )*
        while true # decision 30
          alt_30 = 2
          look_30_0 = @input.peek( 1 )

          if ( look_30_0 == COMMA )
            alt_30 = 1

          end
          case alt_30
          when 1
            # at line 255:83: COMMA ( expresion )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_method_call_parameters_2253 )

            # --> action
             $quads.increase_param_index 
            # <-- action

            # at line 255:122: ( expresion )
            # at line 255:124: expresion
            @state.following.push( TOKENS_FOLLOWING_expresion_IN_method_call_parameters_2259 )
            expresion
            @state.following.pop


            # --> action
             $quads.method_parameter($method_aux ,$func_aux) 
            # <-- action


          else
            break # out of loop for decision 30
          end
        end # loop for decision 30


      end
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_method_call_parameters_2272 )

      # --> action
       $quads.go_sub($func_aux) 
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 28 )


      end

      return 
    end



    TOKENS_FOLLOWING_r_class_IN_start_502 = Set[ 35, 41 ]
    TOKENS_FOLLOWING_program_IN_start_507 = Set[ 1 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_520 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_program_524 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_program_526 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_program_530 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_var_dec_IN_program_578 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_function_IN_program_626 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_R_END_IN_program_675 = Set[ 35 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_677 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatute_692 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_estatute_694 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatute_700 = Set[ 1 ]
    TOKENS_FOLLOWING_reading_IN_estatute_706 = Set[ 1 ]
    TOKENS_FOLLOWING_writing_IN_estatute_712 = Set[ 1 ]
    TOKENS_FOLLOWING_assignment_IN_estatute_718 = Set[ 1 ]
    TOKENS_FOLLOWING_loops_IN_estatute_724 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatute_730 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_var_dec_743 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_var_dec_745 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_var_dec_747 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_var_dec_749 = Set[ 6, 12, 24 ]
    TOKENS_FOLLOWING_array_dec_IN_var_dec_752 = Set[ 6, 12 ]
    TOKENS_FOLLOWING_ASGN_IN_var_dec_789 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_var_dec_793 = Set[ 12 ]
    TOKENS_FOLLOWING_func_call_IN_var_dec_833 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_var_dec_891 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_assignment_904 = Set[ 6, 24 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_910 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_assignment_934 = Set[ 12 ]
    TOKENS_FOLLOWING_func_call_IN_assignment_952 = Set[ 12 ]
    TOKENS_FOLLOWING_array_dec_IN_assignment_972 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_assignment_985 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACK_IN_array_dec_998 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_array_dec_1000 = Set[ 9, 36 ]
    TOKENS_FOLLOWING_COMMA_IN_array_dec_1004 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_array_dec_1006 = Set[ 36 ]
    TOKENS_FOLLOWING_RBRACK_IN_array_dec_1011 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_1024 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_condition_1026 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_condition_1028 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_condition_1030 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_condition_1034 = Set[ 13, 16, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_condition_1038 = Set[ 13, 42 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_1045 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_condition_1049 = Set[ 21 ]
    TOKENS_FOLLOWING_R_END_IN_condition_1147 = Set[ 21 ]
    TOKENS_FOLLOWING_IF_IN_condition_1153 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_loops_1167 = Set[ 1 ]
    TOKENS_FOLLOWING_for_loop_IN_loops_1173 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1186 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_while_loop_1190 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_while_loop_1192 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_while_loop_1194 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_while_loop_1198 = Set[ 48 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1200 = Set[ 1 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_1215 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_1217 = Set[ 22 ]
    TOKENS_FOLLOWING_IN_IN_for_loop_1219 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_1221 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_for_loop_1223 = Set[ 16 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_1225 = Set[ 1 ]
    TOKENS_FOLLOWING_READ_IN_reading_1238 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_reading_1240 = Set[ 7, 15, 23, 46 ]
    TOKENS_FOLLOWING_value_IN_reading_1242 = Set[ 9 ]
    TOKENS_FOLLOWING_COMMA_IN_reading_1244 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_reading_1246 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_reading_1248 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_reading_1250 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_writing_1263 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_writing_1265 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_writing_1267 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_writing_1269 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_writing_1271 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_parameters_1286 = Set[ 20, 39, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_parameters_1290 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1292 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_parameters_1298 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_parameters_1300 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1302 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_parameters_1311 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1324 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_function_1328 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_function_1332 = Set[ 27 ]
    TOKENS_FOLLOWING_parameters_IN_function_1334 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_function_1336 = Set[ 10, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_function_1384 = Set[ 10, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_var_dec_IN_function_1430 = Set[ 10, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_RETURN_IN_function_1479 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_function_1481 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_function_1485 = Set[ 42 ]
    TOKENS_FOLLOWING_R_END_IN_function_1490 = Set[ 17 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1492 = Set[ 1 ]
    TOKENS_FOLLOWING_COLON_IN_block_1507 = Set[ 16, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_block_1511 = Set[ 16, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_R_END_IN_block_1517 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1530 = Set[ 27 ]
    TOKENS_FOLLOWING_func_call_parameters_IN_func_call_1538 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_func_call_parameters_1551 = Set[ 7, 15, 20, 23, 27, 39, 46 ]
    TOKENS_FOLLOWING_expresion_IN_func_call_parameters_1557 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_func_call_parameters_1565 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_func_call_parameters_1571 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_func_call_parameters_1584 = Set[ 1 ]
    TOKENS_FOLLOWING_exp_IN_expresion_1599 = Set[ 1, 4, 14, 18, 25, 30, 32 ]
    TOKENS_FOLLOWING_GREATER_IN_expresion_1605 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_LESS_IN_expresion_1621 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_NEQ_IN_expresion_1637 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_EQ_IN_expresion_1653 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_AND_IN_expresion_1669 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_OR_IN_expresion_1685 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_expresion_1701 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_exp_1727 = Set[ 1, 28, 33 ]
    TOKENS_FOLLOWING_PLUS_IN_exp_1733 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_MINUS_IN_exp_1750 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_term_IN_exp_1767 = Set[ 1, 28, 33 ]
    TOKENS_FOLLOWING_factor_IN_term_1794 = Set[ 1, 11, 29 ]
    TOKENS_FOLLOWING_MULT_IN_term_1800 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_DIV_IN_term_1819 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_factor_IN_term_1838 = Set[ 1, 11, 29 ]
    TOKENS_FOLLOWING_ID_IN_factor_1867 = Set[ 1, 24 ]
    TOKENS_FOLLOWING_array_dec_IN_factor_1871 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_1884 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_factor_1888 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_1890 = Set[ 1 ]
    TOKENS_FOLLOWING_value_IN_factor_1900 = Set[ 1 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_1990 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_r_class_1992 = Set[ 8, 19 ]
    TOKENS_FOLLOWING_heritage_IN_r_class_1998 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_r_class_2002 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_function_IN_r_class_2006 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_var_dec_IN_r_class_2081 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_R_END_IN_r_class_2157 = Set[ 41 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_2159 = Set[ 1 ]
    TOKENS_FOLLOWING_HER_IN_heritage_2176 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_heritage_2178 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_2197 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_2201 = Set[ 20 ]
    TOKENS_FOLLOWING_method_call_2_IN_method_call_2203 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_2_2216 = Set[ 27 ]
    TOKENS_FOLLOWING_method_call_parameters_IN_method_call_2_2222 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_2_2226 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_method_call_parameters_2239 = Set[ 7, 15, 20, 23, 27, 39, 46 ]
    TOKENS_FOLLOWING_expresion_IN_method_call_parameters_2245 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_method_call_parameters_2253 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_method_call_parameters_2259 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_method_call_parameters_2272 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
