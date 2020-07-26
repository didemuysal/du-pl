%{
#include <stdio.h>
#include "y.tab.h"
void yyerror(char *);
%}
main main
print print 
return return
pass pass 
if if
else else
new_line "\n"
open_parenthesis "("
close_parenthesis ")"
open_bracket "{"
close_bracket "}"
single_quote "'" 
coma ","
dot "."
colon ":"
comment_sign \#
digit [0-9]
non_zero_digit [1-9]
sign [+-]
number {non_zero_digit}{digit}*

assign_op <==
identifier [A-Za-z][A-Za-z0-9]*
new "new"
set_keyword "Set"
delete "delete"
true "true"
false "false"
add "add"
element_in "input"
console_out "print"
contain_key "contain"
while "while"
for "for"
function "function"
loop_assign_operator "="
equal_operator "=="
not_equal_operator "!="
greater_or_equal_operator ">="
lower_or_equal_operator "<="
greater_operator ">"
lower_operator "<"
or_operator "||"
and_operator "&&"
bool {true}|{false} 
int {sign}?{number}

/* set type */
set_token \$
set_type {set_token}{identifier}*
/* statement end */
end_stmt ";"

%option yylineno
%%
 /*Return the tokens*/
{main} return MAIN;
{return} return RETURN;
{pass} return PASS;
{if} return IF;
{else} return ELSE;
{open_parenthesis}  return OPEN_PARENTHESIS;
{close_parenthesis}  return CLOSE_PARENTHESIS;
{open_bracket} return OPEN_BRACKET;
{close_bracket}  return CLOSE_BRACKET; 
{coma}           return COMMA;
{dot}             return DOT;
{int}             return INTEGER; 
{colon}           return COLON;
{comment_sign}    return COMMENT_SIGN;
{assign_op}       return ASSING_OP;
{new}             return NEW_KEYWORD;
{set_keyword}     return SET;
{delete}          return DELETE;
{bool}            return BOOLEAN;
{add}             return ADD;
{element_in}      return ELEMENT_IN;
{console_out}     return CONSOLE_OUT;
{contain_key}     return CONTAIN_KEY;
{while}           return WHILE;
{for}              return FOR;
{function}          return FUNCTION;
{loop_assign_operator}          return LOOP_ASSIGN_OPERATOR;
{equal_operator}             return EQUAL;
{not_equal_operator}         return NOT_EQUAL;
{greater_or_equal_operator}   return GREATER_OR_EQUAL;
{lower_or_equal_operator}     return LOWER_OR_EQUAL;
{greater_operator}            return GREATER;
{lower_operator}              return LOWER;
{or_operator}                 return OR;
{and_operator}                return AND;
{identifier}            return IDENTIFIER;
{set_type}				return SET_TYPE;
{end_stmt}				return END_STMT;
{new_line} ; 
[ \t] ;
{single_quote}		return SINGLE_QUOTE;
%%

int yywrap(void){
	return 1;
}
