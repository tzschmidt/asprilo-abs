%############# Authors #############
% Tom Schmidt
%

ntime(0..horizon).

%## cell transfers
cellcon(R,C,TY,NC,0) :- position(R,C,0), connec(C,NC,TY), position(R,NC,1), isRobot(R).
cellcon(R,C,TY2,NC,T) :- position(R,C,T), connec(C,NC,TY2), position(R,NC,T+1), isRobot(R), time(T).
%cellcon(R,C,w,C,horizon) :- position(R,PC,horizon-1), connec(PC,C,TY), position(R,C,horizon), isRobot(R).

%## robot start positions
pos(robot(R),C,0) :- init1(object(robot,R),value(at,C)).

%## required positions for cell transfers
2{pos(R,(X*2-1,Y*2-1),T*3+2); pos(R,(X*2-1-1,Y*2-1),(T+1)*3)}2 :- cellcon(R,(X,Y),rlt,_,T), isRobot(R), ntime(T).
2{pos(R,(X*2-1,Y*2-1+1),T*3+2); pos(R,(X*2-1-1,Y*2-1+1),(T+1)*3)}2 :- cellcon(R,(X,Y),rlb,_,T), isRobot(R), ntime(T).
2{pos(R,(X*2-1,Y*2-1),T*3+2); pos(R,(X*2-1,Y*2-1-1),(T+1)*3)}2 :- cellcon(R,(X,Y),btl,_,T), isRobot(R), ntime(T).
2{pos(R,(X*2-1+1,Y*2-1),T*3+2); pos(R,(X*2-1+1,Y*2-1-1),(T+1)*3)}2 :- cellcon(R,(X,Y),btr,_,T), isRobot(R), time(T).
2{pos(R,(X*2-1+1,Y*2-1),T*3+2); pos(R,(X*2-1+2,Y*2-1),(T+1)*3)}2 :- cellcon(R,(X,Y),lrt,_,T), isRobot(R), ntime(T).
2{pos(R,(X*2-1+1,Y*2-1+1),T*3+2); pos(R,(X*2-1+2,Y*2-1+1),(T+1)*3)}2 :- cellcon(R,(X,Y),lrb,_,T), isRobot(R), ntime(T).
2{pos(R,(X*2-1,Y*2-1+1),T*3+2); pos(R,(X*2-1,Y*2-1+2),(T+1)*3)}2 :- cellcon(R,(X,Y),tbl,_,T), isRobot(R), time(T).
2{pos(R,(X*2-1+1,Y*2-1+1),T*3+2); pos(R,(X*2-1+1,Y*2-1+2),(T+1)*3)}2 :- cellcon(R,(X,Y),tbr,_,T), isRobot(R), ntime(T).

%## positions for waiting
3{pos(R,C,T*3+1); pos(R,C,T*3+2); pos(R,C,(T+1)*3)}3 :- cellcon(R,_,w,_,T), pos(R,C,T*3), isRobot(R), ntime(T).

%## TODO
- fill inbetween movements
- add movements to shelves
- avoid problems with multiple intersections between cells












