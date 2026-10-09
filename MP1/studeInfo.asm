section .data
    Message  db "Enrollment Status : ENROLLED", 10
    MessageLen equ $ - Message
    
    Message2  db "Student #: 202511849", 9, 9, 9, 9, 9, 9, "College: COMPUTER STUDIES", 9, "Program: BSCSSE", 10, 10
    MessageLen2 equ $ - Message2
    
    Message3  db "Name: CIERVO, ALTHEA SECUYA", 9, 9, 9, 9, 9,"Year Level : 2", 9, "1st term, SY 26-27", 10
    MessageLen3 equ $ - Message3
    
    Message4  db "Phone: +630962520286", 9, "Zip Code: 1101", 9, 9, "Address: Bldg. 8 Unit 831", 10
    MessageLen4 equ $ - Message4
    
    Message5  db "Classification :", 10, 10
    MessageLen5 equ $ - Message5
    
    Message6 db "________________________________________________________________________________________________________________________________________", 10
    MessageLen6 equ $ - Message6
    
    Message7  db "Courses", 9, 9, "Title", 9, 9, 9, 9, 9, 9, 9, 9,9, "Section", 9, 9, "Units", 9, "Days", 9, "Time", 9, 9, 9, 9, 9,9,9,9,9, "Room", 10
    MessageLen7 equ $ - Message7
    
    Message8 db "________________________________________________________________________________________________________________________________________", 10
    MessageLen8 equ $ - Message8
    
    
    Message9  db "CCS0021", 9, 9, "INFORMATION MANAGEMENT (LEC)", 9, 9, 9, "TN24", 9, 9, "2", 9,9, "T", 9, 9,"16:00:00-18:40:00", 9, 9,9,9,9,9, "ONLINE", 10
    MessageLen9 equ $ - Message9
    
    Message10  db "CCS0021L", 9, "INFORMATION MANAGEMENT (LAB)", 9, 9, 9, "TN24", 9, 9, "1", 9,9, "F", 9, 9, "16:00:00-18:50:00", 9, 9,9,9,9,9, "ONLINE", 10
    MessageLen10 equ $ - Message10
    
    Message11  db "CS0003", 9, 9, "COMPUTER SYSTEMS & ARCHITECTURE", 9,9, 9, "TN24", 9, 9, "2", 9,9, "F", 9, 9, "10:00:00-12:40:00", 9, 9,9,9,9,9, "ONLINE", 10
    MessageLen11 equ $ - Message11
    
    Message12  db "CS0003L", 9, 9, "COMPUTER SYSTEMS & ARCHITECTURE (LAB)", 9, "TN24", 9, 9, "1", 9, 9, "TH", 9, 9, "10:00:00-12:50:00", 9, 9,9,9,9,9, "E610", 10
    MessageLen12 equ $ - Message12
    
    Message13  db "CS0070", 9, 9, "OBJECT ORIENTED PROGRAMMING", 9, 9, 9, 9, "TN24", 9, 9, "2", 9,9, "F", 9, 9, "07:00:00-09:40:00", 9,9,9,9,9,9, "ONLINE", 10
    MessageLen13 equ $ - Message13
    
    Message14  db "CS0070L", 9, 9, "OBJECT ORIENTED PROGRAMMING-LAB", 9, 9, 9, "TN24", 9, 9, "1", 9,9, "TH", 9, 9, "07:00:00-09:50:00", 9,9,9,9,9,9, "E609", 10
    MessageLen14 equ $ - Message14
    
    Message15  db "GED0021", 9, 9, "SPECIALIZED ENGLISH PROGRAM 2", 9, 9, 9, "TX23", 9, 9, "3", 9,9, "M / TH", 9, "13:00:00-14:50:00 / 13:00:00-14:50:00", 9, "F711 / E709", 10
    MessageLen15 equ $ - Message15
    
    Message16  db "GED0075", 9, 9, "LINEAR ALGEBRA", 9,9,9,9,9,9,9, "TN24", 9, 9, "3", 9,9, "F / T", 9, "13:00:00-14:50:00 / 13:00:00-14:50:00", 9, "ONLINE / ONLINE", 10
    MessageLen16 equ $ - Message16
    
    Message17  db "GED0081", 9, 9, "COLLEGE PHYSICS 1 LECTURE", 9,9, 9,9, "TS21", 9, 9, "2",  9, 9, "T", 9, 9, "10:00:00-12:40:00", 9, 9,9,9,9,9,  "ONLINE", 10
    MessageLen17 equ $ - Message17
    
    Message18  db "GED0081L", 9, "COLLEGE PHYSICS 1 LABORATORY", 9, 9,9, "TS21", 9,9,  "1", 9, 9, "M", 9, 9, "10:00:00-12:50:00", 9, 9,9,9,9,9, "F1003", 10
    MessageLen18 equ $ - Message18
    
    Message19  db "TOTAL UNITS 18", 10
    MessageLen19 equ $ - Message19
    
    Message20 db "________________________________________________________________________________________________________________________________________", 10
    MessageLen20 equ $ - Message20

section .text
    global _start

_start:

    ;sys_calls
    ;output 1
    mov eax, 4
    mov ebx, 1
    mov ecx, Message
    mov edx, MessageLen
    int 0x80
    
    ;output 2
    mov eax, 4
    mov ebx, 1
    mov ecx, Message2
    mov edx, MessageLen2
    int 0x80 
    
    ;output 3
    mov eax, 4
    mov ebx, 1
    mov ecx, Message3
    mov edx, MessageLen3
    int 0x80 
    
    ;output 4
    mov eax, 4
    mov ebx, 1
    mov ecx, Message4
    mov edx, MessageLen4
    int 0x80
    
    ;output 5
    mov eax, 4
    mov ebx, 1
    mov ecx, Message5
    mov edx, MessageLen5
    int 0x80 
    
    ;output 6
    mov eax, 4
    mov ebx, 1
    mov ecx, Message6
    mov edx, MessageLen6
    int 0x80 
    
    ;output 7
    mov eax, 4
    mov ebx, 1
    mov ecx, Message7
    mov edx, MessageLen7
    int 0x80
    
    ;output 8
    mov eax, 4
    mov ebx, 1
    mov ecx, Message8
    mov edx, MessageLen8
    int 0x80 
    
    ;output 9
    mov eax, 4
    mov ebx, 1
    mov ecx, Message9
    mov edx, MessageLen9
    int 0x80 
    
    ;output 10
    mov eax, 4
    mov ebx, 1
    mov ecx, Message10
    mov edx, MessageLen10
    int 0x80
    
    ;output 11
    mov eax, 4
    mov ebx, 1
    mov ecx, Message11
    mov edx, MessageLen11
    int 0x80 
    
    ;output 12
    mov eax, 4
    mov ebx, 1
    mov ecx, Message12
    mov edx, MessageLen12
    int 0x80 
    
    ;output 13
    mov eax, 4
    mov ebx, 1
    mov ecx, Message13
    mov edx, MessageLen13
    int 0x80
    
    ;output 14
    mov eax, 4
    mov ebx, 1
    mov ecx, Message14
    mov edx, MessageLen14
    int 0x80 
    
    ;output 15
    mov eax, 4
    mov ebx, 1
    mov ecx, Message15
    mov edx, MessageLen15
    int 0x80 
    
    ;output 16
    mov eax, 4
    mov ebx, 1
    mov ecx, Message16
    mov edx, MessageLen16
    int 0x80
    
    ;output 17
    mov eax, 4
    mov ebx, 1
    mov ecx, Message17
    mov edx, MessageLen17
    int 0x80 
    
    ;output 18
    mov eax, 4
    mov ebx, 1
    mov ecx, Message18
    mov edx, MessageLen18
    int 0x80 
    
    ;output 19
    mov eax, 4
    mov ebx, 1
    mov ecx, Message19
    mov edx, MessageLen19
    int 0x80 
    
    ;output 20
    mov eax, 4
    mov ebx, 1
    mov ecx, Message20
    mov edx, MessageLen20
    int 0x80
    
    ;sys_exit
    mov eax, 1
    mov ebx, 0
    int 0x80