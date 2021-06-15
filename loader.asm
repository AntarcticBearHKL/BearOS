main:
    org	10000h

    mov	ax,	cs
    mov	ax,	0x00
    mov ds, ax
    mov es, ax
    mov	ss,	ax
    mov	sp,	0x7c00


    mov	ax,	1301h
    mov	bx,	000fh
    mov	dx,	0200h
    mov	cx,	16
    push es
    push ax
    mov	ax,	cs
    mov	es,	ax
    pop ax
    mov	bp,	StartLoaderMessage
    int	10h
    pop es

    push "ab"
    push 0300h
    call pt

    jmp	$

    StartLoaderMessage:	db	"start loading..."

%include 'include/pt.asm'
%include 'include/ptreg.asm'
