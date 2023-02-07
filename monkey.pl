
% take banana
move(
    state(middle, onbox, middle, no),
    grasp,
    state(middle, onbox, middle, has)
).

% jump on box
move(
    state(P, onfloor, P, H),
    jump,
    state(P, onbox, P, H)
).

% move box
move(
    state(P1, onfloor, P1, H),
    push(P1,P2),
    state(P2, onfloor, P2, H)
).

% move on floor
move(
    state(P1, onfloor, PB, H),
    walk(P1,P2),
    state(P2, onfloor, PB, H)
).

canget(state(_, _, _, has)).
canget(S1) :-
    move(S1, _, S2),
    canget(S2).

canget(S1, S2) :-
    move(S1, _, S2),
    canget(S2).
