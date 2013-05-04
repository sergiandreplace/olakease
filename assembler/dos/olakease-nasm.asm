; nasm olakease-nasm.asm -f bin -o olakease.com
ORG     0x0100
global _start
_start:

main:

  write:
    mov ah, 0x09
    mov dx, olakase
    int 0x21
    
  exit:
    mov ax, 0x4c00
    int 0x21

olakase: db 'ola ke ase$', 0
