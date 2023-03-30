/* Initiate iteration from (N -> 1) */
fact(N,R) :- fact(N,1,R).

/* Terminate iteration if N reaches 0, 
 * Final product will match Prod */
fact(0,Prod,Prod) :- !.

/* RECURSIVE STEP:
 * Multiply current product by current N (N*Prod)
 * Store new product (NewProd)
 * Decrement N to N-1 (N1)
 * Pass N-1 and new product to recursive step
 * */
fact(N, Prod, R) :-
    N1 is N-1,
    NewProd is Prod*N,
    fact(N1,NewProd,R).