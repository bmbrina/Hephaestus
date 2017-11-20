require_relative 'HephaestusLexer'
require_relative 'HephaestusParser'

input = ANTLR3::FileStream.new( 'code2.txt' )
$lexer = Hephaestus::Lexer.new( input )

def printTokens()
  puts "------------Tokens------------"
  $lexer.each do |token|
   puts "#{token.name} = #{token}"
  end
  puts "-------------------------------"
end

#printTokens()

parser = open( 'code2.txt' ) { | f | Hephaestus::Parser.new( f ) }
parser.start
