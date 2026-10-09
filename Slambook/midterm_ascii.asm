section .data
    ; ANSI Screen Clear & Cursor Home
    clr_scr     db 0x1B, "[2J", 0x1B, "[H", 0
    clr_len     equ $ - clr_scr

    ; Fancy Decorative ASCII Borders
    border_top  db " .-----------------------------------------------------------------. ", 10, 0
    l_btop      equ $ - border_top

    border_mid  db " |-----------------------------------------------------------------| ", 10, 0
    l_bmid      equ $ - border_mid

    border_bot  db " '-----------------------------------------------------------------' ", 10, 0
    l_bbot      equ $ - border_bot

    side_border db " | ", 0
    l_side      equ $ - side_border

    ; Main Header Banner
    str_title   db 10, " .-----------------------------------------------------------------. ", 10
                db " |     ____  _        _    __  __ ____   ____   ____  _  __       | ", 10
                db " |    / ___|| |      / \  |  \/  | __ ) / ___| / ___|| |/ /       | ", 10
                db " |    \___ \| |     / _ \ | |\/| |  _ \| |  _ | |  _ | ' /        | ", 10
                db " |     ___) | |___ / ___ \| |  | | |_) | |_| || |_| || . \        | ", 10
                db " |    |____/|_____/_/   \_\_|  |_|____/ \____(_)____||_|\_\       | ", 10
                db " '-----------------------------------------------------------------' ", 10, 10, 0
    len_title   equ $ - str_title

    ; ASCII Photo Frame
    str_flower  db " |   /\_/\    (\_/)     +---------------------------------------+ | ", 10
                db " |  ( o.o )  ( 'x' )    |    [o_o] OFFICIAL ASSEMBLY SLAMBOOK   | | ", 10
                db " |   > ^ <   c(\")(\")   +---------------------------------------+ | ", 10, 0
    len_flower  equ $ - str_flower

    ; Loading Screen Emoticons & Progress Bar
    str_load_hdr db 10, " [!] Processing Slambook Memory Buffers... Please Wait! ", 10, 10, 0
    len_load_hdr equ $ - str_load_hdr

    emo_kirby1  db "  c(','c)  (>^_^)>  ", 0
    len_emo1    equ $ - emo_kirby1
    emo_kirby2  db "  <('-'<)  ^('-')^  ", 0
    len_emo2    equ $ - emo_kirby2
    emo_kirby3  db "  (>'-')>  Q('.'Q)  <(-^,^-)=b  ", 10, 0
    len_emo3    equ $ - emo_kirby3

    pbar_0      db "  [  0%]  ░░░░░░░░░░", 13, 0
    len_p0      equ $ - pbar_0
    pbar_10     db "  [ 10%]  █░░░░░░░░░", 13, 0
    len_p10     equ $ - pbar_10
    pbar_30     db "  [ 30%]  ███░░░░░░░", 13, 0
    len_p30     equ $ - pbar_30
    pbar_60     db "  [ 60%]  ██████░░░░", 13, 0
    len_p60     equ $ - pbar_60
    pbar_80     db "  [ 80%]  ████████░░", 13, 0
    len_p80     equ $ - pbar_80
    pbar_100    db "  [100%]  ██████████", 10, 10, 0
    len_p100    equ $ - pbar_100

    str_uploaded db "  (data) Upload complete! Formatting Slambook Card...", 10, 10, 0
    len_uploaded equ $ - str_uploaded

    str_out_hdr  db 10, " .-----------------------------------------------------------------. ", 10
                 db " |                    OFFICIAL SLAMBOOK CARD                       | ", 10
                 db " '-----------------------------------------------------------------' ", 10, 0
    len_out_hdr  equ $ - str_out_hdr

    ; Prompts (20 Items)
    p_name      db " ✍  [01] Full Name              : ", 0
    p_nick      db " ✍  [02] Nickname               : ", 0
    p_gender    db " ✍  [03] Gender                 : ", 0
    p_age       db " ✍  [04] Age                    : ", 0
    p_bday      db " ✍  [05] Birthday               : ", 0
    p_hair      db " ✍  [06] Hair Color             : ", 0
    p_height    db " ✍  [07] Height (m)             : ", 0
    p_town      db " ✍  [08] Hometown               : ", 0
    p_prog      db " ✍  [09] Program & School       : ", 0
    p_work      db " ✍  [10] Job/Workplace          : ", 0
    p_lang      db " ✍  [11] Languages Spoken       : ", 0
    p_happy     db " ✍  [12] Happiest Moment        : ", 0
    p_color     db " ✍  [13] Favorite Color(s)      : ", 0
    p_movie     db " ✍  [14] Favorite Movie         : ", 0
    p_music     db " ✍  [15] Favorite Music/Song    : ", 0
    p_singer    db " ✍  [16] Favorite Singer(s)     : ", 0
    p_food      db " ✍  [17] Favorite Food(s)       : ", 0
    p_hobby     db " ✍  [18] Hobbies                : ", 0
    p_book      db " ✍  [19] Favorite Book          : ", 0
    p_motto     db " ✍  [20] Life Motto             : ", 0

    ; Card Output Field Labels (20 Items)
    lbl_name    db " Full Name      : ", 0
    lbl_nick    db " Nickname       : ", 0
    lbl_gender  db " Gender         : ", 0
    lbl_age     db " Age            : ", 0
    lbl_bday    db " Birthday       : ", 0
    lbl_hair    db " Hair Color     : ", 0
    lbl_height  db " Height         : ", 0
    lbl_town    db " Hometown       : ", 0
    lbl_prog    db " Program/School : ", 0
    lbl_work    db " Job/Workplace  : ", 0
    lbl_lang    db " Languages      : ", 0
    lbl_happy   db " Happiest Moment: ", 0
    lbl_color   db " Fav Color(s)   : ", 0
    lbl_movie   db " Fav Movie      : ", 0
    lbl_music   db " Fav Music/Song : ", 0
    lbl_singer  db " Fav Singer(s)  : ", 0
    lbl_food    db " Fav Food(s)    : ", 0
    lbl_hobby   db " Hobbies        : ", 0
    lbl_book    db " Fav Book       : ", 0
    lbl_motto   db " Life Motto     : ", 0

    timespec:
        tv_sec  dd 0
        tv_nsec dd 180000000

section .bss
    buf_name    resb 64
    buf_nick    resb 64
    buf_gender  resb 64
    buf_age     resb 64
    buf_bday    resb 64
    buf_hair    resb 64
    buf_height  resb 64
    buf_town    resb 64
    buf_prog    resb 64
    buf_work    resb 64
    buf_lang    resb 64
    buf_happy   resb 64
    buf_color   resb 64
    buf_movie   resb 64
    buf_music   resb 64
    buf_singer  resb 64
    buf_food    resb 64
    buf_hobby   resb 64
    buf_book    resb 64
    buf_motto   resb 64

section .text
    global _start

_start:
    ; 1. Title Banner
    call clear_screen

    mov ecx, str_title
    mov edx, len_title
    call print_string_len

    mov ecx, border_top
    mov edx, l_btop
    call print_string_len

    mov ecx, str_flower
    mov edx, len_flower
    call print_string_len

    mov ecx, border_bot
    mov edx, l_bbot
    call print_string_len

    ; 2. Inputs (20 Items)
    mov ESI, p_name
    mov EDI, buf_name
    call get_input

    mov ESI, p_nick
    mov EDI, buf_nick
    call get_input

    mov ESI, p_gender
    mov EDI, buf_gender
    call get_input

    mov ESI, p_age
    mov EDI, buf_age
    call get_input

    mov ESI, p_bday
    mov EDI, buf_bday
    call get_input

    mov ESI, p_hair
    mov EDI, buf_hair
    call get_input

    mov ESI, p_height
    mov EDI, buf_height
    call get_input

    mov ESI, p_town
    mov EDI, buf_town
    call get_input

    mov ESI, p_prog
    mov EDI, buf_prog
    call get_input

    mov ESI, p_work
    mov EDI, buf_work
    call get_input

    mov ESI, p_lang
    mov EDI, buf_lang
    call get_input

    mov ESI, p_happy
    mov EDI, buf_happy
    call get_input

    mov ESI, p_color
    mov EDI, buf_color
    call get_input

    mov ESI, p_movie
    mov EDI, buf_movie
    call get_input

    mov ESI, p_music
    mov EDI, buf_music
    call get_input

    mov ESI, p_singer
    mov EDI, buf_singer
    call get_input

    mov ESI, p_food
    mov EDI, buf_food
    call get_input

    mov ESI, p_hobby
    mov EDI, buf_hobby
    call get_input

    mov ESI, p_book
    mov EDI, buf_book
    call get_input

    mov ESI, p_motto
    mov EDI, buf_motto
    call get_input

    ; 3. Loading Screen
    call clear_screen

    mov ecx, str_load_hdr
    mov edx, len_load_hdr
    call print_string_len

    mov ecx, emo_kirby1
    mov edx, len_emo1
    call print_string_len
    call sleep_delay

    mov ecx, emo_kirby2
    mov edx, len_emo2
    call print_string_len
    call sleep_delay

    mov ecx, emo_kirby3
    mov edx, len_emo3
    call print_string_len
    call sleep_delay

    mov ecx, pbar_0
    mov edx, len_p0
    call print_string_len
    call sleep_delay

    mov ecx, pbar_10
    mov edx, len_p10
    call print_string_len
    call sleep_delay

    mov ecx, pbar_30
    mov edx, len_p30
    call print_string_len
    call sleep_delay

    mov ecx, pbar_60
    mov edx, len_p60
    call print_string_len
    call sleep_delay

    mov ecx, pbar_80
    mov edx, len_p80
    call print_string_len
    call sleep_delay

    mov ecx, pbar_100
    mov edx, len_p100
    call print_string_len
    call sleep_delay

    mov ecx, str_uploaded
    mov edx, len_uploaded
    call print_string_len
    call sleep_delay

    ; 4. Final Output Display
    call clear_screen

    mov ecx, str_out_hdr
    mov edx, len_out_hdr
    call print_string_len

    mov ecx, border_top
    mov edx, l_btop
    call print_string_len

    mov ecx, str_flower
    mov edx, len_flower
    call print_string_len

    mov ecx, border_mid
    mov edx, l_bmid
    call print_string_len

    ; Display 20 Fields
    mov ESI, lbl_name
    mov EDI, buf_name
    call print_field

    mov ESI, lbl_nick
    mov EDI, buf_nick
    call print_field

    mov ESI, lbl_gender
    mov EDI, buf_gender
    call print_field

    mov ESI, lbl_age
    mov EDI, buf_age
    call print_field

    mov ESI, lbl_bday
    mov EDI, buf_bday
    call print_field

    mov ESI, lbl_hair
    mov EDI, buf_hair
    call print_field

    mov ESI, lbl_height
    mov EDI, buf_height
    call print_field

    mov ESI, lbl_town
    mov EDI, buf_town
    call print_field

    mov ESI, lbl_prog
    mov EDI, buf_prog
    call print_field

    mov ESI, lbl_work
    mov EDI, buf_work
    call print_field

    mov ESI, lbl_lang
    mov EDI, buf_lang
    call print_field

    mov ESI, lbl_happy
    mov EDI, buf_happy
    call print_field

    mov ESI, lbl_color
    mov EDI, buf_color
    call print_field

    mov ESI, lbl_movie
    mov EDI, buf_movie
    call print_field

    mov ESI, lbl_music
    mov EDI, buf_music
    call print_field

    mov ESI, lbl_singer
    mov EDI, buf_singer
    call print_field

    mov ESI, lbl_food
    mov EDI, buf_food
    call print_field

    mov ESI, lbl_hobby
    mov EDI, buf_hobby
    call print_field

    mov ESI, lbl_book
    mov EDI, buf_book
    call print_field

    mov ESI, lbl_motto
    mov EDI, buf_motto
    call print_field

    mov ecx, border_bot
    mov edx, l_bbot
    call print_string_len

    ; Exit Program (`sys_exit`)
    mov eax, 1
    xor ebx, ebx
    int 0x80


; =================================================================
; PROCEDURES & HELPER FUNCTIONS
; =================================================================

get_input:
    push eax
    push ebx
    push ecx
    push edx

    mov ecx, ESI
    call print_string_null

    mov ecx, EDI
    mov edx, 64
    call read_string

    pop edx
    pop ecx
    pop ebx
    pop eax
    ret

print_field:
    push eax
    push ebx
    push ecx
    push edx

    mov ecx, side_border
    mov edx, l_side
    call print_string_len

    mov ecx, ESI
    call print_string_null

    mov ecx, EDI
    call print_string_null

    pop edx
    pop ecx
    pop ebx
    pop eax
    ret

print_string_len:
    push eax
    push ebx
    mov eax, 4             ; sys_write
    mov ebx, 1             ; stdout
    int 0x80
    pop ebx
    pop eax
    ret

print_string_null:
    push eax
    push ebx
    push ecx
    push edx

    mov edx, ecx
.count_loop:
    cmp byte [edx], 0
    je .found_end
    inc edx
    jmp .count_loop
.found_end:
    sub edx, ecx           ; Calculate string length

    mov eax, 4             ; sys_write
    mov ebx, 1             ; stdout
    int 0x80

    pop edx
    pop ecx
    pop ebx
    pop eax
    ret

clear_screen:
    push eax
    push ebx
    push ecx
    push edx
    mov eax, 4
    mov ebx, 1
    mov ecx, clr_scr
    mov edx, clr_len
    int 0x80
    pop edx
    pop ecx
    pop ebx
    pop eax
    ret

read_string:
    push eax
    push ebx
    mov eax, 3             ; sys_read
    mov ebx, 0             ; stdin
    int 0x80
    pop ebx
    pop eax
    ret

sleep_delay:
    push eax
    push ebx
    mov eax, 162           ; sys_nanosleep
    mov ebx, timespec
    xor ecx, ecx
    int 0x80
    pop ebx
    pop eax
    ret