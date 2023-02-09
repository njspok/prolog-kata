:- initialization(main).

main :-
    X=1,
    write(p(1,1)=X).

vertical(seg(point(X,_), point(X,_))).

horizontal(seg(point(_,Y), point(_,Y))).

print(1=1).
print('hello').

