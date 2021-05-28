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
    DOT = 260,                     /* DOT  */
    IF = 261,                      /* IF  */
    WHILE = 262,                   /* WHILE  */
    FOR = 263,                     /* FOR  */
    ID = 264,                      /* ID  */
    PROGRAM = 265,                 /* PROGRAM  */
    RETURN = 266,                  /* RETURN  */
    END_FUNCTION = 267,            /* END_FUNCTION  */
    FUNCTION = 268,                /* FUNCTION  */
    VARS = 269,                    /* VARS  */
    ENDWHILE = 270,                /* ENDWHILE  */
    TO = 271,                      /* TO  */
    STEP = 272,                    /* STEP  */
    PLUS = 273,                    /* PLUS  */
    MINUS = 274,                   /* MINUS  */
    MUL = 275,                     /* MUL  */
    DIVIDE = 276,                  /* DIVIDE  */
    SEMICOLON = 277,               /* SEMICOLON  */
    EQ = 278,                      /* EQ  */
    LBRACKET = 279,                /* LBRACKET  */
    RBRACKET = 280,                /* RBRACKET  */
    LHOOK = 281,                   /* LHOOK  */
    RHOOK = 282,                   /* RHOOK  */
    NEWLINE = 283,                 /* NEWLINE  */
    COLON = 284,                   /* COLON  */
    COMMA = 285,                   /* COMMA  */
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
#define DOT 260
#define IF 261
#define WHILE 262
#define FOR 263
#define ID 264
#define PROGRAM 265
#define RETURN 266
#define END_FUNCTION 267
#define FUNCTION 268
#define VARS 269
#define ENDWHILE 270
#define TO 271
#define STEP 272
#define PLUS 273
#define MINUS 274
#define MUL 275
#define DIVIDE 276
#define SEMICOLON 277
#define EQ 278
#define LBRACKET 279
#define RBRACKET 280
#define LHOOK 281
#define RHOOK 282
#define NEWLINE 283
#define COLON 284
#define COMMA 285
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
