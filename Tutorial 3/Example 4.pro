% Prawie identyczna kopia Example 2 z zamienioną kolejnością predykatów.

child(anne,bridget).
child(bridget,caroline).
child(caroline,donna).
child(donna,emily).

descendant(X,Y)  :-  child(X,Z), descendant(Z,Y).
descendant(X,Y)  :-  child(X,Y).

% Reguła z błędem, która pokazuje że jeśli rekurencja będzie lewostronna,
% to program może nigdy nie zakończyć dziołania.
descendant2(X,Y)  :-  descendant2(Z,Y), child(X,Z).
descendant2(X,Y)  :-  child(X,Y).

% Ostatnia zamiana reguł, działa jeśli Y jest dzieckiem X i tylko w tym
% przypadku, inaczej pętla bez końca.
descendant2(X,Y)  :-  child(X,Y).
descendant2(X,Y)  :-  descendant2(Z,Y), child(X,Z).


% Wniosek - pisać rekurencyjne wywołania tej samej reguły po prawej, nie
% lewej stronie predykatu.
