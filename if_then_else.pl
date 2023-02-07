:- initialization run_tests(lists).

:- op(1100, xfy, then).
:- op(1000, fx, if).

if(A) :- A.

then(C, A) :- C, A.

:- begin_tests(lists).

test('then success', all(P == [11])) :-
    then(1 < 2, P = 11).

test('then fail', fail) :-
    then(1 > 2, _ = 11).

test('then success', all(P == [11, 222])) :-
    if 1 < 2 then P = 11;
    if 1 == 1 then P = 222.

:- end_tests(lists).
