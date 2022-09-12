%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Grid size X: 10
%Grid size Y: 10
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#program base.

%init

%Nodes
init(object(node, 41), value(at, (1, 5))).
init(object(node, 42), value(at, (2, 5))).
init(object(node, 43), value(at, (3, 5))).
init(object(node, 44), value(at, (4, 5))).
init(object(node, 45), value(at, (5, 5))).
init(object(node, 46), value(at, (6, 5))).
init(object(node, 47), value(at, (7, 5))).
init(object(node, 48), value(at, (8, 5))).
init(object(node, 49), value(at, (9, 5))).
init(object(node, 50), value(at, (10, 5))).
init(object(node, 2), value(at, (2, 1))).
init(object(node, 12), value(at, (2, 2))).
init(object(node, 22), value(at, (2, 3))).
init(object(node, 32), value(at, (2, 4))).
init(object(node, 52), value(at, (2, 6))).
init(object(node, 62), value(at, (2, 7))).
init(object(node, 72), value(at, (2, 8))).
init(object(node, 82), value(at, (2, 9))).
init(object(node, 92), value(at, (2, 10))).
init(object(node, 4), value(at, (4, 1))).
init(object(node, 14), value(at, (4, 2))).
init(object(node, 24), value(at, (4, 3))).
init(object(node, 34), value(at, (4, 4))).
init(object(node, 54), value(at, (4, 6))).
init(object(node, 64), value(at, (4, 7))).
init(object(node, 74), value(at, (4, 8))).
init(object(node, 84), value(at, (4, 9))).
init(object(node, 94), value(at, (4, 10))).
init(object(node, 6), value(at, (6, 1))).
init(object(node, 16), value(at, (6, 2))).
init(object(node, 26), value(at, (6, 3))).
init(object(node, 36), value(at, (6, 4))).
init(object(node, 56), value(at, (6, 6))).
init(object(node, 66), value(at, (6, 7))).
init(object(node, 76), value(at, (6, 8))).
init(object(node, 86), value(at, (6, 9))).
init(object(node, 96), value(at, (6, 10))).
init(object(node, 8), value(at, (8, 1))).
init(object(node, 18), value(at, (8, 2))).
init(object(node, 28), value(at, (8, 3))).
init(object(node, 38), value(at, (8, 4))).
init(object(node, 58), value(at, (8, 6))).
init(object(node, 68), value(at, (8, 7))).
init(object(node, 78), value(at, (8, 8))).
init(object(node, 88), value(at, (8, 9))).
init(object(node, 98), value(at, (8, 10))).
init(object(node, 10), value(at, (10, 1))).
init(object(node, 20), value(at, (10, 2))).
init(object(node, 30), value(at, (10, 3))).
init(object(node, 40), value(at, (10, 4))).
init(object(node, 60), value(at, (10, 6))).
init(object(node, 70), value(at, (10, 7))).
init(object(node, 80), value(at, (10, 8))).
init(object(node, 90), value(at, (10, 9))).
init(object(node, 100), value(at, (10, 10))).

%Highways
init(object(highway, 41), value(at, (1, 5))).
init(object(highway, 42), value(at, (2, 5))).
init(object(highway, 43), value(at, (3, 5))).
init(object(highway, 44), value(at, (4, 5))).
init(object(highway, 46), value(at, (6, 5))).
init(object(highway, 47), value(at, (7, 5))).
init(object(highway, 48), value(at, (8, 5))).
init(object(highway, 49), value(at, (9, 5))).
init(object(highway, 12), value(at, (2, 2))).
init(object(highway, 22), value(at, (2, 3))).
init(object(highway, 32), value(at, (2, 4))).
init(object(highway, 52), value(at, (2, 6))).
init(object(highway, 62), value(at, (2, 7))).
init(object(highway, 72), value(at, (2, 8))).
init(object(highway, 82), value(at, (2, 9))).
init(object(highway, 14), value(at, (4, 2))).
init(object(highway, 24), value(at, (4, 3))).
init(object(highway, 34), value(at, (4, 4))).
init(object(highway, 54), value(at, (4, 6))).
init(object(highway, 64), value(at, (4, 7))).
init(object(highway, 74), value(at, (4, 8))).
init(object(highway, 84), value(at, (4, 9))).
init(object(highway, 16), value(at, (6, 2))).
init(object(highway, 26), value(at, (6, 3))).
init(object(highway, 36), value(at, (6, 4))).
init(object(highway, 56), value(at, (6, 6))).
init(object(highway, 66), value(at, (6, 7))).
init(object(highway, 76), value(at, (6, 8))).
init(object(highway, 86), value(at, (6, 9))).
init(object(highway, 18), value(at, (8, 2))).
init(object(highway, 28), value(at, (8, 3))).
init(object(highway, 38), value(at, (8, 4))).
init(object(highway, 58), value(at, (8, 6))).
init(object(highway, 68), value(at, (8, 7))).
init(object(highway, 78), value(at, (8, 8))).
init(object(highway, 88), value(at, (8, 9))).
init(object(highway, 20), value(at, (10, 2))).
init(object(highway, 30), value(at, (10, 3))).
init(object(highway, 40), value(at, (10, 4))).
init(object(highway, 60), value(at, (10, 6))).
init(object(highway, 70), value(at, (10, 7))).
init(object(highway, 80), value(at, (10, 8))).
init(object(highway, 90), value(at, (10, 9))).
init(object(highway, 45), value(at, (5, 5))).
init(object(highway, 50), value(at, (10, 5))).

%Picking Station
init(object(pickingStation,1), value(at,(1,1))).

%Robots
init(object(robot,1), value(at,(2,1))).
init(object(robot,2), value(at,(4,1))).
init(object(robot,3), value(at,(6,1))).
init(object(robot,4), value(at,(2,10))).
init(object(robot,5), value(at,(4,10))).

%Shelfs
init(object(shelf,1), value(at,(10,10))).
init(object(shelf,2), value(at,(8,10))).
init(object(shelf,3), value(at,(6,10))).
init(object(shelf,4), value(at,(8,1))).
init(object(shelf,5), value(at,(10,1))).

%Products
init(object(product,1),value(on,(1,1))).
init(object(product,2),value(on,(2,1))).
init(object(product,3),value(on,(3,1))).
init(object(product,4),value(on,(4,1))).
init(object(product,5),value(on,(5,1))).

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