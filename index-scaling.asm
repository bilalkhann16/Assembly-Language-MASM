Include Irvine32.inc
.data
	arrayB BYTE  0,1,2,3,4,5
	arrayW WORD  0,1,2,3,4,5
	arrayD DWORD 0,1,2,3,4,5
	array DWORD 5 DUP (1,2,4,5,8)
	sum DWORD 0


.code
	main proc
	mov esi,4
	mov al,arrayB[esi*TYPE arrayB]		; 04
	mov bx,arrayW[esi*TYPE arrayW]		; 0004
	mov edx,arrayD[esi*TYPE arrayD]	
	call dumpregs
	xor eax,eax
	
	mov esi,0
	mov ecx,5
	L1:
		mov ebx,array[esi*TYPE array]
		add ebx,sum
		mov sum,ebx
		call dumpregs
		inc esi
	Loop L1
	
	call crlf
	mov eax,sum
	call dumpregs
	
	exit
main endp
end main
