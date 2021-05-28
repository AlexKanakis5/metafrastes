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
word    {alphanumeric}+
alphanumeric [_a-zA-Z][_a-zA-Z0-9]
id {character}{alphanumeric}*

%%
"PROGRAM" return PROGRAM;
"FUNCTION" return FUNCTION;
"INTEGER" return INTEGER;
"CHAR" return CHAR;
{number} 	{ yylval = atoi(yytext); return NUM; }		
{word} 	    { yylval = atoi(yytext); return WORD; }				            	
{id} 	    { yylval = atoi(yytext); return ID; }
"+"	{ return '+'; }
"*"	{ return '*'; }
"/" { return '/'; }
"-" { return '-'; }
"(" { return LBRACKET; }
")" { return RBRACKET; }
";" { return SC;}
"," { return COMMA;}
[ \t\n]+ ;
.      	; 

		