; nasm olakease.asm -f elf -o olakease.o; ld olakease.o -o olakease
global _start
_start:

main:

  write:
    mov eax, 4
    mov ebx, 1
    mov ecx, olakase
    mov edx, 11
    int 0x80
    
  exit:
    mov eax, 1
    mov ebx, 0
    int 0x80

olakase: db 'ola ke ase', 10, 0
