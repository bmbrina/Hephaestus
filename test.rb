require_relative 'HephaestusLexer'
require_relative 'HephaestusParser'

input = ANTLR3::FileStream.new( 'code.txt' )
lexer = Hephaestus::Lexer.new( input )

lexer.each do |token|
 puts "#{token.name} = #{token}"
end

# tokens = ANTLR3::CommonTokenStream.new( lexer )
# parser = Hephaestus::Parser.new( tokens )

parser = open( 'code.txt' ) { | f | Hephaestus::Parser.new( f ) }
puts parser.start
