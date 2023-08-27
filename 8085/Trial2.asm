	   MVI A,00
	   MVI E,63
	   STA 3000

LOOP1:	   CALL DELAY
	   LDA 3000
	   ADI 01
	   DAA
	   STA 3000
	   STA 3020
	   ANI 0F
	   OUT F1
	   LDA 3020
	   ANI F0
	   RRC
	   RRC
	   RRC
	   RRC
	   OUT F0
	   DCR E
	   JNZ LOOP1
	   HLT

DELAY:	   LXI B,01

LOOP2:	   DCX B
	   MOV A,B
	   ORA C
	   JNZ LOOP2
	   RET
