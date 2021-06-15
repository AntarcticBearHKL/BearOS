pt:
    push bp
    mov bp, sp
    push ax
    push bx
    push cx
    push dx
    push es

    mov ax, ss
    mov es, ax

    mov ax, 1301h
    mov bx, 000fh
    mov word dx, [ss:bp+2]
    mov cx, 2
    
    add bp, 4

    int 10h

    pop es
    pop dx
    pop cx
    pop bx
    pop ax
    pop bp
    
    ret 4
