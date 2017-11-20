#!/usr/bin/env ruby
#
# Hephaestus.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Hephaestus.g
# Generated at: 2017-11-20 15:27:11
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
                   :FUNCTION => 17, :GREATEQ => 18, :GREATER => 19, :HER => 20, 
                   :ID => 21, :IF => 22, :IN => 23, :INTEGER => 24, :LBRACK => 25, 
                   :LEQ => 26, :LESS => 27, :LPAR => 28, :MINUS => 29, :MULT => 30, 
                   :NEQ => 31, :NEWLINE => 32, :OR => 33, :PLUS => 34, :PRINT => 35, 
                   :PROGRAM => 36, :RBRACK => 37, :READ => 38, :RETURN => 39, 
                   :RPAR => 40, :R_BOOL => 41, :R_CLASS => 42, :R_END => 43, 
                   :R_FLOAT => 44, :R_INTEGER => 45, :R_STRING => 46, :STRING => 47, 
                   :VOID => 48, :WHILE => 49, :WS => 50 )

  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = Hephaestus
    include TokenData

    begin
      generated_using( "Hephaestus.g", "3.5", "1.10.0" )
    rescue NoMethodError => error
      # ignore
    end

    RULE_NAMES   = [ "AS", "AND", "R_BOOL", "R_CLASS", "DEFINE", "R_END", 
                     "ELSE", "R_FLOAT", "FOR", "FUNCTION", "HER", "IF", 
                     "IN", "R_INTEGER", "OR", "PRINT", "PROGRAM", "READ", 
                     "RETURN", "R_STRING", "VOID", "WHILE", "DIV", "EQ", 
                     "GREATER", "GREATEQ", "LESS", "LEQ", "MINUS", "MULT", 
                     "NEQ", "PLUS", "BOOL", "STRING", "ID", "FLOAT", "INTEGER", 
                     "ASGN", "COLON", "COMMA", "DOT", "LBRACK", "LPAR", 
                     "RBRACK", "RPAR", "WS", "NEWLINE" ].freeze
    RULE_METHODS = [ :as!, :and!, :r_bool!, :r_class!, :define!, :r_end!, 
                     :else!, :r_float!, :for!, :function!, :her!, :if!, 
                     :in!, :r_integer!, :or!, :print!, :program!, :read!, 
                     :return!, :r_string!, :void!, :while!, :div!, :eq!, 
                     :greater!, :greateq!, :less!, :leq!, :minus!, :mult!, 
                     :neq!, :plus!, :bool!, :string!, :id!, :float!, :integer!, 
                     :asgn!, :colon!, :comma!, :dot!, :lbrack!, :lpar!, 
                     :rbrack!, :rpar!, :ws!, :newline! ].freeze

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
      # at line 30:5: 'as'
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
      # at line 31:6: 'and'
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
      # at line 32:9: 'Bool'
      match( "Bool" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 3 )


    end

    # lexer rule r_class! (R_CLASS)
    # (in Hephaestus.g)
    def r_class!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 4 )



      type = R_CLASS
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 33:10: 'class'
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
      # at line 34:9: 'define'
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
      # at line 35:8: 'end'
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
      # at line 36:7: 'else'
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
      # at line 37:10: 'Float'
      match( "Float" )



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
      # at line 38:6: 'for'
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
      # at line 39:11: 'function'
      match( "function" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 10 )


    end

    # lexer rule her! (HER)
    # (in Hephaestus.g)
    def her!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 11 )



      type = HER
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 40:6: 'inherits'
      match( "inherits" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 11 )


    end

    # lexer rule if! (IF)
    # (in Hephaestus.g)
    def if!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 12 )



      type = IF
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 41:5: 'if'
      match( "if" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 12 )


    end

    # lexer rule in! (IN)
    # (in Hephaestus.g)
    def in!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 13 )



      type = IN
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 42:5: 'in'
      match( "in" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 13 )


    end

    # lexer rule r_integer! (R_INTEGER)
    # (in Hephaestus.g)
    def r_integer!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 14 )



      type = R_INTEGER
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 43:12: 'Integer'
      match( "Integer" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 14 )


    end

    # lexer rule or! (OR)
    # (in Hephaestus.g)
    def or!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 15 )



      type = OR
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 44:5: 'or'
      match( "or" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 15 )


    end

    # lexer rule print! (PRINT)
    # (in Hephaestus.g)
    def print!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 16 )



      type = PRINT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 45:8: 'print'
      match( "print" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 16 )


    end

    # lexer rule program! (PROGRAM)
    # (in Hephaestus.g)
    def program!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 17 )



      type = PROGRAM
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 46:10: 'program'
      match( "program" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 17 )


    end

    # lexer rule read! (READ)
    # (in Hephaestus.g)
    def read!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 18 )



      type = READ
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 47:7: 'read'
      match( "read" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 18 )


    end

    # lexer rule return! (RETURN)
    # (in Hephaestus.g)
    def return!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 19 )



      type = RETURN
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 48:9: 'return'
      match( "return" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 19 )


    end

    # lexer rule r_string! (R_STRING)
    # (in Hephaestus.g)
    def r_string!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 20 )



      type = R_STRING
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 49:11: 'String'
      match( "String" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 20 )


    end

    # lexer rule void! (VOID)
    # (in Hephaestus.g)
    def void!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 21 )



      type = VOID
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 50:7: 'Void'
      match( "Void" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 21 )


    end

    # lexer rule while! (WHILE)
    # (in Hephaestus.g)
    def while!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 22 )



      type = WHILE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 51:8: 'while'
      match( "while" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 22 )


    end

    # lexer rule div! (DIV)
    # (in Hephaestus.g)
    def div!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 23 )



      type = DIV
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 56:6: '/'
      match( 0x2f )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 23 )


    end

    # lexer rule eq! (EQ)
    # (in Hephaestus.g)
    def eq!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 24 )



      type = EQ
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 57:5: '=='
      match( "==" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 24 )


    end

    # lexer rule greater! (GREATER)
    # (in Hephaestus.g)
    def greater!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 25 )



      type = GREATER
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 58:10: '>'
      match( 0x3e )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 25 )


    end

    # lexer rule greateq! (GREATEQ)
    # (in Hephaestus.g)
    def greateq!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 26 )



      type = GREATEQ
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 59:10: '>='
      match( ">=" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 26 )


    end

    # lexer rule less! (LESS)
    # (in Hephaestus.g)
    def less!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 27 )



      type = LESS
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 60:7: '<'
      match( 0x3c )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 27 )


    end

    # lexer rule leq! (LEQ)
    # (in Hephaestus.g)
    def leq!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 28 )



      type = LEQ
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 61:6: '<='
      match( "<=" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 28 )


    end

    # lexer rule minus! (MINUS)
    # (in Hephaestus.g)
    def minus!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 29 )



      type = MINUS
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 62:8: '-'
      match( 0x2d )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 29 )


    end

    # lexer rule mult! (MULT)
    # (in Hephaestus.g)
    def mult!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 30 )



      type = MULT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 63:7: '*'
      match( 0x2a )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 30 )


    end

    # lexer rule neq! (NEQ)
    # (in Hephaestus.g)
    def neq!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 31 )



      type = NEQ
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 64:6: '<>'
      match( "<>" )



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 31 )


    end

    # lexer rule plus! (PLUS)
    # (in Hephaestus.g)
    def plus!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 32 )



      type = PLUS
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 65:7: '+'
      match( 0x2b )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 32 )


    end

    # lexer rule bool! (BOOL)
    # (in Hephaestus.g)
    def bool!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 33 )



      type = BOOL
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 70:7: ( 'true' | 'false' )
      # at line 70:7: ( 'true' | 'false' )
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
        # at line 70:9: 'true'
        match( "true" )


      when 2
        # at line 70:18: 'false'
        match( "false" )


      end


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 33 )


    end

    # lexer rule string! (STRING)
    # (in Hephaestus.g)
    def string!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 34 )



      type = STRING
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 71:7: ( '\\'' (~ ( '\\'' | '\\\\' ) | '\\\\' . )* '\\'' | '\"' (~ ( '\"' | '\\\\' ) | '\\\\' . )* '\"' )
      alt_4 = 2
      look_4_0 = @input.peek( 1 )

      if ( look_4_0 == 0x27 )
        alt_4 = 1
      elsif ( look_4_0 == 0x22 )
        alt_4 = 2
      else
        raise NoViableAlternative( "", 4, 0 )

      end
      case alt_4
      when 1
        # at line 71:9: '\\'' (~ ( '\\'' | '\\\\' ) | '\\\\' . )* '\\''
        match( 0x27 )
        # at line 71:14: (~ ( '\\'' | '\\\\' ) | '\\\\' . )*
        while true # decision 2
          alt_2 = 3
          look_2_0 = @input.peek( 1 )

          if ( look_2_0.between?( 0x0, 0x26 ) || look_2_0.between?( 0x28, 0x5b ) || look_2_0.between?( 0x5d, 0xffff ) )
            alt_2 = 1
          elsif ( look_2_0 == 0x5c )
            alt_2 = 2

          end
          case alt_2
          when 1
            # at line 71:16: ~ ( '\\'' | '\\\\' )
            if @input.peek( 1 ).between?( 0x0, 0x26 ) || @input.peek( 1 ).between?( 0x28, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse

            end



          when 2
            # at line 71:35: '\\\\' .
            match( 0x5c )
            match_any

          else
            break # out of loop for decision 2
          end
        end # loop for decision 2

        match( 0x27 )

      when 2
        # at line 71:52: '\"' (~ ( '\"' | '\\\\' ) | '\\\\' . )* '\"'
        match( 0x22 )
        # at line 71:57: (~ ( '\"' | '\\\\' ) | '\\\\' . )*
        while true # decision 3
          alt_3 = 3
          look_3_0 = @input.peek( 1 )

          if ( look_3_0.between?( 0x0, 0x21 ) || look_3_0.between?( 0x23, 0x5b ) || look_3_0.between?( 0x5d, 0xffff ) )
            alt_3 = 1
          elsif ( look_3_0 == 0x5c )
            alt_3 = 2

          end
          case alt_3
          when 1
            # at line 71:59: ~ ( '\"' | '\\\\' )
            if @input.peek( 1 ).between?( 0x0, 0x21 ) || @input.peek( 1 ).between?( 0x23, 0x5b ) || @input.peek( 1 ).between?( 0x5d, 0xff )
              @input.consume
            else
              mse = MismatchedSet( nil )
              recover mse
              raise mse

            end



          when 2
            # at line 71:78: '\\\\' .
            match( 0x5c )
            match_any

          else
            break # out of loop for decision 3
          end
        end # loop for decision 3

        match( 0x22 )

      end

      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 34 )


    end

    # lexer rule id! (ID)
    # (in Hephaestus.g)
    def id!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 35 )



      type = ID
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 72:5: ( 'a' .. 'z' | 'A' .. 'Z' ) ( ( 'a' .. 'z' | 'A' .. 'Z' ) | '_' | ( '0' .. '9' ) )*
      if @input.peek( 1 ).between?( 0x41, 0x5a ) || @input.peek( 1 ).between?( 0x61, 0x7a )
        @input.consume
      else
        mse = MismatchedSet( nil )
        recover mse
        raise mse

      end


      # at line 72:33: ( ( 'a' .. 'z' | 'A' .. 'Z' ) | '_' | ( '0' .. '9' ) )*
      while true # decision 5
        alt_5 = 2
        look_5_0 = @input.peek( 1 )

        if ( look_5_0.between?( 0x30, 0x39 ) || look_5_0.between?( 0x41, 0x5a ) || look_5_0 == 0x5f || look_5_0.between?( 0x61, 0x7a ) )
          alt_5 = 1

        end
        case alt_5
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
          break # out of loop for decision 5
        end
      end # loop for decision 5



      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 35 )


    end

    # lexer rule float! (FLOAT)
    # (in Hephaestus.g)
    def float!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 36 )



      type = FLOAT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 73:8: ( '0' .. '9' )+ '.' ( '0' .. '9' )+
      # at file 73:8: ( '0' .. '9' )+
      match_count_6 = 0
      while true
        alt_6 = 2
        look_6_0 = @input.peek( 1 )

        if ( look_6_0.between?( 0x30, 0x39 ) )
          alt_6 = 1

        end
        case alt_6
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
          match_count_6 > 0 and break
          eee = EarlyExit(6)


          raise eee
        end
        match_count_6 += 1
      end


      match( 0x2e )
      # at file 73:26: ( '0' .. '9' )+
      match_count_7 = 0
      while true
        alt_7 = 2
        look_7_0 = @input.peek( 1 )

        if ( look_7_0.between?( 0x30, 0x39 ) )
          alt_7 = 1

        end
        case alt_7
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
          match_count_7 > 0 and break
          eee = EarlyExit(7)


          raise eee
        end
        match_count_7 += 1
      end




      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 36 )


    end

    # lexer rule integer! (INTEGER)
    # (in Hephaestus.g)
    def integer!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 37 )



      type = INTEGER
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 74:10: ( '0' .. '9' )+
      # at file 74:10: ( '0' .. '9' )+
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
      # trace_out( __method__, 37 )


    end

    # lexer rule asgn! (ASGN)
    # (in Hephaestus.g)
    def asgn!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 38 )



      type = ASGN
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 79:7: '='
      match( 0x3d )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 38 )


    end

    # lexer rule colon! (COLON)
    # (in Hephaestus.g)
    def colon!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 39 )



      type = COLON
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 80:8: ':'
      match( 0x3a )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 39 )


    end

    # lexer rule comma! (COMMA)
    # (in Hephaestus.g)
    def comma!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 40 )



      type = COMMA
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 81:8: ','
      match( 0x2c )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 40 )


    end

    # lexer rule dot! (DOT)
    # (in Hephaestus.g)
    def dot!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 41 )



      type = DOT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 82:6: '.'
      match( 0x2e )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 41 )


    end

    # lexer rule lbrack! (LBRACK)
    # (in Hephaestus.g)
    def lbrack!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 42 )



      type = LBRACK
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 83:9: '['
      match( 0x5b )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 42 )


    end

    # lexer rule lpar! (LPAR)
    # (in Hephaestus.g)
    def lpar!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 43 )



      type = LPAR
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 84:7: '('
      match( 0x28 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 43 )


    end

    # lexer rule rbrack! (RBRACK)
    # (in Hephaestus.g)
    def rbrack!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 44 )



      type = RBRACK
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 85:9: ']'
      match( 0x5d )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 44 )


    end

    # lexer rule rpar! (RPAR)
    # (in Hephaestus.g)
    def rpar!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 45 )



      type = RPAR
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 86:7: ')'
      match( 0x29 )


      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 45 )


    end

    # lexer rule ws! (WS)
    # (in Hephaestus.g)
    def ws!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 46 )



      type = WS
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 91:5: ( '\\t' | '\\f' | ' ' | '\\u00A0' )+
      # at file 91:5: ( '\\t' | '\\f' | ' ' | '\\u00A0' )+
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
      # trace_out( __method__, 46 )


    end

    # lexer rule newline! (NEWLINE)
    # (in Hephaestus.g)
    def newline!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 47 )



      type = NEWLINE
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 92:10: ( '\\n' | '\\r' )+
      # at file 92:10: ( '\\n' | '\\r' )+
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
      # trace_out( __method__, 47 )


    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    #
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( AS | AND | R_BOOL | R_CLASS | DEFINE | R_END | ELSE | R_FLOAT | FOR | FUNCTION | HER | IF | IN | R_INTEGER | OR | PRINT | PROGRAM | READ | RETURN | R_STRING | VOID | WHILE | DIV | EQ | GREATER | GREATEQ | LESS | LEQ | MINUS | MULT | NEQ | PLUS | BOOL | STRING | ID | FLOAT | INTEGER | ASGN | COLON | COMMA | DOT | LBRACK | LPAR | RBRACK | RPAR | WS | NEWLINE )
      alt_11 = 47
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
        # at line 1:24: R_CLASS
        r_class!


      when 5
        # at line 1:32: DEFINE
        define!


      when 6
        # at line 1:39: R_END
        r_end!


      when 7
        # at line 1:45: ELSE
        else!


      when 8
        # at line 1:50: R_FLOAT
        r_float!


      when 9
        # at line 1:58: FOR
        for!


      when 10
        # at line 1:62: FUNCTION
        function!


      when 11
        # at line 1:71: HER
        her!


      when 12
        # at line 1:75: IF
        if!


      when 13
        # at line 1:78: IN
        in!


      when 14
        # at line 1:81: R_INTEGER
        r_integer!


      when 15
        # at line 1:91: OR
        or!


      when 16
        # at line 1:94: PRINT
        print!


      when 17
        # at line 1:100: PROGRAM
        program!


      when 18
        # at line 1:108: READ
        read!


      when 19
        # at line 1:113: RETURN
        return!


      when 20
        # at line 1:120: R_STRING
        r_string!


      when 21
        # at line 1:129: VOID
        void!


      when 22
        # at line 1:134: WHILE
        while!


      when 23
        # at line 1:140: DIV
        div!


      when 24
        # at line 1:144: EQ
        eq!


      when 25
        # at line 1:147: GREATER
        greater!


      when 26
        # at line 1:155: GREATEQ
        greateq!


      when 27
        # at line 1:163: LESS
        less!


      when 28
        # at line 1:168: LEQ
        leq!


      when 29
        # at line 1:172: MINUS
        minus!


      when 30
        # at line 1:178: MULT
        mult!


      when 31
        # at line 1:183: NEQ
        neq!


      when 32
        # at line 1:187: PLUS
        plus!


      when 33
        # at line 1:192: BOOL
        bool!


      when 34
        # at line 1:197: STRING
        string!


      when 35
        # at line 1:204: ID
        id!


      when 36
        # at line 1:207: FLOAT
        float!


      when 37
        # at line 1:213: INTEGER
        integer!


      when 38
        # at line 1:221: ASGN
        asgn!


      when 39
        # at line 1:226: COLON
        colon!


      when 40
        # at line 1:232: COMMA
        comma!


      when 41
        # at line 1:238: DOT
        dot!


      when 42
        # at line 1:242: LBRACK
        lbrack!


      when 43
        # at line 1:249: LPAR
        lpar!


      when 44
        # at line 1:254: RBRACK
        rbrack!


      when 45
        # at line 1:261: RPAR
        rpar!


      when 46
        # at line 1:266: WS
        ws!


      when 47
        # at line 1:269: NEWLINE
        newline!


      end
    end


    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA11 < ANTLR3::DFA
      EOT = unpack( 1, -1, 15, 25, 1, -1, 1, 57, 1, 59, 1, 62, 3, -1, 1, 
                    25, 2, -1, 1, 65, 9, -1, 1, 66, 10, 25, 1, 78, 1, 79, 
                    1, 25, 1, 81, 5, 25, 7, -1, 1, 25, 3, -1, 1, 90, 3, 
                    25, 1, 94, 2, 25, 1, 97, 3, 25, 2, -1, 1, 25, 1, -1, 
                    8, 25, 1, -1, 1, 110, 2, 25, 1, -1, 1, 113, 1, 25, 1, 
                    -1, 6, 25, 1, 121, 2, 25, 1, 124, 1, 25, 1, 126, 1, 
                    -1, 1, 127, 1, 25, 1, -1, 1, 129, 1, 25, 1, 126, 2, 
                    25, 1, 133, 1, 25, 1, -1, 2, 25, 1, -1, 1, 137, 2, -1, 
                    1, 138, 1, -1, 3, 25, 1, -1, 1, 25, 1, 143, 1, 144, 
                    2, -1, 2, 25, 1, 147, 1, 148, 2, -1, 1, 149, 1, 150, 
                    4, -1 )
      EOF = unpack( 151, -1 )
      MIN = unpack( 1, 9, 1, 110, 1, 111, 1, 108, 1, 101, 2, 108, 1, 97, 
                    1, 102, 1, 110, 2, 114, 1, 101, 1, 116, 1, 111, 1, 104, 
                    1, -1, 3, 61, 3, -1, 1, 114, 2, -1, 1, 46, 9, -1, 1, 
                    48, 1, 100, 1, 111, 1, 97, 1, 102, 1, 100, 1, 115, 1, 
                    111, 1, 114, 1, 110, 1, 108, 2, 48, 1, 116, 1, 48, 1, 
                    105, 1, 97, 1, 114, 2, 105, 7, -1, 1, 117, 3, -1, 1, 
                    48, 1, 108, 1, 115, 1, 105, 1, 48, 1, 101, 1, 97, 1, 
                    48, 1, 99, 1, 115, 1, 101, 2, -1, 1, 101, 1, -1, 1, 
                    110, 1, 103, 1, 100, 1, 117, 1, 105, 1, 100, 1, 108, 
                    1, 101, 1, -1, 1, 48, 1, 115, 1, 110, 1, -1, 1, 48, 
                    1, 116, 1, -1, 1, 116, 1, 101, 1, 114, 1, 103, 1, 116, 
                    1, 114, 1, 48, 1, 114, 1, 110, 1, 48, 1, 101, 1, 48, 
                    1, -1, 1, 48, 1, 101, 1, -1, 1, 48, 1, 105, 1, 48, 1, 
                    105, 1, 101, 1, 48, 1, 97, 1, -1, 1, 110, 1, 103, 1, 
                    -1, 1, 48, 2, -1, 1, 48, 1, -1, 1, 111, 1, 116, 1, 114, 
                    1, -1, 1, 109, 2, 48, 2, -1, 1, 110, 1, 115, 2, 48, 
                    2, -1, 2, 48, 4, -1 )
      MAX = unpack( 1, 160, 1, 115, 1, 111, 1, 108, 1, 101, 1, 110, 1, 108, 
                    1, 117, 2, 110, 2, 114, 1, 101, 1, 116, 1, 111, 1, 104, 
                    1, -1, 2, 61, 1, 62, 3, -1, 1, 114, 2, -1, 1, 57, 9, 
                    -1, 1, 122, 1, 100, 1, 111, 1, 97, 1, 102, 1, 100, 1, 
                    115, 1, 111, 1, 114, 1, 110, 1, 108, 2, 122, 1, 116, 
                    1, 122, 1, 111, 1, 116, 1, 114, 2, 105, 7, -1, 1, 117, 
                    3, -1, 1, 122, 1, 108, 1, 115, 1, 105, 1, 122, 1, 101, 
                    1, 97, 1, 122, 1, 99, 1, 115, 1, 101, 2, -1, 1, 101, 
                    1, -1, 1, 110, 1, 103, 1, 100, 1, 117, 1, 105, 1, 100, 
                    1, 108, 1, 101, 1, -1, 1, 122, 1, 115, 1, 110, 1, -1, 
                    1, 122, 1, 116, 1, -1, 1, 116, 1, 101, 1, 114, 1, 103, 
                    1, 116, 1, 114, 1, 122, 1, 114, 1, 110, 1, 122, 1, 101, 
                    1, 122, 1, -1, 1, 122, 1, 101, 1, -1, 1, 122, 1, 105, 
                    1, 122, 1, 105, 1, 101, 1, 122, 1, 97, 1, -1, 1, 110, 
                    1, 103, 1, -1, 1, 122, 2, -1, 1, 122, 1, -1, 1, 111, 
                    1, 116, 1, 114, 1, -1, 1, 109, 2, 122, 2, -1, 1, 110, 
                    1, 115, 2, 122, 2, -1, 2, 122, 4, -1 )
      ACCEPT = unpack( 16, -1, 1, 23, 3, -1, 1, 29, 1, 30, 1, 32, 1, -1, 
                       1, 34, 1, 35, 1, -1, 1, 39, 1, 40, 1, 41, 1, 42, 
                       1, 43, 1, 44, 1, 45, 1, 46, 1, 47, 20, -1, 1, 24, 
                       1, 38, 1, 26, 1, 25, 1, 28, 1, 31, 1, 27, 1, -1, 
                       1, 36, 1, 37, 1, 1, 11, -1, 1, 13, 1, 12, 1, -1, 
                       1, 15, 8, -1, 1, 2, 3, -1, 1, 6, 2, -1, 1, 9, 12, 
                       -1, 1, 3, 2, -1, 1, 7, 7, -1, 1, 18, 2, -1, 1, 21, 
                       1, -1, 1, 33, 1, 4, 1, -1, 1, 8, 3, -1, 1, 16, 3, 
                       -1, 1, 22, 1, 5, 4, -1, 1, 19, 1, 20, 2, -1, 1, 14, 
                       1, 17, 1, 10, 1, 11 )
      SPECIAL = unpack( 151, -1 )
      TRANSITION = [
        unpack( 1, 34, 1, 35, 1, -1, 1, 34, 1, 35, 18, -1, 1, 34, 1, -1, 
                1, 24, 4, -1, 1, 24, 1, 31, 1, 33, 1, 21, 1, 22, 1, 28, 
                1, 20, 1, 29, 1, 16, 10, 26, 1, 27, 1, -1, 1, 19, 1, 17, 
                1, 18, 2, -1, 1, 25, 1, 2, 3, 25, 1, 6, 2, 25, 1, 9, 9, 
                25, 1, 13, 2, 25, 1, 14, 4, 25, 1, 30, 1, -1, 1, 32, 3, 
                -1, 1, 1, 1, 25, 1, 3, 1, 4, 1, 5, 1, 7, 2, 25, 1, 8, 5, 
                25, 1, 10, 1, 11, 1, 25, 1, 12, 1, 25, 1, 23, 2, 25, 1, 
                15, 3, 25, 37, -1, 1, 34 ),
        unpack( 1, 37, 4, -1, 1, 36 ),
        unpack( 1, 38 ),
        unpack( 1, 39 ),
        unpack( 1, 40 ),
        unpack( 1, 42, 1, -1, 1, 41 ),
        unpack( 1, 43 ),
        unpack( 1, 46, 13, -1, 1, 44, 5, -1, 1, 45 ),
        unpack( 1, 48, 7, -1, 1, 47 ),
        unpack( 1, 49 ),
        unpack( 1, 50 ),
        unpack( 1, 51 ),
        unpack( 1, 52 ),
        unpack( 1, 53 ),
        unpack( 1, 54 ),
        unpack( 1, 55 ),
        unpack(  ),
        unpack( 1, 56 ),
        unpack( 1, 58 ),
        unpack( 1, 60, 1, 61 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 63 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 64, 1, -1, 10, 26 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 1, 67 ),
        unpack( 1, 68 ),
        unpack( 1, 69 ),
        unpack( 1, 70 ),
        unpack( 1, 71 ),
        unpack( 1, 72 ),
        unpack( 1, 73 ),
        unpack( 1, 74 ),
        unpack( 1, 75 ),
        unpack( 1, 76 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 7, 25, 1, 77, 
                 18, 25 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 1, 80 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 1, 82, 5, -1, 1, 83 ),
        unpack( 1, 84, 18, -1, 1, 85 ),
        unpack( 1, 86 ),
        unpack( 1, 87 ),
        unpack( 1, 88 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 89 ),
        unpack(  ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 1, 91 ),
        unpack( 1, 92 ),
        unpack( 1, 93 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 1, 95 ),
        unpack( 1, 96 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 1, 98 ),
        unpack( 1, 99 ),
        unpack( 1, 100 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 101 ),
        unpack(  ),
        unpack( 1, 102 ),
        unpack( 1, 103 ),
        unpack( 1, 104 ),
        unpack( 1, 105 ),
        unpack( 1, 106 ),
        unpack( 1, 107 ),
        unpack( 1, 108 ),
        unpack( 1, 109 ),
        unpack(  ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 1, 111 ),
        unpack( 1, 112 ),
        unpack(  ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 1, 114 ),
        unpack(  ),
        unpack( 1, 115 ),
        unpack( 1, 116 ),
        unpack( 1, 117 ),
        unpack( 1, 118 ),
        unpack( 1, 119 ),
        unpack( 1, 120 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 1, 122 ),
        unpack( 1, 123 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 1, 125 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack(  ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 1, 128 ),
        unpack(  ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 1, 130 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 1, 131 ),
        unpack( 1, 132 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 1, 134 ),
        unpack(  ),
        unpack( 1, 135 ),
        unpack( 1, 136 ),
        unpack(  ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack(  ),
        unpack( 1, 139 ),
        unpack( 1, 140 ),
        unpack( 1, 141 ),
        unpack(  ),
        unpack( 1, 142 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack(  ),
        unpack(  ),
        unpack( 1, 145 ),
        unpack( 1, 146 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack(  ),
        unpack(  ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack( 10, 25, 7, -1, 26, 25, 4, -1, 1, 25, 1, -1, 26, 25 ),
        unpack(  ),
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
          1:1: Tokens : ( AS | AND | R_BOOL | R_CLASS | DEFINE | R_END | ELSE | R_FLOAT | FOR | FUNCTION | HER | IF | IN | R_INTEGER | OR | PRINT | PROGRAM | READ | RETURN | R_STRING | VOID | WHILE | DIV | EQ | GREATER | GREATEQ | LESS | LEQ | MINUS | MULT | NEQ | PLUS | BOOL | STRING | ID | FLOAT | INTEGER | ASGN | COLON | COMMA | DOT | LBRACK | LPAR | RBRACK | RPAR | WS | NEWLINE );
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
