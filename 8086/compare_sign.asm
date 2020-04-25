DATA SEGMENT
    ARR1 DB 5,4,3,-2,-1,0,1,2,-3,-4
DATA ENDS
EXTRA SEGMENT
    ARR2 DB -5,-4,-3,-2,-1,0,2,3,4,5
    XYZ DB 3 DUP(0)
EXTRA ENDS
CODE SEGMENT
START:	MOV AX, DATA
            	MOV DS,AX 
            	MOV AX, EXTRA
            	MOV ES, AX
            	LEA SI, ARR1-1
            	LEA DI, ARR2-1
            	MOV CH, 0BH
COMPARE:	INC SI
                    	INC DI  
                    	DEC CH
                    	JZ EXIT
                   	MOV AH,[SI]
                    	CMP AH,ES:[DI]
                    	JG GREAT
                    	CMP AH,ES:[DI]
                    	JZ EQUAL
                    	INC DL
                    	JMP COMPARE
GREAT:	INC BH
                	JMP COMPARE
EQUAL:	INC DH
                	JMP COMPARE
EXIT:		MOV ES:XYZ,BH   ;GREATER
                    	MOV ES:XYZ+1,DH ;EQUAL
                    	MOV ES:XYZ+2,DL ;LESSER
                    	MOV AH,4CH
                    	INT 21H
CODE ENDS
END START
