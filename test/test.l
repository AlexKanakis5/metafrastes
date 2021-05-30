%{
#include "y.tab.h"  
#include <stdio.h>
#include <stdlib.h>
#include <string.h>



%}

%option noyywrap 
%option yylineno


digit   [0-9]
number {digit}+
character [a-zA-Z]
float {digit}+"."{digit}+
alphanumeric [_a-zA-Z0-9]
id {character}{alphanumeric}*
array {id}"["{number}"]"

%%
"PRINT" return PRINT;
"PROGRAM" return PROGRAM;
"FUNCTION" return FUNCTION;
"INTEGER" return INTEGER;
"CHAR" return CHAR;
"VARS" return VARS;
"RETURN" return RETURN;
"END_FUNCTION" return END_FUNCTION;
"STARTMAIN" return STARTMAIN;
"ENDMAIN" return ENDMAIN;
"WHILE" return WHILE;
"ENDWHILE" return ENDWHILE;
"AND" return AND;
"OR" return OR;
"counter:=" return COUNTER;
"TO" return TO;
"FOR" return FOR;
"STEP" return STEP;
"ENDFOR" return ENDFOR;
"IF" return IF;
"THEN" return THEN;
"ELSEIF" return ELSEIF;
"ELSE" return ELSE;
"ENDIF" return ENDIF;
"CASE" return CASE;
"DEFAULT:" return DEFAULT;
"ENDSWITCH" return ENDSWITCH;
"SWITCH" return SWITCH;
"BREAK" return BREAK;

{number} 	{ return NUM; }						            	
{id} 	    { return ID; }
{array}     { return ARRAY; }

\"  { return QUOTE; } 
"+"	{ return '+'; }
"*"	{ return '*'; }
"/" { return '/'; }
"-" { return '-'; }
"=" { return '='; }
">" { return GT; }
"<" { return LT; }
"==" { return EQ; }
"!=" { return NE; }
"(" { return LBRACKET; }
")" { return RBRACKET; }
";" { return SC;}
"," { return COMMA;}
"[" { return LSQBRACKET; }
"]" { return RSQBRACKET; }
[ \t\n]+ ;
.      

		