#include "x.hpp"

X::X() {}
X::~X() {}

X &X::operator=(X const &rhs) {
    (void)rhs;
    return (*this);
}

X::X(X const &src) {
    *this = src;
}
