% реализация языка перемещний персонажа по плосоксти координат на GCD
% ?- move(X, Y, [up, up, up, left, left, down], []).
% X = -2 , Y = 2

move(X, Y) --> step(X, Y).
move(X, Y) --> step(X1, Y1), move(X2, Y2), {X is X1 + X2, Y is Y1 + Y2}.

step(0, 1) --> [up].
step(0, -1) --> [down].
step(-1, 0) --> [left].
step(1, 0) --> [right].
