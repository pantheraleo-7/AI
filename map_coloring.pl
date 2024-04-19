adjacent(1,2). adjacent(2,1). adjacent(1,3). adjacent(3,1).
adjacent(1,4). adjacent(4,1). adjacent(1,5). adjacent(5,1).
adjacent(2,3). adjacent(3,2). adjacent(2,4). adjacent(4,2).
adjacent(3,4). adjacent(4,3). adjacent(4,5). adjacent(5,4).

color(1,red). color(2,blue). color(3,green).
color(4,blue). color(5,green).

conflict(X, Y, Z) :-
    adjacent(X,Y),
    color(X,Z),
    color(Y,Z).