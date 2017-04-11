all: modules clean

modules: 
	@ldc2 zwierze/kot.d zwierze/pies.d zwierze/package.d dom.d -of=modules
	@./modules

clean:
	@rm ./modules ./kot.o ./pies.o ./package.o dom.o

.PHONY: all modules clean
