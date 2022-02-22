#include <cstdio>

// base and derived classes declared in C++
struct S {
    // base function
    virtual void sf(void);
};

struct T {
    // base overridden function
    virtual void tf(void);
};

struct U : S, T {
    // derived overridden function
    void tf(void) override;
    // leaf virtual function
    virtual void uf(void);
};

// derived class defined in C++
struct V : U {
    void tf(void) override { std::printf("V::tf() in %s\n", __FILE__); }
    void uf(void) override {
        std::puts("\n=== C++ obj -> C++ offset -> C base impl ===\n");
        U::uf();
        std::puts("\n=== C++ obj -> C++ offset -> C derived impl ===\n");
        std::printf("V::uf() in %s\n", __FILE__);
    }
    virtual void vf(void) { std::printf("V::vf() in %s\n", __FILE__); }
};

// C++ objects defined in C
extern S s;
extern T t;
extern U u;

// C++ functions defined in C
void f(S *p);
void f(T *p);
void f(U *p);

int main(void) {
    extern S s;
    extern T t;
    std::puts("=== C obj -> C impl ===\n");
    f(&s);
    f(&t);
    extern U u;
    std::puts("\n=== C obj -> C++ offset -> C base impl ===\n");
    f(static_cast<S*>(&u));
    std::puts("\n=== C obj -> C++ offset -> C prelude -> C derived impl ===\n");
    f(static_cast<T*>(&u));
    std::puts("\n=== C obj -> C impl -> virtual calls ===\n");
    f(&u);
    V v;
    std::puts("\n=== C++ obj -> C++ offset -> C base impl ===\n");
    static_cast<S*>(&v)->sf();
    std::puts("\n=== C++ obj -> C++ offset -> C++ derived impl ===\n");
    static_cast<T*>(&v)->tf();
    static_cast<U*>(&v)->uf();
    std::puts("\n=== C++ obj -> C++ impl ===\n");
    (&v)->vf();
}
