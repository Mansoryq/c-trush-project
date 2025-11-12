[BITS 32]

global print_char

print_char:
    pusha
    mov ah, 0x0E        ; BIOS video service: teletype output
    mov al, [esp + 36]  ; первый аргумент (char c)
    int 0x10            ; вызов BIOS
    popa
    ret