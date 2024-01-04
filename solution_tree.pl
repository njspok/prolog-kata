% простой, но не очень наглядный спосок, как средствами
% самого языка показать выведение решения, какие при
% этом были задействованы правила.

man(jake).
woman(marry).
dog(bob).

man(X, man(X)) :- man(X).
woman(X, woman(X)) :- woman(X).
dog(X, dog(X)) :- dog(X).

animal(X, animal(Tr)) :- dog(X, Tr).

human(X, human(Tr)) :- man(X, Tr).
human(X, human(Tr)) :- woman(X, Tr).

group(X,Y,Z, group(XT, YT, ZT)) :-
    human(X, XT),
    human(Y, YT),
    animal(Z, ZT).

