.model small
.stack 100h
.data
.code
main proc
    mov bh,0FFH
    mov cx,237AH
    add ch,bh
    sub cl,bh
    inc bh
    neg cl
    mov ax,234H
    mov dl,bh
    int 21h
    
    main endp
end main