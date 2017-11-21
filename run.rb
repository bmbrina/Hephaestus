require_relative 'HephaestusLexer'
require_relative 'HephaestusParser'

file_name = "Tests/recursiveFibonacci.hep"

puts "Starting compilation..."
input = ANTLR3::FileStream.new(file_name)
$lexer = Hephaestus::Lexer.new( input )

def printTokens()
  puts "------------Tokens------------"
  $lexer.each do |token|
   puts "#{token.name} = #{token}"
  end
  puts "-------------------------------"
end

#printTokens()

parser = open(file_name) { | f | Hephaestus::Parser.new( f ) }
parser.start
