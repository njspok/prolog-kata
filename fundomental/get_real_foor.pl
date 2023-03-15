get_real_floor(0, 0) :- !.
get_real_floor(N, Result) :-
    N < 0, Result is N, !.
get_real_floor(N, Result) :-
    N < 13, Result is N - 1, !.
get_real_floor(N, Result) :-
    Result is N - 2.

:- initialization run_tests(t).
:- begin_tests(t).

test('square sum', all(P == [0,-3,0,13])) :-
    get_real_floor(0, P);
    get_real_floor(-3, P);
    get_real_floor(1, P);
    get_real_floor(15, P).

:- end_tests(t).

