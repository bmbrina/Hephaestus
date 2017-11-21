require_relative 'HephaestusLexer'
require_relative 'HephaestusParser'

#input = ANTLR3::FileStream.new( 'code.txt' )
input = ANTLR3::FileStream.new( 'recursiveFibonacci.txt' )
#input = ANTLR3::FileStream.new( 'bubbleSort.txt' )
$lexer = Hephaestus::Lexer.new( input )

def printTokens()
  puts "------------Tokens------------"
  $lexer.each do |token|
   puts "#{token.name} = #{token}"
  end
  puts "-------------------------------"
end

#printTokens()

#parser = open( 'code.txt' ) { | f | Hephaestus::Parser.new( f ) }
parser = open( 'recursiveFibonacci.txt' ) { | f | Hephaestus::Parser.new( f ) }
#parser = open( 'bubbleSort.txt' ) { | f | Hephaestus::Parser.new( f ) }
parser.start
