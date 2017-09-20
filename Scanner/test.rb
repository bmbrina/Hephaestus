require_relative 'Hephaestus'

input = ANTLR3::StringStream.new( "(2)" )
lexer = Hephaestus::Lexer.new( input )

lexer.each do |token|
 puts "#{token.name} = #{token}"
end