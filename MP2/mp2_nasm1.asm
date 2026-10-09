section .data
	;I LoVe AsSeMbLy PrOgRaMmIngG :)
	;Student Number: 202511849 - ASC

	Message db 49h, 20h, 4Ch, 6Fh, 56h, 65h, 20h, 41h, 73h, 53h, 65h, 4Dh, 62h, 4Ch, 79h, 20h, 50h, 72h, 4Fh, 67h, 52h, 61h, 4Dh, 6Dh, 49h, 6Eh, 67h, 47h, 20h, 3Ah, 29h, 0Ah
	MessageLen equ $ - Message ; Calculate the length of the message
	
	Message1 db 53h, 74h, 75h, 64h, 65h, 6Eh, 74h, 20h, 4Eh, 75h, 6Dh, 62h, 65h, 72h, 3Ah, 20h, 32h, 30h, 32h, 35h, 31h, 31h, 38h, 34h, 39h, 20h, 2Dh, 20h, 41h, 53h, 43h, 0Ah
	Message1Len equ $ - Message1 ; Calculate the length of the message

section .text
global _start

_start:
	;write syscall
	mov eax, 4
	mov ebx, 1
	mov ecx, Message
	mov edx, MessageLen
	int 0x80

	;write syscall
	mov eax, 4
	mov ebx, 1
	mov ecx, Message1
	mov edx, Message1Len
	int 0x80

	; exit syscall
	mov eax, 1
	xor ebx, ebx
	int 0x80