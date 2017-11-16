% Wykonane zadanie
killer(butch).
married(mia, marcellus).
dead(zed).
kills(marcellus, X) :- givesFootMassage(X, mia).
loves(mia, X) :- goodDancer(X).
eats(jules, X) :- nutritious(X) ; tasty(X).

% Dane do testu zadania

tasty(banana).
nutritious(steak).
goodDancer(jules).
givesFootMassage(fred, mia).
givesFootMassage(bob, lena).
