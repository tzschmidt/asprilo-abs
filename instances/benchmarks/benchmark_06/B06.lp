%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% = Instance Statistics ====================================
% Grid Size X:                      7
% Grid Size Y:                      5
% Number of Nodes:                  22
% Number of Highway Nodes:          18
% Number of Robots:                 2
% Number of Shelves:                2
% Number of Picking Stations:       1
% Number of Products:               2
% Number of Product Units in Total: 2
% Number of Orders:                 2
% Number of Orders Lines:           0
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#program base.

% init1

% HIGHWAYS
init1(object(highway,1),value(at,(1,2))).
init1(object(highway,2),value(at,(1,3))).
init1(object(highway,3),value(at,(2,1))).
init1(object(highway,4),value(at,(2,2))).
init1(object(highway,5),value(at,(2,3))).
init1(object(highway,6),value(at,(2,4))).
init1(object(highway,7),value(at,(2,5))).
init1(object(highway,8),value(at,(3,1))).
init1(object(highway,9),value(at,(3,3))).
init1(object(highway,10),value(at,(3,5))).
init1(object(highway,11),value(at,(4,5))).
init1(object(highway,12),value(at,(5,3))).
init1(object(highway,13),value(at,(5,4))).
init1(object(highway,14),value(at,(6,3))).
init1(object(highway,15),value(at,(6,4))).
init1(object(highway,16),value(at,(6,5))).
init1(object(highway,17),value(at,(7,4))).
init1(object(highway,18),value(at,(7,5))).

%NODES
init1(object(node,1),value(at,(1,1))).
init1(object(node,2),value(at,(1,2))).
init1(object(node,3),value(at,(1,3))).
init1(object(node,4),value(at,(2,1))).
init1(object(node,5),value(at,(2,2))).
init1(object(node,6),value(at,(2,3))).
init1(object(node,7),value(at,(2,4))).
init1(object(node,8),value(at,(2,5))).
init1(object(node,9),value(at,(3,1))).
init1(object(node,10),value(at,(3,2))).
init1(object(node,11),value(at,(3,3))).
init1(object(node,12),value(at,(3,5))).
init1(object(node,13),value(at,(4,5))).
init1(object(node,14),value(at,(5,3))).
init1(object(node,15),value(at,(5,4))).
init1(object(node,16),value(at,(5,5))).
init1(object(node,17),value(at,(6,3))).
init1(object(node,18),value(at,(6,4))).
init1(object(node,19),value(at,(6,5))).
init1(object(node,20),value(at,(7,3))).
init1(object(node,21),value(at,(7,4))).
init1(object(node,22),value(at,(7,5))).

% PICKING STATION
init1(object(pickingStation,1),value(at,(7,1))).

% ROBOTS
init1(object(robot,1),value(at,(1,1))).
init1(object(robot,2),value(at,(5,5))).

% SHELVES
init1(object(shelf,1),value(at,(7,3))).
init1(object(shelf,2),value(at,(3,2))).

% PRODUCTS
init1(object(product,2),value(on,(1,7))).
init1(object(product,1),value(on,(2,6))).

% ORDERS
init1(object(order,1),value(pickingStation,1)).
init1(object(order,1),value(line,(1,7))).
init1(object(order,3),value(pickingStation,1)).
init1(object(order,3),value(line,(2,6))).