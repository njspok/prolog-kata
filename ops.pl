:- op(500, xfx, was).
:- op(200, xfx, and).
:- op(500, xfx, isa).
:- op(500, xfx, ina).


was(jake, driver).
was(mike, director).

was(diana, and(secretary, mother)).

ina(L, E) :- contains(L, E).

contains([E|_], E).
contains([_|T], E) :- contains(T, E).

and(X, Y) :- [X,Y].

isa(X,X).
isa(X,Y) :- was(X, Y).
isa(X,Y) :- was(X, D), (D = and(Y,_) ; D = and(_, Y)).

% diana was Who.
% diana is mother.