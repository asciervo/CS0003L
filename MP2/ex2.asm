section .data
	text1 db "hadji", 10
	text2 db "tejuco", 10
	padding1 times 37 db ' '
	padding2 times 36 db ' '

section .text
	global _start
_start:
	; Print padding1
	mov eax, 4
	mov ebx, 1
	mov ecx, padding1
	mov edx, 37
	int 0x80

	; Print padding1
	mov eax, 4
	mov ebx, 1
	mov ecx, padding1
	mov edx, 37
	int 0x80

	;Print "hadji"
	mov eax, 4
	mov ebx, 1
	mov ecx, text1
	mov edx, 6
	int 0x80

	;Print padding 2
	mov eax, 4
	mov ebx, 1
	mov ecx, padding2
	mov edx, 35
	int 0x80

	; Exit
	mov eax, 1
	int 0x80
