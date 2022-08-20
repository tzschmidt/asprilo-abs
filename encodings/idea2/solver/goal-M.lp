%## modified goal-M.lp from asprilo-encodings repo

processed(A,R) :- ordered(O,A), shelved(S,A), isRobot(R), position(S,C,0),
                  position(R,C,horizon).
processed(A)   :- processed(A,R).

:- ordered(O,A), not processed(A).

%## abs
:- not connec(C1,C2), C1!=C2, position(R,C1,T), position(R,C2,T+1), isRobot(R), time(T).
:- not connec(C2,C1), C1!=C2, position(R,C1,T), position(R,C2,T+1), isRobot(R), time(T).