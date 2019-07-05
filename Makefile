all: sum

sum: sum.o main.o
	g++ sum.o main.o -o sum

sum.o: sum.h sum.cpp
	g++ -c sum.cpp -o sum.o

main.o: main.cpp sum.h
	g++ -c main.cpp -o main.o

clean: 
	rm -f sum.o main.o
	rm -f sum
