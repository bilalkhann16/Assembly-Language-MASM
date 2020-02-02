INCLUDE Irvine32.inc
.data

.code
	main proc
	mov ax,00FFh
	call dumpregs
	add al,1
	call dumpregs
	sub al,1
	call dumpregs
	add ah,1
	call dumpregs
	mov bh,6CH
	call dumpregs
	add bh,95h
	call dumpregs
	mov al,-128
	neg al
	call dumpregs
	exit
main endp
end main
