struct S {
    virtual void sf(void) {}
} s;

struct T {
    virtual void tf(void) {}
} t;

struct U : S, T {
    void tf(void) override {}
    virtual void uf(void) {}
} u;

void f(S *p) {
    p->sf();
}

void f(T *p) {
    p->tf();
}

void f(U *p) {
    p->sf(), p->tf(), p->uf();
}
