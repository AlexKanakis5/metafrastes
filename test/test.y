%{
#include <stdio.h>
#include <math.h>
void yyerror(char *); 
extern FILE *yyin;								
extern FILE *yyout;								
%}
	
%token NUM FLOAT ID WORD
%token PROGRAM
%token '\n' 
%left '+' '-'
%left '*' '/'

%%

start: PROGRAM ID '\n' expr 
    ;

expr:  	  NUM
    | FLOAT
	| expr '+' expr           { $$ = $1 + $3; }
	| expr '*' expr           { $$ = $1 * $3; }
    | expr '/' expr           { $$ = $1 / $3; }
    | expr '-' expr           { $$ = $1 - $3; }
	;
								    
%%								    
    

void yyerror(char *s) {
    fprintf(stderr, "%s\n", s);
}									


int main ( int argc, char **argv  ) 
  {
  ++argv; --argc;
  if ( argc > 0 )
        yyin = fopen( argv[0], "r" );
  else
        yyin = stdin;
  yyout = fopen ( "output", "w" );	
  yyparse ();	    
  return 0;
  }   
		