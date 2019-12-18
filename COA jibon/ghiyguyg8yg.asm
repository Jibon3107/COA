.model
.stack 100h
.data
msg db 10,13,"Enter:$"
x db ?
.code
main proc
    mov ax,@data
    mov dx,ax
    lea dx,msg
    mov ah,9
    int 21h
    mov ah,1
    int 21h
    mov x,al
    mov ah,4ch
    int 21h
    main endp
end main;;  ;





