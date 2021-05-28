
%{
#include <stdio.h>
#include <math.h>
void yyerror(char *); 
extern FILE *yyin;								
extern FILE *yyout;								
%}
	    
%token INTEGER
%token CHAR
%token PROGRAM
%token WHILE
%token FOR
%token RETURN
%token END_FUNCTION
%token FUNCTION
%token VARS
%token ENDWHILE
%token TO
%token STEP
%left '+' 
%left '*' 
%%

program: expr  			  { fprintf(yyout, "%i\n", $1); }
         ;
				    
expr:  	  INT
	| expr '+' expr           { $$ = $1 + $3; }
	| expr '*' expr           { $$ = $1 * $3; }
	| expr '-' expr           { $$ = $1 - $3; }
	| expr '/' expr           { $$ = $1 / $3; }
	;

function: FUNCTION ' ' IDENTIFIER '(' var (',' var )* ')' newline

start: PROGRAM ' ' character+ newline
    ;

newline: '/n'
    ;

var_declaration: VARS var_type var (',' var)* ';'
    ;

var_type: CHAR
        | INTEGER
    ;

var: character+ array?
    ;

array: '[' number* ']'
    ;

end_function: RETURN var ';' newline END_FUNCTION
            | RETURN number ';' newline END_FUNCTION
    ;

expr_var: var
        | number+
    ;

assignment: var '=' (expr_var unary_operator expr_var)
    ;

condition: '(' expr_var logic_operator expr_var ')'
    ;

while_loop: WHILE condition newline ENDWHILE
    ;

for_loop: FOR 'counter:=' number  TO number STEP number
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
										
