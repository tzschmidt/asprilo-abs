%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% = Instance Statistics ====================================
% Grid Size X:                      7
% Grid Size Y:                      5
% Number of Nodes:                  21
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

% init

% HIGHWAYS
init(object(highway,1),value(at,(2,1))).
init(object(highway,2),value(at,(1,2))).
init(object(highway,3),value(at,(2,2))).
init(object(highway,4),value(at,(3,2))).
init(object(highway,5),value(at,(4,2))).
init(object(highway,6),value(at,(5,2))).
init(object(highway,7),value(at,(6,2))).
init(object(highway,8),value(at,(7,1))).
init(object(highway,9),value(at,(7,2))).
init(object(highway,10),value(at,(6,3))).
init(object(highway,11),value(at,(6,4))).
init(object(highway,12),value(at,(6,5))).
init(object(highway,13),value(at,(7,5))).
init(object(highway,14),value(at,(5,4))).
init(object(highway,15),value(at,(3,4))).
init(object(highway,16),value(at,(3,5))).
init(object(highway,18),value(at,(4,4))).

%NODES
init(object(node,1),value(at,(1,1))).
init(object(node,2),value(at,(1,2))).
init(object(node,3),value(at,(2,1))).
init(object(node,4),value(at,(2,2))).
init(object(node,5),value(at,(3,2))).
init(object(node,6),value(at,(4,2))).
init(object(node,7),value(at,(5,2))).
init(object(node,8),value(at,(6,1))).
init(object(node,9),value(at,(6,2))).
init(object(node,10),value(at,(7,1))).
init(object(node,11),value(at,(7,2))).
init(object(node,12),value(at,(6,3))).
init(object(node,13),value(at,(3,4))).
init(object(node,14),value(at,(3,5))).
init(object(node,15),value(at,(4,4))).
init(object(node,16),value(at,(4,5))).
init(object(node,17),value(at,(5,4))).
init(object(node,18),value(at,(6,4))).
init(object(node,19),value(at,(7,4))).
init(object(node,20),value(at,(6,5))).
init(object(node,21),value(at,(7,5))).

% PICKING STATION
init(object(pickingStation,1),value(at,(1,5))).

% ROBOTS
init(object(robot,1),value(at,(1,1))).
init(object(robot,2),value(at,(4,5))).

% SHELVES
init(object(shelf,1),value(at,(7,4))).
init(object(shelf,2),value(at,(6,1))).

% PRODUCTS
init(object(product,2),value(on,(1,5))).
init(object(product,1),value(on,(2,4))).

% ORDERS
init(object(order,1),value(pickingStation,1)).
init(object(order,1),value(line,(1,5))).
init(object(order,3),value(pickingStation,1)).
init(object(order,3),value(line,(2,4))).