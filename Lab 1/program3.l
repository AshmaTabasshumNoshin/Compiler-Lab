%{
	#include<stdio.h>
%}

%%
[A-Za-z]+ { printf("%s is word\n",yytext);}
[0-9]+ { printf("%s is number\n",yytext);}
. { printf("nothing is matched\n") ; }
%%
int yywrap()
{
  
}

int main()
{
    yylex();
}