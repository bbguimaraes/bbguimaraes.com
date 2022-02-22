#include <stddef.h>

#define container_of(p, t, m) ((t*)((char*)(p) - offsetof(t, m)))

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
    void (*const tf)(struct T*);
};

struct U_vtable {
    const struct S_vtable S;
    const struct T_vtable T;
    void (*const uf)(struct U*);
};

struct S {
    const struct S_vtable *vptr;
};

struct T {
    const struct T_vtable *vptr;
};

struct U {
    union {
        const struct U_vtable *vptr;
        struct S s;
    };
    struct T t;
};

void S_sf(struct S*) {}
void T_tf(struct T*) {}
void U_tf(struct U*);
void U_uf(struct U*) {}

void U_t_tf(struct T* p) {
    U_tf(container_of(p, struct U, t));
}

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
    .vtable.tf = T_tf,
};

const struct {
    const struct vtable_header header;
    const struct U_vtable vtable;
    const struct vtable_header T_header;
    const struct T_vtable T_vtable;
} U_vtable = {
    .vtable.S.sf = S_sf,
    .vtable.T.tf = (void(*)(struct T*))U_tf,
    .vtable.uf = U_uf,
    .T_header.offset_to_top =
        -offsetof(struct U, t),
    .T_vtable.tf = U_t_tf,
};

struct S s = {
    .vptr = &S_vtable.vtable,
};

struct T t = {
    .vptr = &T_vtable.vtable,
};

struct U u = {
    .vptr = &U_vtable.vtable,
    .t.vptr = &U_vtable.T_vtable,
};

void f_S(struct S *p) {
    p->vptr->sf(p);
}

void f_T(struct T *p) {
    p->vptr->tf(p);
}

void f_U(struct U *p) {
    p->vptr->S.sf(&p->s);
    p->vptr->T.tf((struct T*)p);
    p->vptr->uf(p);
}
