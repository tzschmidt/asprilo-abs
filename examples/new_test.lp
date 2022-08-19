%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% = BENCHMARK 1 ====================
%
% - Passages to each side should be abstracted
%
% = Instance Statistics ====================================
% Grid Size X:                      5
% Grid Size Y:                      5
% Number of Nodes:                  9
% Number of Highway Nodes:          5
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

#const horizon=10.

% HIGHWAYS
init1(object(highway,1),value(at,(3,2))).
init1(object(highway,2),value(at,(2,3))).
init1(object(highway,3),value(at,(3,3))).
init1(object(highway,4),value(at,(4,3))).
init1(object(highway,5),value(at,(3,4))).

%NODES
init1(object(node,1),value(at,(3,1))).
init1(object(node,2),value(at,(3,2))).
init1(object(node,3),value(at,(1,3))).
init1(object(node,4),value(at,(2,3))).
init1(object(node,5),value(at,(3,3))).
init1(object(node,6),value(at,(4,3))).
init1(object(node,7),value(at,(5,3))).
init1(object(node,8),value(at,(3,4))).
init1(object(node,9),value(at,(3,5))).

% PICKING STATION
init1(object(pickingStation,1),value(at,(1,1))).

% ROBOTS
init1(object(robot,1),value(at,(3,5))).
init1(object(robot,2),value(at,(1,3))).

% SHELVES
init1(object(shelf,1),value(at,(5,3))).
init1(object(shelf,2),value(at,(3,1))).

% PRODUCTS
init1(object(product,2),value(on,(1,1))).
init1(object(product,1),value(on,(2,1))).

% ORDERS
init1(object(order,1),value(pickingStation,1)).
init1(object(order,1),value(line,(1,1))).
init1(object(order,3),value(pickingStation,1)).
init1(object(order,3),value(line,(2,1))).
