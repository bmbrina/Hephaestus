require_relative 'Hephaestus'

input = ANTLR3::StringStream.new( "Barbara" )
lexer = Hephaestus::Lexer.new( input )

lexer.each do |token|
 puts "#{token.name} = #{token}"
end