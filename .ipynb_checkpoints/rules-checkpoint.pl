projective(X, 'yes'):-
    dep(X, D, H),
    dep(X, D0, H0),
    D < D0,
    D0 < H,
    H < H0,
    !.
    
projective(_, 'no').

deps(X, Z):-
    findall(D, dep(X, D, _), Z).
    
heads(X, Z):-
    findall(D, dep(X, _, D), Z).
