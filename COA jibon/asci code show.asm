mov ah,1
int 21h
mov bl,al
mov ah,2
mov dl,'4'
int 21h
sub bl,10h
mov dl,bl
int 21h