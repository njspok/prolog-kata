% Как обойти замкнутый мир.
% Все что не определено в программе на Prolog считается ложным.
% Однако, порой необходимо понимать разницу между "ложно" и "неопредлено".

% Программа демонстриует, как можно реализовать ответ системы о принадлежности
% к заданному полу пользователя.

% Sex answers
male.
female.
unknown.

% sex relations
isa(jake, male).
isa(bob, male).
isa(marry, female).

% who(Man, Sex).
who(Man, Sex) :- isa(Man, Sex), !.
who(_, Sex) :- Sex = unknown.
