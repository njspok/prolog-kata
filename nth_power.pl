index(Array, N, Result) :-
    length(Array, L),
    N >= L -> Result is -1;
    nth0(N, Array, E),
    Result is E**N
.

:- initialization run_tests(index_tests).
:- begin_tests(index_tests).

test(fixed_tests) :- index([1, 2, 3, 4], 2, R), assertion(R == 9).
test(fixed_tests) :- index([1, 3, 10, 100], 3, R), assertion(R == 1000000).
test(fixed_tests) :- index([1, 2], 3, R), assertion(R == -1).
test(fixed_tests) :- index([2, 5], 0, R), assertion(R == 1).
test(fixed_tests) :- index([1,1,1,1,1,1,1,1,1,1], 9, R), assertion(R == 1).
test(fixed_tests) :- index([1,1,1,1,1,1,1,1,1,2], 9, R), assertion(R == 512).
test(fixed_tests) :- index([1,1,1,1,1,1,1,1,1,2], 0, R), assertion(R == 1).
test(fixed_tests) :- index([29,82,45,10], 3, R), assertion(R == 1000).
test(fixed_tests) :- index([6,31], 3, R), assertion(R == -1).
test(fixed_tests) :- index([75,68,35,61,9,36,89,1,30], 10, R), assertion(R == -1).

:- end_tests(index_tests).
