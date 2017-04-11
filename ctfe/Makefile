all: ctfe clean

ctfe: 
	@dmd -c ctfe.d
	@objdump -S -M intel ctfe.o | grep -A 4 "_Dmain"

clean:
	rm ./*.o 

.PHONY: all ctfe clean
