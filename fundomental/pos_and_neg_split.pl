split([], [], []) :- !.
split([A], [A], []) :- A >= 0, !.
split([A], [], [A]) :- A < 0, !.
split([H | T], P, N) :-
    split([H], P1, N1),
    split(T, P2, N2),
    append(P1, P2, P),
    append(N1, N2, N).

:- initialization run_tests(example).
:- begin_tests(example).

test(example_test) :-
    split([1], P, N),
    assertion(P == [1]),
    assertion(N == []).

test(example_test) :-
    split([-1], P, N),
    assertion(P == []),
    assertion(N == [-1]).

test(example_test) :-
    split([1,-2], P, N),
    assertion(P == [1]),
    assertion(N == [-2]).

test(example_test) :-
    split([1,-2,3,-5,0], P, N),
    assertion(P == [1,3,0]),
    assertion(N == [-2,-5]).

test(example_test) :-
    split([-3, -2, -1, 0, 1, 2, 3], P, N),
    assertion(P == [0, 1, 2, 3]),
    assertion(N == [-3, -2, -1]).

:- end_tests(example).