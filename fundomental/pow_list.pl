
square_sum([], 0).
%square_sum([H | T], Result) :-
%    square_sum(T, R), Result is H**2 + R.
square_sum(Numbers, Result) :-
    [H | T] = Numbers,
    square_sum(T, R),
    Result is H**2 + R.

%square(Num, Res) :-
%    Res is Num * Num.
%
%square_sum(Numbers, Result) :-
%    maplist(square, Numbers, R),
%    sum_list(R, Result).

:- initialization run_tests(t).
:- begin_tests(t).

test('square sum', all(P == [1, 4, 9])) :-
    square_sum([1], P);
    square_sum([2], P);
    square_sum([1,2,2], P).

:- end_tests(t).

