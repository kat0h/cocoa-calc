#==========================================
#   Makefile: makefile for calc
#	Last Modified: 2019/04/13
#==========================================

CC=clang
CFLAGS=-Wall

all: calc

calc: src/test.c src/calc.h src/calc.c
	$(CC) $(CFLAGS) -o test src/test.c src/calc.c

clean:
	rm -i test

distclean: clean
