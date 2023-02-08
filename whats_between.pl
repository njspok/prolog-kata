%whats_between(X, X, [X]).
%whats_between(A, B, [A | X]) :-
%    Next is A+1,
%    Next =< B,
%    whats_between(Next, B, X).

whats_between(X, X, [X]).
whats_between(A, B, R) :-
    Next is A+1,
    Next =< B,
    whats_between(Next, B, X),
    R = [A | X].

%whats_between(B, B, [B]).
%whats_between(A, B, [A,B]) :- 1 is B - A.
%whats_between(A, B, P) :-
%    B - A > 1,
%    N is A + 1,
%    whats_between(N, B, P1),
%    P = [A | P1].

:- initialization run_tests(kata).
:- begin_tests(kata).

fixed_tests(a = 1, b = 4, expected = [1, 2, 3, 4]).
fixed_tests(a = -2, b = 2, expected = [-2, -1, 0, 1, 2]).
fixed_tests(a = 1, b = 1, expected = [1]).
fixed_tests(a = 1, b = 2, expected = [1,2]).
fixed_tests(a = 1, b = 3, expected = [1,2,3]).
fixed_tests(a = 1, b = 4, expected = [1,2,3,4]).
fixed_tests(a = 1, b = 5, expected = [1,2,3,4,5]).

do_test(a = A, b = B, expected = Expected) :-
  findall(Actual, whats_between(A, B, Actual), Actual),
  assertion(Actual == [Expected]).

test(fixed_tests, [forall(fixed_tests(A, B, Expected))]) :-
  do_test(A, B, Expected).

:- end_tests(kata).
