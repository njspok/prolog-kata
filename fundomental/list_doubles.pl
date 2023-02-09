maps([], []).
maps([H | T], [HR | TR]) :-
    HR is H * 2,
    maps(T, TR).


% plunit can be used to test solution
:- initialization run_tests(kata).
:- begin_tests(kata).

test(basic_tests) :- maps([2], R), assertion(R == [4]).
test(basic_tests) :- maps([1, 2, 3], R), assertion(R == [2, 4, 6]).
test(basic_tests) :- maps([4, 1, 1, 1, 4], R), assertion(R == [8, 2, 2, 2, 8]).
test(basic_tests) :- maps([2, 2, 2, 2, 2, 2], R), assertion(R == [4, 4, 4, 4, 4, 4]).

:- end_tests(kata).

