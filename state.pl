action(start, off).
action(off, turn_on, self_test).
action(self_test, failure, out_of_service).
action(self_test, success, idle).
action(idle, turn_off, off).
action(idle, card_inserted, servicing).
action(idle, service, maintaince).
action(maintaince, failure, out_of_service).
action(servicing, cancel, idle).
action(servicing, failure, out_of_service).
action(out_of_service, turn_off, off).
action(out_of_service, service, maintaince).

%path(S1, S2) :- action(S1, _, S2).
%path(S1, S2) :- action(S1, _, S), path(S, S2).

path(S1, S2, _) :- action(S1, _, S2).
path(S1, S2, [H | T]) :-
%    not_member(S2, T),
    action(S1, _, H),
    path(H, S2, T).

not_member(_, []) :- !.
not_member(X, [Head|Tail]) :-
     X \= Head,
    not_member(X, Tail).

