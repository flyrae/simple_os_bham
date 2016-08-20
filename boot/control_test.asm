mov ah,0x0e

mov bx,50
cmp bx,4
jle less_than
cmp bx,40
jl less
mov al,'C'
jmp the_end
less_than :
mov al,'A'
jmp the_end
less:
mov al,'B'
the_end:
int 0x10
jmp $

times 510-($-$$) db 0
dw 0xaa55
