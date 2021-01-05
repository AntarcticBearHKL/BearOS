org 0x7c00

Start:
    mov ax, cs
    mov ds, ax
    mov es, ax
    mov ss, ax
    mov sp, 0x7c00
    times 510-($$-$) db 0