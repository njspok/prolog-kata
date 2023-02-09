:- initialization run_tests(example).


problem(X, Result) :-
    number(X) -> Result is X * 50 + 6;
    Result = "Error".

% plunit can be used to test solution
:- begin_tests(example).

test(example_test) :- problem(1, R), assertion(R == 56).
test(example_test) :- problem('uZlmNNT', R), assertion(R == "Error").
test(example_test) :- problem(5, R), assertion(R == 256).
test(example_test) :- problem(0, R), assertion(R == 6).
test(example_test) :- problem(1.2, R), assertion(R == 66.0).
test(example_test) :- problem(3, R), assertion(R == 156).
test(example_test) :- problem("RyanIsCool", R), assertion(R == "Error").
test(example_test) :- problem(-3, R), assertion(R == -144).
test(example_test) :- problem("", R), assertion(R == "Error").
test(example_test) :- problem(0.03, R), assertion(R == 7.5).

:- end_tests(example).