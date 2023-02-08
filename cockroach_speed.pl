cockroach_speed(Speed, Result) :-
    Result is floor(Speed * 1000 * 100 / 3600).


% plunit can be used to test solution
:- initialization run_tests(example).
:- begin_tests(example).

test(example_tests) :- cockroach_speed(0, R), assertion(R == 0).
test(example_tests) :- cockroach_speed(1.08, R), assertion(R == 30).
test(example_tests) :- cockroach_speed(1.09, R), assertion(R == 30).
test(example_tests) :- cockroach_speed(0, R), assertion(R == 0).

:- end_tests(example).