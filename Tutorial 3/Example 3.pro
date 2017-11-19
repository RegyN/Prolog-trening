numeral(0).
numeral(succ(X))  :-  numeral(X).

add(0, Y, Y).  % Trzeci argument to wynik.
add(succ(X), Y, succ(Z)) :- add(X, Y, Z).
