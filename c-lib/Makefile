all: build run

build: 
	dmd tardemo.d -L-ltar

run: build
	./tardemo

clean:
	rm ./*.o ./tardemo

.PHONY: all build run clean
