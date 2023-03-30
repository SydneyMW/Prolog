/* Recursively compute R = X^N */

/* BASE CASES */
power(_,0,1) :- !.  /* X^0 = 1 */
power(X,1,X) :- !.  /* X^1 = X */

/* RECURSIVE CASE */
power(X,N,R) :- N1 is N - 1, 
    power(X,N1,R1),
    R is X*R1, !.