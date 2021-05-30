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
    SC = 258,                      /* SC  */
    VARS = 259,                    /* VARS  */
    CHAR = 260,                    /* CHAR  */
    INTEGER = 261,                 /* INTEGER  */
    NUM = 262,                     /* NUM  */
    ID = 263,                      /* ID  */
    ARRAY = 264,                   /* ARRAY  */
    PROGRAM = 265,                 /* PROGRAM  */
    STARTMAIN = 266,               /* STARTMAIN  */
    ENDMAIN = 267,                 /* ENDMAIN  */
    FUNCTION = 268,                /* FUNCTION  */
    RETURN = 269,                  /* RETURN  */
    END_FUNCTION = 270,            /* END_FUNCTION  */
    WHILE = 271,                   /* WHILE  */
    ENDWHILE = 272,                /* ENDWHILE  */
    FOR = 273,                     /* FOR  */
    COUNTER = 274,                 /* COUNTER  */
    TO = 275,                      /* TO  */
    STEP = 276,                    /* STEP  */
    ENDFOR = 277,                  /* ENDFOR  */
    IF = 278,                      /* IF  */
    THEN = 279,                    /* THEN  */
    ELSEIF = 280,                  /* ELSEIF  */
    ELSE = 281,                    /* ELSE  */
    ENDIF = 282,                   /* ENDIF  */
    LBRACKET = 283,                /* LBRACKET  */
    RBRACKET = 284,                /* RBRACKET  */
    COMMA = 285,                   /* COMMA  */
    AND = 286,                     /* AND  */
    OR = 287,                      /* OR  */
    LT = 288,                      /* LT  */
    GT = 289,                      /* GT  */
    EQ = 290,                      /* EQ  */
    NE = 291                       /* NE  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif
/* Token kinds.  */
#define YYEMPTY -2
#define YYEOF 0
#define YYerror 256
#define YYUNDEF 257
#define SC 258
#define VARS 259
#define CHAR 260
#define INTEGER 261
#define NUM 262
#define ID 263
#define ARRAY 264
#define PROGRAM 265
#define STARTMAIN 266
#define ENDMAIN 267
#define FUNCTION 268
#define RETURN 269
#define END_FUNCTION 270
#define WHILE 271
#define ENDWHILE 272
#define FOR 273
#define COUNTER 274
#define TO 275
#define STEP 276
#define ENDFOR 277
#define IF 278
#define THEN 279
#define ELSEIF 280
#define ELSE 281
#define ENDIF 282
#define LBRACKET 283
#define RBRACKET 284
#define COMMA 285
#define AND 286
#define OR 287
#define LT 288
#define GT 289
#define EQ 290
#define NE 291

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
