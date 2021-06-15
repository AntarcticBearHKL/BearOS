ptreg:
    push bp
    mov bp, sp
    push ax
    push bx
    push cx
    push dx

    mov ax, 1301h
    mov bx, 000fh
    mov cx, 2
    mov dx, 0200h
    add bp, 0
    int 10h

    pop dx
    pop cx
    pop bx
    pop ax
    pop bp
    ret 4
