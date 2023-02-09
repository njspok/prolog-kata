
family(
    person(joe, 1985),
    person(alice, 2000),
    [
        person(mike, 2005),
        person(bob, 2006)
    ]
).

family(
    person(jake, 1985),
    person(mary, 2000),
    []
).


wife(family(_, Wife, _), Wife).

wife(Wife) :- family(_,Wife,_).