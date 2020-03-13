INCLUDE Irvine32.inc

.data
count byte 0
sum byte 0

str1 byte "enter an integer: ",0
str2 byte "enter an integer : ",0

.code

task4a proc

xor edx,edx
mov edx,offset str1
call writestring

xor edx,edx



xor eax,eax
call readint
mov ecx,0
mov ecx,10
.while eax>0
mov edx,0

div ecx


inc count

.endw

xor eax,eax
mov al,count
call writedec


ret

task4a endp


sum_digits proc

xor edx,edx
mov edx,offset str2
call writestring

xor edx,edx




mov edx,0
mov ecx,0
xor eax,eax
call readint

mov ecx,10

.while eax>0
xor edx,edx

div ecx
push eax

xor eax,eax
mov eax,edx
add sum,al
xor eax,eax
pop eax



.endw

xor eax,eax
mov al,sum
call writedec



ret
sum_digits endp



main proc

call task4a
call sum_digits

exit
main endp
end main
