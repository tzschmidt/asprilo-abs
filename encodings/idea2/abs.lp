%############# Authors #############
% Tom Schmidt
%

%## get nodes and fill rest with walls
node(X,Y) :- init(object(node,N),value(at,(X,Y))).
wall(X,Y) :- not node(X,Y), X=0..XM+1, Y=0..YM+1, x(XM), y(YM).
:- node(X,Y), wall(X,Y).

%## get dimensions of grid
xc(X) :- node(X,_).
xc(X-1) :- xc(X), X>0.
x(X) :- xc(X), not xc(X+1).

yc(Y) :- node(_,Y).
yc(Y-1) :- yc(Y), Y>0.
y(Y) :- yc(Y), not yc(Y+1).

%## devide grid into cells
cell(X,Y) :- xc(X), yc(Y), X\2=0, Y\2=0.
%## numerate cells
num(X,Y,N+1) :- cell(X,Y), x(XM), N=Y/2*(XM/2+1)+X/2.

%## get cell type (0=wall, 1=node)
%## 0: 00/00
type(X,Y,0) :- cell(X,Y), wall(X,Y), wall(X+1,Y), wall(X,Y), wall(X+1,Y+1).
%## 1: 10/00 2: 01/00 3: 00/10 4: 00/01
type(X,Y,1) :- cell(X,Y), node(X,Y), wall(X+1,Y), wall(X,Y), wall(X+1,Y+1).
type(X,Y,2) :- cell(X,Y), wall(X,Y), node(X+1,Y), wall(X,Y), wall(X+1,Y+1).
type(X,Y,3) :- cell(X,Y), wall(X,Y), wall(X+1,Y), node(X,Y), wall(X+1,Y+1).
type(X,Y,4) :- cell(X,Y), wall(X,Y), wall(X+1,Y), wall(X,Y), node(X+1,Y+1).
%## 5: 11/00 6: 10/10 7: 10/01 8: 01/10 9: 01/01 10: 00/11
type(X,Y,5) :- cell(X,Y), node(X,Y), node(X+1,Y), wall(X,Y), wall(X+1,Y+1).
type(X,Y,6) :- cell(X,Y), node(X,Y), wall(X+1,Y), node(X,Y), wall(X+1,Y+1).
type(X,Y,7) :- cell(X,Y), node(X,Y), wall(X+1,Y), wall(X,Y), node(X+1,Y+1).
type(X,Y,8) :- cell(X,Y), wall(X,Y), node(X+1,Y), node(X,Y), wall(X+1,Y+1).
type(X,Y,9) :- cell(X,Y), wall(X,Y), node(X+1,Y), wall(X,Y), node(X+1,Y+1).
type(X,Y,10) :- cell(X,Y), wall(X,Y), wall(X+1,Y), node(X,Y), node(X+1,Y+1).
%## 11: 11/10 12: 01/11 13: 10/11 14: 11/01
type(X,Y,11) :- cell(X,Y), node(X,Y), node(X+1,Y), node(X,Y), wall(X+1,Y+1).
type(X,Y,12) :- cell(X,Y), wall(X,Y), node(X+1,Y), node(X,Y), node(X+1,Y+1).
type(X,Y,13) :- cell(X,Y), node(X,Y), wall(X+1,Y), node(X,Y), node(X+1,Y+1).
type(X,Y,14) :- cell(X,Y), node(X,Y), node(X+1,Y), wall(X,Y), node(X+1,Y+1).
%## 15: 11/11
type(X,Y,15) :- cell(X,Y), node(X,Y), node(X+1,Y), node(X,Y), node(X+1,Y+1).

#show type/3.

%## TODO
% - derive connections between new nodes from celltypes
% - adjust solver to only make moves between nodes with valid connection (constraints)
% - create new nodes from cells
% - refinement will be able to reconstruct original grid with celltype info
% - change input from init\2 to something like init1\2 to be able to
%   use init\2 as output/input for asprilo solver