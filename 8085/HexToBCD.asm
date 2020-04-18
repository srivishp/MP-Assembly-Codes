	   LDA 3000

HUN:	   CPI 64
	   JNC LOOP1

TEN:	   CPI 0A
	   JNC LOOP2
	   MOV B,A
	   MOV A,E
	   RLC
	   RLC
	   RLC
	   RLC
	   ADD B
	   STA 3021
	   MOV A,D
	   STA 3020
	   HLT

LOOP1:	   SBI 64
	   INR D
	   JMP HUN

LOOP2:	   SBI 0A
	   INR E
	   JMP TEN
# ORG 3000
# DB 9B
