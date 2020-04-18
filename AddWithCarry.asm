lxi h,2000	;load register pair h-l
mvi m,b4	;move 8 bit data into memory
mov a,m	;copy contents of memory into accumulator
inx h	;increment register pair h-l
mvi m,a0	;move 8 bit data into memory
mov b,m	;copy contents of memory into b
add b	;add contents of b to accumulator
sta 3000	;store accumulator contents in 3000h
mvi a,00	;move 00 into accumulator
sta 3001	;store accumulator contents in 3001h
hlt	;halt execution