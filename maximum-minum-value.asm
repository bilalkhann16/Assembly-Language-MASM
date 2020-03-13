; maximum and minimum value
Include Irvine32.inc

.data
	ARRAY dword 10 DUP (?)
	l byte 0
	
.code
	main proc
	xor eax,eax
	mov ecx,11
	xor ebx,ebx
	mov ebx,0
	loop start
	start:
	call READINT
	mov ARRAY[ebx],eax
	add ebx,4
	xor eax,eax
	loop start
	
	xor eax,eax
	xor ebx,ebx
	mov ebx,offset ARRAY
	mov eax,[ebx+0]  
	;call writedec
	mov ecx, start
	
	MAX_VALUE_COMPARISON:   
	cmp eax, [ebx]     
	JGE MAXIMUM_LOOP   ;  if (left op>= rightop)
	mov eax, [ebx]    
	
	MAXIMUM_LOOP:
	            add ebx, 4        
            loop MAX_VALUE_COMPARISON
        call crlf
        call writedec ; for maximum value 
        
        ;;;;;; FOR GETTING_MINIMUM_VALUE 
        
        	xor eax,eax
		xor ebx,ebx
		mov ebx,offset ARRAY
		mov eax,[ebx]  
		;call writedec
		mov ecx, 10
		
		MINIMUM_VALUE_COMPARISON:   
			    cmp eax, [ebx]     
		            JLE MINIMUM_LOOP  ;   if (left op < rightop)
		            mov eax, [ebx]    
		MINIMUM_LOOP:
		            add ebx, 4        
	            loop MINIMUM_VALUE_COMPARISON
       call crlf
       call writedec ; for minimum value
       call crlf
	
	exit
	main ENDP
END main
