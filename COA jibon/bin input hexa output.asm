mov cx,16


l1:
mov ah,1
int 21h
and al,1h
shl bx,1
or bl,al
loop l1 

mov ah,2
mov dl,0dh
int 21h
mov dl,0ah
int 21h

mov cx,4

l2:
mov dl,bh
ror dl,4
and dl,0fh
cmp dl,0Ah
jge t1
jmp t2

t1:
xor dl,40h
sub dl,09h
mov ah,2
int 21h
shl bx,4
loop l2
jmp exit

t2:
or dl,30h
mov ah,2
int 21h
shl bx,4
loop l2

exit:
mov ah,4ch
int 21h