#include <stddef.h>

struct typeinfo;

struct vtable_header {
    ptrdiff_t offset_to_top;
    const struct typeinfo *typeinfo;
};

struct S;

struct S_vtable {
    void (*const f)(struct S*);
};

void S_f(struct S*) {}

const struct {
    const struct vtable_header header;
    const struct S_vtable vtable;
} S_vtable = {
    .vtable.f = S_f,
};

struct S {
    const struct S_vtable *vptr;
};

struct S s = {
    .vptr = &S_vtable.vtable,
};

void f(struct S *p) {
    void (*f)(struct S*) = p->vptr->f;
    __builtin_expect(f == S_f, 1) ? S_f(p) : f(p);
}
