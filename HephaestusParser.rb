#!/usr/bin/env ruby
#
# Hephaestus.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Hephaestus.g
# Generated at: 2017-09-20 12:20:43
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

    RULE_METHODS = [ :program, :block ].freeze

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
    # 80:2: program : PROGRAM ID block PROGRAM ;
    #
    def program
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )


      begin
      # at line 80:11: PROGRAM ID block PROGRAM
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_473 )
      match( ID, TOKENS_FOLLOWING_ID_IN_program_475 )
      @state.following.push( TOKENS_FOLLOWING_block_IN_program_477 )
      block
      @state.following.pop
      match( PROGRAM, TOKENS_FOLLOWING_PROGRAM_IN_program_479 )

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
    # 82:2: block : COLON R_END ;
    #
    def block
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )


      begin
      # at line 82:9: COLON R_END
      match( COLON, TOKENS_FOLLOWING_COLON_IN_block_487 )
      match( R_END, TOKENS_FOLLOWING_R_END_IN_block_489 )

      rescue ANTLR3::Error::RecognitionError => re
        report_error(re)
        recover(re)

      ensure
        # -> uncomment the next line to manually enable rule tracing
        # trace_out( __method__, 2 )


      end

      return 
    end



    TOKENS_FOLLOWING_PROGRAM_IN_program_473 = Set[ 19 ]
    TOKENS_FOLLOWING_ID_IN_program_475 = Set[ 8 ]
    TOKENS_FOLLOWING_block_IN_program_477 = Set[ 33 ]
    TOKENS_FOLLOWING_PROGRAM_IN_program_479 = Set[ 1 ]
    TOKENS_FOLLOWING_COLON_IN_block_487 = Set[ 39 ]
    TOKENS_FOLLOWING_R_END_IN_block_489 = Set[ 1 ]

  end # class Parser < ANTLR3::Parser

  at_exit { Parser.main( ARGV ) } if __FILE__ == $0

end
