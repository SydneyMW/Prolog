/* FACTOR:
 * If some B divides A, A is not prime */
factor(A,B) :- A mod B =:= 0.
factor(A,B) :- 
    B*B < A, 
    B2 is B + 2, 
    factor(A,B2).
/* PRIME BASE CASES */
prime(2).
prime(3).
/* PRIME USING FACTOR */
prime(Num) :- Num>3, Num mod 2 =\= 0, 
    \+ factor(Num,3).  
/* PRIME LIST */
pList(A,B,L) :- 
    A1 is (A//2)*2 + 1, 
    primeList(A1,B,L).
next(2,3) :- !.
next(A,A1) :- A1 is A + 2.
/* CUT CASE: empty */
primeList(A,B,[]) :- A > B, !.
primeList(A,B,[A|L]) :- 
    prime(A), !, 
    next(A,A1), 
    primeList(A1,B,L).
primeList(A,B,L) :- 
    next(A,A1), 
    primeList(A1,B,L).
