
%{
#include "y.tab.h"  
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
%}
		
%option noyywrap

digit   [0-9]
num	{digit}+


%%
		
{num} 	{ yylval = atoi(yytext); return INT; }						            
"+"	{return '+';}
"*"	{return '*';}
"-" {return '-';}
"/" {return '/';}
[a-ZA-Z_][a-zA-Z0-9]* {return IDENTIFIER;}
"," var
"\n"	{ return '\n'; }
.      	; 
							    
%%
