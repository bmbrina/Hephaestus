lexer grammar Hephaestus;

options { language = Ruby; }

/*
tokens {
  AND='and';
  ASSIGNMENT='=';
  COLON=':';
  COMMA=',';
  DEFINE='define';
  END='end';
  ELSE='else';
  EQ='==';
  FALSE='false';
  FOR='for';
  FUNCTION='function';
  GREATER='>';
  IF='IF";
  IN='IN";
  LBRACK='[';
  LESS='<';
  LPAREN='(';
  MINUS='-';
  NEQ='<>';
  OR='or';
  PLUS='+';
  RBRACK=']';
  RETURN='return';
  RPAREN=')';
  TRUE='true';
  VOID='void';
  WHILE='while';
}
*/

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// TYPES
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

FLOAT: ( '0' .. '9' )+ '.' ( '0' .. '9' )+;
INTEGER: ( '0' .. '9' )+;


// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// CHARACTERS
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
PARENTESIS: ( '(' | ')' )

