extern void print_char(char c);

void print(const char* str) {
    while (*str) {
        print_char(*str);
        str++;
    }
}

void kernel_main() {
    print("Hello, Kernel World!");
    while(1);
}