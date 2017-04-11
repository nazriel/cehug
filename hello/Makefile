all: hello

chmod:
	@chmod +x ./hello.d

hello: chmod
	@./hello.d	

benchmark: chmod
	@time ./hello.d 

.PHONY: all benchmark chmod
