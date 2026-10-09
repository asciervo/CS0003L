section .data
    clearScreen db 27, '[2J', 0 
    
    ;ALTHEA
	Message1 db 41h, 4Ch, 54h, 48h, 45h, 41h, 0Ah
	Message1_len equ $ - Message1
	
    ;SECUYA
	Message2 db 53h, 45h, 43h, 55h, 59h, 41h, 0Ah
	Message2_len equ $ - Message2
    
    ;CIERVO
	Message3 db 43h, 49h, 45h, 52h, 56h, 4Fh, 0Ah
	Message3_len equ $ - Message3

    ; H
    Message4 db 72
    Message4_len equ $ - Message4

    ; E
    Message5 db 69
    Message5_len equ $ - Message5

    ; L
    Message6 db 76
    Message6_len equ $ - Message6

    ; L
    Message7 db 76, 10
    Message7_len equ $ - Message7

    ; O
    Message8 db 79, 10
    Message8_len equ $ - Message8

    padding times 8 db ' '
    padding_len equ $ - padding

section .text
	global _start

_start:

    ;print H
	mov eax, 4
	mov ebx, 1
	mov ecx, Message4
	mov edx, Message4_len
	int 0x80

    ; Print padding
	mov eax, 4
	mov ebx, 1
	mov ecx, padding
	mov edx, padding_len
	int 0x80

	;Print "ALTHEA"
	mov eax, 4
	mov ebx, 1
	mov ecx, Message1
	mov edx, Message1_len
	int 0x80

    ;print E
	mov eax, 4
	mov ebx, 1
	mov ecx, Message5
	mov edx, Message5_len
	int 0x80

	; Print padding
	mov eax, 4
	mov ebx, 1
	mov ecx, padding
	mov edx, padding_len
	int 0x80

	;Print "SECUYA"
	mov eax, 4
	mov ebx, 1
	mov ecx, Message2
	mov edx, Message2_len
	int 0x80

    ;print L
	mov eax, 4
	mov ebx, 1
	mov ecx, Message6
	mov edx, Message6_len
	int 0x80

    ; Print padding
	mov eax, 4
	mov ebx, 1
	mov ecx, padding
	mov edx, padding_len
	int 0x80

    ;Print "CIERVO"
	mov eax, 4
	mov ebx, 1
	mov ecx, Message3
	mov edx, Message3_len
	int 0x80

    ; Print second L
    mov eax, 4
    mov ebx, 1
    mov ecx, Message7
    mov edx, Message7_len
    int 0x80

    ; Print O
    mov eax, 4
    mov ebx, 1
    mov ecx, Message8
    mov edx, Message8_len
    int 0x80

	; Exit
	mov eax, 1
	mov ebx, 0
	int 0x80