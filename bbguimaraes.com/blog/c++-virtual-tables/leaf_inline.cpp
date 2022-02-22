struct S {
    virtual void f(void) {}
} s;

void f(S *p) {
    p->f();
}
