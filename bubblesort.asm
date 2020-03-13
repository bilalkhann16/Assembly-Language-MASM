;bubble_sort algorithm
INCLUDE irvine32.inc
.data
	OARRAY dword 10 dup (?)
	COUNTER dword 10	
	;NARRAY dword ?
.code
main proc
	mov ecx,10
	mov esi,0
	l1:
	call readint
	mov [OARRAY+esi],eax
	xor eax,eax
	add esi,4
	loop l1
	call sort
	call WriteString 
	exit
	main ENDP



sort proc uses eax ecx esi
mov ecx,COUNTER

dec COUNTER
l1:
	push ecx
	mov esi,OARRAY
	l2:
		cmp [esi+4],eax
		jg l3
		xchg eax,[esi+4]
		mov [esi],eax
		l3:
			add esi,4
			loop l2
		pop ecx
	loop l1
l4: 
ret

sort endp
exit
end main
main endp
