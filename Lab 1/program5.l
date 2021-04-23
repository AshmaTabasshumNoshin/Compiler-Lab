%{
	#include<stdio.h>
%}

letter [A-Za-z]
digit [0-9]

%%
("_"|{letter})({letter}|{digit}|"_")* { printf("%s is an identifier\n",yytext);}
.* { printf("nothing is matched\n") ; }
%%

int yywrap()
{
  
}
int main()
{
    yylex();
}