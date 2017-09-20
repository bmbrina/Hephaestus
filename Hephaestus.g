grammar Hephaestus;

options { language = Ruby; }

// ******************************************************************************
// ******************************************************************************
//                                  SCANNER
// ******************************************************************************
// ******************************************************************************

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// RESERVED WORDS
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
AS: 'as';
AND: 'and';
R_BOOL: 'bool';
DEFINE: 'define';
R_END: 'end';
ELSE: 'else';
R_FLOAT: 'float';
FOR: 'for';
FUNCTION: 'function';
IF: 'if';
IN: 'in';
R_INTEGER: 'integer';
OR: 'or';
PRINT: 'print';
PROGRAM: 'program';
READ: 'read';
RETURN: 'return';
R_STRING: 'string';
VOID: 'void';
WHILE: 'while';


// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// TYPES
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
BOOL: ( 'true' | 'false');
FLOAT: ( '0' .. '9' )+ '.' ( '0' .. '9' )+;
STRING: '\'' ( ~( '\'' | '\\' ) | '\\' . )* '\'' | '"'  ( ~( '"'  | '\\' ) | '\\' . )* '"';
ID: ( 'a' .. 'z' | '_' ) ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' )*;
INTEGER: ( '0' .. '9' )+;


// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// CHARACTERS
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
ASGN: '=';
COLON: ':';
COMMA: ',';
DOT: '.';
LBRACK: '[';
LPAR: '(';
RBRACK: ']';
RPAR: ')';


// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// OPERATORS
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
DIV: '/';
EQ: '==';
GREATER: '>';
LESS: '<';
MINUS: '-';
MULT: '*';
NEQ: '<>';
PLUS: '+';


// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
// SPECIAL CHARACTERS
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
WS: ( '\t' | '\f' | ' ' | '\u00A0' )+ { $channel = HIDDEN };
NEWLINE: ( '\n' | '\r' )+ { $channel = HIDDEN };


// ******************************************************************************
// ******************************************************************************
//                                  PARSER
// ******************************************************************************
// ******************************************************************************

program: PROGRAM ID block PROGRAM;

block: COLON ( ( estatute )* ( ( RETURN ) ( ID ) DOT )? ) R_END; 

estatute: declaration | condition | reading | writing | assignment | loops | function;

declaration: DEFINE ID AS type (ASGN expresion)? DOT;

assignment: ID ASGN expresion DOT;

reading: READ LPAR value RPAR DOT;

writing: PRINT LPAR expresion RPAR DOT;

condition: IF LPAR expresion RPAR COLON estatute ( RETURN ID )? ( ELSE block | R_END ) IF;

loops: while_loop | for_loop;

while_loop: WHILE LPAR expresion RPAR block WHILE;

for_loop: FOR ID IN ID block FOR;

type: R_STRING | R_BOOL | R_FLOAT | R_INTEGER;

function: FUNCTION ( type | VOID ) ID LPAR ( ID | ( ID COMMA )+ ID )? RPAR block FUNCTION;

expresion: exp ( ( GREATER | LESS | NEQ | EQ ) exp )?;

exp: term ( ( PLUS | MINUS ) term )*;

term: factor ( ( MULT | DIV ) factor )*;

factor: ID | value | LPAR expresion RPAR;

value: STRING | FLOAT | INTEGER | BOOL;
