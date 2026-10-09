; ==========================================
; Hello Kitty ASCII Art
; NASM 32-bit Linux
; ==========================================

section .data

    line01 db "_____________________________________$$$$", 10
    len01  equ $ - line01

    line02 db "___________________________________$$____$", 10
    len02  equ $ - line02

    line03 db "___$$$$___________________________$_______$", 10
    len03  equ $ - line03

    line04 db "__$____$$________________________$____$____$", 10
    len04  equ $ - line04

    line05 db "_$______$$_____________________$_____$$$____$", 10
    len05  equ $ - line05

    line06 db "_$_______$$____$$$$___$$$_____$_____$$$$$____$", 10
    len06  equ $ - line06

    line07 db "$_________$_$$$___$$$___$$___$_____$$$$$$____$", 10
    len07  equ $ - line07

    line08 db "$___$$_____$_$$___$$$___$$$_$_____$$$$$$$____$", 10
    len08  equ $ - line08

    line09 db "$__$$$$_____$$$$$_$$$___$$$________$$$$$$____$", 10
    len09  equ $ - line09

    line10 db "$__$$$$$$___$$$$$_$$$$___$$_________$$$$$$___$", 10
    len10  equ $ - line10

    line11 db "$__$$$$$$$__$$$$$_$$$$___$$$___________$$$___$", 10
    len11  equ $ - line11

    line12 db "$__$$$$$____$$$$$_$$$$___$$$_________________$", 10
    len12  equ $ - line12

    line13 db "$__$$$$_____$$$$$_$$$$___$$$$________________$", 10
    len13  equ $ - line13

    line14 db "$__$$$______$$$$$__$$$___$$$$________________$", 10
    len14  equ $ - line14

    line15 db "$__$$_______$$$$$__$$$___$$$$________________$", 10
    len15  equ $ - line15

    line16 db "$___________$$$____$$$____$$$________________$", 10
    len16  equ $ - line16

    line17 db "$____________$______$______$_________________$", 10
    len17  equ $ - line17

    line18 db "_$____________________________________________$", 10
    len18  equ $ - line18

    line19 db "$__________________________________$$$$________$", 10
    len19  equ $ - line19

    line20 db "$_________________________________$__$$$________$", 10
    len20  equ $ - line20

    line21 db "$________$$$$____________________$$__$$$$_______$", 10
    len21  equ $ - line21

    line22 db "$_______$$$__$___________________$$$$$$$$_______$", 10
    len22  equ $ - line22

    line23 db "$______$$$$__$___________________$$$$$$$$_______$", 10
    len23  equ $ - line23

    line24 db "$______$$$$$$$$__________________$$$$$$$$_______$", 10
    len24  equ $ - line24

    line25 db "$______$$$$$$$$___________________$$$$$$________$", 10
    len25  equ $ - line25

    line26 db "$______$$$$$$$$_________$__$_______$$$$_________$", 10
    len26  equ $ - line26

    line27 db "$_______$$$$$$______$__$$_$_____________________$", 10
    len27  equ $ - line27

    line28 db "$________$$$$________$$__$______________________$", 10
    len28  equ $ - line28

    line29 db "_$____________________$__$_____________________$", 10
    len29  equ $ - line29

    line30 db "__$____________________$$_____________________$", 10
    len30  equ $ - line30

    line31 db "___$________________________________$$$______$", 10
    len31  equ $ - line31

    line32 db "____$$_____________________________$___$___$", 10
    len32  equ $ - line32

    line33 db "______$$$_________________________$_____$_$", 10
    len33  equ $ - line33

    line34 db "_________$$$$$______________$$$$$$_______$", 10
    len34  equ $ - line34

    line35 db "___$$_________$$$$$$$$$$$$$$_____________$", 10
    len35  equ $ - line35

    line36 db "__$__$_________$___$___________________$$", 10
    len36  equ $ - line36

    line37 db "__$__$_________$___$________________$$$", 10
    len37  equ $ - line37

    line38 db "__$__$__________$___$______________$$", 10
    len38  equ $ - line38

    line39 db "__$$$$$$$_______$___$_____________$__$", 10
    len39  equ $ - line39

    line40 db "___$____$$______$___$____________$____$", 10
    len40  equ $ - line40

    line41 db "___$$$$$$$$__$$$_$$$____________$_____$", 10
    len41  equ $ - line41

    line42 db "____$___$$$$$__$_____$__________$_____$", 10
    len42  equ $ - line42

    line43 db "_____$__$______$_____$__________$_____$", 10
    len43  equ $ - line43

    line44 db "______$$$$$$$$$$_____$__________$____$", 10
    len44  equ $ - line44

    line45 db "________________$$$$$____________$$$$", 10
    len45  equ $ - line45

    ; Array storing addresses of each line
    artLines dd line01, line02, line03, line04, line05, line06, line07, line08, line09, line10
             dd line11, line12, line13, line14, line15, line16, line17, line18, line19, line20
             dd line21, line22, line23, line24, line25, line26, line27, line28, line29, line30
             dd line31, line32, line33, line34, line35, line36, line37, line38, line39, line40
             dd line41, line42, line43, line44, line45

    ; Array storing lengths of each line
    artLens  dd len01, len02, len03, len04, len05, len06, len07, len08, len09, len10
             dd len11, len12, len13, len14, len15, len16, len17, len18, len19, len20
             dd len21, len22, len23, len24, len25, len26, len27, len28, len29, len30
             dd len31, len32, len33, len34, len35, len36, len37, len38, len39, len40
             dd len41, len42, len43, len44, len45

    TOTAL_LINES equ 45

section .text
    global _start

_start:
    mov esi, 0          ; Array index pointer (0, 4, 8, 12...)
    mov edi, TOTAL_LINES ; Loop counter (45 iterations)

printLoop:
    mov ecx, [artLines + esi] ; Load line address from array
    mov edx, [artLens + esi]  ; Load line length from array
    call printString

    add esi, 4               ; Move to next 4-byte pointer
    dec edi                  ; Decrement loop counter
    jnz printLoop            ; Repeat until all lines are printed

    ; Exit program
    mov eax, 1               ; sys_exit
    mov ebx, 0               ; status 0
    int 0x80

; ==========================================
; Procedure: printString
; Inputs: ECX = address, EDX = length
; ==========================================
printString:
    mov eax, 4          ; sys_write
    mov ebx, 1          ; stdout
    int 0x80
    ret