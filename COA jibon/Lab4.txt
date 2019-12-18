.model small
.stack 100h

.data
     
         msg1 db 'Enter 2 int values....$'
         msg2 db 0dh,0ah,'The result of $'
         msg3 db ' & $'
         msg4 db  ' is $'
         a db ?
         b db ?
    

.code      
  
main proc  
    mov ax,@data
    mov ds,ax  
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h
    mov a,al
    
    mov ah,2
    mov dl,' '
    int 21h
    
    mov ah,1
    int 21h
    mov b,al
    
    mov ah,9
    lea dx,msg2
    int 21h
    
    mov ah,2
    mov dl,a
    int 21h
    
    mov ah,9
    lea dx,msg3
    int 21h
    
    mov ah,2
    mov dl,b
    int 21h
    
    mov ah,9
    lea dx,msg4
    int 21h 
     
    mov bh,a
    add b,bh
    sub b,3Ah
    
    mov ah,2 
    mov dl,'1'
    int 21h
    mov dl,b
    int 21h
    
    mov ah,4ch
    int 21h
    
    
      main endp
end main