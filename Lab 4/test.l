%{
	#include<stdio.h>
%}

%%
[0-9] { printf("%s NUMBER\n",yytext);}
"+" {printf("%s ADD\n",yytext);}
. { printf("nothing is matched\n") ; }
%%
int yywrap()
{
  
}

int main()
{
    yylex();
}