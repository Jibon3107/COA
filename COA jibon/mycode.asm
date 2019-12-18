.model small
.stack 100h
.data
.code
main proc
 mov ah,1
 mov dh,'Q'
 int 21h
 mov dl,al
 mov ah,010B
 int 21h
 mov ah,1
 int 21h
 mov cl,al
 mov bh,dh
 mov ah,2
 mov dl,dh
 int 21h
 mov dl,bh
 int 21h    
    
    
    
main endp
end main