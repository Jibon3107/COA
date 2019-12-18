.model small
.stack 100h
.data
msg db 0dh,0ah,'$'
msg1 db 'Input symbol:$'
msg2 db 'Output:$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,9
    lea dx,msg
    int 21h   
    
    lea dx,msg2
    int 21h
    
    mov ah,2
    mov dl,'1'
    int 21h
    
    sub bl,11h
    mov dl,bl
    int 21h
    
    main endp
end main
    