/* Reverse order of list, call print */
doReverse(L) :- reverse(L, LNew), printAll(LNew).

/* Base case: reversing empty list gives [] */
reverse([],[]).
/* Recursive step: swap head and tail */
reverse([H|T],NewList) :- reversing(T,[H],NewList).
reversing([],X,X).
reversing([H|T],X,NewList) :- reversing(T,[H|X],NewList).

/* Prints list from start to end */
printAll([]).
printAll([Head|L]) :- write(Head),nl, printAll(L).

/* Once user has entered 0, we have [0|L], 
 * print only the tail without 0, list L */
readInt([0|L]) :- doReverse(L).

/* While user enters numbers,
 * append to list and prompt for next num */
readInt(L) :- read(Number), NewL = [Number|L], readInt(NewL).

/* If initial int is nonzero, initialize list [Number] */
readInt :- read(Number), Number =\= 0, L = [Number|[]], readInt(L).
