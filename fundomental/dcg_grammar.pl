% ?- move([up, down, up], []).

move --> step.
move --> step, move.

step --> [up].
step --> [down].