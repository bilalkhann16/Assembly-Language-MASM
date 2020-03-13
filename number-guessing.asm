INCLUDE Irvine32.inc 
.data
str1 BYTE "Please enter 10 random numbers: ",0
str2 BYTE "Please enter An Integer to be searched : ",0
str3 BYTE " Congrats!!!! the integer you entered is  present in array.",0
str4 BYTE " And Its position in array is:",0
str5 BYTE "Not Found ",0
array1 BYTE 10 DUP(?)
val BYTE ?


.code
main PROC
xor eax,eax
mov edx,OFFSET str1
call writeString
call crlf
mov ecx,0
mov esi,0
mov ecx,10
L1:
	call readint
	mov array1[esi],al
	inc esi
	loop L1

xor eax,eax
mov esi,0
xor ecx,ecx


mov edx,OFFSET str2
call writeString
xor ebx,ebx
call readint
mov val,al
mov esi,0
mov  ecx,0
mov  ecx,9
L3:
		mov al,array1[esi]
		.IF al==val
		mov edx,OFFSET str3
		call writestring
		call Crlf
		xor eax,eax
		mov edx,OFFSET str4
		call  writestring
		mov eax,esi
		call writedec
		call crlf
		exit
.ENDIF
inc esi
loop L3 
xor edx,edx
mov edx,offset str5
call writestring
exit 
main ENDP
end main
