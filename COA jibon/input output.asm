.model small
.stack 100h
.data
msg db 10,13,"enter:$"
x db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    lea dx,msg
    mov ah,9h
    int 21h
    mov ah,1h
    int 21h
    mov x,al
    mov ah,2h
    mov dl,x
    int 21h
    mov ah,4ch
    int 21h
    
   main endp
  end main 




