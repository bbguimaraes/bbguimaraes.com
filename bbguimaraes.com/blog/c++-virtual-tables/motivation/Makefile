CFLAGS := -O2 -g3
CXXFLAGS := $(CFLAGS) -fno-rtti
all: test
test.o: test.cpp
test: test.o evil.o
	$(CXX) -o $@ $^

.PHONY: check clean
check: test
	./test | c++filt
clean:
	rm -f *.o test
