% Store result in 3rd argument - Result

take([], _, []) :- !.
take(_, 0, []) :- !.
take([H | T], N, [H | T2]) :-
    N2 is N - 1,
    take(T, N2, T2).


% plunit can be used to test solution
:- initialization run_tests(example).
:- begin_tests(example).

test(example_test) :- take([1, 2, 3, 4, 5], 3, R), assertion(R == [1, 2, 3]).
test(example_test) :- take([0, 1, 2, 3, 5, 8, 13], 5, R), assertion(R == [0, 1, 2, 3, 5]).
test(example_test) :- take([0, 1, 2, 3, 5, 8, 13], 0, R), assertion(R == []).
test(example_test) :- take([], 3, R), assertion(R == []).

:- end_tests(example).