section .data
	clearScreen db 27, '[2J'

	moveCursor1 db 27, '[1;1H'	
	moveCursor1_len equ $ - moveCursor1

	;CIERVO
	Message1 db 67, 73, 69, 82, 86, 79, 10
	Message1_len equ $ - Message1

	moveCursor2 db 27, '[2;7H'	; Move cursor to 2nd row, 7th column
	moveCursor2_len equ $ - moveCursor2
 
	;ALTHEA
	Message2 db 65, 76, 84, 72, 69, 65, 10
	Message2_len equ $ - Message2

	moveCursor3 db 27, '[3;14H'	;Move cursor to the 3rd row, 14th column
	moveCursor3_len equ $ - moveCursor3

	;SECUYA
	Message3 db 83, 69, 67, 85, 89, 65, 10
	Message3_len equ $ - Message3

	moveCursor4 db 27, '[4;14H'	;Move cursor to the 4th row, 14th column
	moveCursor4_len equ $ - moveCursor4

	;THEA
	Message4 db 84, 72, 69, 65, 10
	Message4_len equ $ - Message4

    section .text
	global _start

_start:
	call clearTheScreen
	call displayMessage1
	call displayMessage2
	call displayMessage3
    call displayMessage4
	call exitProgram

;Clear the screen
	clearTheScreen:
	mov eax, 4
	mov ebx, 1
	mov ecx, clearScreen
	mov edx, 4
	int 0x80
	ret

displayMessage1:
	mov eax, 4
	mov ebx, 1
	mov ecx, moveCursor1
	mov edx, moveCursor1_len
	int 0x80

	mov eax, 4
	mov ebx, 1
	mov ecx, Message1
	mov edx, Message1_len
	int 0x80
	ret

displayMessage2:
	mov eax, 4
	mov ebx, 1
	mov ecx, moveCursor2
	mov edx, moveCursor2_len
	int 0x80

	mov eax, 4
	mov ebx, 1
	mov ecx, Message2
	mov edx, Message2_len
	int 0x80
	ret

displayMessage3:
	mov eax, 4
	mov ebx, 1
	mov ecx, moveCursor3
	mov edx, moveCursor3_len
	int 0x80

	mov eax, 4
	mov ebx, 1
	mov ecx, Message3
	mov edx, Message3_len
	int 0x80
	ret

displayMessage4:
	mov eax, 4
	mov ebx, 1
	mov ecx, moveCursor4
	mov edx, moveCursor4_len
	int 0x80

	mov eax, 4
	mov ebx, 1
	mov ecx, Message4
	mov edx, Message4_len
	int 0x80
	ret

; Exit program
exitProgram:
	mov eax, 1
	mov ebx, 0
	int 0x80
