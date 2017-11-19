require_relative 'HephaestusLexer'
require_relative 'HephaestusParser'

input = ANTLR3::FileStream.new( 'code.txt' )
$lexer = Hephaestus::Lexer.new( input )


def printTokens()
  puts "------------Tokens------------"
  $lexer.each do |token|
   puts "#{token.name} = #{token}"
  end
  puts "-------------------------------"
end

#printTokens()

# tokens = ANTLR3::CommonTokenStream.new( lexer )
# parser = Hephaestus::Parser.new( tokens )

parser = open( 'code.txt' ) { | f | Hephaestus::Parser.new( f ) }
puts parser.start
