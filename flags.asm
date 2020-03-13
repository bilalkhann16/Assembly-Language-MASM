Include Irvine32.inc
.data

.code	
	flags proc
		xor eax,eax
		mov ax,0ffh
		call dumpregs
		add ax,1
		call dumpregs
		sub ax,1
		call dumpregs
		add al,1
		call dumpregs
		mov bh,6ch
		add bh,95h
		call dumpregs
		
		xor eax,eax
		mov al,2
		sub al,3
		call crlf
		call dumpregs
	exit
	flags endp
	
	flag2 proc
	mov ax,00FFh
	add al,1
	add ah,1
	mov al,-127
	call dumpregs
	sub al,2
	neg al
	call dumpregs
	
	
	exit
	flag2 endp
	
	main proc
	;call flags
	call flag2
	
	exit
main endp	
end main
