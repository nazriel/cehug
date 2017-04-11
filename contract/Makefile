all: contract clean

contract: 
	@ldc2 -main -unittest -run contract.d

clean:
	rm ./*.o 

.PHONY: all contract clean
