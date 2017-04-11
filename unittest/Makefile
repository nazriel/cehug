all: unittest clean

unittest: 
	@dmd -main -unittest unittest.d && ./unittest

clean:
	rm ./unittest.o ./unittest

.PHONY: all unittest clean
