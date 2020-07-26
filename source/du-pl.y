%{
#include <stdio.h>
#include <stdlib.h>
int yylex(void);
void yyerror(char* s);
extern int yylineno;
%}

// --- Token assignments below----
%token MAIN
%token RETURN
%token PASS
%token IF
%token ELSE 
%token OPEN_PARENTHESIS
%token CLOSE_PARENTHESIS
%token OPEN_BRACKET
%token CLOSE_BRACKET 
%token COMMA
%token DOT
%token INTEGER
%token COLON
%token COMMENT_SIGN
%token ASSING_OP
%token NEW_KEYWORD
%token CONSOLE_IN
%token SET
%token DELETE
%token BOOLEAN
%token ADD
%token ELEMENT_IN
%token CONSOLE_OUT
%token CONTAIN_KEY
%token WHILE
%token FOR
%token FUNCTION
%token LOOP_ASSIGN_OPERATOR
%token EQUAL
%token NOT_EQUAL
%token GREATER_OR_EQUAL
%token LOWER_OR_EQUAL
%token GREATER
%token LOWER
%token OR
%token AND
%token IDENTIFIER
%token SET_TYPE
%token END_STMT
%token SINGLE_QUOTE

//%start program
%start program
%right ASSIGN_OP

%%

//Start Rule

//Program
program:
	main

main:
	MAIN OPEN_PARENTHESIS CLOSE_PARENTHESIS OPEN_BRACKET statements CLOSE_BRACKET

statements: 
	statement
	|statements statement

statement:
	comment_line 
	|expr END_STMT
	|loops 
	|funct_dec
	|conditional_stmt


// ****** Comment Line *****
comment_line:
	COMMENT_SIGN sentence COMMENT_SIGN


sentence:
	IDENTIFIER sentence
	|IDENTIFIER	
	
// ***** DECLERATIONS *****
expr:
	element_expr
	|int_expr
	|bool_expr
	|set_expr_list
	| set_initilize
	|func_call_dec
	| identifier_dec
identifier_dec:
	IDENTIFIER ASSING_OP IDENTIFIER
set_initilize:
	SET_TYPE ASSING_OP set_expr
func_call_dec:
	IDENTIFIER ASSING_OP funct_call
	|SET_TYPE ASSING_OP funct_call
	|funct_call

element:
	SINGLE_QUOTE IDENTIFIER SINGLE_QUOTE
element_expr:
	IDENTIFIER ASSING_OP element
int_expr:
	IDENTIFIER ASSING_OP INTEGER
bool_expr:
	IDENTIFIER ASSING_OP BOOLEAN
	

set_expr_list:
	set_delete_op
	|set_add_op
	|input_element_expr
	|output_expr
	
set_expr:
	input_set_expr



// ***** SETS *****
set_add_op:
	// $set.add(identifier)
	SET_TYPE DOT ADD OPEN_PARENTHESIS IDENTIFIER CLOSE_PARENTHESIS
	|SET_TYPE DOT ADD OPEN_PARENTHESIS element CLOSE_PARENTHESIS
	|SET_TYPE DOT ADD OPEN_PARENTHESIS INTEGER CLOSE_PARENTHESIS
	|SET_TYPE DOT ADD OPEN_PARENTHESIS SET_TYPE CLOSE_PARENTHESIS

set_delete_op:
	// $set.delete();
	SET_TYPE DOT DELETE OPEN_PARENTHESIS CLOSE_PARENTHESIS


// ******* LOOPS *********
loops:
	while_stmt
	|for_stmt 

while_stmt: 
	// while(logical_expr){block_stmts}
	WHILE OPEN_PARENTHESIS logical_expr CLOSE_PARENTHESIS OPEN_BRACKET block_stmts CLOSE_BRACKET
	|WHILE OPEN_PARENTHESIS funct_call CLOSE_PARENTHESIS OPEN_BRACKET block_stmts CLOSE_BRACKET


for_stmt: 
	// for(i=12:200){block_stmts}
	FOR OPEN_PARENTHESIS for_expr CLOSE_PARENTHESIS OPEN_BRACKET block_stmts CLOSE_BRACKET  

for_expr:
	IDENTIFIER LOOP_ASSIGN_OPERATOR INTEGER COLON INTEGER

block_stmts:
	// pass;
	// return;
	PASS END_STMT
	|statements RETURN args_type END_STMT
	|statements 

logical_expr: 
	// 4 < 89
	// true && false
	// a >= b
	INTEGER LOWER INTEGER
	|INTEGER GREATER INTEGER 
	|INTEGER LOWER_OR_EQUAL INTEGER 
	|INTEGER GREATER_OR_EQUAL INTEGER 
	|IDENTIFIER LOWER IDENTIFIER
	|IDENTIFIER GREATER IDENTIFIER
	|IDENTIFIER LOWER_OR_EQUAL IDENTIFIER
	|IDENTIFIER GREATER_OR_EQUAL IDENTIFIER
	|IDENTIFIER AND IDENTIFIER
	|IDENTIFIER OR IDENTIFIER
	|BOOLEAN AND BOOLEAN
	|BOOLEAN OR BOOLEAN
	|BOOLEAN EQUAL BOOLEAN
	|BOOLEAN NOT_EQUAL BOOLEAN
	|IDENTIFIER EQUAL IDENTIFIER
	|IDENTIFIER NOT_EQUAL IDENTIFIER

//********* Confitional Statement ******//
conditional_stmt: 
	if_stmt

if_stmt:
	IF OPEN_PARENTHESIS logical_expr CLOSE_PARENTHESIS OPEN_BRACKET block_stmts CLOSE_BRACKET else_stmt
	|IF OPEN_PARENTHESIS funct_call CLOSE_PARENTHESIS OPEN_BRACKET block_stmts CLOSE_BRACKET else_stmt

	
 

else_stmt:
	ELSE OPEN_BRACKET block_stmts CLOSE_BRACKET

//******** FUnction ********//
funct_dec:
	FUNCTION IDENTIFIER OPEN_PARENTHESIS args CLOSE_PARENTHESIS OPEN_BRACKET block_stmts CLOSE_BRACKET
funct_call:
	IDENTIFIER OPEN_PARENTHESIS args CLOSE_PARENTHESIS  

args:
	IDENTIFIER
	|
	|composite_args
composite_args:
	args_type COMMA composite_args
	|args_type

args_type:
	IDENTIFIER
	|BOOLEAN
	|INTEGER
	|element
	|SET_TYPE

	
// ******* INPUTS ********
input_set_expr:
	// $set1 <== inputElements();
	CONSOLE_IN OPEN_PARENTHESIS CLOSE_PARENTHESIS
	
input_element_expr:
 	// $set1.input();
	SET_TYPE DOT ELEMENT_IN OPEN_PARENTHESIS CLOSE_PARENTHESIS

// ******* OUTPUTS ********
output_expr:
 	// $set1.print();
	SET_TYPE DOT CONSOLE_OUT OPEN_PARENTHESIS CLOSE_PARENTHESIS

%%
void yyerror(char *s) {
	fprintf(stdout, "line %d: %s\n", yylineno,s);
}
int main(void){
 yyparse();
if(yynerrs < 1){
		printf("Parsing is successfully done.\n");
	}
 return 0;
}

