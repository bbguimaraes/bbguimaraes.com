struct S {
    virtual void sf(void);
} s;

struct T {
    virtual void tf(void);
} t;

struct U : S, T {
    void tf(void) override;
    virtual void uf(void);
} u;

void f(U *p) {
    p->uf();
    p->uf();
    p->uf();
    p->uf();
}
