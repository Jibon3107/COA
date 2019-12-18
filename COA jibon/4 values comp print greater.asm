.model samll
.stack 100h
.data
a db ?
b db ?
c db ?
d db ?
.code
main proc
    mov ah,1
    int 21h
    mov bh,al
    int 21h
    mov bl,al
    int 21h
    mov ch, al
    int 21h
    mov cl, al
    
    cmp bh,bl
    jg c1
    jmp c2
    
   
   c1:
   cmp ch,cl
   jg l1
   jmp l2
   
   
  l1:
  cmp bh,ch
  jg t1
  jmp t2
  
  t1:
   mov ah,2
   mov dl,bh
   int 21h
   jmp exit
   
  t2:
  mov ah,2
   mov dl,ch
   int 21h
   jmp exit
   
   
  l2:
  cmp bh,cl
  jg k1
  jmp k2
  
  k1:
  mov ah,2
   mov dl,bh
   int 21h
   jmp exit
 
 k2:
 mov ah,2
   mov dl,cl
   int 21h
   jmp exit
   
   
  c2:
      
  
   cmp ch,cl
   jg a1
   jmp a2
   
   
  a1:
  cmp bl,ch
  jg b1
  jmp b2
  
  b1:
   mov ah,2
   mov dl,bl
   int 21h
   jmp exit
   
  b2:
  mov ah,2
   mov dl,ch
   int 21h
   jmp exit
   
   
  a2:
  cmp bl,cl
  jg m1
  jmp m2
  
  m1:
  mov ah,2
   mov dl,bl
   int 21h
   jmp exit
 
 m2:
 mov ah,2
   mov dl,cl
   int 21h
   jmp exit
   
  exit:
  mov ah,4ch
  int 21h 