.model small
.stack 100h
.data
.code
main proc
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    mov cl,al
    
    mov ah,2
    add bl,cl
    sub bl,30h
    mov dl,bl
    int 21h 
    
    main endp
end main