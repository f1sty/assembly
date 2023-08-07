BITS 64

%define SYS_WRITE 1
%define SYS_EXIT 60
%define STDOUT 1

global _start

segment .text
_start:
  mov rdi, STDOUT
  lea rsi, [hello]
  mov rdx, hello_size
  mov rax, SYS_WRITE
  syscall

  xor rdi, rdi
  mov rax, SYS_EXIT
  syscall

  ret

segment .data
hello: db "Welcome to the world of nasm!", 10
hello_size: equ $ - hello
