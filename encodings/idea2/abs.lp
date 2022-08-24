%############# Authors #############
% Tom Schmidt
%

#include "./solver/encoding.lp".
#include "./ref.lp".

%## input
% requires valid input file using init1/2

%## get nodes and fill rest with walls
%## adds one extra layer of walls on the right and bottom for cells on uneven grids
node(X,Y) :- init1(object(node,N),value(at,(X,Y))).
wall(X,Y) :- not node(X,Y), X=1..XM+1, Y=1..YM+1, x(XM), y(YM).
:- node(X,Y), wall(X,Y).

%## get dimensions of grid
xc(X) :- node(X,_).
xc(X-1) :- xc(X), X>1.
x(X) :- xc(X), not xc(X+1).

yc(Y) :- node(_,Y).
yc(Y-1) :- yc(Y), Y>1.
y(Y) :- yc(Y), not yc(Y+1).

%## devide grid into cells, grid starts at 1,1 not 0,0
cell(X,Y) :- xc(X), yc(Y), X\2=1, Y\2=1.
%## numerate cells X,Y on new node lvl
num((X+1)/2,(Y+1)/2,N+1) :- cell(X,Y), x(XM), N=Y/2*(XM/2+1)+X/2.

%## get cell type (0=wall, 1=node) X,Y on new node lvl
%## 0: 00/00
%## can be ignored (full wall)
type((X+1)/2,(Y+1)/2,0) :- cell(X,Y), wall(X,Y), wall(X+1,Y), wall(X,Y+1), wall(X+1,Y+1).
%## 1: 10/00 2: 01/00 3: 00/10 4: 00/01
type((X+1)/2,(Y+1)/2,1) :- cell(X,Y), node(X,Y), wall(X+1,Y), wall(X,Y+1), wall(X+1,Y+1).
type((X+1)/2,(Y+1)/2,2) :- cell(X,Y), wall(X,Y), node(X+1,Y), wall(X,Y+1), wall(X+1,Y+1).
type((X+1)/2,(Y+1)/2,3) :- cell(X,Y), wall(X,Y), wall(X+1,Y), node(X,Y+1), wall(X+1,Y+1).
type((X+1)/2,(Y+1)/2,4) :- cell(X,Y), wall(X,Y), wall(X+1,Y), wall(X,Y+1), node(X+1,Y+1).
%## 5: 11/00 6: 10/10 7: 10/01 8: 01/10 9: 01/01 10: 00/11
%## case 7 and 8 will cause problems, because nodes not connected (diag walls) -> simplify to case 0?
type((X+1)/2,(Y+1)/2,5) :- cell(X,Y), node(X,Y), node(X+1,Y), wall(X,Y+1), wall(X+1,Y+1).
type((X+1)/2,(Y+1)/2,6) :- cell(X,Y), node(X,Y), wall(X+1,Y), node(X,Y+1), wall(X+1,Y+1).
type((X+1)/2,(Y+1)/2,7) :- cell(X,Y), node(X,Y), wall(X+1,Y), wall(X,Y+1), node(X+1,Y+1).
type((X+1)/2,(Y+1)/2,8) :- cell(X,Y), wall(X,Y), node(X+1,Y), node(X,Y+1), wall(X+1,Y+1).
type((X+1)/2,(Y+1)/2,9) :- cell(X,Y), wall(X,Y), node(X+1,Y), wall(X,Y+1), node(X+1,Y+1).
type((X+1)/2,(Y+1)/2,10) :- cell(X,Y), wall(X,Y), wall(X+1,Y), node(X,Y+1), node(X+1,Y+1).
%## 11: 11/10 12: 01/11 13: 10/11 14: 11/01
type((X+1)/2,(Y+1)/2,11) :- cell(X,Y), node(X,Y), node(X+1,Y), node(X,Y+1), wall(X+1,Y+1).
type((X+1)/2,(Y+1)/2,12) :- cell(X,Y), wall(X,Y), node(X+1,Y), node(X,Y+1), node(X+1,Y+1).
type((X+1)/2,(Y+1)/2,13) :- cell(X,Y), node(X,Y), wall(X+1,Y), node(X,Y+1), node(X+1,Y+1).
type((X+1)/2,(Y+1)/2,14) :- cell(X,Y), node(X,Y), node(X+1,Y), wall(X,Y+1), node(X+1,Y+1).
%## 15: 11/11
type((X+1)/2,(Y+1)/2,15) :- cell(X,Y), node(X,Y), node(X+1,Y), node(X,Y+1), node(X+1,Y+1).

%## get connections
%## left-right top tile (case 7,8 ignored for now)
connec((X,Y),(X+1,Y),lrt) :- type(X,Y,T1), type(X+1,Y,T2), T1=(2;5;9;11;12;14;15), T2=(1;5;6;11;13;14;15).
%## left-right bot tile (case 7,8 ignored for now) on double connection default to lrt
connec((X,Y),(X+1,Y),lrb) :- type(X,Y,T1), type(X+1,Y,T2), T1=(4;9;10;12;13;14;15), T2=(3;6;10;11;12;13;15), not connec((X,Y),(X+1,Y),lrt).
%## top-bot left tile (case 7,8 ignored for now) (bigger Y = bot)
connec((X,Y),(X,Y+1),tbl) :- type(X,Y,T1), type(X,Y+1,T2), T1=(3;6;10;11;12;13;15), T2=(1;5;6;11;13;14;15).
%## top-bot right tile (case 7,8 ignored for now) (bigger Y = bot) on double connection default to tbl
connec((X,Y),(X,Y+1),tbr) :- type(X,Y,T1), type(X,Y+1,T2), T1=(4;9;10;12;13;14;15), T2=(2;5;9;11;12;14;15), not connec((X,Y),(X,Y+1),tbl).
%## mirror connec
connec(C1,C2,rlt) :- connec(C2,C1,lrt).
connec(C1,C2,rlb) :- connec(C2,C1,lrb).
connec(C1,C2,btl) :- connec(C2,C1,tbl).
connec(C1,C2,btr) :- connec(C2,C1,tbr).
%## self connec
connec(((X+1)/2,(Y+1)/2),((X+1)/2,(Y+1)/2),w) :- cell(X,Y).


%## get new nodes
init(object(node,N),value(at,(X,Y))) :- num(X,Y,N).

%## get robots, rob(number, cell, relative position in cell) 
rob(N,((X+1)/2,(Y+1)/2),(X-(((X+1)/2)*2-1),Y-(((Y+1)/2)*2-1))) :- init1(object(robot,N),value(at,(X,Y))). 
init(object(robot,N),value(at,(X,Y))) :- rob(N,(X,Y),_). 

%## get shelfs, analog to robots
shelf1(N,((X+1)/2,(Y+1)/2),(X-(((X+1)/2)*2-1),Y-(((Y+1)/2)*2-1))) :- init1(object(shelf,N),value(at,(X,Y))). 
init(object(shelf,N),value(at,(X,Y))) :- shelf1(N,(X,Y),_). 

%## get highways, ignored at this point in time

%## following instance details not required for m-domain
%## get picking station
pick(N,((X+1)/2,(Y+1)/2),(X-(((X+1)/2)*2-1),Y-(((Y+1)/2)*2-1))) :- init1(object(pickingStation,N),value(at,(X,Y))). 
init(object(pickingStation,N),value(at,(X,Y))) :- pick(N,(X,Y),_). 

%## get products
init(object(product,P),value(on,(S,N))) :- init1(object(product,P),value(on,(S,N))).

%## get orders
init(object(order,O),value(pickingStation,PN)) :- init1(object(order,O),value(pickingStation,PN)).
init(object(order,O),value(line,(P,N))) :- init1(object(order,O),value(line,(P,N))).


%#show init/2.
%#show connec/3.
%#show type/3.
%#show rob/3.

%## known limitations:
% - connections of type 7,8 cells
% - no multiple robots/shelves in one cell

%## refinement -> ref.lp

