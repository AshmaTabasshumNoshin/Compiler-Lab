%option noyywrap 

%{
    #include "prog2.tab.c"
%}

delim [ \t\n]
ws {delim}+
digit [0-9]
number ({digit}+)
letter [A-Za-z]
us [_]
id ({us}|{letter})({letter}|{us}|{digit})*

%%
{ws} {}
{number} {yylval = atoi(yytext); return(NUM);}

{id} {return(ID);}

"==" {return(EQUAL);}
"=" {return(ASSIGN);}
";" {return(SEMI);}
"+" {return(ADD);}
"-" {return(SUB);}





%%