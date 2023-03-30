/* gcd(u and v) is:
 * the number x such that x|u and x|v, and
 * given any y such that y|u and y|v,
 * then y|x.
 */

/* BASE CASE: gcd of any U and 0 is U; terminate */
gcd(0, U, U):- U > 0, !.

/* RECURSIVE CASES: */
/* If U >= V
 * Let D = U - V (D represents difference)
 * Find the gcd of D and V
 * Assign it to X
 * */
gcd(U, V, X):- U >= V, D is U - V, gcd(D,V,X).

/* If U < V
 * Let D = V - U (D represents difference)
 * Find the gcd of D and U
 * Assign it to X
 * */
gcd(U, V, X):- U < V, D is V - U, gcd(D,U,X).