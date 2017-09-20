#!/usr/bin/env ruby
#
# Hephaestus.g
# --
# Generated using ANTLR version: 3.5
# Ruby runtime library version: 1.10.0
# Input grammar file: Hephaestus.g
# Generated at: 2017-09-19 22:03:36
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
    define_tokens( :EOF => -1, :FLOAT => 4, :INTEGER => 5 )

  end


  class Lexer < ANTLR3::Lexer
    @grammar_home = Hephaestus
    include TokenData

    begin
      generated_using( "Hephaestus.g", "3.5", "1.10.0" )
    rescue NoMethodError => error
      # ignore
    end

    RULE_NAMES   = [ "FLOAT", "INTEGER" ].freeze
    RULE_METHODS = [ :float!, :integer! ].freeze

    def initialize( input=nil, options = {} )
      super( input, options )
    end


    # - - - - - - - - - - - lexer rules - - - - - - - - - - - -
    # lexer rule float! (FLOAT)
    # (in Hephaestus.g)
    def float!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 1 )



      type = FLOAT
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 5:8: ( '0' .. '9' )+ '.' ( '0' .. '9' )+
      # at file 5:8: ( '0' .. '9' )+
      match_count_1 = 0
      while true
        alt_1 = 2
        look_1_0 = @input.peek( 1 )

        if ( look_1_0.between?( 0x30, 0x39 ) )
          alt_1 = 1

        end
        case alt_1
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
          match_count_1 > 0 and break
          eee = EarlyExit(1)


          raise eee
        end
        match_count_1 += 1
      end


      match( 0x2e )
      # at file 5:28: ( '0' .. '9' )+
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




      @state.type = type
      @state.channel = channel
    ensure
      # -> uncomment the next line to manually enable rule tracing
      # trace_out( __method__, 1 )


    end

    # lexer rule integer! (INTEGER)
    # (in Hephaestus.g)
    def integer!
      # -> uncomment the next line to manually enable rule tracing
      # trace_in( __method__, 2 )



      type = INTEGER
      channel = ANTLR3::DEFAULT_CHANNEL
    # - - - - label initialization - - - -


      # - - - - main rule block - - - -
      # at line 6:10: ( '0' .. '9' )+
      # at file 6:10: ( '0' .. '9' )+
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
      # trace_out( __method__, 2 )


    end

    # main rule used to study the input at the current position,
    # and choose the proper lexer rule to call in order to
    # fetch the next token
    #
    # usually, you don't make direct calls to this method,
    # but instead use the next_token method, which will
    # build and emit the actual next token
    def token!
      # at line 1:8: ( FLOAT | INTEGER )
      alt_4 = 2
      alt_4 = @dfa4.predict( @input )
      case alt_4
      when 1
        # at line 1:10: FLOAT
        float!


      when 2
        # at line 1:16: INTEGER
        integer!


      end
    end


    # - - - - - - - - - - DFA definitions - - - - - - - - - - -
    class DFA4 < ANTLR3::DFA
      EOT = unpack( 1, -1, 1, 3, 2, -1 )
      EOF = unpack( 4, -1 )
      MIN = unpack( 1, 48, 1, 46, 2, -1 )
      MAX = unpack( 2, 57, 2, -1 )
      ACCEPT = unpack( 2, -1, 1, 1, 1, 2 )
      SPECIAL = unpack( 4, -1 )
      TRANSITION = [
        unpack( 10, 1 ),
        unpack( 1, 2, 1, -1, 10, 1 ),
        unpack(  ),
        unpack(  )
      ].freeze

      ( 0 ... MIN.length ).zip( MIN, MAX ) do | i, a, z |
        if a > 0 and z < 0
          MAX[ i ] %= 0x10000
        end
      end

      @decision = 4


      def description
        <<-'__dfa_description__'.strip!
          1:1: Tokens : ( FLOAT | INTEGER );
        __dfa_description__
      end

    end


    private

    def initialize_dfas
      super rescue nil
      @dfa4 = DFA4.new( self, 4 )


    end

  end # class Lexer < ANTLR3::Lexer

  at_exit { Lexer.main( ARGV ) } if __FILE__ == $0

end
