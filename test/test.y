/* TODO 
1. ftiakse ta expr na yposthrizoyn tis zhtoymenes ekfraseis
p.x. var1= var3 (1/2) * var4

*/

%{
#include <stdio.h>
#include <math.h>
void yyerror(char *); 
extern FILE *yyin;								
extern FILE *yyout;								
%}
%token SC 
%token VARS CHAR INTEGER 
%token NUM ID 
%token ARRAY
%token PROGRAM STARTMAIN ENDMAIN FUNCTION RETURN END_FUNCTION 
%token WHILE ENDWHILE FOR COUNTER TO STEP ENDFOR
%token IF THEN ELSEIF ELSE ENDIF
%token LBRACKET RBRACKET 
%token COMMA
%token AND OR
%token LT GT EQ NE
%left '+' '-'
%left '*' '/'
%left LBRACKET RBRACKET
%%

start: PROGRAM ID line STARTMAIN decl body ENDMAIN
    ;

//gia th dhlwsh expressions h synarthsewn prin thn main
line: expr SC 
    | expr SC line
    | function 
    | function line
;

function: FUNCTION ID LBRACKET params RBRACKET decl RETURN variable SC END_FUNCTION
;

//xrhsimopoieitai gia dhlwsh metablhtwn
decl: VARS CHAR params SC
    | VARS INTEGER params SC
;

params: ID
      | ID COMMA params
      | ARRAY
      | ARRAY COMMA params
;

body: ID '=' line 
    | ID '=' line body
    | while
    | for
    | if
;

while: WHILE  condition  body ENDWHILE
;

for: FOR LBRACKET COUNTER NUM TO NUM STEP NUM RBRACKET body ENDFOR
;

if: IF condition body ENDIF
        | IF condition body elseif ENDIF
;

elseif: ELSE body
        | ELSEIF condition body elseif 
;


condition: LBRACKET variable logic variable RBRACKET
;

logic: EQ
        | NE
        | GT
        | LT
;

variable: ID
        | NUM
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
		