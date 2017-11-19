child(bridget,caroline).
child(caroline,donna).
child(anne,bridget).
child(donna,emily).

descendant(X,Y) :- child(X,Y).
descendant(X,Y) :- child(X,Z), descendant(Z,Y).
