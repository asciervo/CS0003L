section .data
	Message db 72, 65, 68, 74, 73, 32, 84, 72, 85, 67, 79
	MessageLen equ $ - Message ; Calculate the length of the message

section .text
global _start

_start:
	;write syscall
	mov eax, 4
	mov ebx, 1
	mov ecx, Message
	mov edx, MessageLen
	int 0x80

	; exit syscall
	mov eax, 1
	xor ebx, ebx
	int 0x80
