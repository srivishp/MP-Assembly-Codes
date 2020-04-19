data segment
str1 db 10,13,'enter string:$' 
str2 db 10,13,'reverse string:$' 
buff db 80
	db 0
	db 80 dup(0) 
counter1 dw 0 
counter2 dw 0
data ends

code segment
assume cs: code, ds:data
start:
	mov ax,data 
	mov ds,ax
	mov ah,09h
	mov dx,offset str1 
	int 21h
	mov ah,0ah
	lea dx,buff
	int 21h
	mov ah,09h
	mov dx,offset str2 
	int 21h
	lea bx,buff
	inc bx
	mov ch,00 
	mov cl,buff+1 
	mov di,cx

loop1:	mov dl,[bx+di] 
	mov ah,02h 
	int 21h
	dec di
	jnz loop1 

exit:	mov ah,4ch 
	int 21h
code ends
end start
