# gcc olakease.s -o olakease
.intel_syntax noprefix

.global main

main:

  write:
    mov eax, 4
    mov ebx, 1
    mov ecx, offset olakase
    mov edx, 11
    int 0x80
    
  exit:
    mov eax, 1
    mov ebx, 0
    int 0x80

olakase: .ascii "ola ke ase\n\0"
