	   MVI B,05
	   LXI H,2000
	   LXI D,2019
LOOP:	   MOV A,M
	   STAX D
	   INX H
	   DCX D
	   DCR C
	   JNZ LOOP
	   HLT
