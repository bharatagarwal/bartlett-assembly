.globl _start
.section .text

_start:
    movq $2, %rbx
    movq $3, %rcx
    movq $1, %rax

mainloop:
    # set zf to 0 if %rcx has value 0
    addq $0, %rcx
    
    jz complete

    mulq %rbx
    decq %rcx
    jmp mainloop

complete:
    movq %rax, %rdi
    movq $60, %rax
    syscall
