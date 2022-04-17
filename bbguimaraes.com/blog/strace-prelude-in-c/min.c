#include <stdnoreturn.h>

noreturn void _start() {
    __asm__("mov $0x3c,%al\nsyscall");
    __builtin_unreachable();
}
