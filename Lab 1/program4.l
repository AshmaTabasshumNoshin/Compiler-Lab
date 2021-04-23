%{
	#include<stdio.h>
%}

%%
("_"|[A-Za-z])([A-Za-z]|[0-9]|"_")* { printf("%s is an identifier\n",yytext);}
.* { printf("nothing is matched\n") ; }
%%
int yywrap()
{
  
}
int main()
{
    yylex();
}