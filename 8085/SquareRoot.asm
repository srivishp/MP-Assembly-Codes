	   MVI B,01
	   MVI C,00

LOOP:	   LDA 3000
	   INR C
	   SUB B
	   JNZ LOOP2
	   MOV A,C
	   STA 3050
	   HLT

LOOP2:	   STA 3000
	   MOV A,B
	   ADI 02
	   MOV B,A
	   JMP LOOP
# ORG 3000
# DB 10
