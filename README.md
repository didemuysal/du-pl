# **Programming Languages**

## **Project Description** 

 du is a programming language for final project of CSE 334 Programming Languages course. 


#### **Team Member**

  Didem Uysal 
 

### **Content**

* Types and Constants

    <underscore> ::= “_”

	<assign_op>::= “<==”

	<OPEN_BRACKET> ::= “{“

	<CLOSE_BRACKET> ::= “}”

	<OPEN_PARENTHESIS> ::= “(”

	<CLOSE_PARENTHESIS> ::= “)”

	<lowercase_char> ::= a|b| ...| z

	<uppercase_char> ::= A|B| ...| Z

	<non_digit_char> ::= <underscore> | <lowercase_char> | <uppercase_char>

	<digit> ::= 0|1|2|...|9

	<non_zero_digit> ::= 1|2| ....|9

	<comment_sign> ::= “#”

	<set_token> ::= “$”

	<new_keyword> ::= “new”

	<set_keyword> ::= “Set”

	<end_stmt> ::= “;”

	<integer> ::= <sign>? <number>

	<sign> ::= ​ + ​ | ​ -

	<number> ::= <non_zero_digit> | <number> <digit>

	<alphanumeric> ::= (<non_digit_char> | <digit>) <alpha_num> | (<non_digit_char> | <digit>)

	<identifier> ::= (<lowercase_char> | <uppercase_char>)(<non_digit_char> | <digit>)
	
     <space_character> :: =

	<bool_type> ::= ​ true | false

	<set_type> ::= <set_token><identifier>

	<element> ::= ‘<identifier>’







* Program Definition

  <program> ::= < main>

  <main>::= <OPEN_PARENTHESIS><CLOSE_PARENTHESIS> 
             <OPEN_BRACKET><statements><CLOSE_BRACKET><statements> ::=<statement>| 
   <statements><statement>

  <statement> ::=<comment_line>|<expr><end_stmt><loops<funct_dec>|<conditional_stmt>
 
  <sentence> ::= <identifier><sentence>|<identifier>
 
  <comment_line> ::= <comment_sign><sentence><comment_sign>

  <expr>::=<element_expr>|<int_expr>|<bool_expr>|<set_expr_list>|<set_initialize>| 
 <func_call_dc>|<identifier_dec>


* Blocks and Args

	<args_type> ::= <identifier>|<bool_type>|<integer>|<element>|<set_type>

	<block_stmts> ::= pass <end_stmt>|<statements> return <args_type>|<statements>

* Loops

	<loops> ::= <while_stmt>|<for_stmt>
	
     <while_stmt> ::= while<OPEN_PARENTHESIS>(<logical_expr>|<set_logical_expr>|<funct_call>)<CLOSE_PARENTHESIS><OPEN_BRACKET><block_stmts><CLOSE_BRACKET>
	
     <for_stmt> ::= for<OPEN_PARENTHESIS><for_expr><CLOSE_PARENTHESIS><OPEN_BRACKET><block_stmts><CLOSE_BRACKET>

* Conditionals

	<conditional_stmt> ::= <if_stmt>

	<if_stmt>::= if<OPEN_PARENTHESIS>(<logical_expr>|<set_logical_expr><funct_call)
	<CLOSE_PARENTHESIS><OPEN_BRACKET><block_stmts><CLOSE_BRACKET><else_stmt>

	<else_stmt>::=else<OPEN_BRACKET><block_stmts><CLOSE_BRACKET>

* Functions

	<composite_args> ::= <args_type>, <composite_args>|<args_type>

	<args> ::= <identifier>|<composite_args>|

	<funct_dec> ::= func <identifier> <OPEN_PARENTHESIS><args><CLOSE_PARENTHESIS><OPEN_BRACKET><block_stmts><CLOSE_BRACKET>

	<funct_call_dec> ::= (<identifier>|<set_type>)<assign_op><funct_call>|<funct_call>

	<funct_call> ::= <identifier><OPEN_PARENTHESIS><args><CLOSE_PARENTHESIS>


* Expressions

	<and> ::= &&
	
     <or> ::= ||

	<equal> ::= ==

	<not_equal> ::= !=

	<logical_expr> ::= <integer> < <integer>|<integer> > <integer>| <integer> >= <integer> |

	<integer> >= <integer> | <identifier> < <identifier> | <identifier> > <identifier> | <identifirt> 
<=<identifier> >= <identifier> | <identifier> 	<and> <identifier> | <identifier><or>
	
    <identifier> | <bool_type> <and> <bool_type> | <bool_type><or><bool_type>|
	
     <bool_type><equal><bool_type> | <bool_type><not_equal><bool_type>|<identifier><equal>
<identifier>|<identifier><not_equal><identifier>
	
   <set_expr_list> ::= <set_delete_op>|<set_add_op>|<input_element_expr>|<output_expr>
	
   <int_expr> ::=<identifier><assign_op><integer>
	
  <bool_expr> ::=<identifier><assign_op>(<bool_type>|<set_logical_expr>)
	<element_expr> ::= <identifier><assign_op><element> 

#### **Explanation of the language elements** 

● <assign_op> ::= “<==”
This is the operator where initializations are done.

● <set_token> ::= “$” this token
required is to distinguish sets from other variables.

● <comment_sign> ::= “#”
This sign indicates a comment line.

● <end_stmt> ::= “;”
It requires semicolon at the end of the statements, it is inspired from Java.

● <new_keyword> ::= “new”
“new” is used when sets are initialized.

● <set_keyword> ::= “Set”
While initializing a set, this keyword is used right after the <new_keyword>
 

### Program Structure 

●<program> ::= <main>
The program is constructed on “main” components. This provides to start the program.

● <main>::= <OPEN_PARENTHESIS><CLOSE_PARENTHESIS><OPEN_BRACKET><statements><CLOSE_BRACKET>Main is starting the program and also it includes statements.

● <statements> ::=<statement>|<statements><statement>
Statements are to indicate the statement in main and block statements.

● <statement>::=<comment_line>|<expr><end_stmt>|<loops>|<funct_dec>|<conditional_stmt>
Statement includes comment line, expressions, loops, function declaration, conditional statement
since these rules are used and basis for constructing the code between brackets.


#### Comment Line

● <comment_line> ::= <comment_sign><sentence><comment_sign>
Comment line one of the components of the statement.Program defines comment line with “#” character.


#### Expressions
● <expr>::=<element_expr>|<int_expr>|<bool_expr>|<set_expr_list>|<set_initialize>|
<func_call_dec>|<identifier_dec>

Expressions are one of the components of the statement. It includes some expressions and
declarations.

● <int_expr> ::=<identifier><assign_op><integer>

● <bool_expr> ::=<identifier><assign_op>(<bool_type>|<set_logical_expr>)

● <element_expr> ::= <identifier><assign_op><element>
The program has three types of variables which are integer, boolean, element.

Integer is composed of positive or negative numbers. And it can be initialized with given integer
number.Boolean is composed of true or false value. And it can be initialized with a given boolean value
or return value of set logical expressions methods.Element is one element of sets.


#### Blocks/args
● <args_type> ::= <identifier>|<bool_type>|<integer>|<element>|<set_type>

Args is used in function call and function declaration. Type of args can be integer boolean
elements or set.

● <block_stmts> ::= pass <end_stmt>|<statements> return <args_type>|<statements>

Block statements are used in functions declaration, loops and conditionals to allow the fill ofbrackets
with statement. Functions might return variables therefore return is used and also functions, loops and
conditionals needs to pass since if the user wants to write nothing, he/she
can use it.

#### Loops
● <loops> ::= <while_stmt>|<for_stmt>

Loops are categorized as while and for.

● while<OPEN_PARENTHESIS>(<logical_expr>|<set_logical_expr>|<funct_call>)<CLOSE_PARENTHESIS><OPEN_BRACKET><block_stmts><CLOSE_BRACKET>

While statement is a loop and it takes set logical expressions, logical expressions and function calls as conditions to make the loop continue. Logical expressions indicate boolean value and function call and set logical expressions returns a boolean value and its value is used as condition.

● <for_stmt> ::= for<OPEN_PARENTHESIS><for_expr><CLOSE_PARENTHESIS><OPEN_BRACKET><block_stmts><CLOSE_BRACKET>

For statement is a loop and it takes an int type identifier and its initial and final value to make the
loop continue. 

#### Conditionals

● <conditional_stmt> ::= <if_stmt>

● <if<OPEN_PARENTHESIS>(<logical_expr>|<set_logical_expr>|<funct_call)<CLOSE_PARENTHESIS><OPEN_BRACKET><block_stmts><CLOSE_BRACKET><else_stmt>

● <else_stmt>::=else<OPEN_BRACKET><block_stmts><CLOSE_BRACKET>
Conditionals are used to define a condition.


#### Functions

● <funct_dec> ::= func <identifier> <OPEN_PARENTHESIS><args><CLOSE_PARENTHESIS><OPEN_BRACKET><block_stmts><CLOSE_BRACKET>

● <args> ::= <identifier>|<composite_args>|<composite_args> ::= <args_type>, <composite_args>|<args_type>

During function declaration, func is a keyword to understand that it is function declaration and it is followed by identifier, namely its name. 

● <funct_call_dec> ::= (<identifier>|<set_type>)<assign_op><funct_call>|<funct_call>

● <funct_call> ::= <identifier><OPEN_PARENTHESIS><args><CLOSE_PARENTHESIS>

The functions of this language can return an identifier, integer, element, set and it allows return values to be assigned to either a set type or an identifier. 

#### Sets
● <set_delete_op> ::= <set_type>.delete()

He/she may delete the set.

● <set_add_op>::= <set_type>.add(<identifier>)| <set_type>.add(<element>)|<set_type>.add(<integer>)|<set_type>.add(<set_type>)

Programmers can make additions to their sets through the add keyword.

● <input_element_expr> ::=<set_type>.input()

The input keyword is used for programmer to add input elements

● <output_expr> ::=<set_type>.print()

The print keyword is used to print the contents of any set.

● <set_initialize> ::= <set_type><assign_op><set_expr>

Sets are initialized via several ways that are in <set_expr>.

● <set_init>::= new SetWhile initializing a set from scratch, this combination of keywords are used. That way, the grammar distinguishes set initialization from others.

● <input_set_expr> ::= inputElements()

The input elements operation provides users with opportunities to enter an input one element into the current set.




