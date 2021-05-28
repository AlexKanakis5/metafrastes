%{
#include <stdio.h>
#include <math.h>
void yyerror(char *); 
extern FILE *yyin;								
extern FILE *yyout;								
%}
%token SC 
%token INTEGER CHAR VARS
%token NUM ID WORD
%token PROGRAM FUNCTION
%token LBRACKET RBRACKET 
%token COMMA
%left '+' '-'
%left '*' '/'
%left LBRACKET RBRACKET
%%

start: PROGRAM ID  main 
    ;

main: expr SC 
    | expr SC main
    | function 
    | function main
;
//gia kapoio logo den douleyei me 2o ID-> ama anti gia params balw NUM px douleyei
function: FUNCTION id LBRACKET params RBRACKET body
;


body: VARS CHAR params SC
    | VARS INTEGER params SC
;
params: ID
      | ID COMMA params
;



expr:  	  NUM
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
		