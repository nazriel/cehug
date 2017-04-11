.PHONY: all build openocd flash clean

all: build openocd clean

build:
	ldc2 -march=thumb -mcpu=cortex-m4 -c start.d
	arm-none-eabi-ld -T link.ld --gc-sections start.o -o start.elf

openocd: build
	{ \
		arm-none-eabi-gdb start.elf \
		-ex "target remote localhost:3333" \
		-ex "monitor arm semihosting enable" \
		-ex "monitor reset halt" \
		-ex "load" \
		-ex "load" \
		-ex "cont" ;\
	}

openocd-server:
	sudo openocd -f board/stm32f429discovery.cfg

flash:
	stlink -f 

clean: 
	@rm ./start.o ./start.elf &> /dev/null
