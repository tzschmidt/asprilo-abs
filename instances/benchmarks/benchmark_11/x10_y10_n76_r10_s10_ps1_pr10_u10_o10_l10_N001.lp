%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Grid size X: 10
%Grid size Y: 10
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#program base.

%init

%Nodes
init(object(node, 1), value(at, (1, 1))).
init(object(node, 11), value(at, (1, 2))).
init(object(node, 21), value(at, (1, 3))).
init(object(node, 31), value(at, (1, 4))).
init(object(node, 41), value(at, (1, 5))).
init(object(node, 71), value(at, (1, 8))).
init(object(node, 81), value(at, (1, 9))).
init(object(node, 91), value(at, (1, 10))).
init(object(node, 2), value(at, (2, 1))).
init(object(node, 12), value(at, (2, 2))).
init(object(node, 22), value(at, (2, 3))).
init(object(node, 32), value(at, (2, 4))).
init(object(node, 42), value(at, (2, 5))).
init(object(node, 52), value(at, (2, 6))).
init(object(node, 62), value(at, (2, 7))).
init(object(node, 72), value(at, (2, 8))).
init(object(node, 82), value(at, (2, 9))).
init(object(node, 92), value(at, (2, 10))).
init(object(node, 3), value(at, (3, 1))).
init(object(node, 13), value(at, (3, 2))).
init(object(node, 23), value(at, (3, 3))).
init(object(node, 33), value(at, (3, 4))).
init(object(node, 43), value(at, (3, 5))).
init(object(node, 73), value(at, (3, 8))).
init(object(node, 83), value(at, (3, 9))).
init(object(node, 93), value(at, (3, 10))).
init(object(node, 4), value(at, (4, 1))).
init(object(node, 14), value(at, (4, 2))).
init(object(node, 24), value(at, (4, 3))).
init(object(node, 34), value(at, (4, 4))).
init(object(node, 44), value(at, (4, 5))).
init(object(node, 84), value(at, (4, 9))).
init(object(node, 5), value(at, (5, 1))).
init(object(node, 15), value(at, (5, 2))).
init(object(node, 25), value(at, (5, 3))).
init(object(node, 35), value(at, (5, 4))).
init(object(node, 85), value(at, (5, 9))).
init(object(node, 16), value(at, (6, 2))).
init(object(node, 66), value(at, (6, 7))).
init(object(node, 76), value(at, (6, 8))).
init(object(node, 86), value(at, (6, 9))).
init(object(node, 96), value(at, (6, 10))).
init(object(node, 17), value(at, (7, 2))).
init(object(node, 57), value(at, (7, 6))).
init(object(node, 67), value(at, (7, 7))).
init(object(node, 77), value(at, (7, 8))).
init(object(node, 87), value(at, (7, 9))).
init(object(node, 97), value(at, (7, 10))).
init(object(node, 8), value(at, (8, 1))).
init(object(node, 18), value(at, (8, 2))).
init(object(node, 28), value(at, (8, 3))).
init(object(node, 58), value(at, (8, 6))).
init(object(node, 68), value(at, (8, 7))).
init(object(node, 78), value(at, (8, 8))).
init(object(node, 88), value(at, (8, 9))).
init(object(node, 98), value(at, (8, 10))).
init(object(node, 9), value(at, (9, 1))).
init(object(node, 19), value(at, (9, 2))).
init(object(node, 29), value(at, (9, 3))).
init(object(node, 39), value(at, (9, 4))).
init(object(node, 49), value(at, (9, 5))).
init(object(node, 59), value(at, (9, 6))).
init(object(node, 69), value(at, (9, 7))).
init(object(node, 79), value(at, (9, 8))).
init(object(node, 89), value(at, (9, 9))).
init(object(node, 99), value(at, (9, 10))).
init(object(node, 10), value(at, (10, 1))).
init(object(node, 20), value(at, (10, 2))).
init(object(node, 30), value(at, (10, 3))).
init(object(node, 60), value(at, (10, 6))).
init(object(node, 70), value(at, (10, 7))).
init(object(node, 80), value(at, (10, 8))).
init(object(node, 90), value(at, (10, 9))).
init(object(node, 100), value(at, (10, 10))).

%Highways
init(object(highway, 11), value(at, (1, 2))).
init(object(highway, 31), value(at, (1, 4))).
init(object(highway, 71), value(at, (1, 8))).
init(object(highway, 81), value(at, (1, 9))).
init(object(highway, 91), value(at, (2, 9))).
init(object(highway, 2), value(at, (2, 1))).
init(object(highway, 12), value(at, (2, 2))).
init(object(highway, 22), value(at, (2, 3))).
init(object(highway, 32), value(at, (2, 4))).
init(object(highway, 42), value(at, (2, 5))).
init(object(highway, 52), value(at, (2, 6))).
init(object(highway, 62), value(at, (2, 7))).
init(object(highway, 72), value(at, (2, 8))).
init(object(highway, 92), value(at, (2, 10))).
init(object(highway, 13), value(at, (3, 2))).
init(object(highway, 33), value(at, (3, 4))).
init(object(highway, 83), value(at, (3, 9))).
init(object(highway, 93), value(at, (3, 10))).
init(object(highway, 4), value(at, (4, 1))).
init(object(highway, 14), value(at, (4, 2))).
init(object(highway, 24), value(at, (4, 3))).
init(object(highway, 34), value(at, (4, 4))).
init(object(highway, 44), value(at, (4, 5))).
init(object(highway, 84), value(at, (4, 9))).
init(object(highway, 15), value(at, (5, 2))).
init(object(highway, 35), value(at, (5, 4))).
init(object(highway, 85), value(at, (5, 9))).
init(object(highway, 16), value(at, (6, 2))).
init(object(highway, 66), value(at, (6, 7))).
init(object(highway, 86), value(at, (6, 9))).
init(object(highway, 17), value(at, (7, 2))).
init(object(highway, 57), value(at, (7, 6))).
init(object(highway, 67), value(at, (7, 7))).
init(object(highway, 77), value(at, (7, 8))).
init(object(highway, 87), value(at, (7, 9))).
init(object(highway, 97), value(at, (7, 10))).
init(object(highway, 8), value(at, (8, 1))).
init(object(highway, 18), value(at, (8, 2))).
init(object(highway, 68), value(at, (8, 7))).
init(object(highway, 88), value(at, (8, 9))).
init(object(highway, 9), value(at, (9, 1))).
init(object(highway, 29), value(at, (9, 3))).
init(object(highway, 39), value(at, (9, 4))).
init(object(highway, 49), value(at, (9, 5))).
init(object(highway, 59), value(at, (9, 6))).
init(object(highway, 69), value(at, (9, 7))).
init(object(highway, 79), value(at, (9, 8))).
init(object(highway, 89), value(at, (9, 9))).
init(object(highway, 99), value(at, (9, 10))).
init(object(highway, 10), value(at, (9, 2))).
init(object(highway, 20), value(at, (10, 2))).
init(object(highway, 30), value(at, (10, 3))).
init(object(highway, 70), value(at, (10, 7))).
init(object(highway, 90), value(at, (10, 9))).

%Picking Station
init(object(pickingStation,1), value(at,(5,6))).

%Robots
init(object(robot,1), value(at,(6,10))).
init(object(robot,2), value(at,(10,6))).
init(object(robot,3), value(at,(8,8))).
init(object(robot,4), value(at,(10,10))).
init(object(robot,5), value(at,(8,3))).
init(object(robot,6), value(at,(6,8))).
init(object(robot,7), value(at,(8,6))).
init(object(robot,8), value(at,(8,10))).
init(object(robot,9), value(at,(10,1))).
init(object(robot,10), value(at,(10,8))).

%Shelfs
init(object(shelf,1), value(at,(1,1))).
init(object(shelf,2), value(at,(1,5))).
init(object(shelf,3), value(at,(3,3))).
init(object(shelf,4), value(at,(5,1))).
init(object(shelf,5), value(at,(1,10))).
init(object(shelf,6), value(at,(5,3))).
init(object(shelf,7), value(at,(3,5))).
init(object(shelf,8), value(at,(3,1))).
init(object(shelf,9), value(at,(3,8))).
init(object(shelf,10), value(at,(1,3))).

%Products 
init(object(product,1),value(on,(1,1))).
init(object(product,2),value(on,(2,1))).
init(object(product,3),value(on,(3,1))).
init(object(product,4),value(on,(4,1))).
init(object(product,5),value(on,(5,1))).
init(object(product,6),value(on,(6,1))).
init(object(product,7),value(on,(7,1))).
init(object(product,8),value(on,(8,1))).
init(object(product,9),value(on,(9,1))).
init(object(product,10),value(on,(10,1))).

%Orders
init(object(order,1),value(pickingStation,1)).
init(object(order,1),value(line,(1,1))).
init(object(order,3),value(pickingStation,1)).
init(object(order,3),value(line,(2,1))).
init(object(order,5),value(pickingStation,1)).
init(object(order,5),value(line,(3,1))).
init(object(order,7),value(pickingStation,1)).
init(object(order,7),value(line,(4,1))).
init(object(order,9),value(pickingStation,1)).
init(object(order,9),value(line,(5,1))).
init(object(order,11),value(pickingStation,1)).
init(object(order,11),value(line,(6,1))).
init(object(order,13),value(pickingStation,1)).
init(object(order,13),value(line,(7,1))).
init(object(order,15),value(pickingStation,1)).
init(object(order,15),value(line,(8,1))).
init(object(order,17),value(pickingStation,1)).
init(object(order,17),value(line,(9,1))).
init(object(order,19),value(pickingStation,1)).
init(object(order,19),value(line,(10,1))).
