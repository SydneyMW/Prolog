/* Verify triple:
 * let A = X^2, B = Y^2, C = Z^2
 * Let D = C - B - A
 * Ensure D = 0
 * */
triple(X,Y,Z) :- A is X*X, 
    B is Y*Y,
    C is Z*Z,
    D is C - A - B,
    D = 0.

/* Define valid integers:
 * Ensure 1 <= X, Y <= Z, Z <= 100
 * Ensure X, Y, Z is a triple
 * To avoid repeats, add "X =< Y,"
 * */
valid(X,Y,Z) :- 1 =< X,Y =< Z, Z =< 100,
    triple(X,Y,Z).

/* Print X Y Z if they are a valid triple */
printt(X,Y,Z) :- valid(X,Y,Z), write(X), 
    write(" "), write(Y),
    write(" "), write(Z), nl.

/* Simulate for loop: for(X,Min,Max)
 * Cut when X == Min == Max
 * Succeed/execute when X == Min != Max
 * Increment through Min values 
 * to execute all valid loop iterations
 * */
for(X, X, X) :- !.
for(X, X, _).
for(X, Min, Max) :- Min1 is Min+1,
    for(X, Min1, Max).

/* Print all triples between Min and Max: */
printall(Min,Max) :- for(X,Min,Max),
    for(Y,Min,Max),
    for(Z,Min,Max),
    printt(X,Y,Z).

