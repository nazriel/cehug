all: clean

templates: 
	@ldc2 templates.d -of=templates
	@./templates

static_if: 
	@ldc2 static_if.d -of=static_if
	@./static_if

reflection: 
	@ldc2 -d reflection.d -of=reflection
	@./reflection


clean:
	@rm ./templates ./templates.o ./static_if ./static_if.o ./reflection ./reflection.o &> /dev/null

.PHONY: all templates clean
