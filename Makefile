#this is makefile for two 2 source files: main.c, func.c
$(CC) = gcc

final: main.o func.o
	$(CC) main.c func.c -o final

main.o: main.c func.h
	$(CC) -c main.c 
	
func.o: func.c func.h
	$(CC) -c func.c

clean:
	rm *.o final
