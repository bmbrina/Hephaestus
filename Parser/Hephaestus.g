parser grammar Hephaestus;

options { language = Ruby; }

@members {
  require_relative 'Scanner/Hephaestus'
  @associated_lexer = Hephaestus::Lexer
}

/********************************************************************************
 ****************************  Top-Level Structure  *****************************
 ********************************************************************************/

 program: PROGRAM ID block PROGRAM;

 block: COLON ( estatute )* RETURN END | COLON END | COLON RETURN END; 