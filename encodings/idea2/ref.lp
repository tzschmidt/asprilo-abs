%############# Authors #############
% Tom Schmidt
%

ntime(0..horizon).
reftime(1..horizon*3+2).
nreftime(0..horizon*3+2).

%## cell transfers
cellcon(R,C,TY,NC,0) :- position(R,C,0), connec(C,NC,TY), position(R,NC,1), isRobot(R).
cellcon(R,C,TY2,NC,T) :- position(R,C,T), connec(C,NC,TY2), position(R,NC,T+1), isRobot(R), time(T).
%cellcon(R,C,w,C,horizon) :- position(R,PC,horizon-1), connec(PC,C,TY), position(R,C,horizon), isRobot(R).

%## robot start positions
pos(robot(R),C,0) :- init1(object(robot,R),value(at,C)).

%## robot end positions
pos(R,(X,Y),horizon*3+2) :- position(R,C,horizon), position(shelf(S),C,0), init1(object(shelf,S),value(at,(X,Y))). 

%## required positions for cell transfers
2{pos(R,(X*2-1,Y*2-1),T*3+2); pos(R,(X*2-1-1,Y*2-1),(T+1)*3)}2 :- cellcon(R,(X,Y),rlt,_,T), isRobot(R), ntime(T).
2{pos(R,(X*2-1,Y*2-1+1),T*3+2); pos(R,(X*2-1-1,Y*2-1+1),(T+1)*3)}2 :- cellcon(R,(X,Y),rlb,_,T), isRobot(R), ntime(T).
2{pos(R,(X*2-1,Y*2-1),T*3+2); pos(R,(X*2-1,Y*2-1-1),(T+1)*3)}2 :- cellcon(R,(X,Y),btl,_,T), isRobot(R), ntime(T).
2{pos(R,(X*2-1+1,Y*2-1),T*3+2); pos(R,(X*2-1+1,Y*2-1-1),(T+1)*3)}2 :- cellcon(R,(X,Y),btr,_,T), isRobot(R), ntime(T).
2{pos(R,(X*2-1+1,Y*2-1),T*3+2); pos(R,(X*2-1+2,Y*2-1),(T+1)*3)}2 :- cellcon(R,(X,Y),lrt,_,T), isRobot(R), ntime(T).
2{pos(R,(X*2-1+1,Y*2-1+1),T*3+2); pos(R,(X*2-1+2,Y*2-1+1),(T+1)*3)}2 :- cellcon(R,(X,Y),lrb,_,T), isRobot(R), ntime(T).
2{pos(R,(X*2-1,Y*2-1+1),T*3+2); pos(R,(X*2-1,Y*2-1+2),(T+1)*3)}2 :- cellcon(R,(X,Y),tbl,_,T), isRobot(R), ntime(T).
2{pos(R,(X*2-1+1,Y*2-1+1),T*3+2); pos(R,(X*2-1+1,Y*2-1+2),(T+1)*3)}2 :- cellcon(R,(X,Y),tbr,_,T), isRobot(R), ntime(T).

%## positions for waiting
3{pos(R,C,T*3+1); pos(R,C,T*3+2); pos(R,C,(T+1)*3)}3 :- cellcon(R,_,w,_,T), pos(R,C,T*3), isRobot(R), ntime(T).

%##fill positions (fpos = final positions)
%## standing still
fpos(R,(X,Y),T) :- pos(R,(X,Y),T-1), pos(R,(X,Y),T+1), isRobot(R), not pos(R,(X+1,Y),T), not pos(R,(X-1,Y),T), not pos(R,(X,Y+1),T), not pos(R,(X,Y-1),T).
%## single step
fpos(R,(X,Y),T) :- pos(R,(X,Y),T-1), pos(R,(X+1,Y),T+1), isRobot(R), not pos(R,(X+1,Y),T).
fpos(R,(X,Y),T) :- pos(R,(X,Y),T-1), pos(R,(X-1,Y),T+1), isRobot(R), not pos(R,(X-1,Y),T).
fpos(R,(X,Y),T) :- pos(R,(X,Y),T-1), pos(R,(X,Y+1),T+1), isRobot(R), not pos(R,(X,Y+1),T). 
fpos(R,(X,Y),T) :- pos(R,(X,Y),T-1), pos(R,(X,Y-1),T+1), isRobot(R), not pos(R,(X,Y-1),T).
%## diagonal step
fpos(R,(X+1,Y),T) :- pos(R,(X,Y),T-1), pos(R,(X+1,Y+1),T+1), isRobot(R), node(X+1,Y).
fpos(R,(X,Y+1),T) :- pos(R,(X,Y),T-1), pos(R,(X+1,Y+1),T+1), isRobot(R), not node(X+1,Y).
fpos(R,(X+1,Y),T) :- pos(R,(X,Y),T-1), pos(R,(X+1,Y-1),T+1), isRobot(R), node(X+1,Y).
fpos(R,(X,Y-1),T) :- pos(R,(X,Y),T-1), pos(R,(X+1,Y-1),T+1), isRobot(R), not node(X+1,Y).
fpos(R,(X-1,Y),T) :- pos(R,(X,Y),T-1), pos(R,(X-1,Y+1),T+1), isRobot(R), node(X-1,Y).
fpos(R,(X,Y+1),T) :- pos(R,(X,Y),T-1), pos(R,(X-1,Y+1),T+1), isRobot(R), not node(X-1,Y).
fpos(R,(X-1,Y),T) :- pos(R,(X,Y),T-1), pos(R,(X-1,Y-1),T+1), isRobot(R), node(X-1,Y).
fpos(R,(X,Y-1),T) :- pos(R,(X,Y),T-1), pos(R,(X-1,Y-1),T+1), isRobot(R), not node(X-1,Y).

fpos(R,C,T) :- pos(R,C,T).

%## get final occurs
occurs(object(robot,R),action(move,(X1-X2,Y1-Y2)),T) :- fpos(robot(R),(X1,Y1),T), fpos(robot(R),(X2,Y2),T-1), 1{X1!=X2; Y1!=Y2}1, reftime(T).
#show occurs/3.

%## TODO
%- test diagonal step




