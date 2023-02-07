:- initialization run_tests(lists).

max(A,B,M) :- A > B, M = A.
max(A,B,M) :- A =< B, M = B.

maxlist([X], X).
maxlist([H1 | [H2 | T]], M) :-
    max(H1, H2, M1),
    maxlist([H2 | T], M2),
    max(M1, M2, M).

ordered([]).
ordered([_]).
ordered([H1 | [H2 | T]]) :-
    H1 =< H2,
    ordered(T).

:- begin_tests(lists).

test('maxlist', all(P == [4, 9])) :-
    maxlist([1,2,3,4,3,2], P);
    maxlist([9,2,3,4,3,2], P).

%test('maxlist', [nondet]) :-
%    maxlist([], none),
%    maxlist([1], 1),
%    maxlist([1,2,3,4,3,2], 4).

test('ordered', [nondet]) :-
    ordered([]),
    ordered([1]),
    ordered([1,2,3,4]).

test('ordered fail', fail) :-
    ordered([3,2,1]).

test('check max', [nondet]) :-
    max(1, 3, 3),
    max(3, 1, 3),
    max(1, 1, 1).

test('find max', all(P == [2,1,2])) :-
    max(1, 2, P);
    max(1, 1, P);
    max(2, 1, P).

:- end_tests(lists).
