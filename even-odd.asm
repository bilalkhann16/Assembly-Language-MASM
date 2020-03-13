INCLUDE Irvine32.inc
.data
str1 BYTE "Please enter ther number ",0
str2 BYTE "YOUR NUMBER IS EVEN",0
str3 BYTE "YOUR NUMBER IS ODD",0
var1 WORD ? 
.code
main PROC
xor eax,eax
xor ebx,ebx

mov edx,OFFSET str1
call WriteString
call Readint
call dumpregs
mov bl,2
div bl 
call dumpregs

shld dx,ax,8 ;mov upper ax into dx 1bit is 4byte  in case of 5 eax = (0102) ==> 01 is shifted to dx 
call dumpregs
xor eax,0
mov ax,dx
mov var1,ax
.IF dx == 0
mov edx,OFFSET str2
;call writedec 
call writestring
call crlf
.ELSE
;call writedec 
mov edx,OFFSET str3
call writestring
call crlf
.ENDIF
exit 
main endp
end main
