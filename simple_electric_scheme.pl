% простоа электрическая схема, состоящая из источника питания, лампочи и выключателя.

% switch( SwitchPosition, Voltage, Current ).
switch(on, zero, AnyCurrent).
switch(off, AnyVoltage, zero).

% bulb( BulbState, Lightness, Voltage, Current ).
bulb(blown, dark, AnyVoltage, zero).
bulb(ok, light, pos, pos).
bulb(ok, light, neg, neg).
bulb(ok, dark, zero, zero).

% простая схема
circuit(SwitchPos, BulbState, Lightness) :-
    switch(SwitchPos, SwVolt, Curr),
    bulb(BulbState, Lightness, BulbVolt, Curr),
    qsum(SwVolt, BulbVolt, pos).

qsum(pos, pos, pos).
qsum(pos, zero, pos).
qsum(pos, neg, pos).
qsum(pos, neg, zero).
qsum(pos, neg, neg).

qsum(zero, pos, pos).
qsum(zero, zero, zero).
qsum(zero, neg, neg).

qsum(neg, zero, neg).
qsum(neg, neg, neg).
qsum(neg, pos, pos).
qsum(neg, pos, zero).
qsum(neg, pos, neg).
