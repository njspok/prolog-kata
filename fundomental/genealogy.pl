%:- initialization hello_world, halt.

male(bob).
male(mike).
female(alice).
female(mary).

parent(joe, bob).
parent(peter, joe).
parent(alex, peter).


parent(bob, alice).
parent(mary, alice).
parent(bob, mike).
parent(mary, mike).

sister(X,Y) :-
 female(X), parent(Z, X), parent(Z, Y), X \= Y.

child(X,Y) :-
 parent(Y,X).

pred(X,Z) :- parent(X, Y), pred(Y,Z); parent(X,Z).

parents(X,Y,Z) :- parent(Z, X), parent(Z, Y).