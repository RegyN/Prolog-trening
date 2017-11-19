% 4.3 Sprawdź czy X jest drugim elementem listy
second(X,List) :- List=[_,X|_].

% 4.4 Sprawdź czy List1 jest taka sama jak List2 z zamienionymi 2ma pierwszymi
%     elementami.
swap12(List1,List2) :- List1 = [X,Y|Tail], List2 = [Y,X|Tail].

% 4.5 Napisz predykat tłumaczący listę niemieckich nazw cyfr na angielskie
%     mając daną listę tłumaczeń pojedynczych cyfr.
tran(eins,one).
tran(zwei,two).
tran(drei,three).
tran(vier,four).
tran(fuenf,five).
tran(sechs,six).
tran(sieben,seven).
tran(acht,eight).
tran(neun,nine).

listtran([],E) :- E=[].
listtran(G,E) :- G=[G1|GTail], E = [E1|ETail],
                  tran(G1, E1), listtran(GTail, ETail).

% 4.6 Napisz predykat, którego lewy arg. to lista a prawy to lista
%     składająca się z każdego elementu lewej listy zapisanego podwójnie
twice([], List2) :- List2 = [].
twice(List1,List2) :- List1 = [H1|T1],
                        List2 = [H1, H1|T2],
                        twice(T1, T2).
