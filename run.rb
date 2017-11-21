require_relative 'HephaestusLexer'
require_relative 'HephaestusParser'

#input = ANTLR3::FileStream.new( 'matrixMultiplication.txt' )
#input = ANTLR3::FileStream.new( 'recursiveFibonacci.txt' )
#input = ANTLR3::FileStream.new( 'bubbleSort.txt' )
#input = ANTLR3::FileStream.new( 'recursiveFactorial.txt' )
input = ANTLR3::FileStream.new( 'object_test.txt' )
$lexer = Hephaestus::Lexer.new( input )

def printTokens()
  puts "------------Tokens------------"
  $lexer.each do |token|
   puts "#{token.name} = #{token}"
  end
  puts "-------------------------------"
end

#printTokens()

#parser = open( 'matrixMultiplication.txt' ) { | f | Hephaestus::Parser.new( f ) }
#parser = open( 'recursiveFibonacci.txt' ) { | f | Hephaestus::Parser.new( f ) }
#parser = open( 'bubbleSort.txt' ) { | f | Hephaestus::Parser.new( f ) }
#parser = open( 'recursiveFactorial.txt' ) { | f | Hephaestus::Parser.new( f ) }
parser = open( 'object_test.txt' ) { | f | Hephaestus::Parser.new( f ) }
parser.start
