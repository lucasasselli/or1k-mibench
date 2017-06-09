CC=gcc
FLAGS=-static -O3

all: susan

susan: susan.c Makefile
	$(CC) $(FLAGS) -o susan susan.c -lm 

clean:
	rm -rf susan output*
