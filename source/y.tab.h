/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    MAIN = 258,
    RETURN = 259,
    PASS = 260,
    IF = 261,
    ELSE = 262,
    OPEN_PARENTHESIS = 263,
    CLOSE_PARENTHESIS = 264,
    OPEN_BRACKET = 265,
    CLOSE_BRACKET = 266,
    COMMA = 267,
    DOT = 268,
    INTEGER = 269,
    COLON = 270,
    COMMENT_SIGN = 271,
    ASSING_OP = 272,
    NEW_KEYWORD = 273,
    CONSOLE_IN = 274,
    SET = 275,
    DELETE = 276,
    BOOLEAN = 277,
    ADD = 278,
    ELEMENT_IN = 279,
    CONSOLE_OUT = 280,
    CONTAIN_KEY = 281,
    WHILE = 282,
    FOR = 283,
    FUNCTION = 284,
    LOOP_ASSIGN_OPERATOR = 285,
    EQUAL = 286,
    NOT_EQUAL = 287,
    GREATER_OR_EQUAL = 288,
    LOWER_OR_EQUAL = 289,
    GREATER = 290,
    LOWER = 291,
    OR = 292,
    AND = 293,
    IDENTIFIER = 294,
    SET_TYPE = 295,
    END_STMT = 296,
    SINGLE_QUOTE = 297,
    ASSIGN_OP = 298
  };
#endif
/* Tokens.  */
#define MAIN 258
#define RETURN 259
#define PASS 260
#define IF 261
#define ELSE 262
#define OPEN_PARENTHESIS 263
#define CLOSE_PARENTHESIS 264
#define OPEN_BRACKET 265
#define CLOSE_BRACKET 266
#define COMMA 267
#define DOT 268
#define INTEGER 269
#define COLON 270
#define COMMENT_SIGN 271
#define ASSING_OP 272
#define NEW_KEYWORD 273
#define CONSOLE_IN 274
#define SET 275
#define DELETE 276
#define BOOLEAN 277
#define ADD 278
#define ELEMENT_IN 279
#define CONSOLE_OUT 280
#define CONTAIN_KEY 281
#define WHILE 282
#define FOR 283
#define FUNCTION 284
#define LOOP_ASSIGN_OPERATOR 285
#define EQUAL 286
#define NOT_EQUAL 287
#define GREATER_OR_EQUAL 288
#define LOWER_OR_EQUAL 289
#define GREATER 290
#define LOWER 291
#define OR 292
#define AND 293
#define IDENTIFIER 294
#define SET_TYPE 295
#define END_STMT 296
#define SINGLE_QUOTE 297
#define ASSIGN_OP 298

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
