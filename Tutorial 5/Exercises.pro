% 5.2 Predykat /2 który jest prawdziwy tylko gdy drugi argument jest większy
%     o 1 niż pierwszy.
increment(X,Y) :- Y is X + 1.

% 5.2b Pred. /3 prawdziwy tylko, gdy trzeci argument jest sumą dwóch pierw.
sum(A,B,S) :- S is A + B.

% 5.3 Pred. /2, którego 1-szy arg. to lista liczb, a drugi to lista liczb
%     uzyskanych przez dodanie 1 do każdej liczby z listy 1-szej.
addone([], List2) :- List2 = [].
addone(List1, List2) :-
  List1 = [H1|T1],
  H2 is H1+1,
  List2 = [H2|T2],
  addone(T1,T2).
