bool_to_word(true, 'Yes').
bool_to_word(false, 'No').

%bool_to_word(B,A) :- (B -> A = 'Yes' ; A = 'No').

% plunit can be used to test solution
:- initialization run_tests(kata).
:- begin_tests(kata).

test(test_true) :-
        bool_to_word(true, Y),
        assertion(Y == 'Yes').

test(test_false) :-
        bool_to_word(false, Y),
        assertion(Y == 'No').

:- end_tests(kata).
