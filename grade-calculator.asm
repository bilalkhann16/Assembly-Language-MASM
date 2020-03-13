INCLUDE Irvine32.inc
.data
str1 BYTE "PLEASE ENTER AN INTEGER TEST SCORE B/W 0-99: ",0
str2 BYTE "THE LETTER GRADE IS  : ",0
;str3 BYTE "WRONG VALUE ABOVE LIMIT(100) ",0ah,0dh

.code
main PROC
	xor edx,edx
	mov edx,OFFSET str1
	call WriteString
	call ReadInt
	call crlf
	
	cmp eax,60
	jl l1
	cmp eax,70
	jl l2
	cmp eax,80
	jl l3
	cmp eax,90
	jl l4
	cmp eax,101
	jl l5
	
	
l1:
mov al,'F'
jmp l6

l2:
mov al,'D'
jmp l6

l3:
mov al,'C'
jmp l6

l4:
mov al,'B'
jmp l6

l5:
mov al,'A'
jmp l6




l6:
mov edx,offset str2
call writeString 
call writechar
call crlf



exit
main ENDP
END main
