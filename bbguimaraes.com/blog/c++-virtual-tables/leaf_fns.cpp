struct S {
    virtual void f(void);
    virtual void g(void);
    virtual void h(void);
} s;

void f(S *p) {
    p->f(), p->g(), p->h();
}
