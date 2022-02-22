#include <stddef.h>

struct typeinfo;

struct vtable_header {
    ptrdiff_t offset_to_top;
    const struct typeinfo *typeinfo;
};

struct S;
struct T;
struct U;

struct S_vtable {
    void (*const sf)(struct S*);
};

struct T_vtable {
    struct S_vtable S;
    void (*const tf)(struct T*);
};

struct U_vtable {
    struct T_vtable T;
    void (*const uf)(struct U*);
};

struct S {
    const struct S_vtable *vptr;
};

struct T {
    union {
        const struct T_vtable *vptr;
        struct S s;
    };
};

struct U {
    union {
        const struct U_vtable *vptr;
        struct T t;
    };
};

void S_sf(struct S*) {}
void T_tf(struct T*) {}
void U_uf(struct U*) {}

const struct {
    const struct vtable_header header;
    const struct S_vtable vtable;
} S_vtable = {
    .vtable.sf = S_sf,
};

const struct {
    const struct vtable_header header;
    const struct T_vtable vtable;
} T_vtable = {
    .vtable.S.sf = S_sf,
    .vtable.tf = T_tf,
};

const struct {
    const struct vtable_header header;
    const struct U_vtable vtable;
} U_vtable = {
    .vtable.T.S.sf = S_sf,
    .vtable.T.tf = T_tf,
    .vtable.uf = U_uf,
};

struct S s = {
    .vptr = &S_vtable.vtable,
};

struct T t = {
    .vptr = &T_vtable.vtable,
};

struct U u = {
    .vptr = &U_vtable.vtable,
};

void f_S(struct S *p) {
    p->vptr->sf(p);
}

void f_T(struct T *p) {
    p->vptr->S.sf(&p->s);
    p->vptr->tf(p);
}

void f_U(struct U *p) {
    p->vptr->T.S.sf(&p->t.s);
    p->vptr->T.tf(&p->t);
    p->vptr->uf(p);
}
