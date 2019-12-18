mov cx,4



l1:
mov ah,1
int 21h 

cmp al,39h
jle t1
jmp t2

t1:
and al,0fh
shl bx,4
or bl,al
loop l1
jmp exit

t2:
sub al,37h
and al,0fh
shl bx,4
or bl,al
loop l1 

exit:
mov ah,4ch
int 21h
