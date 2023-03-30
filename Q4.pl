/* Recursively compute R = X^N */

/* BASE CASES */
power(_,0,1) :- !.  		/* X^0 = 1 */
power(X,1,XPos) :- X < 0,   /* X is negative */
    XPos is -1*X, !.	
power(X,1,X) :- X >= 0, !.   /* X^1 = X */

/* RECURSIVE CASES */
power(X,N,R) :- X < 0, !,
    N1 is N - 1,
    XPos is -1*X, 
    power(XPos,N1,R1),
    R is XPos*R1.

power(X,N,R) :- X >= 0, !,
    N1 is N - 1, 
    power(X,N1,R1),
    R is X*R1.