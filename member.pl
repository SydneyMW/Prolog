/* BASE CASE:
 * If X is the head of a list with any tail _
 * X is a member of the list
 * */
member(X,[X|_]).
/* RECURSIVE STEP:
 * If X is not the head of a list with some tail _
 * Check if X is a member of the list tail _
 * */
member(X,[_|T]) :- member(X,T).