# org 0000
	LHLD 2050	//H=2051, L=2050
	XCHG	//H=D, L=E
	MOV C,D	//Copy D to C
	MVI D,00	//D=00
	LXI H, 0000	//H=00, L=00
loop1:	DAD D	//HL=HL+DE
	JNZ loop2	//If Zero Flag=0, go to loop2
	INR H	//Increment H
loop2:	DCR C	//Decrement C
	JNZ loop1	//If Zero Flag=0, go to loop1
	SHLD 3050	//H=3051, L=3050
	HLT	//Halt execution
# org 2050
# db 09,04 	   
