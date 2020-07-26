LEX = lex
YACC = yacc -d

CC = gcc


all: parser clean

parser: y.tab.o lex.yy.o
	$(CC) -o parser y.tab.o lex.yy.o 
	./parser < du-pl.txt


lex.yy.o: lex.yy.c y.tab.h
lex.yy.o y.tab.o: y.tab.c


y.tab.c y.tab.h: du-pl.yacc.y
	$(YACC) -v du-pl.yacc.y


lex.yy.c: du-pl.l
	$(LEX) du-pl.l

clean:
	-rm -f *.o lex.yy.c *.tab.* parser *.output
