include irvine32.inc
.data
	val1 dword 87654321
.code 
main PROC
	
	mov ax,word ptr val1
	mov al,byte ptr val1
	call writehex
	call crlf
	mov al,byte ptr [val1+1]
	call writehex
	call crlf
	mov al,byte ptr[val1+2]
	call writehex
	call crlf
	mov al,byte ptr[val1+3]
	call writehex


	exit

main ENDP 
END main
