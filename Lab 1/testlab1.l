%{
	#include<stdio.h>
%}

%%
("RUET"|"KUET"|"BUET"|"CUET")(" ")("CSE"|"EEE"|"ME"|"CE")(" ")("16"|"17"|"18") { printf("%s ==> matched",yytext);}
.* { printf("%s ==> not matched\n",yytext) ; }
%%
int yywrap()
{
  
}
int main()
{
    yylex();
}