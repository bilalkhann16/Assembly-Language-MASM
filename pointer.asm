Include Irvine32.inc

.data
	val1 BYTE 21H,43H
	val3 WORD 8765h

.code
	main PROC
	mov al, BYTE PTR  val1
	mov al, BYTE PTR val1+1
	mov ax, WORD PTR val1
	mov eax DWORD PTR val1
	
	call dumpregs
	call Writeint
	exit
	main ENDP
	END main
