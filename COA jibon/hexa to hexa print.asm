mov bx,568Bh
mov cx,4


t1:
mov dl,bh
ror dl,4
and dl,0fh
cmp dl,0Ah
jge l2
jmp l1

l1:
or dl,30h
mov ah,2
int 21h
shl bx,4
loop t1
jmp exit

l2:
xor dl,40h
sub dl,9h
mov ah,2
int 21h
shl bx,4
loop t1




exit:
mov ah,4ch
int 21h