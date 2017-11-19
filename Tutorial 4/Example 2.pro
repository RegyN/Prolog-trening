% funkcja a2b ma być true gdy argumentami są 2 listy, pierwsza zaw.
% pewną liczbę znaków a, a druga tyle samo znaków b.

  % Oczywiste, puste listy mają tyle samo znaków.
a2b([],[]).

  % A teraz rekursywnie skracam listy
  % usuwając z pierwszej a, z drugiej b i porównując ogony.
a2b([a|Ta],[b|Tb])  :-  a2b(Ta,Tb).
