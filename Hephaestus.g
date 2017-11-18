grammar Hephaestus;

options { language = Ruby; }

@header {
  require "Classes/Program"
  require "Classes/QuadrupleFactory"
  require "Classes/DimensionFactory"
}

@members {
  \$program = Program.new()
  \$quads = QuadrupleFactory.new(\$program)
  \$dim = DimensionFactory.new(\$program)
  \$class_aux
  \$method_aux
  \$func_aux
}

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
R_BOOL: 'Bool';
R_CLASS: 'class';
DEFINE: 'define';
R_END: 'end';
ELSE: 'else';
R_FLOAT: 'Float';
FOR: 'for';
FUNCTION: 'function';
HER: 'inherits';
IF: 'if';
IN: 'in';
R_INTEGER: 'Integer';
OR: 'or';
PRINT: 'print';
PROGRAM: 'program';
READ: 'read';
RETURN: 'return';
R_STRING: 'String';
VOID: 'Void';
WHILE: 'while';

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
// TYPES
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
BOOL: ( 'true' | 'false');
LETTER: ( 'a' .. 'z' | 'A' .. 'Z' );
STRING: '\'' ( ~( '\'' | '\\' ) | '\\' . )* '\'' | '"'  ( ~( '"'  | '\\' ) | '\\' . )* '"';
ID: LETTER ( LETTER | '_' | ('0' .. '9') )*;
FLOAT: ('0' .. '9')+ '.' ('0' .. '9')+;
INTEGER: ('0' .. '9')+;

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
// SPECIAL CHARACTERS
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
WS: ( '\t' | '\f' | ' ' | '\u00A0' )+ { $channel = HIDDEN };
NEWLINE: ( '\n' | '\r' )+ { $channel = HIDDEN };


// ******************************************************************************
// ******************************************************************************
//                                  PARSER
// ******************************************************************************
// ******************************************************************************

start
  : { \$quads.goto_program() } ( r_class )* program
  ;

r_class
  : R_CLASS ID { \$class_aux = $ID.text } { \$program.add_class($ID.text, nil) } heritage?  COLON ( function
                                                                       | dim_dec
                                                                       | var_dec
                                                                       )* R_END R_CLASS { \$program.reset_class_context() }
  ;

heritage
  : ( HER ID ) { \$program.main_context.classes_directory.classes[\$class_aux].inherits_of = $ID.text } { \$program.inherits_class_context($ID.text) }
  ;

program
  : PROGRAM { \$quads.fill_program_quad() } ID COLON ( estatute
                                            | dim_dec
                                            | var_dec
                                            | function
                                            )* R_END PROGRAM { \$program.print_quadruples() }
  ;

dim_dec
  : DEFINE ID AS type LBRACK { \$program.add_dim_variable($ID.text, $type.text, true) } INTEGER ( COMMA INTEGER )? RBRACK DOT
  ;  

dim_struct
  : LBRACK exp ( COMMA exp )? RBRACK
  ;

var_dec
  : DEFINE ID AS type { \$program.add_variable($ID.text, $type.text) } ( ASGN { \$quads.add_id($ID.text, nil) } { \$quads.add_operator($ASGN.text) } ( expresion 
                                                                                   | func_call 
                                                                                   ) { \$quads.assgn_quad() } )? DOT
  ;

function
  : FUNCTION ( type ) ID parameters COLON { \$program.add_function($ID.text, $parameters.text, $type.text)}
                                          ( estatute
                                          | var_dec
                                          )* ( RETURN expresion { \$quads.return() } DOT )? R_END FUNCTION { \$quads.end_function()} { \$program.reset_context() }
  ;

parameters
  : LPAR ( type ID {} ( COMMA type ID {})* )? RPAR
  ;

estatute
  : method_call
  | assignment 
  | condition
  | while_loop
  | reading
  | writing
  | func_call DOT
  ;

method_call
  : ID {\$method_aux = $ID.text} DOT method_call_2
  ;

method_call_2
  : ID { \$func_aux = $ID.text } { \$quads.era($ID.text) } method_call_parameters { \$quads.method_exists?(\$method_aux, $ID.text) } DOT
  ;

method_call_parameters
  : LPAR ( ( expresion ) { \$quads.method_parameter(\$method_aux ,\$func_aux) } ( COMMA { \$quads.increase_param_index } ( expresion ) { \$quads.method_parameter(\$method_aux ,\$func_aux) } )* )?  RPAR { \$quads.go_sub(\$func_aux) }
  ;

assignment
  : ID ( dim_struct )? { \$quads.add_id($ID.text, nil) } ( ASGN  { \$quads.add_operator($ASGN.text) } { \$quads.variable_exists?($ID.text) } 
              ( expresion
              | func_call
              )
       ) { \$quads.assgn_quad() } DOT
  ;

condition
  : IF LPAR expresion RPAR { \$quads.gotof() } COLON ( estatute )? ( ELSE { \$quads.goto() } block 
                                                                                             | R_END ) { \$quads.fill_quad() } IF 
  ;

while_loop
  : WHILE { \$quads.add_jump() } LPAR expresion RPAR { \$quads.gotof() } block WHILE { \$quads.goto_while()}
  ;

block
  : COLON ( estatute )*  R_END
  ;

reading
  : READ LPAR value COMMA ID RPAR DOT
  ;

writing
  : PRINT LPAR expresion RPAR DOT { \$quads.write()}
  ;

func_call
  : ID { \$quads.function_exists?($ID.text) } { \$func_aux = $ID.text } { \$quads.era($ID.text) } func_call_parameters
  ;

func_call_parameters
  : LPAR ( ( expresion ) { \$quads.parameter(\$func_aux) } ( COMMA { \$quads.increase_param_index } ( expresion ) { \$quads.parameter(\$func_aux) } )* )?  RPAR { \$quads.go_sub(\$func_aux) }
  ;

expresion
  : exp ( ( GREATER { \$quads.add_operator($GREATER.text) }
          | LESS { \$quads.add_operator($LESS.text) }
          | NEQ { \$quads.add_operator($NEQ.text) }
          | EQ { \$quads.add_operator($EQ.text) }
          | AND { \$quads.add_operator($AND.text) }
          | OR { \$quads.add_operator($OR.text) }
          ) exp
        )? { \$quads.is_expresion_pending() }
  ;

exp
  : term ( ( PLUS { \$quads.add_operator($PLUS.text) }
           | MINUS { \$quads.add_operator($MINUS.text) }
           ) term
         )* { \$quads.is_exp_pending() }
  ;

term
  : factor ( ( MULT { \$quads.add_operator($MULT.text) }
             | DIV { \$quads.add_operator($DIV.text) }
             ) factor
           )* { \$quads.is_term_pending() }
  ;

factor
  : ID ( dim_struct )? { \$quads.add_id($ID.text, nil) }
    | LPAR { \$quads.add_false_bottom($LPAR.text) } expresion RPAR { \$quads.remove_false_bottom() }
    | value { \$quads.add_id(nil, $value.text) }
  ;

type
  : R_STRING
  | R_BOOL
  | R_FLOAT
  | R_INTEGER
  | VOID
  | ID
  ;

value
  : STRING
  | FLOAT
  | INTEGER
  | BOOL
  ;
