%  ((((1?2)?3)?4)?5)?6=35
formula(X1, X2, X3, X4, X5, X6, Sign1, Sign2, Sign3, Sign4, Sign5, Result):-
operation(X1, X2, Sign1, PartialResult1),
operation(PartialResult1, X3, Sign2, PartialResult2),
operation(PartialResult2, X4, Sign3, PartialResult3),
operation(PartialResult3, X5, Sign4, PartialResult4),
operation(PartialResult4, X6, Sign5, Result).

operation(X1, X2, '+', Result) :- Result is X1 + X2.
operation(X1, X2, '*', Result) :- Result is X1 * X2.
operation(X1, X2, '/', Result) :- Result is X1 / X2.
operation(X1, X2, '-', Result) :- Result is X1 - X2.

