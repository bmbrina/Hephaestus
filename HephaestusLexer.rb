#!/usr/bin/env ruby
#
# Hephaestus.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Hephaestus.g
# Generated at: 2017-10-19 20:34:35
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

  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = Hephaestus
    include TokenData

    begin
      generated_using( "Hephaestus.g", "3.5", "1.10.0" )
    rescue NoMethodError => error
      # ignore
    end

    RULE_NAMES   = [ "AS", "AND", "R_BOOL", "CLASS", "DEFINE", "R_END", 
                     "ELSE", "R_FLOAT", "FOR", "FUNCTION", "IF", "IN", "R_INTEGER", 
                     "OR", "PRINT", "PROGRAM", "READ", "RETURN", "R_STRING", 
                     "VOID", "WHILE", "BOOL", "FLOAT", "STRING", "ID", "INTEGER", 
                     "ASGN", "COLON", "COMMA", "DOT", "LBRACK", "LPAR", 
                     "RBRACK", "RPAR", "DIV", "EQ", "GREATER", "LESS", "MINUS", 
                     "MULT", "NEQ", "PLUS", "HER", "WS", "NEWLINE" ].freeze
    RULE_METHODS = [ :as!, :and!, :r_bool!, :class!, :define!, :r_end!, 
                     :else!, :r_float!, :for!, :function!, :if!, :in!, :r_integer!, 
                     :or!, :print!, :program!, :read!, :return!, :r_string!, 
                     :void!, :while!, :bool!, :float!, :string!, :id!, :integer!, 
                     :asgn!, :colon!, :comma!, :dot!, :lbrack!, :lpar!, 
                     :rbrack!, :rpar!, :div!, :eq!, :greater!, :less!, :minus!, 
                     :mult!, :neq!, :plus!, :her!, :ws!, :newline! ].freeze

    def initialize( input=nil, options = {} )
      super( input, options )
    end


    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule as! (AS)
    # (in Hephaestus.g)
    def as!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )



      type = AS
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 14:5: 'as'
      match( "as" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 1 )


    end

    # lexer rule and! (AND)
    # (in Hephaestus.g)
    def and!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )



      type = AND
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 15:6: 'and'
      match( "and" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 2 )


    end

    # lexer rule r_bool! (R_BOOL)
    # (in Hephaestus.g)
    def r_bool!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 3 )



      type = R_BOOL
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 16:9: 'bool'
      match( "bool" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 3 )


    end

    # lexer rule class! (CLASS)
    # (in Hephaestus.g)
    def class!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )



      type = CLASS
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 17:8: 'class'
      match( "class" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 4 )


    end

    # lexer rule define! (DEFINE)
    # (in Hephaestus.g)
    def define!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 5 )



      type = DEFINE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 18:9: 'define'
      match( "define" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 5 )


    end

    # lexer rule r_end! (R_END)
    # (in Hephaestus.g)
    def r_end!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 6 )



      type = R_END
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 19:8: 'end'
      match( "end" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 6 )


    end

    # lexer rule else! (ELSE)
    # (in Hephaestus.g)
    def else!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 7 )



      type = ELSE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 20:7: 'else'
      match( "else" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 7 )


    end

    # lexer rule r_float! (R_FLOAT)
    # (in Hephaestus.g)
    def r_float!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 8 )



      type = R_FLOAT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 21:10: 'float'
      match( "float" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 8 )


    end

    # lexer rule for! (FOR)
    # (in Hephaestus.g)
    def for!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 9 )



      type = FOR
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 22:6: 'for'
      match( "for" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 9 )


    end

    # lexer rule function! (FUNCTION)
    # (in Hephaestus.g)
    def function!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 10 )



      type = FUNCTION
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 23:11: 'function'
      match( "function" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 10 )


    end

    # lexer rule if! (IF)
    # (in Hephaestus.g)
    def if!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )



      type = IF
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 24:5: 'if'
      match( "if" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 11 )


    end

    # lexer rule in! (IN)
    # (in Hephaestus.g)
    def in!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )



      type = IN
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 25:5: 'in'
      match( "in" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 12 )


    end

    # lexer rule r_integer! (R_INTEGER)
    # (in Hephaestus.g)
    def r_integer!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )



      type = R_INTEGER
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 26:12: 'integer'
      match( "integer" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 13 )


    end

    # lexer rule or! (OR)
    # (in Hephaestus.g)
    def or!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )



      type = OR
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 27:5: 'or'
      match( "or" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 14 )


    end

    # lexer rule print! (PRINT)
    # (in Hephaestus.g)
    def print!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )



      type = PRINT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 28:8: 'print'
      match( "print" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 15 )


    end

    # lexer rule program! (PROGRAM)
    # (in Hephaestus.g)
    def program!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )



      type = PROGRAM
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 29:10: 'program'
      match( "program" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 16 )


    end

    # lexer rule read! (READ)
    # (in Hephaestus.g)
    def read!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )



      type = READ
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 30:7: 'read'
      match( "read" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 17 )


    end

    # lexer rule return! (RETURN)
    # (in Hephaestus.g)
    def return!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )



      type = RETURN
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 31:9: 'return'
      match( "return" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 18 )


    end

    # lexer rule r_string! (R_STRING)
    # (in Hephaestus.g)
    def r_string!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )



      type = R_STRING
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 32:11: 'string'
      match( "string" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 19 )


    end

    # lexer rule void! (VOID)
    # (in Hephaestus.g)
    def void!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )



      type = VOID
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 33:7: 'void'
      match( "void" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 20 )


    end

    # lexer rule while! (WHILE)
    # (in Hephaestus.g)
    def while!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )



      type = WHILE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 34:8: 'while'
      match( "while" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 21 )


    end

    # lexer rule bool! (BOOL)
    # (in Hephaestus.g)
    def bool!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )



      type = BOOL
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 40:7: ( 'true' | 'false' )
      # at line 40:7: ( 'true' | 'false' )
      alt_1 = 2
      look_1_0 = @input.peek( 1 )

      if ( look_1_0 == 0x74 )
        alt_1 = 1
      elsif ( look_1_0 == 0x66 )
        alt_1 = 2
      else
        raise NoViableAlternative( "", 1, 0 )

      end
      case alt_1
      when 1
        # at line 40:9: 'true'
        match( "true" )


      when 2
        # at line 40:18: 'false'
        match( "false" )


      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 22 )


    end

    # lexer rule float! (FLOAT)
    # (in Hephaestus.g)
    def float!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )



      type = FLOAT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 41:8: ( '0' .. '9' )+ '.' ( '0' .. '9' )+
      # at file 41:8: ( '0' .. '9' )+
      match_count_2 = 0
      while true
        alt_2 = 2
        look_2_0 = @input.peek( 1 )

        if ( look_2_0.between?( 0x30, 0x39 ) )
          alt_2 = 1

        end
        case alt_2
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x30, 0x39 )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          match_count_2 > 0 and break
          eee = EarlyExit(2)


          raise eee
        end
        match_count_2 += 1
      end


      match( 0x2e )
      # at file 41:28: ( '0' .. '9' )+
      match_count_3 = 0
      while true
        alt_3 = 2
        look_3_0 = @input.peek( 1 )

        if ( look_3_0.between?( 0x30, 0x39 ) )
          alt_3 = 1

        end
        case alt_3
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x30, 0x39 )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          match_count_3 > 0 and break
          eee = EarlyExit(3)


          raise eee
        end
        match_count_3 += 1
      end




      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 23 )


    end

    # lexer rule string! (STRING)
    # (in Hephaestus.g)
    def string!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )



      type = STRING
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 42:7: ( '\\'' (~ ( '\\'' | '\\\\' ) | '\\\\' . )* '\\'' | '\"' (~ ( '\"' | '\\\\' ) | '\\\\' . )* '\"' )
      alt_6 = 2
      look_6_0 = @input.peek( 1 )

      if ( look_6_0 == 0x27 )
        alt_6 = 1
      elsif ( look_6_0 == 0x22 )
        alt_6 = 2
      else
        raise NoViableAlternative( "", 6, 0 )

      end
      case alt_6
      when 1
        # at line 42:9: '\\'' (~ ( '\\'' | '\\\\' ) | '\\\\' . )* '\\''
        match( 0x27 )
        # at line 42:14: (~ ( '\\'' | '\\\\' ) | '\\\\' . )*
        while true # decision 4
          alt_4 = 3
          look_4_0 = @input.peek( 1 )

          if ( look_4_0.between?( 0x0, 0x26 ) || look_4_0.between?( 0x28, 0x5b ) || look_4_0.between?( 0x5d, 0xffff ) )
            alt_4 = 1
          elsif ( look_4_0 == 0x5c )
            alt_4 = 2

          end
          case alt_4
          when 1
            # at line 42:16: ~ ( '\\'' | '\\\\' )
            if @input.peek( 1 ).between?( 0x0, 0x26 ) || @input.peek( 1 ).between?( 0x28, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse

            end



          when 2
            # at line 42:35: '\\\\' .
            match( 0x5c )
            match_any

          else
            break # out of loop for decision 4
          end
        end # loop for decision 4

        match( 0x27 )

      when 2
        # at line 42:52: '\"' (~ ( '\"' | '\\\\' ) | '\\\\' . )* '\"'
        match( 0x22 )
        # at line 42:57: (~ ( '\"' | '\\\\' ) | '\\\\' . )*
        while true # decision 5
          alt_5 = 3
          look_5_0 = @input.peek( 1 )

          if ( look_5_0.between?( 0x0, 0x21 ) || look_5_0.between?( 0x23, 0x5b ) || look_5_0.between?( 0x5d, 0xffff ) )
            alt_5 = 1
          elsif ( look_5_0 == 0x5c )
            alt_5 = 2

          end
          case alt_5
          when 1
            # at line 42:59: ~ ( '\"' | '\\\\' )
            if @input.peek( 1 ).between?( 0x0, 0x21 ) || @input.peek( 1 ).between?( 0x23, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse

            end



          when 2
            # at line 42:78: '\\\\' .
            match( 0x5c )
            match_any

          else
            break # out of loop for decision 5
          end
        end # loop for decision 5

        match( 0x22 )

      end

      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 24 )


    end

    # lexer rule id! (ID)
    # (in Hephaestus.g)
    def id!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )



      type = ID
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 43:5: ( 'a' .. 'z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )*
      if @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse

      end


      # at line 43:26: ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )*
      while true # decision 7
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0.between?( 0x30, 0x39 ) || look_7_0.between?( 0x41, 0x5a ) || look_7_0 == 0x5f || look_7_0.between?( 0x61, 0x7a ) )
          alt_7 = 1

        end
        case alt_7
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x30, 0x39 ) || @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek(1) == 0x5f || @input.peek( 1 ).between?( 0x61, 0x7a )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          break # out of loop for decision 7
        end
      end # loop for decision 7



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 25 )


    end

    # lexer rule integer! (INTEGER)
    # (in Hephaestus.g)
    def integer!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )



      type = INTEGER
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 44:10: ( '0' .. '9' )+
      # at file 44:10: ( '0' .. '9' )+
      match_count_8 = 0
      while true
        alt_8 = 2
        look_8_0 = @input.peek( 1 )

        if ( look_8_0.between?( 0x30, 0x39 ) )
          alt_8 = 1

        end
        case alt_8
        when 1
          # at line 
          if @input.peek( 1 ).between?( 0x30, 0x39 )
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          match_count_8 > 0 and break
          eee = EarlyExit(8)


          raise eee
        end
        match_count_8 += 1
      end




      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 26 )


    end

    # lexer rule asgn! (ASGN)
    # (in Hephaestus.g)
    def asgn!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )



      type = ASGN
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 50:7: '='
      match( 0x3d )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 27 )


    end

    # lexer rule colon! (COLON)
    # (in Hephaestus.g)
    def colon!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )



      type = COLON
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 51:8: ':'
      match( 0x3a )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 28 )


    end

    # lexer rule comma! (COMMA)
    # (in Hephaestus.g)
    def comma!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )



      type = COMMA
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 52:8: ','
      match( 0x2c )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 29 )


    end

    # lexer rule dot! (DOT)
    # (in Hephaestus.g)
    def dot!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )



      type = DOT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 53:6: '.'
      match( 0x2e )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 30 )


    end

    # lexer rule lbrack! (LBRACK)
    # (in Hephaestus.g)
    def lbrack!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )



      type = LBRACK
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 54:9: '['
      match( 0x5b )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 31 )


    end

    # lexer rule lpar! (LPAR)
    # (in Hephaestus.g)
    def lpar!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )



      type = LPAR
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 55:7: '('
      match( 0x28 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 32 )


    end

    # lexer rule rbrack! (RBRACK)
    # (in Hephaestus.g)
    def rbrack!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )



      type = RBRACK
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 56:9: ']'
      match( 0x5d )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 33 )


    end

    # lexer rule rpar! (RPAR)
    # (in Hephaestus.g)
    def rpar!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )



      type = RPAR
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 57:7: ')'
      match( 0x29 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 34 )


    end

    # lexer rule div! (DIV)
    # (in Hephaestus.g)
    def div!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )



      type = DIV
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 63:6: '/'
      match( 0x2f )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 35 )


    end

    # lexer rule eq! (EQ)
    # (in Hephaestus.g)
    def eq!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 36 )



      type = EQ
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 64:5: '=='
      match( "==" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 36 )


    end

    # lexer rule greater! (GREATER)
    # (in Hephaestus.g)
    def greater!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 37 )



      type = GREATER
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 65:10: '>'
      match( 0x3e )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 37 )


    end

    # lexer rule less! (LESS)
    # (in Hephaestus.g)
    def less!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 38 )



      type = LESS
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 66:7: '<'
      match( 0x3c )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 38 )


    end

    # lexer rule minus! (MINUS)
    # (in Hephaestus.g)
    def minus!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 39 )



      type = MINUS
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 67:8: '-'
      match( 0x2d )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 39 )


    end

    # lexer rule mult! (MULT)
    # (in Hephaestus.g)
    def mult!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 40 )



      type = MULT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 68:7: '*'
      match( 0x2a )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 40 )


    end

    # lexer rule neq! (NEQ)
    # (in Hephaestus.g)
    def neq!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 41 )



      type = NEQ
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 69:6: '<>'
      match( "<>" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 41 )


    end

    # lexer rule plus! (PLUS)
    # (in Hephaestus.g)
    def plus!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 42 )



      type = PLUS
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 70:7: '+'
      match( 0x2b )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 42 )


    end

    # lexer rule her! (HER)
    # (in Hephaestus.g)
    def her!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 43 )



      type = HER
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 71:6: '<<'
      match( "<<" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 43 )


    end

    # lexer rule ws! (WS)
    # (in Hephaestus.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 44 )



      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 77:5: ( '\\t' | '\\f' | ' ' | '\\u00A0' )+
      # at file 77:5: ( '\\t' | '\\f' | ' ' | '\\u00A0' )+
      match_count_9 = 0
      while true
        alt_9 = 2
        look_9_0 = @input.peek( 1 )

        if ( look_9_0 == 0x9 || look_9_0 == 0xc || look_9_0 == 0x20 || look_9_0 == 0xa0 )
          alt_9 = 1

        end
        case alt_9
        when 1
          # at line 
          if @input.peek(1) == 0x9 || @input.peek(1) == 0xc || @input.peek(1) == 0x20 || @input.peek(1) == 0xa0
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          match_count_9 > 0 and break
          eee = EarlyExit(9)


          raise eee
        end
        match_count_9 += 1
      end



      # --> action
       channel = HIDDEN 
      # <-- action



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 44 )


    end

    # lexer rule newline! (NEWLINE)
    # (in Hephaestus.g)
    def newline!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 45 )



      type = NEWLINE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 78:10: ( '\\n' | '\\r' )+
      # at file 78:10: ( '\\n' | '\\r' )+
      match_count_10 = 0
      while true
        alt_10 = 2
        look_10_0 = @input.peek( 1 )

        if ( look_10_0 == 0xa || look_10_0 == 0xd )
          alt_10 = 1

        end
        case alt_10
        when 1
          # at line 
          if @input.peek(1) == 0xa || @input.peek(1) == 0xd
            @input.consume
          else
            mse = MismatchedSet( nil )
            recover mse
            raise mse

          end



        else
          match_count_10 > 0 and break
          eee = EarlyExit(10)


          raise eee
        end
        match_count_10 += 1
      end



      # --> action
       channel = HIDDEN 
      # <-- action



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 45 )


    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    #
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( AS | AND | R_BOOL | CLASS | DEFINE | R_END | ELSE | R_FLOAT | FOR | FUNCTION | IF | IN | R_INTEGER | OR | PRINT | PROGRAM | READ | RETURN | R_STRING | VOID | WHILE | BOOL | FLOAT | STRING | ID | INTEGER | ASGN | COLON | COMMA | DOT | LBRACK | LPAR | RBRACK | RPAR | DIV | EQ | GREATER | LESS | MINUS | MULT | NEQ | PLUS | HER | WS | NEWLINE )
      alt_11 = 45
      alt_11 = @dfa11.predict( @input )
      case alt_11
      when 1
        # at line 1:10: AS
        as!


      when 2
        # at line 1:13: AND
        and!


      when 3
        # at line 1:17: R_BOOL
        r_bool!


      when 4
        # at line 1:24: CLASS
        class!


      when 5
        # at line 1:30: DEFINE
        define!


      when 6
        # at line 1:37: R_END
        r_end!


      when 7
        # at line 1:43: ELSE
        else!


      when 8
        # at line 1:48: R_FLOAT
        r_float!


      when 9
        # at line 1:56: FOR
        for!


      when 10
        # at line 1:60: FUNCTION
        function!


      when 11
        # at line 1:69: IF
        if!


      when 12
        # at line 1:72: IN
        in!


      when 13
        # at line 1:75: R_INTEGER
        r_integer!


      when 14
        # at line 1:85: OR
        or!


      when 15
        # at line 1:88: PRINT
        print!


      when 16
        # at line 1:94: PROGRAM
        program!


      when 17
        # at line 1:102: READ
        read!


      when 18
        # at line 1:107: RETURN
        return!


      when 19
        # at line 1:114: R_STRING
        r_string!


      when 20
        # at line 1:123: VOID
        void!


      when 21
        # at line 1:128: WHILE
        while!


      when 22
        # at line 1:134: BOOL
        bool!


      when 23
        # at line 1:139: FLOAT
        float!


      when 24
        # at line 1:145: STRING
        string!


      when 25
        # at line 1:152: ID
        id!


      when 26
        # at line 1:155: INTEGER
        integer!


      when 27
        # at line 1:163: ASGN
        asgn!


      when 28
        # at line 1:168: COLON
        colon!


      when 29
        # at line 1:174: COMMA
        comma!


      when 30
        # at line 1:180: DOT
        dot!


      when 31
        # at line 1:184: LBRACK
        lbrack!


      when 32
        # at line 1:191: LPAR
        lpar!


      when 33
        # at line 1:196: RBRACK
        rbrack!


      when 34
        # at line 1:203: RPAR
        rpar!


      when 35
        # at line 1:208: DIV
        div!


      when 36
        # at line 1:212: EQ
        eq!


      when 37
        # at line 1:215: GREATER
        greater!


      when 38
        # at line 1:223: LESS
        less!


      when 39
        # at line 1:228: MINUS
        minus!


      when 40
        # at line 1:234: MULT
        mult!


      when 41
        # at line 1:239: NEQ
        neq!


      when 42
        # at line 1:243: PLUS
        plus!


      when 43
        # at line 1:248: HER
        her!


      when 44
        # at line 1:252: WS
        ws!


      when 45
        # at line 1:255: NEWLINE
        newline!


      end
    end


    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA11 < ANTLR3::DFA
      EOT = unpack( 1, -1, 14, 17, 1, 55, 2, -1, 1, 57, 9, -1, 1, 60, 5, 
                    -1, 1, 61, 10, 17, 1, 72, 1, 74, 1, 75, 6, 17, 8, -1, 
                    1, 84, 3, 17, 1, 88, 2, 17, 1, 91, 2, 17, 1, -1, 1, 
                    17, 2, -1, 8, 17, 1, -1, 1, 103, 2, 17, 1, -1, 1, 106, 
                    1, 17, 1, -1, 5, 17, 1, 113, 2, 17, 1, 116, 1, 17, 1, 
                    118, 1, -1, 1, 119, 1, 17, 1, -1, 1, 121, 1, 17, 1, 
                    118, 1, 17, 1, 124, 1, 17, 1, -1, 2, 17, 1, -1, 1, 128, 
                    2, -1, 1, 129, 1, -1, 2, 17, 1, -1, 1, 17, 1, 133, 1, 
                    134, 2, -1, 1, 17, 1, 136, 1, 137, 2, -1, 1, 138, 3, 
                    -1 )
      EOF = unpack( 139, -1 )
      MIN = unpack( 1, 9, 1, 110, 1, 111, 1, 108, 1, 101, 1, 108, 1, 97, 
                    1, 102, 2, 114, 1, 101, 1, 116, 1, 111, 1, 104, 1, 114, 
                    1, 46, 2, -1, 1, 61, 9, -1, 1, 60, 5, -1, 1, 48, 1, 
                    100, 1, 111, 1, 97, 1, 102, 1, 100, 1, 115, 1, 111, 
                    1, 114, 1, 110, 1, 108, 3, 48, 1, 105, 1, 97, 1, 114, 
                    2, 105, 1, 117, 8, -1, 1, 48, 1, 108, 1, 115, 1, 105, 
                    1, 48, 1, 101, 1, 97, 1, 48, 1, 99, 1, 115, 1, -1, 1, 
                    101, 2, -1, 1, 110, 1, 103, 1, 100, 1, 117, 1, 105, 
                    1, 100, 1, 108, 1, 101, 1, -1, 1, 48, 1, 115, 1, 110, 
                    1, -1, 1, 48, 1, 116, 1, -1, 1, 116, 1, 101, 1, 103, 
                    1, 116, 1, 114, 1, 48, 1, 114, 1, 110, 1, 48, 1, 101, 
                    1, 48, 1, -1, 1, 48, 1, 101, 1, -1, 1, 48, 1, 105, 1, 
                    48, 1, 101, 1, 48, 1, 97, 1, -1, 1, 110, 1, 103, 1, 
                    -1, 1, 48, 2, -1, 1, 48, 1, -1, 1, 111, 1, 114, 1, -1, 
                    1, 109, 2, 48, 2, -1, 1, 110, 2, 48, 2, -1, 1, 48, 3, 
                    -1 )
      MAX = unpack( 1, 160, 1, 115, 1, 111, 1, 108, 1, 101, 1, 110, 1, 117, 
                    1, 110, 2, 114, 1, 101, 1, 116, 1, 111, 1, 104, 1, 114, 
                    1, 57, 2, -1, 1, 61, 9, -1, 1, 62, 5, -1, 1, 122, 1, 
                    100, 1, 111, 1, 97, 1, 102, 1, 100, 1, 115, 1, 111, 
                    1, 114, 1, 110, 1, 108, 3, 122, 1, 111, 1, 116, 1, 114, 
                    2, 105, 1, 117, 8, -1, 1, 122, 1, 108, 1, 115, 1, 105, 
                    1, 122, 1, 101, 1, 97, 1, 122, 1, 99, 1, 115, 1, -1, 
                    1, 101, 2, -1, 1, 110, 1, 103, 1, 100, 1, 117, 1, 105, 
                    1, 100, 1, 108, 1, 101, 1, -1, 1, 122, 1, 115, 1, 110, 
                    1, -1, 1, 122, 1, 116, 1, -1, 1, 116, 1, 101, 1, 103, 
                    1, 116, 1, 114, 1, 122, 1, 114, 1, 110, 1, 122, 1, 101, 
                    1, 122, 1, -1, 1, 122, 1, 101, 1, -1, 1, 122, 1, 105, 
                    1, 122, 1, 101, 1, 122, 1, 97, 1, -1, 1, 110, 1, 103, 
                    1, -1, 1, 122, 2, -1, 1, 122, 1, -1, 1, 111, 1, 114, 
                    1, -1, 1, 109, 2, 122, 2, -1, 1, 110, 2, 122, 2, -1, 
                    1, 122, 3, -1 )
      ACCEPT = unpack( 16, -1, 1, 24, 1, 25, 1, -1, 1, 28, 1, 29, 1, 30, 
                       1, 31, 1, 32, 1, 33, 1, 34, 1, 35, 1, 37, 1, -1, 
                       1, 39, 1, 40, 1, 42, 1, 44, 1, 45, 20, -1, 1, 23, 
                       1, 26, 1, 36, 1, 27, 1, 41, 1, 43, 1, 38, 1, 1, 10, 
                       -1, 1, 11, 1, -1, 1, 12, 1, 14, 8, -1, 1, 2, 3, -1, 
                       1, 6, 2, -1, 1, 9, 11, -1, 1, 3, 2, -1, 1, 7, 6, 
                       -1, 1, 17, 2, -1, 1, 20, 1, -1, 1, 22, 1, 4, 1, -1, 
                       1, 8, 2, -1, 1, 15, 3, -1, 1, 21, 1, 5, 3, -1, 1, 
                       18, 1, 19, 1, -1, 1, 13, 1, 16, 1, 10 )
      SPECIAL = unpack( 139, -1 )
      TRANSITION = [
        unpack( 1, 32, 1, 33, 1, -1, 1, 32, 1, 33, 18, -1, 1, 32, 1, -1, 
                1, 16, 4, -1, 1, 16, 1, 23, 1, 25, 1, 30, 1, 31, 1, 20, 
                1, 29, 1, 21, 1, 26, 10, 15, 1, 19, 1, -1, 1, 28, 1, 18, 
                1, 27, 28, -1, 1, 22, 1, -1, 1, 24, 1, -1, 1, 17, 1, -1, 
                1, 1, 1, 2, 1, 3, 1, 4, 1, 5, 1, 6, 2, 17, 1, 7, 5, 17, 
                1, 8, 1, 9, 1, 17, 1, 10, 1, 11, 1, 14, 1, 17, 1, 12, 1, 
                13, 3, 17, 37, -1, 1, 32 ),
        unpack( 1, 35, 4, -1, 1, 34 ),
        unpack( 1, 36 ),
        unpack( 1, 37 ),
        unpack( 1, 38 ),
        unpack( 1, 40, 1, -1, 1, 39 ),
        unpack( 1, 44, 10, -1, 1, 41, 2, -1, 1, 42, 5, -1, 1, 43 ),
        unpack( 1, 45, 7, -1, 1, 46 ),
        unpack( 1, 47 ),
        unpack( 1, 48 ),
        unpack( 1, 49 ),
        unpack( 1, 50 ),
        unpack( 1, 51 ),
        unpack( 1, 52 ),
        unpack( 1, 53 ),
        unpack( 1, 54, 1, -1, 10, 15 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 56 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 59, 1, -1, 1, 58 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 17, 7, -1, 26, 17, 4, -1, 1, 17, 1, -1, 26, 17 ),
        unpack( 1, 62 ),
        unpack( 1, 63 ),
        unpack( 1, 64 ),
        unpack( 1, 65 ),
        unpack( 1, 66 ),
        unpack( 1, 67 ),
        unpack( 1, 68 ),
        unpack( 1, 69 ),
        unpack( 1, 70 ),
        unpack( 1, 71 ),
        unpack( 10, 17, 7, -1, 26, 17, 4, -1, 1, 17, 1, -1, 26, 17 ),
        unpack( 10, 17, 7, -1, 26, 17, 4, -1, 1, 17, 1, -1, 19, 17, 1, 
                 73, 6, 17 ),
        unpack( 10, 17, 7, -1, 26, 17, 4, -1, 1, 17, 1, -1, 26, 17 ),
        unpack( 1, 76, 5, -1, 1, 77 ),
        unpack( 1, 78, 18, -1, 1, 79 ),
        unpack( 1, 80 ),
        unpack( 1, 81 ),
        unpack( 1, 82 ),
        unpack( 1, 83 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 17, 7, -1, 26, 17, 4, -1, 1, 17, 1, -1, 26, 17 ),
        unpack( 1, 85 ),
        unpack( 1, 86 ),
        unpack( 1, 87 ),
        unpack( 10, 17, 7, -1, 26, 17, 4, -1, 1, 17, 1, -1, 26, 17 ),
        unpack( 1, 89 ),
        unpack( 1, 90 ),
        unpack( 10, 17, 7, -1, 26, 17, 4, -1, 1, 17, 1, -1, 26, 17 ),
        unpack( 1, 92 ),
        unpack( 1, 93 ),
        unpack(  ),
        unpack( 1, 94 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 95 ),
        unpack( 1, 96 ),
        unpack( 1, 97 ),
        unpack( 1, 98 ),
        unpack( 1, 99 ),
        unpack( 1, 100 ),
        unpack( 1, 101 ),
        unpack( 1, 102 ),
        unpack(  ),
        unpack( 10, 17, 7, -1, 26, 17, 4, -1, 1, 17, 1, -1, 26, 17 ),
        unpack( 1, 104 ),
        unpack( 1, 105 ),
        unpack(  ),
        unpack( 10, 17, 7, -1, 26, 17, 4, -1, 1, 17, 1, -1, 26, 17 ),
        unpack( 1, 107 ),
        unpack(  ),
        unpack( 1, 108 ),
        unpack( 1, 109 ),
        unpack( 1, 110 ),
        unpack( 1, 111 ),
        unpack( 1, 112 ),
        unpack( 10, 17, 7, -1, 26, 17, 4, -1, 1, 17, 1, -1, 26, 17 ),
        unpack( 1, 114 ),
        unpack( 1, 115 ),
        unpack( 10, 17, 7, -1, 26, 17, 4, -1, 1, 17, 1, -1, 26, 17 ),
        unpack( 1, 117 ),
        unpack( 10, 17, 7, -1, 26, 17, 4, -1, 1, 17, 1, -1, 26, 17 ),
        unpack(  ),
        unpack( 10, 17, 7, -1, 26, 17, 4, -1, 1, 17, 1, -1, 26, 17 ),
        unpack( 1, 120 ),
        unpack(  ),
        unpack( 10, 17, 7, -1, 26, 17, 4, -1, 1, 17, 1, -1, 26, 17 ),
        unpack( 1, 122 ),
        unpack( 10, 17, 7, -1, 26, 17, 4, -1, 1, 17, 1, -1, 26, 17 ),
        unpack( 1, 123 ),
        unpack( 10, 17, 7, -1, 26, 17, 4, -1, 1, 17, 1, -1, 26, 17 ),
        unpack( 1, 125 ),
        unpack(  ),
        unpack( 1, 126 ),
        unpack( 1, 127 ),
        unpack(  ),
        unpack( 10, 17, 7, -1, 26, 17, 4, -1, 1, 17, 1, -1, 26, 17 ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 17, 7, -1, 26, 17, 4, -1, 1, 17, 1, -1, 26, 17 ),
        unpack(  ),
        unpack( 1, 130 ),
        unpack( 1, 131 ),
        unpack(  ),
        unpack( 1, 132 ),
        unpack( 10, 17, 7, -1, 26, 17, 4, -1, 1, 17, 1, -1, 26, 17 ),
        unpack( 10, 17, 7, -1, 26, 17, 4, -1, 1, 17, 1, -1, 26, 17 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 135 ),
        unpack( 10, 17, 7, -1, 26, 17, 4, -1, 1, 17, 1, -1, 26, 17 ),
        unpack( 10, 17, 7, -1, 26, 17, 4, -1, 1, 17, 1, -1, 26, 17 ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 17, 7, -1, 26, 17, 4, -1, 1, 17, 1, -1, 26, 17 ),
        unpack(  ),
        unpack(  ),
        unpack(  )
      ].freeze

      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end

      @decision = 11


      def description
        <<-'__dfa_description__'.strip!
          1:1: Tokens : ( AS | AND | R_BOOL | CLASS | DEFINE | R_END | ELSE | R_FLOAT | FOR | FUNCTION | IF | IN | R_INTEGER | OR | PRINT | PROGRAM | READ | RETURN | R_STRING | VOID | WHILE | BOOL | FLOAT | STRING | ID | INTEGER | ASGN | COLON | COMMA | DOT | LBRACK | LPAR | RBRACK | RPAR | DIV | EQ | GREATER | LESS | MINUS | MULT | NEQ | PLUS | HER | WS | NEWLINE );
        __dfa_description__
      end

    end


    private

    def initialize_dfas
      super rescue nil
      @dfa11 = DFA11.new( self, 11 )


    end

  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main( ARGV ) } if __FILE__ == $0

end
