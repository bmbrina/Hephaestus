require_relative 'HephaestusLexer'
require_relative 'HephaestusParser'

#input = ANTLR3::FileStream.new('Tests/matrixMultiplication.txt')
#input = ANTLR3::FileStream.new('Tests/recursiveFibonacci.txt')
#input = ANTLR3::FileStream.new('Tests/bubbleSort.txt')
#input = ANTLR3::FileStream.new('Tests/recursiveFactorial.txt')
input = ANTLR3::FileStream.new('Tests/object_test.txt')
$lexer = Hephaestus::Lexer.new( input )

def printTokens()
  puts "------------Tokens------------"
  $lexer.each do |token|
   puts "#{token.name} = #{token}"
  end
  puts "-------------------------------"
end

#printTokens()

#parser = open('Tests/matrixMultiplication.txt') { | f | Hephaestus::Parser.new( f ) }
#parser = open('Tests/recursiveFibonacci.txt') { | f | Hephaestus::Parser.new( f ) }
#parser = open('Tests/bubbleSort.txt') { | f | Hephaestus::Parser.new( f ) }
#parser = open('Tests/recursiveFactorial.txt') { | f | Hephaestus::Parser.new( f ) }
parser = open('Tests/object_test.txt') { | f | Hephaestus::Parser.new( f ) }
parser.start
