#!/usr/bin/env ruby
require_relative 'HephaestusLexer'
require_relative 'HephaestusParser'

file_name = ARGV[0]
#"universidad.hep"

input = ANTLR3::FileStream.new("Tests/#{file_name}")
$lexer = Hephaestus::Lexer.new( input )

def printTokens()
  puts "------------Tokens------------"
  $lexer.each do |token|
   puts "#{token.name} = #{token}"
  end
  puts "-------------------------------"
end

#printTokens()

parser = open("Tests/#{file_name}") { | f | Hephaestus::Parser.new( f ) }
parser.start
