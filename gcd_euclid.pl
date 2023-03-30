/* gcd of any U and 0 is U */
gcd(U, 0, U).
/* gcd of any U and nonzero V is some W */
/* gcd of V and (U mod V) is also W */
gcd(U, V, W) :-
 not(V = 0) , R is U mod V, gcd(V, R, W).