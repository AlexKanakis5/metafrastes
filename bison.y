
%{
#include <stdio.h>
#include <math.h>
void yyerror(char *); 
extern FILE *yyin;								
extern FILE *yyout;								
%}
	    
%token INTEGER 
%token FLOAT
%token DOT
%token IF
%token WHILE
%token FOR
%token ID
%token PROGRAM
%token RETURN
%token END_FUNCTION
%token FUNCTION
%token VARS
%token ENDWHILE
%token TO
%token STEP
%token PLUS
%token MINUS
%token MUL
%token DIVIDE
%token SEMICOLON
%token EQ
%token LBRACKET RBRACKET LHOOK RHOOK
%token NEWLINE
%token COLON COMMA
%token NE LR LE GT GE LT
%%

statement: 
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
										
