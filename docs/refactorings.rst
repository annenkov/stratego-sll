Refactorings
------------

Here is an example of "extract function" refactoring. Suppose, we have program like this::

    program example

    add(Z(), y) = y
    add(S(x), y) = S(add(x,y))
    mult(Z(), y) = Z()
    mult(S(x), y) = add(y, mult(x,y))
    // f = a*x*x + b*x + c
    f(x, a, b, c) = add(add(mult(mult(x,x),a), mult(x,b)), c)

    main = f(x, S(Z()), Z(), Z())

We can extract function sqr(x) = mult(x,x) to use it later. It can be done by context menu, or simply by pressing Alt-Shift-M.

After applying the "extract function" refactoring we have the following program::

    program example
    sqr(x)=mult(x,x)
    add(Z(), y) = y
    add(S(x), y) = S(add(x,y))
    mult(Z(), y) = Z()
    mult(S(x), y) = add(y, mult(x,y))
    // f = a*x^2 + b*x + c
    f(x, a, b, c) = add(add(mult(sqr(x),a), mult(x,b)), c)

    main = f(x, S(Z()), Z(), Z())

To check whether refactoring is correct, we can apply supercompilation technique.
After supercompilation of both programs(in this case deforestation is enough) we should end with equal programs.

In this case such a program look as follows::

    program example
    f1(x)=f2(x)
    f2(x)=g2(x)
    g2(Z())=Z()
    g2(S(v2))=f2(v2)
    g4(Z(),x,x)=f1(x)
    g4(S(v4),x,x)=g3(x,v4,x,x)
    f3(v3 ,v1 ,x ,x)=S(g5(v3,v1,x,x))
    g5(Z(),v1,x,x)=g4(v1,x,x)
    g5(S(v6),v1,x,x)=f3(v6,v1,x,x)
    g3(Z(),v1,x,x)=g4(v1,x,x)
    g3(S(v3),v1,x,x)=f3(v3,v1,x,x)
    g1(Z(),x,x)=f1(x)
    g1(S(v1),x,x)=g3(x,v1,x,x)
    main = g1(x,x,x)

