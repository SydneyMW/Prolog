/* Fibonacci Numbers */

/* BASE CASES: 0 and 1 are 0 and 1 */
fibonacci(0,0) :- !.
fibonacci(1,1) :- !.

/* RECURSIVE STEP: fib(n) = fib(n-1) + fib(n-2) */
fibonacci(N,R) :- N1 is N-1, N2 is N-2,
    fibonacci(N1,R1), fibonacci(N2,R2), 
    R is R1 + R2.

/* PRINT BASE CASE: single element array [0] */
do_fib(0,[0]) :- !.

/* PRINT RECURSION: append [n|[n-1|[n-2...[0|[]]]]]*/    
do_fib(N,[H|T]) :- 
    fibonacci(N,H),
    N1 is N-1,
    do_fib(N1,T).