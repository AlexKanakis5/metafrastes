
%{
#include <stdio.h>
#include <math.h>
void yyerror(char *); 
extern FILE *yyin;								
extern FILE *yyout;								
%}
	    
%token INTEGER 
%token FLOAT ID 
%token IF
%token WHILE ENDWHILE FOR TO STEP 
%token PROGRAM
%token RETURN
%token FUNCTION END_FUNCTION
%token VARS
%token PLUS MINUS MUL DIVIDE
%token SEMICOLON
%token EQ
%token LBRACKET RBRACKET LHOOK RHOOK
%token NEWLINE
%token COLON COMMA DOT
%token NE LR LE GT GE LT


%%

start: expr  			  { fprintf(yyout, "%i\n", $1); }
 ;
				    
expr:  INTEGER
	| expr PLUS expr          { $$ = $1 + $3; }
	| expr MUL expr           { $$ = $1 * $3; }
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
										
