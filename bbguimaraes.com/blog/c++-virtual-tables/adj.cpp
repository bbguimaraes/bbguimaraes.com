struct A { virtual void a(void); long long i; };
struct B { virtual void b(void); };
struct D : A, B {};

void f(B*);

void g(D *p) {
    f(p);
}
