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
{number} 	{ yylval = atoi(yytext); return NUM; }		
{word} 	    { yylval = atoi(yytext); return WORD; }				            
{float} 	{ yylval = atoi(yytext); return FLOAT; }	
{id} 	    { yylval = atoi(yytext); return ID; }
"+"	{ return '+'; }
"*"	{ return '*'; }
"/" { return '/'; }
"-" { return '-'; }
"\n"	{ return '\n'; }
.      	; 

		