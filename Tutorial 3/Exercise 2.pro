% Zadanie z matrioszkami. np olga jest bezpośrednio w katarinie
directlyIn(olga, katarina).
directlyIn(natasha, olga).
directlyIn(irina, natasha).

in(X,Y) :- directlyIn(X,Y).
in(X,Y) :- directlyIn(X,Z), in(Z,Y).

% Ćwiczenie 3.3 jest analogiczne do tego
