% Now, define a predicate swap/2 , which produces the mirror image of
% the binary tree that is its first argument. For example:
% swap(tree(tree(leaf(1),  leaf(2)),  leaf(4)),T).
% T  =  tree(leaf(4),  tree(leaf(2),  leaf(1))).

swap(leaf(X), leaf(X)).
swap(tree(A,B), T) :- swap(A, T1), swap(B, T2), T = tree(T2, T1).
