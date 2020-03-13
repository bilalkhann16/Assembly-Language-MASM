include irvine32.inc
.data
buffer BYTE 32 DUP(0),0
.code
	main proc
	mov ecx,0
	mov esi,OFFSET buffer
L1:	shl eax,1
	call dumpregs
	mov BYTE PTR [esi],'0'
	jnc L2
	mov BYTE PTR [esi],'1'
L2:	inc esi
	inc ecx
	cmp ecx,32
	jbe L1
	
	;mov ecx,32
	;mov esi,0
	;L9:
	;mov al,buffer[esi]
	;call dumpregs
	;inc esi
	
	;Loop L9
	exit
main endp
end main
