% Zmieniłem nazwę z member na includes, bo member jest wbudowaną w SWI
% Prolog funkcją.

includes(X,[X|T]).
includes(X,[H|T]) :- includes(X,T).

% Czytelniejszą implementacją byłoby:

%   includes(X,[X|_]).
%   includes(X,[_|T]) :- includes(X,T).

% Ignorujemy tu zbędne zmienne, zastępując je '_'
