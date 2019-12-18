.model small
.stack 100h
.data
msg1 db 0dh,0ah,'Do u want to convert Dec to Hexa? Press Y or N :  $'
msg2 db 0dh,0ah,'How many digits : $'
msg3 db 0dh,0ah,'Enter your decimal number: $'
msg4 db 0dh,0ah,'The result is :  $'
msg5 db 0dh,0ah,'Invalid$'
msg6 db 0dh,0ah,'Enter 1st digit: $'
msg7 db 0dh,0ah,'Enter 2nd digit: $'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    
 option:
   
    mov ah,9
    lea dx,msg1
    int 21h  
    
    mov ah,1
    int 21h
    cmp al,'Y'
    je yes
    cmp al,'y'
    je yes
    jmp no
    
    
  yes:
     mov ah,9
     lea dx,msg2
     int 21h
     
     mov ah,1
     int 21h
     
     cmp al,'1'
     je t1
     cmp al,'2'
     je t2
     jmp invalid
     
     
    t1:
       mov ah,9
       lea dx,msg3
       int 21h
       
       mov ah,1
       int 21h
       mov bh,al
       
       mov ah,9
       lea dx,msg4
       int 21h
       
       mov ah,2
       mov dl,bh
       int 21h
       
       jmp option 
       
       
     t2:
        mov ah,9
        lea dx,msg6
        int 21h
        
        mov ah,1
        int 21h
        mov bh,al
        
        mov ah,9
        lea dx,msg7
        int 21h 
        
        mov ah,1
        int 21h
        mov ch,al
        
        cmp bh,'1'
        je c1
        
        cmp bh,'2'
        je c2
        
        jmp invalid
        
        
     c1:
       cmp ch,'0'
       jge r1
       jmp r2
       
       
      r1:
        cmp ch,'5'
        jle l1
        jmp r2
        
        
      l1:
        mov ah,9
        lea dx,msg4
        int 21h
        
        
        mov ah,2
        add ch,11h
        mov dl,ch
        int 21h
        
        jmp option         
      
      
      r2:
         cmp ch,'6'
         jge r3
         
       r3:
          cmp ch,'9'
          jle l2
          
      l2:
         mov ah,9
        lea dx,msg4
        int 21h 
        
        mov ah,2
        mov dl,'1'
        int 21h
        sub ch,6h
        mov dl,ch
        int 21h
        
        jmp option
    
       
       
     c2:
       cmp ch,'0'
       jge c3
       
     c3:  
       
       cmp ch,'5'
       jle l3
       
       jmp invalid
       
       
     l3:
        mov ah,9
        lea dx,msg4
        int 21h
        
        mov ah,2
        mov dl,'1'
        int 21h
        
        add ch,4h
        mov dl,ch
        int 21h
        
        jmp option           
    
    
  invalid:
         mov ah,9
         lea dx,msg5
         int 21h
         jmp option  
    
    
    no:
    mov ah,4ch
    int 21h