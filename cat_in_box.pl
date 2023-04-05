

stmt(cat_in_1_box, 1, [1]).
stmt(cat_in_1_box, 0, [2,3]).

stmt(cat_not_in_2_box, 1, [1,3]).
stmt(cat_not_in_2_box, 0, [2]).

stmt(cat_not_in_1_box, 1, [2,3]).
stmt(cat_not_in_1_box, 0, [1]).


intersection(A, B, C, R) :- intersection(A, B, R1), intersection(R1, C, R).

where(R, [cat_in_1_box:F1, cat_not_in_2_box:F2, cat_not_in_1_box:F3]) :-
    stmt(cat_in_1_box, F1, R1),
    stmt(cat_not_in_2_box, F2, R2),
    stmt(cat_not_in_1_box, F3, R3),
    F1 + F2 + F3 =:= 1,
    intersection(R1, R2, R3, R),
    R \= [].