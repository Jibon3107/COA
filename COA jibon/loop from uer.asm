.model small
.stack 100h
.data
msg1 db 'How many digits: $'
msg2 db 0dh,0ah,'Output: $'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    sub bh,bh
    int 21h
    mov bl,al
    sub bl,26h  
    
    
    mov ah,9
    lea dx,msg2
    int 21h

  
    
    mov ah,2
    mov cx,bx
    mov dl,'*'
    
    
    
    
    l1:
    int 21h
    loop l1 
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h