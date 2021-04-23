%{

#include <stdio.h>
void yyerror(char *s);
int yylex();

%}
 
%token NUM ADD SUB ID ASSIGN SEMI
%start program
%left ADD SUB

%%
program: ID ASSIGN exp SEMI
;      
exp: exp ADD number
    |exp SUB number
    |number
    |ID
    ;
number: NUM
    |SUB NUM
    ;
%%

int main()
{
    yyparse();
    printf("parsing finished");
}
void yyerror(char *s)
{
    fprintf(stderr,"error: %s",s);
}
