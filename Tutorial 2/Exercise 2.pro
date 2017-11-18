% Here are six Italian words
% They are to be arranged, crossword puzzle fashion
  word(astante,  a,s,t,a,n,t,e).
  word(astoria,  a,s,t,o,r,i,a).
  word(baratto,  b,a,r,a,t,t,o).
  word(cobalto,  c,o,b,a,l,t,o).
  word(pistola,  p,i,s,t,o,l,a).
  word(statale,  s,t,a,t,a,l,e).

% Write a predicate crossword/6 that tells us how to fill in the grid.

% Mój predykat
  cross(W1, W2, W3, W4, W5, W6) :-
    word(W1,_,X1Y1,_,X2Y1,_,X3Y1,_), word(W4,_,X1Y1,_,X1Y2,_,X1Y3,_),
    word(W2,_,X1Y2,_,X2Y2,_,X3Y2,_), word(W5,_,X2Y1,_,X2Y2,_,X2Y3,_),
    word(W3,_,X1Y3,_,X2Y3,_,X3Y3,_), word(W6,_,X3Y1,_,X3Y2,_,X3Y3,_).
