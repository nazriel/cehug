all: build run

build: 
	g++ -c cppsource.cpp
	gcc -c csource.c
	dmd dsource.d cppsource.o csource.o -L-lstdc++ -of=combined
run: build
	./combined

clean:
	rm ./*.o ./combined

.PHONY: all build run clean
