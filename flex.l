
%{
#include "y.tab.h"  
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
%}
		
%option noyywrap



%%
								            

\= {return (EQ); }
\+ return (PLUS);
\- return (MINUS);
\* return (MUL);
\/ return (DIVIDE);
\( return (LBRACKET);
\) return (RBRACKET);
\{ return (LHOOK);
\} return (RHOOK);
\n return (NEWLINE);
\; return (SEMICOLON);
\: return (COLON);
\, return (COMMA);


"." return (DOT);
"!=" return (NE); 
"<"  return (LT); 
"<=" return (LE); 
">"  return (GT); 
">=" return (GE); 


[0-9]+ return INTEGER;
[0-9]+\.[0-9]+ return FLOAT;
[_a-zA-Z][_a-zA-Z0-9]* return ID;



. { printf("\nunidentified token %s\n",yytext); exit(1);}
%%
