 % Define a predicate greater_than/2 that takes two numerals
 % in the notation 0, succ(0), succ(succ(0)), and so on as
 % arguments and decides whether the first one is greater
 % than the second one.

greater_than(succ(X), 0).
greater_than(succ(X), succ(Y)) :- greater_than(X,Y).
