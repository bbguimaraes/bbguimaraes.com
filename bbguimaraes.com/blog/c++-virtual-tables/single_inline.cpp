struct S {
    virtual void sf(void) {}
} s;

struct T : S {
    virtual void tf(void) {}
} t;

struct U : T {
    virtual void uf(void) {}
} u;

void f(S *p) {
    p->sf();
}

void f(T *p) {
    p->sf(), p->tf();
}

void f(U *p) {
    p->sf(), p->tf(), p->uf();
}
