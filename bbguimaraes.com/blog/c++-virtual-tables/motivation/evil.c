#include <stddef.h>
#include <stdio.h>

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
    void (*const uf)(struct U*);
};

// base class definition in c
struct S {
    const struct S_vtable *vptr;
};

// base class definition in c
struct T {
    const struct T_vtable *vptr;
};

// derived class definition in c
struct U {
    union {
        const struct U_vtable *vptr;
        struct S s;
    };
    struct T t;
};

// external references to member functions, defined in c++
// S::sf()
void _ZN1S2sfEv(struct S *p) { printf("%s in %s\n", __func__, __FILE__); }
// T::tf()
void _ZN1T2tfEv(struct T *p) { printf("%s in %s\n", __func__, __FILE__); }
// U::tf()
void _ZN1U2tfEv(struct U *p) { printf("%s in %s\n", __func__, __FILE__); }
// U::uf()
void _ZN1U2ufEv(struct U *p) { printf("%s in %s\n", __func__, __FILE__); }

// pointer-adjusting entrypoint for overidden function
// non-virtual thunk to U::tf()
void _ZThn8_N1U2tfEv(struct T* p) {
    printf("%s in %s\n", __func__, __FILE__);
    // U::tf()
    return _ZN1U2tfEv(container_of(p, struct U, t));
}

// vtable for S
const struct {
    const struct vtable_header header;
    const struct S_vtable vtable;
} _ZTV1S = {
    // S::sf()
    .vtable.sf = _ZN1S2sfEv,
};

// vtable for T
const struct {
    const struct vtable_header header;
    const struct T_vtable vtable;
} _ZTV1T = {
    // T::tf()
    .vtable.tf = _ZN1T2tfEv,
};

// vtable for U
const struct {
    const struct vtable_header header;
    const struct U_vtable vtable;
    const struct vtable_header T_header;
    const struct T_vtable T_vtable;
} _ZTV1U = {
    // S::sf()
    .vtable.S.sf = _ZN1S2sfEv,
    // U::uf()
    .vtable.uf = _ZN1U2ufEv,
    .T_header.offset_to_top = -offsetof(struct U, t),
    // T::tf()
    .T_vtable.tf = _ZN1T2tfEv,
    .T_vtable.tf = _ZThn8_N1U2tfEv,
};

struct S s = {
    // vtable for S
    .vptr = &_ZTV1S.vtable,
};

struct T t = {
    // vtable for T
    .vptr = &_ZTV1T.vtable,
};

struct U u = {
    // vtable for U
    .vptr = &_ZTV1U.vtable,
    // vtable for U
    .t.vptr = &_ZTV1U.T_vtable,
};

// free functions declared in c++

// f(S*)
void _Z1fP1S(struct S *p) {
    printf("%s in %s\n", __func__, __FILE__);
    p->vptr->sf(p);
}

// f(T*)
void _Z1fP1T(struct T *p) {
    printf("%s in %s\n", __func__, __FILE__);
    p->vptr->tf(p);
}

// f(U*)
void _Z1fP1U(struct U *p) {
    printf("%s in %s\n", __func__, __FILE__);
    p->vptr->S.sf(&p->s);
    p->t.vptr->tf(&p->t);
    p->vptr->uf(p);
}
