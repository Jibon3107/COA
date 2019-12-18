mov ah,1
int 21h

cmp al,46h
jl l1
jmp l2

l1:
mov bl,al
sub bl,37h
shl bl,4
inc al
sub al,37h
or bl,al 

jmp exit

l2:
mov bl,al
sub bl,37h
shl bx,8 
inc al
sub al,37h
or bl,al

exit:
