ASSUME CS:CODE, DS:DATA
DATA SEGMENT
    NUM DW 4000H    		;perfect square - 16384(4000h)
    OUTPUT DW 2 DUP(0)	;square root – 128(80h)
DATA ENDS
CODE SEGMENT
START:	MOV AX,DATA
        		MOV DS,AX
        		LEA SI,NUM
        		MOV AX,NUM
        		MOV BX,0000
        		MOV DX,01

LOOP1:	INC BX
                	SUB AX,DX
                	JZ EXIT
                	INC DX
                	INC DX
                	JMP LOOP1

EXIT:		MOV OUTPUT,BX
                	MOV AH,4CH
                	INT 21H
CODE ENDS
END START
