month = $(shell date "+%B")

all: strange_app

$(month).o: $(month).c
	gcc -c $(month).c -o $(month).o 

strange_app: strange_app.c $(month).o
	gcc strange_app.c $(month).o -o strange_app
