% простое моделирование сервиса доставки товаров
% клиентам до ПВЗ или курьером.
% ?- can_delivery(Type, Actor, Transport, Point).

% actors
man(jake).
robot(r2d2).

% light transport
scooter(woosh).

% cars
passanger_car(lada).
truck(kamaz).

% points self delivery
poiint(ekb).

car(X) :- passanger_car(X).
car(X) :- truck(X).

actor(X) :- man(X).
actor(X) :- robot(X).

courier_delivery(Actor, S) :- actor(Actor), scooter(S).
self_delivery(Point, Actor, Car) :-
    poiint(Point),
    actor(Actor),
    car(Car).

% can_delivery(Type, Actor, Transport, Point).
can_delivery(courier, Actor, Transport, _) :- courier_delivery(Actor, Transport).
can_delivery(self, Actor, Transport, Point) :- self_delivery(Point, Actor, Transport).