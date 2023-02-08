
find_difference(A, B, Diff) :-
  [A1,B1,C1] = A,
  [A2,B2,C2] = B,
  Diff is abs(A1 * B1 * C1 - A2 * B2 * C2).

% plunit can be used to test solution
:- initialization run_tests(example).
:- begin_tests(example).

test(example_test) :- find_difference([3, 2, 5], [1, 4, 4], D), assertion(D == 14).
test(example_test) :- find_difference([9, 7, 2], [5, 2, 2], D), assertion(D == 106).
test(example_test) :- find_difference([11, 2, 5], [1, 10, 8], D), assertion(D == 30).
test(example_test) :- find_difference([4, 4, 7], [3, 9, 3], D), assertion(D == 31).
test(example_test) :- find_difference([15, 20, 25], [10, 30, 25], D), assertion(D == 0).

:- end_tests(example).