section .bss
    nameBuffer resb 32
    idBuffer resb 32
    courseBuffer resb 32

section .data
    namePrompt db "Enter Student Name: "
    len_namePrompt equ $ - namePrompt

    idPrompt db "Enter Student ID: "
    len_idPrompt equ $ - idPrompt

    coursePrompt db "Enter Course/Program: "
    len_coursePrompt equ $ - coursePrompt

    recordHeader db 10, "--- Student Record ---", 10
    len_recordHeader equ $ - recordHeader

    nameLabel db "Name: "
    len_nameLabel equ $ - nameLabel

    idLabel db "ID: "
    len_idLabel equ $ - idLabel
    
    courseLabel db "Course: "
    len_courseLabel equ $ - courseLabel

section .text   
    global _start

_start:
    ; Ask for student name
    mov eax, 4
    mov ebx, 1
    mov ecx, namePrompt
    mov edx, len_namePrompt
    int 0x80

    ; Read student name
    mov eax, 3
    mov ebx, 0
    mov ecx, nameBuffer
    mov edx, 32
    int 0x80

    ; Ask for student ID
    mov eax, 4
    mov ebx, 1
    mov ecx, idPrompt
    mov edx, len_idPrompt
    int 0x80

    ; Read student ID
    mov eax, 3
    mov ebx, 0
    mov ecx, idBuffer
    mov edx, 32
    int 0x80

    ; Ask for course/program
    mov eax, 4
    mov ebx, 1
    mov ecx, coursePrompt
    mov edx, len_coursePrompt
    int 0x80
    
    ; Read course/program
    mov eax, 3
    mov ebx, 0
    mov ecx, courseBuffer
    mov edx, 32
    int 0x80

    ;Student Record heading
    mov eax, 4
    mov ebx, 1
    mov ecx, recordHeader
    mov edx, len_recordHeader
    int 0x80

    ; Name label
    mov eax, 4
    mov ebx, 1
    mov ecx, nameLabel
    mov edx, len_nameLabel
    int 0x80

    ; Student name
    mov eax, 4
    mov ebx, 1
    mov ecx, nameBuffer
    mov edx, 32
    int 0x80

    ; ID label
    mov eax, 4
    mov ebx, 1
    mov ecx, idLabel
    mov edx, len_idLabel
    int 0x80

    ; Student ID
    mov eax, 4
    mov ebx, 1
    mov ecx, idBuffer
    mov edx, 32
    int 0x80
    
    ; Course label
    mov eax, 4
    mov ebx, 1
    mov ecx, courseLabel
    mov edx, len_courseLabel
    int 0x80

    ; Course
    mov eax, 4
    mov ebx, 1
    mov ecx, courseBuffer
    mov edx, 32
    int 0x80

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80