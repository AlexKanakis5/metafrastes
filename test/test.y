/* TODO 
1. ftiakse ta expr na yposthrizoyn tis zhtoymenes ekfraseis
p.x. var1= var3 (1/2) * var4

-> DONE alla akoma den exoume floating arithmous opote h diairesh pasxei
den einai zhtoumeno oi floating arithmoi ap oti katalabainw



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
%token SWITCH ENDSWITCH CASE DEFAULT
%token PRINT BREAK
%token LBRACKET RBRACKET LSQBRACKET RSQBRACKET
%token COMMA QUOTE
%token AND OR
%token LT GT EQ NE
%left '+' '-'
%left '*' '/'
%left '^'
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

//o enallaktikos kanonas einai gia thn proeretikh dhlwsh
function: FUNCTION ID LBRACKET params RBRACKET decl body RETURN variable SC END_FUNCTION
        | FUNCTION ID LBRACKET params RBRACKET body RETURN variable SC END_FUNCTION
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

body: ID '=' expr SC 
    | ID '=' expr SC body
    | while 
    | while body
    | for
    | for body
    | if
    | if body
    | switch
    | switch body
    | print
    | print body
    | BREAK SC
    | BREAK SC body
;

while: WHILE  condition  body ENDWHILE
;

for: FOR LBRACKET COUNTER NUM TO NUM STEP NUM RBRACKET body ENDFOR
;

if: IF condition THEN body ENDIF
        | IF condition THEN body elseif ENDIF
;

elseif: ELSE body
        | ELSEIF condition body elseif 
;

switch: SWITCH condition case ENDSWITCH
;


case: DEFAULT body
    | CASE condition body
    | CASE condition body case
;

condition: LBRACKET variable logic variable RBRACKET
;

logic: EQ
        | NE
        | GT
        | LT
        | AND
        | OR
;

variable: ID
        | NUM
;


//shift reduce conflict otan ebala anti gia NUM variable edw 
//to idio symbainei kai ama balw ID mazi me NUM
//den fainetai na epireazei thn ektelesh
expr:  	  variable
	| expr '+' expr           { $$ = $1 + $3; }
	| expr '*' expr           { $$ = $1 * $3; }
    | expr '/' expr           { $$ = $1 / $3; }
    | expr '-' expr           { $$ = $1 - $3; }
    | expr operator LBRACKET expr RBRACKET
    | expr '^' expr

;

operator: '+'
        | '*'
        | '/'
        | '-'
        | '^'
;

// ypothetw pws sthn ergasia ennouse "keimeno",[var] kai oxi "keimeno"[,var]
print: PRINT LBRACKET QUOTE ID QUOTE COMMA LSQBRACKET ID RSQBRACKET RBRACKET SC
        | PRINT LBRACKET QUOTE ID QUOTE RBRACKET SC
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
		