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
  \$dim_aux
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
STRING: '\'' ( ~( '\'' | '\\' ) | '\\' . )* '\'' | '"'  ( ~( '"'  | '\\' ) | '\\' . )* '"';
ID: ( 'a' .. 'z' | 'A' .. 'Z' ) ( ( 'a' .. 'z' | 'A' .. 'Z' ) | '_' | ('0' .. '9') )*;
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
DOT2: '@';

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
  : { \$quads.goto_program() } ( r_class )*  ( function )* program
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
                                            )* R_END PROGRAM { \$program.finish() }
  ;

dim_dec
  : DEFINE ID { \$dim_aux = $ID.text } AS type { \$program.add_dim_variable($ID.text, $type.text, true) } LBRACK { \$dim.generate_dim_structure($ID.text) } INTEGER { \$dim.add_limit($ID.text, $INTEGER.text) } ( mat_dim )? RBRACK { \$dim.calculate_m($ID.text) } DOT { \$dim.reset_r()}
  ;

mat_dim
  : COMMA { \$dim.generate_dim_structure(\$dim_aux) } INTEGER { \$dim.add_limit(\$dim_aux, $INTEGER.text) }
  ;

dim_struct
  : LBRACK { \$quads.is_dim() } exp { \$quads.generate_limit_quad() } ( COMMA { \$quads.update_dim() } exp { \$quads.generate_limit_quad() } )? RBRACK { \$quads.generate_dim_quads() }
  ;

var_dec
  : DEFINE ID AS type { \$program.add_variable($ID.text, $type.text) } ( ASGN { \$quads.add_id($ID.text, nil) } { \$quads.add_operator($ASGN.text) } ( expression ) { \$quads.assgn_quad() } )? DOT
  ;

function
  : FUNCTION ( type ) ID parameters COLON { \$program.add_function($ID.text, $parameters.text, $type.text)}
                                          ( estatute
                                          | var_dec
                                          | dim_dec
                                          )* ( RETURN expression { \$quads.return($ID.text) } DOT )? R_END FUNCTION { \$quads.end_function()} { \$program.reset_context() }
  ;

parameters
  : LPAR ( type ID ( COMMA type ID )* )? RPAR
  ;

estatute
  : assignment
  | condition
  | while_loop
  | reading
  | writing
  | method_call DOT
  | func_call DOT

  ;

assignment
  : ID { \$quads.add_id($ID.text, nil) } ( { \$dim_aux = $ID.text } dim_struct )? { \$quads.check_dim($ID.text) } ( ASGN  { \$quads.add_operator($ASGN.text) } { \$quads.variable_exists?($ID.text) } ( expression ) ) { \$quads.assgn_quad() } DOT
  ;

condition
  : IF LPAR expression RPAR { \$quads.gotof() } COLON ( estatute )* ( ELSE { \$quads.goto() } block
                                                                                             | R_END ) { \$quads.fill_program_quad() } IF
  ;

while_loop
  : WHILE { \$quads.add_jump() } LPAR expression RPAR { \$quads.gotof() } block WHILE { \$quads.goto_while()}
  ;

block
  : COLON ( estatute )*  R_END
  ;

reading
  : READ LPAR value COMMA ID RPAR DOT
  ;

writing
  : PRINT LPAR expression RPAR DOT { \$quads.write()}
  ;

method_call
  : ID {\$method_aux = $ID.text} DOT2 method_call_2
  ;

method_call_2
  : ID { \$quads.method_exists?(\$method_aux, $ID.text) } { \$func_aux = $ID.text } { \$quads.era_method(\$method_aux, $ID.text) } method_call_parameters { \$quads.get_return_value() }
  ;

method_call_parameters
  : LPAR ( ( expression ) { \$quads.method_parameter(\$method_aux ,\$func_aux) } ( COMMA ( expression ) { \$quads.method_parameter(\$method_aux ,\$func_aux) } )* )?  { \$quads.verify_method_param_count(\$method_aux ,\$func_aux) } RPAR { \$quads.go_sub_method(\$method_aux, \$func_aux) }
  ;

/*method_call_parameters
  : LPAR ( ( STRING ) { \$quads.method_parameter(\$method_aux ,\$func_aux) } COMMA method_call_parameters )
  | (STRING { \$quads.method_parameter(\$method_aux ,\$func_aux) } ) { \$quads.verify_method_param_count(\$method_aux ,\$func_aux) } RPAR { \$quads.go_sub_method(\$method_aux, \$func_aux) }
  ;*/

func_call
  : ID { \$quads.function_exists?($ID.text) } { \$func_aux = $ID.text } { \$quads.era($ID.text) } func_call_parameters { \$quads.get_return_value() }
  ;

func_call_parameters
  : LPAR ( ( expression ) { \$quads.parameter(\$func_aux) } ( COMMA ( expression ) { \$quads.parameter(\$func_aux) } )* )?  { \$quads.verify_func_param_count(\$func_aux) } RPAR { \$quads.go_sub(\$func_aux) }
  ;

expression
  : exp ( ( GREATER { \$quads.add_operator($GREATER.text) }
          | LESS { \$quads.add_operator($LESS.text) }
          | NEQ { \$quads.add_operator($NEQ.text) }
          | EQ { \$quads.add_operator($EQ.text) }
          | AND { \$quads.add_operator($AND.text) }
          | OR { \$quads.add_operator($OR.text) }
          ) exp
          { \$quads.is_expression_pending() } )?
  ;

exp
  : term ( ( PLUS { \$quads.add_operator($PLUS.text) }
           | MINUS { \$quads.add_operator($MINUS.text) }
           ) term
           { \$quads.is_exp_pending() } )*
  ;

term
  : factor ( ( MULT { \$quads.add_operator($MULT.text) }
             | DIV { \$quads.add_operator($DIV.text) }
             ) factor
             { \$quads.is_term_pending() } )*
  ;

factor
  : ID { \$quads.add_id($ID.text, nil) } ( { \$dim_aux = $ID.text } dim_struct )? { \$quads.check_dim($ID.text) }
  | LPAR { \$quads.add_false_bottom($LPAR.text) } expression RPAR { \$quads.remove_false_bottom() }
  | value { \$quads.add_id(nil, $value.text) }
  | func_call
  | method_call
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
