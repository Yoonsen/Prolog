
nonprojective(Sent, edges(edge(D,H), edge(D0,H0))):-
    dep(Sent, D, H),
    dep(Sent, D0, H0),
    D < D0,
    D0 < H,
    H < H0.


nonprojective_full(Sent, edges(edge(w(D,Df), w(H,Hf)), edge( w(D0,D0f), w(H0,H0f)))):-
    dep_full(Sent, w(D,Df), w(H,Hf)),
    dep_full(Sent, w(D0,D0f), w(H0,H0f)),
    D < D0,
    D0 < H,
    H < H0.



deps(X, Z):-
    findall(D, dep_full(X, D, _), Z).
    

heads(X, Z):-
    findall(D, dep(X, _, D), Z).

dep(X,D,H):-
    ndt(_,D,_,_,_,_,H,_,X,_,_).

dep_full(X,w(D_pos, D_form), w(H_pos, H_form)):-
    ndt(_,D_pos,D_form,_,_,_,H_pos,_,X,_,_),
    ndt(_,H_pos,H_form,_,_,_,_,_,X,_,_).
