struct B { virtual void b(void); };

void *f(B *p) {
    return dynamic_cast<void*>(p);
}
