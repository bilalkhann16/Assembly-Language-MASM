include irvine32.inc
.data
myStr BYTE "Step on no pets",0 
revstr BYTE  SIZEOF mystr DUP(0),0



.code 
main PROC
	
	mov edx,offset mystr
	call writestring
	call crlf
	mov esi,0
	mov ecx,sizeof mystr
	l1:
		mov al,mystr[ecx-1]
		mov revstr+[esi],al
		call writechar
		inc esi
		loop l1
	
	mov edx,offset revstr
	call writestring
	
	


	exit

main ENDP 
END main
