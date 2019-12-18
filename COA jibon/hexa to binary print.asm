mov ah,2
mov bl,00110101b

mov cx,8

a1:
shl bl,1
jc l1
jmp l2

l1:
mov ah,2
mov dl,'1'
int 21h 
loop a1 
jmp exit

l2:
mov ah,2
mov dl,'0'    
int 21h 
loop a1

exit:
mov ah,4ch
int 21h

