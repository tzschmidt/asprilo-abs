%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% = Instance Statistics ====================================
% Grid Size X:                      7
% Grid Size Y:                      5
% Number of Nodes:                  11
% Number of Highway Nodes:          7
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
init(object(highway,1),value(at,(3,2))).
init(object(highway,2),value(at,(3,3))).
init(object(highway,3),value(at,(2,3))).
init(object(highway,4),value(at,(4,3))).
init(object(highway,5),value(at,(5,3))).
init(object(highway,6),value(at,(6,3))).
init(object(highway,7),value(at,(5,4))).

%NODES
init(object(node,1),value(at,(3,1))).
init(object(node,2),value(at,(3,2))).
init(object(node,3),value(at,(1,3))).
init(object(node,4),value(at,(2,3))).
init(object(node,5),value(at,(3,3))).
init(object(node,6),value(at,(4,3))).
init(object(node,7),value(at,(5,3))).
init(object(node,8),value(at,(6,3))).
init(object(node,9),value(at,(7,3))).
init(object(node,10),value(at,(5,4))).
init(object(node,11),value(at,(5,5))).

% PICKING STATION
init(object(pickingStation,1),value(at,(1,1))).

% ROBOTS
init(object(robot,1),value(at,(7,3))).
init(object(robot,2),value(at,(1,3))).

% SHELVES
init(object(shelf,1),value(at,(3,1))).
init(object(shelf,2),value(at,(5,5))).

% PRODUCTS
init(object(product,2),value(on,(1,1))).
init(object(product,1),value(on,(2,2))).

% ORDERS
init(object(order,1),value(pickingStation,1)).
init(object(order,1),value(line,(1,1))).
init(object(order,3),value(pickingStation,1)).
init(object(order,3),value(line,(2,2))).