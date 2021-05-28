/* A Bison parser, made by GNU Bison 3.7.5.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

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

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    INTEGER = 258,                 /* INTEGER  */
    FLOAT = 259,                   /* FLOAT  */
    ID = 260,                      /* ID  */
    IF = 261,                      /* IF  */
    WHILE = 262,                   /* WHILE  */
    ENDWHILE = 263,                /* ENDWHILE  */
    FOR = 264,                     /* FOR  */
    TO = 265,                      /* TO  */
    STEP = 266,                    /* STEP  */
    PROGRAM = 267,                 /* PROGRAM  */
    RETURN = 268,                  /* RETURN  */
    FUNCTION = 269,                /* FUNCTION  */
    END_FUNCTION = 270,            /* END_FUNCTION  */
    VARS = 271,                    /* VARS  */
    PLUS = 272,                    /* PLUS  */
    MINUS = 273,                   /* MINUS  */
    MUL = 274,                     /* MUL  */
    DIVIDE = 275,                  /* DIVIDE  */
    SEMICOLON = 276,               /* SEMICOLON  */
    EQ = 277,                      /* EQ  */
    LBRACKET = 278,                /* LBRACKET  */
    RBRACKET = 279,                /* RBRACKET  */
    LHOOK = 280,                   /* LHOOK  */
    RHOOK = 281,                   /* RHOOK  */
    NEWLINE = 282,                 /* NEWLINE  */
    COLON = 283,                   /* COLON  */
    COMMA = 284,                   /* COMMA  */
    DOT = 285,                     /* DOT  */
    NE = 286,                      /* NE  */
    LR = 287,                      /* LR  */
    LE = 288,                      /* LE  */
    GT = 289,                      /* GT  */
    GE = 290,                      /* GE  */
    LT = 291                       /* LT  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define YYEOF 0
#define YYerror 256
#define YYUNDEF 257
#define INTEGER 258
#define FLOAT 259
#define ID 260
#define IF 261
#define WHILE 262
#define ENDWHILE 263
#define FOR 264
#define TO 265
#define STEP 266
#define PROGRAM 267
#define RETURN 268
#define FUNCTION 269
#define END_FUNCTION 270
#define VARS 271
#define PLUS 272
#define MINUS 273
#define MUL 274
#define DIVIDE 275
#define SEMICOLON 276
#define EQ 277
#define LBRACKET 278
#define RBRACKET 279
#define LHOOK 280
#define RHOOK 281
#define NEWLINE 282
#define COLON 283
#define COMMA 284
#define DOT 285
#define NE 286
#define LR 287
#define LE 288
#define GT 289
#define GE 290
#define LT 291

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
