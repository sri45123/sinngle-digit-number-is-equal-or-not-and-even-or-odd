                                                    org 100h

jmp start

msg1 db 'Enter first digit: $'
msg2 db 0Dh, 0Ah, 'Enter second digit: $'
equalMsg db 0Dh, 0Ah, 'Digits are equal.$'
notEqualMsg db 0Dh, 0Ah, 'Digits are not equal.$' 

start:
     
     mov dx, offset msg1
    mov ah, 09h
    int 21h
    
    mov ah, 01h
    int 21h
    ;sub al, 30h 
    mov bl, al   

    mov dx, offset msg2
    mov ah, 09h
    int 21h

    mov ah, 01h
    int 21h
    ;sub al, 30h 
    
    cmp bl,al
    je equal
    
    mov ah, 09h
    mov dx, offset notEqualMsg
    int 21h
    jmp EndProgram 
    
equal:
    mov ah, 09h
    mov dx,offset equalMsg
    int 21h
    
EndProgram:    
    mov ah,4Ch
    int 21h
ret