:- initialization run_tests(lists).

:- op(600, xfx, parent).

:- op(500, fy, notus).

notus(bob).
notus(mikde).

parent(joe, bob).

%first([Head | _], F) :- Head = F.
first([First | _], First).

conc([], L, L).
conc([H | T], L2, [H | L3]) :- conc(T, L2, L3).

last([E], E).
last([_ | Tail], Last) :- last(Tail, Last).

% last(X,[_|Z]) :- last(X,Z).

%len([],0).
%len([_ | T], N) :- len(T, N1), N is N1 + 1.



:- begin_tests(lists).


test(last, [nondet]) :-
    last([1,2,3], 3).

test(last, all(P = [3])) :-
    last([1,2,3], P).

%test(last_one) :-
%    last([1], 1).

:- end_tests(lists).

