	   LXI H,3000
	   MVI D,02

LOOP0:	   MVI B,08
	   MVI C,00
	   MOV A,M

LOOP1:	   RRC
	   JC LOOP3

LOOP2:	   DCR B
	   JNZ LOOP1
	   MOV M,C
	   INX H
	   DCR D
	   JNZ LOOP0
	   DCX H
	   DCX H
	   MOV A,M
	   ADD C
	   STA 3020
	   HLT

LOOP3:	   INR C
	   JMP LOOP2
# ORG 3000
# DB 61,A8
