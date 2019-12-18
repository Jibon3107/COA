.model samll
.stack 100h
.data
msg1 db 'Input Hexa value : $'
msg2 db 0dh,0ah, 'Output in Binary : $'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h 
    
    sub bl,bl
    
    mov ah,1
    int 21h
    mov bh,al
    int 21h
    mov bl,al  
    
    sub bh,37h
    shl bh,4
    sub bl,37h
    add bh,bl
    
    
    mov ah,9
    lea dx,msg2
    int 21h
    
    
    
    mov cx,8 
    
    l1:
    SHL bx,1
    JC one
    jmp zero
    
    one:
    mov ah,2
    mov dl,'1'
    int 21h
    loop l1
    jmp exit
    
    zero:
    mov ah,2
    mov dl,'0'
    int 21h
    loop l1
    
    exit:
    mov ah,4ch
    int 21h
    
    