include irvine32.inc
.data
	fact byte 1
	num byte 5
	

.code
main PROC
	mov ecx,5
	xor eax,eax
	mov al,1
	l1:
		mul fact
		
		inc fact
		loop l1
	
	
	
	call writedec



	exit

main ENDP 
END main
