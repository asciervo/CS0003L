section .data
	;CIERVO
	Message1 db 43h, 49h, 45h, 52h, 56h, 4Fh, 0Ah
	Message1_len equ $ - Message1

	;ALTHEA
	Message2 db 41h, 4Ch, 54h, 48h, 45h, 41h, 0Ah
	Message2_len equ $ - Message2

	;SECUYA
	Message3 db 53h, 45h, 43h, 55h, 59h, 41h, 0Ah
	Message3_len equ $ - Message3

section .text
	global _start

_start:
	call displayMessage1
	call displayMessage2
	call displayMessage3
	call exitProgram

displayMessage1:
	mov eax, 4
	mov ebx, 1
	mov ecx, Message1
	mov edx, Message1_len
	int 0x80
	ret

displayMessage2:
	mov eax, 4
	mov ebx, 1
	mov ecx, Message2
	mov edx, Message2_len
	int 0x80
	ret

displayMessage3:
	mov eax, 4
	mov ebx, 1
	mov ecx, Message3
	mov edx, Message3_len
	int 0x80
	ret

; Exit program
exitProgram:
	mov eax, 1
	mov ebx, 0
	int 0x80
