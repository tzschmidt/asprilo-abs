%############# Authors #############
% Tom Schmidt
%

%############# Usage #############
% has to be used with valid input file

%############# Prep #############
node(X,Y) :- init(object(node,N),value(at,(X,Y))).

%############# Tunnels #############
redu((X,Y),h) :- not node(X,Y-1), not node(X,Y+1), node(X,Y).
redu((X,Y),v) :- not node(X-1,Y), not node(X+1,Y), node(X,Y).

abschain(h,Y,X,0) :- redu((X,Y),h), not redu((X-1,Y),h).
abschain(h,Y,X,C+1) :- redu((X+C+1,Y),h), abschain(h,Y,X,C).
abs(h,Y,(X,X+C)) :- abschain(h,Y,X,0), abschain(h,Y,X,C), not abschain(h,Y,X,C+1).

abschain(v,X,Y,0) :- redu((X,Y),v), not redu((X,Y-1),v).
abschain(v,X,Y,C+1) :- redu((X,Y+C+1),v), abschain(v,X,Y,C).
abs(v,X,(Y,Y+C)) :- abschain(v,X,Y,0), abschain(v,X,Y,C), not abschain(v,X,Y,C+1).

% contains lonely redu nodes


%############# Output #############
%#show abs/3.