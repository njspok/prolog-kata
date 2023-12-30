% Качественное (не количественное) моделирование системы с чашками весов.

% sum( A, B, R).
sum(min, min, min).
sum(min, max, max).
sum(max, min, max).
sum(max, max, doubleMax).
sum(center, center, max).

% libra( Left, Right ).
libra(somePos, max - somePos).
libra(max - somePos, somePos).
libra(X, Y) :- sum(X, Y, max).

