:- op(500,xfx,'is_parent_of').
a is_parent_of b. c is_parent_of g. f is_parent_of l. j is_parent_of q.
a is_parent_of c. c is_parent_of h. f is_parent_of m. j is_parent_of r.
a is_parent_of d. c is_parent_of i. h is_parent_of n. j is_parent_of s.
b is_parent_of e. d is_parent_of j. i is_parent_of o. m is_parent_of t.
b is_parent_of f. e is_parent_of k. i is_parent_of p. n is_parent_of u.
n is_parent_of v.

:- op(500,xfx,'is_sibling_of').
X is_sibling_of Y :- Z is_parent_of X,
                     Z is_parent_of Y,
                     X \== Y.

leaf_node(Node) :- \+ Node is_parent_of _.

:-op(500,xfx,'is_at_same_level').
X is_at_same_level X .
X is_at_same_level Y :- W is_parent_of X,
                        Z is_parent_of Y,
                        W is_at_same_level Z.

path(a). %root node
path(Node) :- Parent is_parent_of Node,
              path(Parent),
              write(Parent),
              write(' --> ').


locate(Node) :- path(Node),
                write(Node),
                nl.