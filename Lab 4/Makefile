#use command "make main SHELL=cmd"

input = input.txt
output = output.txt

main: cal.l
	lex cal.l
	gcc lex.yy.c
	a <$(input)> $(output)
     
main2: cal.l cal.y
	yacc -d cal.y
	lex cal.l
	gcc cal.tab.h lex.yy.c
	a <$(input)> $(output)

main3: prog.l prog.y
	yacc -d prog.y
	lex prog.l
	gcc prog.tab.h lex.yy.c
	a <$(input)> $(output)

main4: prog2.l prog2.y
	yacc -d prog2.y
	lex prog2.l
	gcc prog2.tab.h lex.yy.c
	a <$(input)> $(output)