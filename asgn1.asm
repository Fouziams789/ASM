BITS 32
;print from one to hundred
 extern printf

section .data
	fmt : db "%d",10,0
	a : dd 0

section .text
	global main
	
	main:
		push ebp
		mov ebp, esp
		mov eax, DWORD[a]

	l1:
		mov DWORD[a], eax
		push eax
		push fmt
		call printf
		mov eax, DWORD[a]		
		add eax, 1
		cmp eax, 100
		jle l1
	
		leave
		ret
		
			
					
	
