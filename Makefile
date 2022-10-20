#this is makefile for two 2 source files: main.c, func.c
CC = gcc
CFLAGS = -c -Wall
#.PHONY: all

all: main.o mylib.a

main: main.o mylib.a
	$(CC) main.o mylib.o

main.o: main.c func.h
	$(CC) $(CFLAGS) main.c 
	
func.o: func.c func.h
	$(CC) $(CFLAGS) func.c

mylib.a: func.o
	ar -rcs mylib.a func.o

clean:
	rm *.o main
