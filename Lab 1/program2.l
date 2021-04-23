%{
	#include<stdio.h>
%}

%%
[A-Za-z] { printf("%s is letter\n",yytext);}
[0-9] { printf("%s is digit\n",yytext);}
. { printf("nothing is matched\n") ; }
%%
int yywrap()
{
  
}

int main()
{
    yylex();
}