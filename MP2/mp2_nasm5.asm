section .data

    ; Clear screen
    clearScreen db 27, '[2J'

    ; Cursor positions for poem
    cursor1 db 27, '[1;26H'
    cursor2 db 27, '[2;24H'
    cursor3 db 27, '[3;23H'
    cursor4 db 27, '[4;21H'
    cursor5 db 27, '[5;19H'
    cursor6 db 27, '[6;17H'
    cursor7 db 27, '[7;14H'
    cursor8 db 27, '[8;25H'
    cursor9 db 27, '[9;24H'
    cursor10 db 27, '[10;23H'

    cursor11 db 27, '[11;16H'
    cursor12 db 27, '[11;34H'

    cursor13 db 27, '[12;10H'
    cursor14 db 27, '[12;27H'

    cursor15 db 27, '[13;20H'
    cursor16 db 27, '[13;45H'

    ; Move below poem
    bottomCursor db 27, '[15;1H'


    ; Poem
    word1 db "I"
    word2 db "wrote"
    word3 db "a poem"
    word4 db "in the shape"
    word5 db "of a Christmas"
    word6 db "tree but then forgot"
    word7 db "to water it and only a few"
    word8 db "days"
    word9 db "later"
    word10 db "there"

    word11 db "were"
    word12 db "words"
    word13 db "all"
    word14 db "over"
    word15 db "the"
    word16 db "carpet"


    ; HEX values:
    ; I LoVe AsSeMbLy PrOgRaMmIngG :)
    message db 49h, 20h, 4Ch, 6Fh, 56h, 65h, 20h, 41h, 73h, 53h, 65h, 4Dh, 62h, 4Ch, 79h, 20h, 50h, 72h, 4Fh, 67h, 52h, 61h, 4Dh, 6Dh, 49h, 6Eh, 67h, 47h, 20h, 3Ah, 29h, 0Ah


    ; HEX values:
    ; Student Number: 202511849
    student db 53h, 74h, 75h, 64h, 65h, 6Eh, 74h, 20h, 4Eh, 75h, 6Dh, 62h, 65h, 72h, 3Ah, 20h, 32h, 30h, 32h, 35h, 31h, 31h, 38h, 34h, 39h, 0Ah


    ; ASCII values: ALTHEA
    firstname db 65, 76, 84, 72, 69, 65, 10

    ; ASCII values: SECUYA
    middlename db 83, 69, 67, 85, 89, 65, 10

    ; ASCII values: CIERVO
    lastname db 67, 73, 69, 82, 86, 79, 10


section .text
    global _start


_start:

    ; Clear screen
    mov eax, 4
    mov ebx, 1
    mov ecx, clearScreen
    mov edx, 4
    int 0x80


    ; I
    mov ecx, cursor1
    mov edx, 7
    call print

    mov ecx, word1
    mov edx, 1
    call print


    ; wrote
    mov ecx, cursor2
    mov edx, 7
    call print

    mov ecx, word2
    mov edx, 5
    call print


    ; a poem
    mov ecx, cursor3
    mov edx, 7
    call print

    mov ecx, word3
    mov edx, 6
    call print


    ; in the shape
    mov ecx, cursor4
    mov edx, 7
    call print

    mov ecx, word4
    mov edx, 12
    call print


    ; of a Christmas
    mov ecx, cursor5
    mov edx, 7
    call print

    mov ecx, word5
    mov edx, 14
    call print


    ; tree but then forgot
    mov ecx, cursor6
    mov edx, 7
    call print

    mov ecx, word6
    mov edx, 20
    call print


    ; to water it and only a few
    mov ecx, cursor7
    mov edx, 7
    call print

    mov ecx, word7
    mov edx, 26
    call print


    ; days
    mov ecx, cursor8
    mov edx, 7
    call print

    mov ecx, word8
    mov edx, 4
    call print


    ; later
    mov ecx, cursor9
    mov edx, 7
    call print

    mov ecx, word9
    mov edx, 5
    call print


    ; there
    mov ecx, cursor10
    mov edx, 8
    call print

    mov ecx, word10
    mov edx, 5
    call print


    ; were
    mov ecx, cursor11
    mov edx, 8
    call print

    mov ecx, word11
    mov edx, 4
    call print


    ; words
    mov ecx, cursor12
    mov edx, 8
    call print

    mov ecx, word12
    mov edx, 5
    call print


    ; all
    mov ecx, cursor13
    mov edx, 8
    call print

    mov ecx, word13
    mov edx, 3
    call print


    ; over
    mov ecx, cursor14
    mov edx, 8
    call print

    mov ecx, word14
    mov edx, 4
    call print


    ; the
    mov ecx, cursor15
    mov edx, 8
    call print

    mov ecx, word15
    mov edx, 3
    call print


    ; carpet
    mov ecx, cursor16
    mov edx, 8
    call print

    mov ecx, word16
    mov edx, 6
    call print


    ; Move cursor below poem
    mov ecx, bottomCursor
    mov edx, 8
    call print


    ; I LoVe AsSeMbLy PrOgRaMmIngG :)
    mov ecx, message
    mov edx, 32
    call print


    ; Student Number
    mov ecx, student
    mov edx, 26
    call print


    ; ALTHEA
    mov ecx, firstname
    mov edx, 7
    call print


    ; SECUYA
    mov ecx, middlename
    mov edx, 7
    call print


    ; CIERVO
    mov ecx, lastname
    mov edx, 7
    call print


    ; Exit program
    mov eax, 1
    mov ebx, 0
    int 0x80


; Print procedure
print:
    mov eax, 4
    mov ebx, 1
    int 0x80
    ret