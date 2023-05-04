know(mike, jane).
know(kate, jane).
know(alex, jane).
know(alice, jane).
know(mike, kate).
know(jane, mike).

every_know([], _).
every_know([H | T], X) :- know(H, X), every_know(T, X).

nothing_know(_, []).
nothing_know(X, [H | T]) :- know(X, H) -> fail ; nothing_know(X, T).

celebrity(X, L) :- every_know(L, X), nothing_know(X, L).