#ifndef X_HPP
#define X_HPP

class X {
 public:
    X(void);
    ~X(void);
    X &operator=(X const &rhs);
    X(ClapTrap const &src);
};

#endif
