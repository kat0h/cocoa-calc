#==========================================
#   Makefile: makefile for calc
#	Copyright 2019
#	Last Modified: 2019/04/13
#==========================================

CC=clang
CFLAGS=-Ofast -Wall

all: calc

calc: src/test.c
	$(CC) $(CFLAGS) -o test src/test.c

clean:
	rm -f test

distclean: clean
