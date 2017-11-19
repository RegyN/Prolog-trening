add_3_and_double(X,Y)  :-  Y  is  (X+3)*2.

% Zmierz długość listy (liczbę elementów).
%   1) Bez użycia akumulatora
len([],0).
len([_|T],N)  :-  len(T,X),  N  is  X+1.
%   2) Przy użyciu akumulatora
accLen([_|T],A,L)  :-    Anew  is  A+1,  accLen(T,Anew,L).
accLen([],A,A).
leng(List,Length)  :-  accLen(List,0,Length).

% Predykat przyjmujący niepustą listę liczb jako arg. 1., a
% zwraca największą liczbę jako arg. ostatni. Używa akumulatora.
accMax([H|T],A,Max)  :-
                    H  >  A,
                    accMax(T,H,Max).
accMax([H|T],A,Max)  :-
                    H  =<  A,
                    accMax(T,A,Max).
accMax([],A,A).

max(List,Max)  :-
                    List  =  [H|_],
                    accMax(List,H,Max).
