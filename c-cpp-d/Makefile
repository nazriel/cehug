all: build run

build: 
	g++ -Wall -Wextra -pedantic -std=c++14 -c cppsource.cpp
	gcc -Wall -Wextra -pedantic -std=c11 -c csource.c
	dmd dsource.d cppsource.o csource.o -L-lstdc++ -of=combined
run: build
	./combined

clean:
	rm ./*.o ./combined

.PHONY: all build run clean
