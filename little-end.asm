Include Irvine32.inc
.data
	mydouble DWORD 123401h,11567891h,56789123h,78563142h
.code
	main proc	
	xor eax,eax
	mov eax,Dword PTR [mydouble+8]
	xor eax,eax
	mov al,-127
	call dumpregs
	
	exit
main endp
end main
