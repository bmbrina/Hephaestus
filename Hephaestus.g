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
R_CLASS: 'class';
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
HER: '<<';


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

start: ( r_class )* ( function )* program;

program: PROGRAM ID COLON ( estatute | var_dec )+ R_END PROGRAM;

estatute: func_call | condition | reading | writing | assignment | loops | method_call;

var_dec: DEFINE ID AS type ( ASGN expresion | array_dec )? DOT;

assignment: ID ( ASGN ( expresion | func_call ) | array_dec ASGN type ) DOT;

array_dec: LBRACK exp ( COMMA exp )* RBRACK;

condition: IF LPAR expresion RPAR COLON ( estatute )? ( RETURN expresion DOT )? ( ELSE block | R_END ) IF;

loops: while_loop | for_loop;

while_loop: WHILE LPAR expresion RPAR block WHILE;

for_loop: FOR ID IN ID block FOR;

reading: READ LPAR value RPAR DOT;

writing: PRINT LPAR expresion RPAR DOT;

parameters: LPAR ( type ID ( COMMA type ID )* )? RPAR;

function: FUNCTION ( type | VOID ) ID parameters COLON ( estatute | var_dec )* ( RETURN expresion DOT )? R_END FUNCTION;

block: COLON ( estatute )* ( RETURN expresion DOT )? R_END;

func_call: ID parameters DOT;

expresion: exp ( ( GREATER | LESS | NEQ | EQ | AND | OR) exp )?;

exp: term ( ( PLUS | MINUS ) term )*;

factor: ID ( array_dec )? | LPAR expresion RPAR | value;

term: factor ( ( MULT | DIV ) factor )*;

type: R_STRING | R_BOOL | R_FLOAT | R_INTEGER;

value: STRING | FLOAT | INTEGER | BOOL;

r_class: R_CLASS ID ( HER ID )? COLON ( function | var_dec )+ R_END R_CLASS;

method_call: ID DOT (func_call | ID) DOT;