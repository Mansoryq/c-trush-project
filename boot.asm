[BITS 16]
[ORG 0x7c00]

start:
    mov ax, 0x00
    mov ds, ax
    mov es, ax

    mov si, hello
    call print_string

    jmp $

print_string:
    mov ah, 0x0E
.repeat:
    lodsb
    cmp al, 0
    je .done
    int 0x10
    jmp .repeat
.done:
    ret

hello db 'Hello, OS!', 0

times 510-($-$$) db 0
dw 0xAA55