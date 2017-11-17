#!/usr/bin/env ruby
#
# Hephaestus.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Hephaestus.g
# Generated at: 2017-11-16 18:45:22
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

    RULE_METHODS = [ :start, :program, :estatute, :dim_dec, :dim_struct, 
                     :var_dec, :assignment, :condition, :loops, :while_loop, 
                     :for_loop, :reading, :writing, :parameters, :function, 
                     :block, :func_call, :func_call_parameters, :expresion, 
                     :exp, :term, :factor, :type, :value, :r_class, :heritage, 
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
    # 102:1: program : PROGRAM ID COLON ( estatute | dim_dec | var_dec | function )* R_END PROGRAM ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      begin
      # at line 103:5: PROGRAM ID COLON ( estatute | dim_dec | var_dec | function )* R_END PROGRAM
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_520 )

      # --> action
       $quads.fill_program_quad() 
      # <-- action

      match( ID, TOKENS_FOLLOWING_ID_IN_program_524 )
      match( COLON, TOKENS_FOLLOWING_COLON_IN_program_526 )
      # at line 103:54: ( estatute | dim_dec | var_dec | function )*
      while true # decision 2
        alt_2 = 5
        case look_2 = @input.peek( 1 )
        when FOR, ID, IF, PRINT, READ, WHILE then alt_2 = 1
        when DEFINE then look_2_3 = @input.peek( 2 )

        if ( look_2_3 == ID )
          look_2_5 = @input.peek( 3 )

          if ( look_2_5 == AS )
            look_2_6 = @input.peek( 4 )

            if ( look_2_6 == ID || look_2_6 == R_BOOL || look_2_6.between?( R_FLOAT, R_STRING ) || look_2_6 == VOID )
              look_2_7 = @input.peek( 5 )

              if ( look_2_7 == LBRACK )
                alt_2 = 2
              elsif ( look_2_7 == ASGN || look_2_7 == DOT )
                alt_2 = 3

              end

            end

          end

        end
        when FUNCTION then alt_2 = 4
        end
        case alt_2
        when 1
          # at line 103:56: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_program_530 )
          estatute
          @state.following.pop

        when 2
          # at line 104:47: dim_dec
          @state.following.push( TOKENS_FOLLOWING_dim_dec_IN_program_578 )
          dim_dec
          @state.following.pop

        when 3
          # at line 105:47: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_program_626 )
          var_dec
          @state.following.pop

        when 4
          # at line 106:47: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_program_674 )
          function
          @state.following.pop

        else
          break # out of loop for decision 2
        end
      end # loop for decision 2

      match( R_END, TOKENS_FOLLOWING_R_END_IN_program_723 )
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_725 )

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
    # 110:1: estatute : ( func_call DOT | condition | reading | writing | assignment | loops | method_call );
    #
    def estatute
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )


      begin
      # at line 111:3: ( func_call DOT | condition | reading | writing | assignment | loops | method_call )
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
        # at line 111:5: func_call DOT
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_estatute_740 )
        func_call
        @state.following.pop
        match( DOT, TOKENS_FOLLOWING_DOT_IN_estatute_742 )

      when 2
        # at line 112:5: condition
        @state.following.push( TOKENS_FOLLOWING_condition_IN_estatute_748 )
        condition
        @state.following.pop

      when 3
        # at line 113:5: reading
        @state.following.push( TOKENS_FOLLOWING_reading_IN_estatute_754 )
        reading
        @state.following.pop

      when 4
        # at line 114:5: writing
        @state.following.push( TOKENS_FOLLOWING_writing_IN_estatute_760 )
        writing
        @state.following.pop

      when 5
        # at line 115:5: assignment
        @state.following.push( TOKENS_FOLLOWING_assignment_IN_estatute_766 )
        assignment
        @state.following.pop

      when 6
        # at line 116:5: loops
        @state.following.push( TOKENS_FOLLOWING_loops_IN_estatute_772 )
        loops
        @state.following.pop

      when 7
        # at line 117:5: method_call
        @state.following.push( TOKENS_FOLLOWING_method_call_IN_estatute_778 )
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
    # parser rule dim_dec
    #
    # (in Hephaestus.g)
    # 120:1: dim_dec : DEFINE ID AS type LBRACK INTEGER ( COMMA INTEGER )? RBRACK DOT ;
    #
    def dim_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )


      __ID1__ = nil
      type2 = nil


      begin
      # at line 121:5: DEFINE ID AS type LBRACK INTEGER ( COMMA INTEGER )? RBRACK DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_dim_dec_791 )
      __ID1__ = match( ID, TOKENS_FOLLOWING_ID_IN_dim_dec_793 )
      match( AS, TOKENS_FOLLOWING_AS_IN_dim_dec_795 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_dim_dec_797 )
      type2 = type
      @state.following.pop
      match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_dim_dec_799 )

      # --> action
       $program.add_dim_variable(__ID1__.text, ( type2 && @input.to_s( type2.start, type2.stop ) ), true) 
      # <-- action

      match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_dim_dec_803 )
      # at line 121:97: ( COMMA INTEGER )?
      alt_4 = 2
      look_4_0 = @input.peek( 1 )

      if ( look_4_0 == COMMA )
        alt_4 = 1
      end
      case alt_4
      when 1
        # at line 121:99: COMMA INTEGER
        match( COMMA, TOKENS_FOLLOWING_COMMA_IN_dim_dec_807 )
        match( INTEGER, TOKENS_FOLLOWING_INTEGER_IN_dim_dec_809 )

      end
      match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_dim_dec_814 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_dim_dec_816 )

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
    # parser rule dim_struct
    #
    # (in Hephaestus.g)
    # 124:1: dim_struct : LBRACK exp ( COMMA exp )? RBRACK ;
    #
    def dim_struct
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )


      begin
      # at line 125:5: LBRACK exp ( COMMA exp )? RBRACK
      match( LBRACK, TOKENS_FOLLOWING_LBRACK_IN_dim_struct_831 )
      @state.following.push( TOKENS_FOLLOWING_exp_IN_dim_struct_833 )
      exp
      @state.following.pop
      # at line 125:16: ( COMMA exp )?
      alt_5 = 2
      look_5_0 = @input.peek( 1 )

      if ( look_5_0 == COMMA )
        alt_5 = 1
      end
      case alt_5
      when 1
        # at line 125:18: COMMA exp
        match( COMMA, TOKENS_FOLLOWING_COMMA_IN_dim_struct_837 )
        @state.following.push( TOKENS_FOLLOWING_exp_IN_dim_struct_839 )
        exp
        @state.following.pop

      end
      match( RBRACK, TOKENS_FOLLOWING_RBRACK_IN_dim_struct_844 )

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
    # parser rule var_dec
    #
    # (in Hephaestus.g)
    # 128:1: var_dec : DEFINE ID AS type ( ASGN ( expresion | func_call ) )? DOT ;
    #
    def var_dec
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )


      __ID3__ = nil
      __ASGN5__ = nil
      type4 = nil


      begin
      # at line 129:5: DEFINE ID AS type ( ASGN ( expresion | func_call ) )? DOT
      match( DEFINE, TOKENS_FOLLOWING_DEFINE_IN_var_dec_857 )
      __ID3__ = match( ID, TOKENS_FOLLOWING_ID_IN_var_dec_859 )
      match( AS, TOKENS_FOLLOWING_AS_IN_var_dec_861 )
      @state.following.push( TOKENS_FOLLOWING_type_IN_var_dec_863 )
      type4 = type
      @state.following.pop

      # --> action
       $program.add_variable(__ID3__.text, ( type4 && @input.to_s( type4.start, type4.stop ) )) 
      # <-- action

      # at line 129:72: ( ASGN ( expresion | func_call ) )?
      alt_7 = 2
      look_7_0 = @input.peek( 1 )

      if ( look_7_0 == ASGN )
        alt_7 = 1
      end
      case alt_7
      when 1
        # at line 129:74: ASGN ( expresion | func_call )
        __ASGN5__ = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_var_dec_869 )

        # --> action
         $quads.add_id(__ID3__.text, nil) 
        # <-- action


        # --> action
         $quads.add_operator(__ASGN5__.text) 
        # <-- action

        # at line 129:150: ( expresion | func_call )
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
          # at line 129:152: expresion
          @state.following.push( TOKENS_FOLLOWING_expresion_IN_var_dec_877 )
          expresion
          @state.following.pop

        when 2
          # at line 130:86: func_call
          @state.following.push( TOKENS_FOLLOWING_func_call_IN_var_dec_965 )
          func_call
          @state.following.pop

        end

        # --> action
         $quads.assgn_quad() 
        # <-- action


      end
      match( DOT, TOKENS_FOLLOWING_DOT_IN_var_dec_1058 )

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
    # parser rule assignment
    #
    # (in Hephaestus.g)
    # 134:1: assignment : ID ( dim_struct )? ( ASGN ( expresion | func_call ) ) DOT ;
    #
    def assignment
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )


      __ID6__ = nil
      __ASGN7__ = nil


      begin
      # at line 135:5: ID ( dim_struct )? ( ASGN ( expresion | func_call ) ) DOT
      __ID6__ = match( ID, TOKENS_FOLLOWING_ID_IN_assignment_1071 )
      # at line 135:8: ( dim_struct )?
      alt_8 = 2
      look_8_0 = @input.peek( 1 )

      if ( look_8_0 == LBRACK )
        alt_8 = 1
      end
      case alt_8
      when 1
        # at line 135:10: dim_struct
        @state.following.push( TOKENS_FOLLOWING_dim_struct_IN_assignment_1075 )
        dim_struct
        @state.following.pop

      end

      # --> action
       $quads.add_id(__ID6__.text, nil) 
      # <-- action

      # at line 135:58: ( ASGN ( expresion | func_call ) )
      # at line 135:60: ASGN ( expresion | func_call )
      __ASGN7__ = match( ASGN, TOKENS_FOLLOWING_ASGN_IN_assignment_1084 )

      # --> action
       $quads.add_operator(__ASGN7__.text) 
      # <-- action


      # --> action
       $quads.variable_exists?(__ID6__.text) 
      # <-- action

      # at line 136:15: ( expresion | func_call )
      alt_9 = 2
      look_9_0 = @input.peek( 1 )

      if ( look_9_0 == ID )
        look_9_1 = @input.peek( 2 )

        if ( look_9_1 == AND || look_9_1.between?( DIV, DOT ) || look_9_1 == EQ || look_9_1 == GREATER || look_9_1.between?( LBRACK, LESS ) || look_9_1.between?( MINUS, NEQ ) || look_9_1.between?( OR, PLUS ) )
          alt_9 = 1
        elsif ( look_9_1 == LPAR )
          alt_9 = 2
        else
          raise NoViableAlternative( "", 9, 1 )

        end
      elsif ( look_9_0 == BOOL || look_9_0 == FLOAT || look_9_0 == INTEGER || look_9_0 == LPAR || look_9_0 == STRING )
        alt_9 = 1
      else
        raise NoViableAlternative( "", 9, 0 )

      end
      case alt_9
      when 1
        # at line 136:17: expresion
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_assignment_1108 )
        expresion
        @state.following.pop

      when 2
        # at line 137:17: func_call
        @state.following.push( TOKENS_FOLLOWING_func_call_IN_assignment_1126 )
        func_call
        @state.following.pop

      end


      # --> action
       $quads.assgn_quad() 
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_assignment_1155 )

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
    # 142:1: condition : IF LPAR expresion RPAR COLON ( estatute )? ( ELSE block | R_END ) IF ;
    #
    def condition
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )


      begin
      # at line 143:5: IF LPAR expresion RPAR COLON ( estatute )? ( ELSE block | R_END ) IF
      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1168 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_condition_1170 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_condition_1172 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_condition_1174 )

      # --> action
       $quads.gotof() 
      # <-- action

      match( COLON, TOKENS_FOLLOWING_COLON_IN_condition_1178 )
      # at line 143:54: ( estatute )?
      alt_10 = 2
      look_10_0 = @input.peek( 1 )

      if ( look_10_0 == FOR || look_10_0.between?( ID, IF ) || look_10_0 == PRINT || look_10_0 == READ || look_10_0 == WHILE )
        alt_10 = 1
      end
      case alt_10
      when 1
        # at line 143:56: estatute
        @state.following.push( TOKENS_FOLLOWING_estatute_IN_condition_1182 )
        estatute
        @state.following.pop

      end
      # at line 143:68: ( ELSE block | R_END )
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
        # at line 143:70: ELSE block
        match( ELSE, TOKENS_FOLLOWING_ELSE_IN_condition_1189 )

        # --> action
         $quads.goto() 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_block_IN_condition_1193 )
        block
        @state.following.pop

      when 2
        # at line 144:96: R_END
        match( R_END, TOKENS_FOLLOWING_R_END_IN_condition_1291 )

      end

      # --> action
       $quads.fill_quad() 
      # <-- action

      match( IF, TOKENS_FOLLOWING_IF_IN_condition_1297 )

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
    # 147:1: loops : ( while_loop | for_loop );
    #
    def loops
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )


      begin
      # at line 148:3: ( while_loop | for_loop )
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
        # at line 148:5: while_loop
        @state.following.push( TOKENS_FOLLOWING_while_loop_IN_loops_1311 )
        while_loop
        @state.following.pop

      when 2
        # at line 149:5: for_loop
        @state.following.push( TOKENS_FOLLOWING_for_loop_IN_loops_1317 )
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
    # 152:1: while_loop : WHILE LPAR expresion RPAR block WHILE ;
    #
    def while_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )


      begin
      # at line 153:5: WHILE LPAR expresion RPAR block WHILE
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1330 )

      # --> action
       $quads.add_jump() 
      # <-- action

      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_while_loop_1334 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_while_loop_1336 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_while_loop_1338 )

      # --> action
       $quads.gotof() 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_block_IN_while_loop_1342 )
      block
      @state.following.pop
      match( WHILE, TOKENS_FOLLOWING_WHILE_IN_while_loop_1344 )

      # --> action
       $quads.goto_while()
      # <-- action


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
    # 156:1: for_loop : FOR ID IN ID block FOR ;
    #
    def for_loop
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )


      begin
      # at line 157:5: FOR ID IN ID block FOR
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_1359 )
      match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_1361 )
      match( IN, TOKENS_FOLLOWING_IN_IN_for_loop_1363 )
      match( ID, TOKENS_FOLLOWING_ID_IN_for_loop_1365 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_for_loop_1367 )
      block
      @state.following.pop
      match( FOR, TOKENS_FOLLOWING_FOR_IN_for_loop_1369 )

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
    # parser rule reading
    #
    # (in Hephaestus.g)
    # 160:1: reading : READ LPAR value COMMA ID RPAR DOT ;
    #
    def reading
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )


      begin
      # at line 161:5: READ LPAR value COMMA ID RPAR DOT
      match( READ, TOKENS_FOLLOWING_READ_IN_reading_1382 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_reading_1384 )
      @state.following.push( TOKENS_FOLLOWING_value_IN_reading_1386 )
      value
      @state.following.pop
      match( COMMA, TOKENS_FOLLOWING_COMMA_IN_reading_1388 )
      match( ID, TOKENS_FOLLOWING_ID_IN_reading_1390 )
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_reading_1392 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_reading_1394 )

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
    # parser rule writing
    #
    # (in Hephaestus.g)
    # 164:1: writing : PRINT LPAR expresion RPAR DOT ;
    #
    def writing
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )


      begin
      # at line 165:5: PRINT LPAR expresion RPAR DOT
      match( PRINT, TOKENS_FOLLOWING_PRINT_IN_writing_1407 )
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_writing_1409 )
      @state.following.push( TOKENS_FOLLOWING_expresion_IN_writing_1411 )
      expresion
      @state.following.pop
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_writing_1413 )
      match( DOT, TOKENS_FOLLOWING_DOT_IN_writing_1415 )

      # --> action
       $quads.write()
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 13 )


      end

      return 
    end

    ParametersReturnValue = define_return_scope

    #
    # parser rule parameters
    #
    # (in Hephaestus.g)
    # 168:1: parameters : LPAR ( type ID ( COMMA type ID )* )? RPAR ;
    #
    def parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )


      return_value = ParametersReturnValue.new

      # $rule.start = the first token seen before matching
      return_value.start = @input.look


      begin
      # at line 169:5: LPAR ( type ID ( COMMA type ID )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_parameters_1430 )
      # at line 169:10: ( type ID ( COMMA type ID )* )?
      alt_14 = 2
      look_14_0 = @input.peek( 1 )

      if ( look_14_0 == ID || look_14_0 == R_BOOL || look_14_0.between?( R_FLOAT, R_STRING ) || look_14_0 == VOID )
        alt_14 = 1
      end
      case alt_14
      when 1
        # at line 169:12: type ID ( COMMA type ID )*
        @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1434 )
        type
        @state.following.pop
        match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1436 )

        # --> action
        # <-- action

        # at line 169:23: ( COMMA type ID )*
        while true # decision 13
          alt_13 = 2
          look_13_0 = @input.peek( 1 )

          if ( look_13_0 == COMMA )
            alt_13 = 1

          end
          case alt_13
          when 1
            # at line 169:25: COMMA type ID
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_parameters_1442 )
            @state.following.push( TOKENS_FOLLOWING_type_IN_parameters_1444 )
            type
            @state.following.pop
            match( ID, TOKENS_FOLLOWING_ID_IN_parameters_1446 )

            # --> action
            # <-- action


          else
            break # out of loop for decision 13
          end
        end # loop for decision 13


      end
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_parameters_1455 )

      # - - - - - - - rule clean up - - - - - - - -
      return_value.stop = @input.look( -1 )


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 14 )


      end

      return return_value
    end



    #
    # parser rule function
    #
    # (in Hephaestus.g)
    # 172:1: function : FUNCTION ( type ) ID parameters COLON ( estatute | var_dec )* ( RETURN expresion DOT )? R_END FUNCTION ;
    #
    def function
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )


      __ID8__ = nil
      parameters9 = nil
      type10 = nil


      begin
      # at line 173:5: FUNCTION ( type ) ID parameters COLON ( estatute | var_dec )* ( RETURN expresion DOT )? R_END FUNCTION
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1468 )
      # at line 173:14: ( type )
      # at line 173:16: type
      @state.following.push( TOKENS_FOLLOWING_type_IN_function_1472 )
      type10 = type
      @state.following.pop

      __ID8__ = match( ID, TOKENS_FOLLOWING_ID_IN_function_1476 )
      @state.following.push( TOKENS_FOLLOWING_parameters_IN_function_1478 )
      parameters9 = parameters
      @state.following.pop
      match( COLON, TOKENS_FOLLOWING_COLON_IN_function_1480 )

      # --> action
       $program.add_function(__ID8__.text, ( parameters9 && @input.to_s( parameters9.start, parameters9.stop ) ), ( type10 && @input.to_s( type10.start, type10.stop ) ))
      # <-- action

      # at line 174:43: ( estatute | var_dec )*
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
          # at line 174:45: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_function_1528 )
          estatute
          @state.following.pop

        when 2
          # at line 175:45: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_function_1574 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 15
        end
      end # loop for decision 15

      # at line 176:46: ( RETURN expresion DOT )?
      alt_16 = 2
      look_16_0 = @input.peek( 1 )

      if ( look_16_0 == RETURN )
        alt_16 = 1
      end
      case alt_16
      when 1
        # at line 176:48: RETURN expresion DOT
        match( RETURN, TOKENS_FOLLOWING_RETURN_IN_function_1623 )
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_function_1625 )
        expresion
        @state.following.pop

        # --> action
         $quads.return() 
        # <-- action

        match( DOT, TOKENS_FOLLOWING_DOT_IN_function_1629 )

      end
      match( R_END, TOKENS_FOLLOWING_R_END_IN_function_1634 )
      match( FUNCTION, TOKENS_FOLLOWING_FUNCTION_IN_function_1636 )

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
        # trace_out( __method__, 15 )


      end

      return 
    end



    #
    # parser rule block
    #
    # (in Hephaestus.g)
    # 179:1: block : COLON ( estatute )* R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )


      begin
      # at line 180:5: COLON ( estatute )* R_END
      match( COLON, TOKENS_FOLLOWING_COLON_IN_block_1651 )
      # at line 180:11: ( estatute )*
      while true # decision 17
        alt_17 = 2
        look_17_0 = @input.peek( 1 )

        if ( look_17_0 == FOR || look_17_0.between?( ID, IF ) || look_17_0 == PRINT || look_17_0 == READ || look_17_0 == WHILE )
          alt_17 = 1

        end
        case alt_17
        when 1
          # at line 180:13: estatute
          @state.following.push( TOKENS_FOLLOWING_estatute_IN_block_1655 )
          estatute
          @state.following.pop

        else
          break # out of loop for decision 17
        end
      end # loop for decision 17

      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_1661 )

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
    # parser rule func_call
    #
    # (in Hephaestus.g)
    # 183:1: func_call : ID func_call_parameters ;
    #
    def func_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )


      __ID11__ = nil


      begin
      # at line 184:5: ID func_call_parameters
      __ID11__ = match( ID, TOKENS_FOLLOWING_ID_IN_func_call_1674 )

      # --> action
       $quads.function_exists?(__ID11__.text) 
      # <-- action


      # --> action
       $func_aux = __ID11__.text 
      # <-- action


      # --> action
       $quads.era(__ID11__.text) 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_func_call_parameters_IN_func_call_1682 )
      func_call_parameters
      @state.following.pop

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
    # parser rule func_call_parameters
    #
    # (in Hephaestus.g)
    # 187:1: func_call_parameters : LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR ;
    #
    def func_call_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )


      begin
      # at line 188:5: LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_func_call_parameters_1695 )
      # at line 188:10: ( ( expresion ) ( COMMA ( expresion ) )* )?
      alt_19 = 2
      look_19_0 = @input.peek( 1 )

      if ( look_19_0 == BOOL || look_19_0 == FLOAT || look_19_0 == ID || look_19_0 == INTEGER || look_19_0 == LPAR || look_19_0 == STRING )
        alt_19 = 1
      end
      case alt_19
      when 1
        # at line 188:12: ( expresion ) ( COMMA ( expresion ) )*
        # at line 188:12: ( expresion )
        # at line 188:14: expresion
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_func_call_parameters_1701 )
        expresion
        @state.following.pop


        # --> action
         $quads.parameter($func_aux) 
        # <-- action

        # at line 188:60: ( COMMA ( expresion ) )*
        while true # decision 18
          alt_18 = 2
          look_18_0 = @input.peek( 1 )

          if ( look_18_0 == COMMA )
            alt_18 = 1

          end
          case alt_18
          when 1
            # at line 188:62: COMMA ( expresion )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_func_call_parameters_1709 )

            # --> action
             $quads.increase_param_index 
            # <-- action

            # at line 188:101: ( expresion )
            # at line 188:103: expresion
            @state.following.push( TOKENS_FOLLOWING_expresion_IN_func_call_parameters_1715 )
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
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_func_call_parameters_1728 )

      # --> action
       $quads.go_sub($func_aux) 
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
    # parser rule expresion
    #
    # (in Hephaestus.g)
    # 191:1: expresion : exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )? ;
    #
    def expresion
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )


      __GREATER12__ = nil
      __LESS13__ = nil
      __NEQ14__ = nil
      __EQ15__ = nil
      __AND16__ = nil
      __OR17__ = nil


      begin
      # at line 192:5: exp ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_1743 )
      exp
      @state.following.pop
      # at line 192:9: ( ( GREATER | LESS | NEQ | EQ | AND | OR ) exp )?
      alt_21 = 2
      look_21_0 = @input.peek( 1 )

      if ( look_21_0 == AND || look_21_0 == EQ || look_21_0 == GREATER || look_21_0 == LESS || look_21_0 == NEQ || look_21_0 == OR )
        alt_21 = 1
      end
      case alt_21
      when 1
        # at line 192:11: ( GREATER | LESS | NEQ | EQ | AND | OR ) exp
        # at line 192:11: ( GREATER | LESS | NEQ | EQ | AND | OR )
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
          # at line 192:13: GREATER
          __GREATER12__ = match( GREATER, TOKENS_FOLLOWING_GREATER_IN_expresion_1749 )

          # --> action
           $quads.add_operator(__GREATER12__.text) 
          # <-- action


        when 2
          # at line 193:13: LESS
          __LESS13__ = match( LESS, TOKENS_FOLLOWING_LESS_IN_expresion_1765 )

          # --> action
           $quads.add_operator(__LESS13__.text) 
          # <-- action


        when 3
          # at line 194:13: NEQ
          __NEQ14__ = match( NEQ, TOKENS_FOLLOWING_NEQ_IN_expresion_1781 )

          # --> action
           $quads.add_operator(__NEQ14__.text) 
          # <-- action


        when 4
          # at line 195:13: EQ
          __EQ15__ = match( EQ, TOKENS_FOLLOWING_EQ_IN_expresion_1797 )

          # --> action
           $quads.add_operator(__EQ15__.text) 
          # <-- action


        when 5
          # at line 196:13: AND
          __AND16__ = match( AND, TOKENS_FOLLOWING_AND_IN_expresion_1813 )

          # --> action
           $quads.add_operator(__AND16__.text) 
          # <-- action


        when 6
          # at line 197:13: OR
          __OR17__ = match( OR, TOKENS_FOLLOWING_OR_IN_expresion_1829 )

          # --> action
           $quads.add_operator(__OR17__.text) 
          # <-- action


        end
        @state.following.push( TOKENS_FOLLOWING_exp_IN_expresion_1845 )
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
        # trace_out( __method__, 19 )


      end

      return 
    end



    #
    # parser rule exp
    #
    # (in Hephaestus.g)
    # 202:1: exp : term ( ( PLUS | MINUS ) term )* ;
    #
    def exp
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )


      __PLUS18__ = nil
      __MINUS19__ = nil


      begin
      # at line 203:5: term ( ( PLUS | MINUS ) term )*
      @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1871 )
      term
      @state.following.pop
      # at line 203:10: ( ( PLUS | MINUS ) term )*
      while true # decision 23
        alt_23 = 2
        look_23_0 = @input.peek( 1 )

        if ( look_23_0 == MINUS || look_23_0 == PLUS )
          alt_23 = 1

        end
        case alt_23
        when 1
          # at line 203:12: ( PLUS | MINUS ) term
          # at line 203:12: ( PLUS | MINUS )
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
            # at line 203:14: PLUS
            __PLUS18__ = match( PLUS, TOKENS_FOLLOWING_PLUS_IN_exp_1877 )

            # --> action
             $quads.add_operator(__PLUS18__.text) 
            # <-- action


          when 2
            # at line 204:14: MINUS
            __MINUS19__ = match( MINUS, TOKENS_FOLLOWING_MINUS_IN_exp_1894 )

            # --> action
             $quads.add_operator(__MINUS19__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_term_IN_exp_1911 )
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
        # trace_out( __method__, 20 )


      end

      return 
    end



    #
    # parser rule term
    #
    # (in Hephaestus.g)
    # 209:1: term : factor ( ( MULT | DIV ) factor )* ;
    #
    def term
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )


      __MULT20__ = nil
      __DIV21__ = nil


      begin
      # at line 210:5: factor ( ( MULT | DIV ) factor )*
      @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1938 )
      factor
      @state.following.pop
      # at line 210:12: ( ( MULT | DIV ) factor )*
      while true # decision 25
        alt_25 = 2
        look_25_0 = @input.peek( 1 )

        if ( look_25_0 == DIV || look_25_0 == MULT )
          alt_25 = 1

        end
        case alt_25
        when 1
          # at line 210:14: ( MULT | DIV ) factor
          # at line 210:14: ( MULT | DIV )
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
            # at line 210:16: MULT
            __MULT20__ = match( MULT, TOKENS_FOLLOWING_MULT_IN_term_1944 )

            # --> action
             $quads.add_operator(__MULT20__.text) 
            # <-- action


          when 2
            # at line 211:16: DIV
            __DIV21__ = match( DIV, TOKENS_FOLLOWING_DIV_IN_term_1963 )

            # --> action
             $quads.add_operator(__DIV21__.text) 
            # <-- action


          end
          @state.following.push( TOKENS_FOLLOWING_factor_IN_term_1982 )
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
        # trace_out( __method__, 21 )


      end

      return 
    end



    #
    # parser rule factor
    #
    # (in Hephaestus.g)
    # 216:1: factor : ( ID ( dim_struct )? | LPAR expresion RPAR | value );
    #
    def factor
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )


      __ID22__ = nil
      __LPAR23__ = nil
      value24 = nil


      begin
      # at line 217:3: ( ID ( dim_struct )? | LPAR expresion RPAR | value )
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
        # at line 217:5: ID ( dim_struct )?
        __ID22__ = match( ID, TOKENS_FOLLOWING_ID_IN_factor_2011 )
        # at line 217:8: ( dim_struct )?
        alt_26 = 2
        look_26_0 = @input.peek( 1 )

        if ( look_26_0 == LBRACK )
          alt_26 = 1
        end
        case alt_26
        when 1
          # at line 217:10: dim_struct
          @state.following.push( TOKENS_FOLLOWING_dim_struct_IN_factor_2015 )
          dim_struct
          @state.following.pop

        end

        # --> action
         $quads.add_id(__ID22__.text, nil) 
        # <-- action


      when 2
        # at line 218:7: LPAR expresion RPAR
        __LPAR23__ = match( LPAR, TOKENS_FOLLOWING_LPAR_IN_factor_2028 )

        # --> action
         $quads.add_false_bottom(__LPAR23__.text) 
        # <-- action

        @state.following.push( TOKENS_FOLLOWING_expresion_IN_factor_2032 )
        expresion
        @state.following.pop
        match( RPAR, TOKENS_FOLLOWING_RPAR_IN_factor_2034 )

        # --> action
         $quads.remove_false_bottom() 
        # <-- action


      when 3
        # at line 219:7: value
        @state.following.push( TOKENS_FOLLOWING_value_IN_factor_2044 )
        value24 = value
        @state.following.pop

        # --> action
         $quads.add_id(nil, ( value24 && @input.to_s( value24.start, value24.stop ) )) 
        # <-- action


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

    TypeReturnValue = define_return_scope

    #
    # parser rule type
    #
    # (in Hephaestus.g)
    # 223:1: type : ( R_STRING | R_BOOL | R_FLOAT | R_INTEGER | VOID | ID );
    #
    def type
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )


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
        # trace_out( __method__, 23 )


      end

      return return_value
    end

    ValueReturnValue = define_return_scope

    #
    # parser rule value
    #
    # (in Hephaestus.g)
    # 232:1: value : ( STRING | FLOAT | INTEGER | BOOL );
    #
    def value
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )


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
        # trace_out( __method__, 24 )


      end

      return return_value
    end



    #
    # parser rule r_class
    #
    # (in Hephaestus.g)
    # 239:1: r_class : R_CLASS ID ( heritage )? COLON ( function | dim_dec | var_dec )* R_END R_CLASS ;
    #
    def r_class
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )


      __ID25__ = nil


      begin
      # at line 240:5: R_CLASS ID ( heritage )? COLON ( function | dim_dec | var_dec )* R_END R_CLASS
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_2134 )
      __ID25__ = match( ID, TOKENS_FOLLOWING_ID_IN_r_class_2136 )

      # --> action
       $class_aux = __ID25__.text 
      # <-- action


      # --> action
       $program.add_class(__ID25__.text, nil) 
      # <-- action

      # at line 240:82: ( heritage )?
      alt_28 = 2
      look_28_0 = @input.peek( 1 )

      if ( look_28_0 == HER )
        alt_28 = 1
      end
      case alt_28
      when 1
        # at line 240:82: heritage
        @state.following.push( TOKENS_FOLLOWING_heritage_IN_r_class_2142 )
        heritage
        @state.following.pop

      end
      match( COLON, TOKENS_FOLLOWING_COLON_IN_r_class_2146 )
      # at line 240:99: ( function | dim_dec | var_dec )*
      while true # decision 29
        alt_29 = 4
        look_29_0 = @input.peek( 1 )

        if ( look_29_0 == FUNCTION )
          alt_29 = 1
        elsif ( look_29_0 == DEFINE )
          look_29_3 = @input.peek( 2 )

          if ( look_29_3 == ID )
            look_29_4 = @input.peek( 3 )

            if ( look_29_4 == AS )
              look_29_5 = @input.peek( 4 )

              if ( look_29_5 == ID || look_29_5 == R_BOOL || look_29_5.between?( R_FLOAT, R_STRING ) || look_29_5 == VOID )
                look_29_6 = @input.peek( 5 )

                if ( look_29_6 == LBRACK )
                  alt_29 = 2
                elsif ( look_29_6 == ASGN || look_29_6 == DOT )
                  alt_29 = 3

                end

              end

            end

          end

        end
        case alt_29
        when 1
          # at line 240:101: function
          @state.following.push( TOKENS_FOLLOWING_function_IN_r_class_2150 )
          function
          @state.following.pop

        when 2
          # at line 241:74: dim_dec
          @state.following.push( TOKENS_FOLLOWING_dim_dec_IN_r_class_2225 )
          dim_dec
          @state.following.pop

        when 3
          # at line 242:74: var_dec
          @state.following.push( TOKENS_FOLLOWING_var_dec_IN_r_class_2300 )
          var_dec
          @state.following.pop

        else
          break # out of loop for decision 29
        end
      end # loop for decision 29

      match( R_END, TOKENS_FOLLOWING_R_END_IN_r_class_2376 )
      match( R_CLASS, TOKENS_FOLLOWING_R_CLASS_IN_r_class_2378 )

      # --> action
       $program.reset_class_context() 
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
    # parser rule heritage
    #
    # (in Hephaestus.g)
    # 246:1: heritage : ( HER ID ) ;
    #
    def heritage
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )


      __ID26__ = nil


      begin
      # at line 247:5: ( HER ID )
      # at line 247:5: ( HER ID )
      # at line 247:7: HER ID
      match( HER, TOKENS_FOLLOWING_HER_IN_heritage_2395 )
      __ID26__ = match( ID, TOKENS_FOLLOWING_ID_IN_heritage_2397 )


      # --> action
       $program.main_context.classes_directory.classes[$class_aux].inherits_of = __ID26__.text 
      # <-- action


      # --> action
       $program.inherits_class_context(__ID26__.text) 
      # <-- action


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
    # parser rule method_call
    #
    # (in Hephaestus.g)
    # 250:1: method_call : ID DOT method_call_2 ;
    #
    def method_call
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )


      __ID27__ = nil


      begin
      # at line 251:5: ID DOT method_call_2
      __ID27__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_2416 )

      # --> action
      $method_aux = __ID27__.text
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_2420 )
      @state.following.push( TOKENS_FOLLOWING_method_call_2_IN_method_call_2422 )
      method_call_2
      @state.following.pop

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
    # parser rule method_call_2
    #
    # (in Hephaestus.g)
    # 254:1: method_call_2 : ID method_call_parameters DOT ;
    #
    def method_call_2
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )


      __ID28__ = nil


      begin
      # at line 255:5: ID method_call_parameters DOT
      __ID28__ = match( ID, TOKENS_FOLLOWING_ID_IN_method_call_2_2435 )

      # --> action
       $func_aux = __ID28__.text 
      # <-- action


      # --> action
       $quads.era(__ID28__.text) 
      # <-- action

      @state.following.push( TOKENS_FOLLOWING_method_call_parameters_IN_method_call_2_2441 )
      method_call_parameters
      @state.following.pop

      # --> action
       $quads.method_exists?($method_aux, __ID28__.text) 
      # <-- action

      match( DOT, TOKENS_FOLLOWING_DOT_IN_method_call_2_2445 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 28 )


      end

      return 
    end



    #
    # parser rule method_call_parameters
    #
    # (in Hephaestus.g)
    # 258:1: method_call_parameters : LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR ;
    #
    def method_call_parameters
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )


      begin
      # at line 259:5: LPAR ( ( expresion ) ( COMMA ( expresion ) )* )? RPAR
      match( LPAR, TOKENS_FOLLOWING_LPAR_IN_method_call_parameters_2458 )
      # at line 259:10: ( ( expresion ) ( COMMA ( expresion ) )* )?
      alt_31 = 2
      look_31_0 = @input.peek( 1 )

      if ( look_31_0 == BOOL || look_31_0 == FLOAT || look_31_0 == ID || look_31_0 == INTEGER || look_31_0 == LPAR || look_31_0 == STRING )
        alt_31 = 1
      end
      case alt_31
      when 1
        # at line 259:12: ( expresion ) ( COMMA ( expresion ) )*
        # at line 259:12: ( expresion )
        # at line 259:14: expresion
        @state.following.push( TOKENS_FOLLOWING_expresion_IN_method_call_parameters_2464 )
        expresion
        @state.following.pop


        # --> action
         $quads.method_parameter($method_aux ,$func_aux) 
        # <-- action

        # at line 259:81: ( COMMA ( expresion ) )*
        while true # decision 30
          alt_30 = 2
          look_30_0 = @input.peek( 1 )

          if ( look_30_0 == COMMA )
            alt_30 = 1

          end
          case alt_30
          when 1
            # at line 259:83: COMMA ( expresion )
            match( COMMA, TOKENS_FOLLOWING_COMMA_IN_method_call_parameters_2472 )

            # --> action
             $quads.increase_param_index 
            # <-- action

            # at line 259:122: ( expresion )
            # at line 259:124: expresion
            @state.following.push( TOKENS_FOLLOWING_expresion_IN_method_call_parameters_2478 )
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
      match( RPAR, TOKENS_FOLLOWING_RPAR_IN_method_call_parameters_2491 )

      # --> action
       $quads.go_sub($func_aux) 
      # <-- action


      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 29 )


      end

      return 
    end



    TOKENS_FOLLOWING_r_class_IN_start_502 = Set[ 35, 41 ]
    TOKENS_FOLLOWING_program_IN_start_507 = Set[ 1 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_520 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_program_524 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_program_526 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_program_530 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_dim_dec_IN_program_578 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_var_dec_IN_program_626 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_function_IN_program_674 = Set[ 10, 16, 17, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_R_END_IN_program_723 = Set[ 35 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_725 = Set[ 1 ]
    TOKENS_FOLLOWING_func_call_IN_estatute_740 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_estatute_742 = Set[ 1 ]
    TOKENS_FOLLOWING_condition_IN_estatute_748 = Set[ 1 ]
    TOKENS_FOLLOWING_reading_IN_estatute_754 = Set[ 1 ]
    TOKENS_FOLLOWING_writing_IN_estatute_760 = Set[ 1 ]
    TOKENS_FOLLOWING_assignment_IN_estatute_766 = Set[ 1 ]
    TOKENS_FOLLOWING_loops_IN_estatute_772 = Set[ 1 ]
    TOKENS_FOLLOWING_method_call_IN_estatute_778 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_dim_dec_791 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_dim_dec_793 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_dim_dec_795 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_dim_dec_797 = Set[ 24 ]
    TOKENS_FOLLOWING_LBRACK_IN_dim_dec_799 = Set[ 23 ]
    TOKENS_FOLLOWING_INTEGER_IN_dim_dec_803 = Set[ 9, 36 ]
    TOKENS_FOLLOWING_COMMA_IN_dim_dec_807 = Set[ 23 ]
    TOKENS_FOLLOWING_INTEGER_IN_dim_dec_809 = Set[ 36 ]
    TOKENS_FOLLOWING_RBRACK_IN_dim_dec_814 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_dim_dec_816 = Set[ 1 ]
    TOKENS_FOLLOWING_LBRACK_IN_dim_struct_831 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_dim_struct_833 = Set[ 9, 36 ]
    TOKENS_FOLLOWING_COMMA_IN_dim_struct_837 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_dim_struct_839 = Set[ 36 ]
    TOKENS_FOLLOWING_RBRACK_IN_dim_struct_844 = Set[ 1 ]
    TOKENS_FOLLOWING_DEFINE_IN_var_dec_857 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_var_dec_859 = Set[ 5 ]
    TOKENS_FOLLOWING_AS_IN_var_dec_861 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_var_dec_863 = Set[ 6, 12 ]
    TOKENS_FOLLOWING_ASGN_IN_var_dec_869 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_var_dec_877 = Set[ 12 ]
    TOKENS_FOLLOWING_func_call_IN_var_dec_965 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_var_dec_1058 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_assignment_1071 = Set[ 6, 24 ]
    TOKENS_FOLLOWING_dim_struct_IN_assignment_1075 = Set[ 6 ]
    TOKENS_FOLLOWING_ASGN_IN_assignment_1084 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_assignment_1108 = Set[ 12 ]
    TOKENS_FOLLOWING_func_call_IN_assignment_1126 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_assignment_1155 = Set[ 1 ]
    TOKENS_FOLLOWING_IF_IN_condition_1168 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_condition_1170 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_condition_1172 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_condition_1174 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_condition_1178 = Set[ 13, 16, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_condition_1182 = Set[ 13, 42 ]
    TOKENS_FOLLOWING_ELSE_IN_condition_1189 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_condition_1193 = Set[ 21 ]
    TOKENS_FOLLOWING_R_END_IN_condition_1291 = Set[ 21 ]
    TOKENS_FOLLOWING_IF_IN_condition_1297 = Set[ 1 ]
    TOKENS_FOLLOWING_while_loop_IN_loops_1311 = Set[ 1 ]
    TOKENS_FOLLOWING_for_loop_IN_loops_1317 = Set[ 1 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1330 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_while_loop_1334 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_while_loop_1336 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_while_loop_1338 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_while_loop_1342 = Set[ 48 ]
    TOKENS_FOLLOWING_WHILE_IN_while_loop_1344 = Set[ 1 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_1359 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_1361 = Set[ 22 ]
    TOKENS_FOLLOWING_IN_IN_for_loop_1363 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_for_loop_1365 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_for_loop_1367 = Set[ 16 ]
    TOKENS_FOLLOWING_FOR_IN_for_loop_1369 = Set[ 1 ]
    TOKENS_FOLLOWING_READ_IN_reading_1382 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_reading_1384 = Set[ 7, 15, 23, 46 ]
    TOKENS_FOLLOWING_value_IN_reading_1386 = Set[ 9 ]
    TOKENS_FOLLOWING_COMMA_IN_reading_1388 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_reading_1390 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_reading_1392 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_reading_1394 = Set[ 1 ]
    TOKENS_FOLLOWING_PRINT_IN_writing_1407 = Set[ 27 ]
    TOKENS_FOLLOWING_LPAR_IN_writing_1409 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_writing_1411 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_writing_1413 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_writing_1415 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_parameters_1430 = Set[ 20, 39, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_parameters_1434 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1436 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_parameters_1442 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_parameters_1444 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_parameters_1446 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_parameters_1455 = Set[ 1 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1468 = Set[ 20, 40, 43, 44, 45, 47 ]
    TOKENS_FOLLOWING_type_IN_function_1472 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_function_1476 = Set[ 27 ]
    TOKENS_FOLLOWING_parameters_IN_function_1478 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_function_1480 = Set[ 10, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_function_1528 = Set[ 10, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_var_dec_IN_function_1574 = Set[ 10, 16, 20, 21, 34, 37, 38, 42, 48 ]
    TOKENS_FOLLOWING_RETURN_IN_function_1623 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_function_1625 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_function_1629 = Set[ 42 ]
    TOKENS_FOLLOWING_R_END_IN_function_1634 = Set[ 17 ]
    TOKENS_FOLLOWING_FUNCTION_IN_function_1636 = Set[ 1 ]
    TOKENS_FOLLOWING_COLON_IN_block_1651 = Set[ 16, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_estatute_IN_block_1655 = Set[ 16, 20, 21, 34, 37, 42, 48 ]
    TOKENS_FOLLOWING_R_END_IN_block_1661 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_func_call_1674 = Set[ 27 ]
    TOKENS_FOLLOWING_func_call_parameters_IN_func_call_1682 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_func_call_parameters_1695 = Set[ 7, 15, 20, 23, 27, 39, 46 ]
    TOKENS_FOLLOWING_expresion_IN_func_call_parameters_1701 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_func_call_parameters_1709 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_func_call_parameters_1715 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_func_call_parameters_1728 = Set[ 1 ]
    TOKENS_FOLLOWING_exp_IN_expresion_1743 = Set[ 1, 4, 14, 18, 25, 30, 32 ]
    TOKENS_FOLLOWING_GREATER_IN_expresion_1749 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_LESS_IN_expresion_1765 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_NEQ_IN_expresion_1781 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_EQ_IN_expresion_1797 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_AND_IN_expresion_1813 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_OR_IN_expresion_1829 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_exp_IN_expresion_1845 = Set[ 1 ]
    TOKENS_FOLLOWING_term_IN_exp_1871 = Set[ 1, 28, 33 ]
    TOKENS_FOLLOWING_PLUS_IN_exp_1877 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_MINUS_IN_exp_1894 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_term_IN_exp_1911 = Set[ 1, 28, 33 ]
    TOKENS_FOLLOWING_factor_IN_term_1938 = Set[ 1, 11, 29 ]
    TOKENS_FOLLOWING_MULT_IN_term_1944 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_DIV_IN_term_1963 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_factor_IN_term_1982 = Set[ 1, 11, 29 ]
    TOKENS_FOLLOWING_ID_IN_factor_2011 = Set[ 1, 24 ]
    TOKENS_FOLLOWING_dim_struct_IN_factor_2015 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_factor_2028 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_factor_2032 = Set[ 39 ]
    TOKENS_FOLLOWING_RPAR_IN_factor_2034 = Set[ 1 ]
    TOKENS_FOLLOWING_value_IN_factor_2044 = Set[ 1 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_2134 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_r_class_2136 = Set[ 8, 19 ]
    TOKENS_FOLLOWING_heritage_IN_r_class_2142 = Set[ 8 ]
    TOKENS_FOLLOWING_COLON_IN_r_class_2146 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_function_IN_r_class_2150 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_dim_dec_IN_r_class_2225 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_var_dec_IN_r_class_2300 = Set[ 10, 17, 42 ]
    TOKENS_FOLLOWING_R_END_IN_r_class_2376 = Set[ 41 ]
    TOKENS_FOLLOWING_R_CLASS_IN_r_class_2378 = Set[ 1 ]
    TOKENS_FOLLOWING_HER_IN_heritage_2395 = Set[ 20 ]
    TOKENS_FOLLOWING_ID_IN_heritage_2397 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_2416 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_2420 = Set[ 20 ]
    TOKENS_FOLLOWING_method_call_2_IN_method_call_2422 = Set[ 1 ]
    TOKENS_FOLLOWING_ID_IN_method_call_2_2435 = Set[ 27 ]
    TOKENS_FOLLOWING_method_call_parameters_IN_method_call_2_2441 = Set[ 12 ]
    TOKENS_FOLLOWING_DOT_IN_method_call_2_2445 = Set[ 1 ]
    TOKENS_FOLLOWING_LPAR_IN_method_call_parameters_2458 = Set[ 7, 15, 20, 23, 27, 39, 46 ]
    TOKENS_FOLLOWING_expresion_IN_method_call_parameters_2464 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_COMMA_IN_method_call_parameters_2472 = Set[ 7, 15, 20, 23, 27, 46 ]
    TOKENS_FOLLOWING_expresion_IN_method_call_parameters_2478 = Set[ 9, 39 ]
    TOKENS_FOLLOWING_RPAR_IN_method_call_parameters_2491 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
