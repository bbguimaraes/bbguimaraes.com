    .equ vaddr, 0x400000
ehdr:
                                # e_ident
    .byte 0x7f, 'E', 'L', 'F'   # EI_MAG
    .byte 2                     # EI_CLASS = ELFCLASS64
    .byte 1                     # EI_DATA = ELFDATA2LSB
    .byte 1                     # EI_VERSION = EV_CURRENT
    .byte 0                     # EI_OSABI = ELFOSABI_NONE
    .quad 0                     # EI_PAD
    .word 2                     # e_type = ET_EXEC
    .word 0x3e                  # e_machine = EM_X86_64
    .long 1                     # e_version = EV_CURRENT
    .quad vaddr + _start - ehdr # e_entry
    .quad ehdrsize              # e_phoff
    .quad 0                     # e_shoff
    .long 0                     # e_flags
    .word ehdrsize              # e_ehsize
    .word phdrsize              # e_phentsize
    .word 1                     # e_phnum
    .word 0                     # e_shentsiz
    .word 0                     # e_shnum
    .word 0                     # e_shstrndx
    .equ ehdrsize, . - ehdr
phdr:
    .long 1                     # p_type = PT_LOAD
    .long 5                     # p_flags = PF_R | PF_X
    .quad 0                     # p_offset
    .quad vaddr                 # p_vaddr
    .quad vaddr                 # p_paddr
    .quad 0x7d                  # p_filesz
    .quad 0x7d                  # p_memsz
    .quad 0x200000              # p_align
    .equ phdrsize, . - phdr
    .globl _start
_start:
    mov $0x3c,%al
#    cltd
    syscall
