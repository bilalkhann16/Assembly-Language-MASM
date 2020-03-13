Include Irvine32.inc

Str_trim PROTO, 

.data
	msg1 byte "task3 now  concetination::",0
	msg3 byte "Enter a number",0
	array byte 16 dup (?)
	string_3 BYTE "aabbccdd      ",0 
	string_2 BYTE  "eeffgghh$$$$@@@@",0 
	
	inputnumber DWORD ?
	count byte 0
	
	
	sum byte 0
	
.code
	task1 proc
		xor eax,eax
		xor ebx,ebx
		INVOKE Str_trim,ADDR string_3,' '  
		MOV EDX,OFFSET string_3
		call writestring
		
		INVOKE Str_trim,ADDR string_2,'@'
		INVOKE Str_trim,ADDR string_2,'$'
		MOV EDX,OFFSET string_2
		call writestring
		call crlf
		;exit
	task1 endp
	
	
	task2 proc
		INVOKE Str_ucase,ADDR string_2
		INVOKE Str_ucase,ADDR string_3
		mov edx, OFFSET string_3
		call writestring
		call crlf
		
		mov edx,offset string_2
		call writestring
		call crlf
	
		xor edx,edx
		mov edx,offset msg1
		call writestring
		call crlf
	
		xor ecx,ecx
		xor esi,esi
		xor edx,edx
		cld
		mov ecx,8
		mov esi,offset string_3
		mov edi,offset array
		rep movsb
		mov edx,offset array
		call writestring
		xor ecx,ecx
		xor esi,esi
		xor edx,edx
		jz nextloop
		
		nextloop:
		cld
		mov ecx,8
		mov esi,offset string_2
		mov edi,offset array
		rep movsb
		
		mov edx,offset array
		call writestring
		exit	
	
	task2 endp
		
	main proc
		call task1
		call task2
		
		
main endp
end main
