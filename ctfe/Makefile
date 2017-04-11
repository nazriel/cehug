all: ctfe clean

ctfe: 
	@dmd -c ctfe.d
	@objdump -S -x86-asm-syntax=intel ctfe.o | grep -A 4 "_Dmain"

clean:
	rm ./*.o 

.PHONY: all ctfe clean
