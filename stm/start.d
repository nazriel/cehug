module start;

import ldc.llvmasm;

alias void function() ISR;
extern(C) immutable ISR ResetHandler = &OnReset;

void SendCommand(int command, void* message)
{
	__asm
	(
		 "mov r0, $0;
		 mov r1, $1;
		 bkpt #0xAB",
		 "r,r,~{r0},~{r1}",
		 command, message
	);
}

void OnReset()
{
	while(true)
	{
		uint[3] message = [2, cast(uint)"hello\r\n".ptr, 7];
		SendCommand(0x05, &message);
	}
}
