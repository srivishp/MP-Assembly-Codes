	LXI H,3000
	MVI D,08
	MVI E,00
	MOV A,M
LOOP1:	RRC
	JC LOOP2
LOOP3:	DCR D
	JNZ LOOP1
	MOV A,E
	STA 3020
	HLT

LOOP2:	INR E
 	JMP LOOP3
	
#org 3000
#DB 0A
