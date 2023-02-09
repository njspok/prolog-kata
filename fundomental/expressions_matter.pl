expression_matter(A, B, C, R) :-
    F1 is A * (B + C),
    F2 is A * B * C,
    F3 is A + B + C,
    F4 is (A + B) * C,
    max_list([F1, F2, F3, F4], R).

:- initialization run_tests(kata).
:- begin_tests(kata).

test(basic_tests) :- expression_matter(2, 1, 2, R), assertion(R == 6).
test(basic_tests) :- expression_matter(2, 1, 1, R), assertion(R == 4).
test(basic_tests) :- expression_matter(2, 2, 4, R), assertion(R == 16).
test(basic_tests) :- expression_matter(3, 3, 3, R), assertion(R == 27).
test(basic_tests) :- expression_matter(1, 1, 1, R), assertion(R == 3).
test(basic_tests) :- expression_matter(1, 2, 3, R), assertion(R == 9).
test(basic_tests) :- expression_matter(1, 3, 1, R), assertion(R == 5).
test(basic_tests) :- expression_matter(2, 2, 2, R), assertion(R == 8).
test(basic_tests) :- expression_matter(5, 1, 3, R), assertion(R == 20).
test(basic_tests) :- expression_matter(3, 5, 7, R), assertion(R == 105).
test(basic_tests) :- expression_matter(5, 6, 1, R), assertion(R == 35).
test(basic_tests) :- expression_matter(1, 6, 1, R), assertion(R == 8).
test(basic_tests) :- expression_matter(2, 6, 1, R), assertion(R == 14).
test(basic_tests) :- expression_matter(6, 7, 1, R), assertion(R == 48).
test(basic_tests) :- expression_matter(2, 10, 3, R), assertion(R == 60).
test(basic_tests) :- expression_matter(1, 8, 3, R), assertion(R == 27).
test(basic_tests) :- expression_matter(9, 7, 2, R), assertion(R == 126).
test(basic_tests) :- expression_matter(1, 1, 10, R), assertion(R == 20).
test(basic_tests) :- expression_matter(9, 1, 1, R), assertion(R == 18).
test(basic_tests) :- expression_matter(10, 5, 6, R), assertion(R == 300).
test(basic_tests) :- expression_matter(1, 10, 1, R), assertion(R == 12).

:- end_tests(kata).
