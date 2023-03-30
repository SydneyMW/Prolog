/* SUM DIGITS OF 4-DIGIT INT */
/* Get input string and convert to int */
sumInput(String,Sum) :- atom_chars(String,List), 
    sumDigits(List,Sum).

/* BASE CASE: one char string sum */
sumDigits([H],Sum) :- atom_number(H, Num),
    Sum is Num.

/* RECURSION */
sumDigits([H|T],Sum) :- atom_number(H,Num),
    sumDigits(T,Rest),
    Sum is Num + Rest.


