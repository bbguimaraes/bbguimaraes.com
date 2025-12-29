local content <const> = {
    code [[
$ vim hello.asm
    .section        .rodata
string:
    .ascii "Hello, World!\n\0"
length:
    .quad . -string         #Dot = 'here'

    .section        .text
    .globl _start           #Make entry point visible to linker
_start:
    movq $4, %rax           #4=write
    movq $1, %rbx           #1=stdout

    movq $string, %rcx
    movq length, %rdx
    int $0x80               #Call Operating System
    movq %rax, %rbx         #Make program return syscall exit status
    movq $1, %rax           #1=exit
    int $0x80               #Call System Again
:!as % -o %.o
:!ld %.o
:!./a.out
]],
}

return {
    title = "99 Bottles of Beer",
    timestamp = { 1349061180, "2012-10-01T03:13:00" },
    tags = { "programming", "hello world", "assembly", "vim" },
    content = content,
}
