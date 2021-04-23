%{
	#include<stdio.h>
%}

%%
("int")(" ")([A-Za-z])("=")([0-9])* {printf("%s ==>INTTYPE\n",yytext);}
.* { printf("not inttype\n") ; }
%%
int yywrap()
{
  
}
int main()
{
    yylex();
}