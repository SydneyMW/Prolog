/* MAX ONLY
readInt :- read(Num), printMax(Num), readInt(Num).

printMax(Num) :- write(Num).
printMax(Num1,Num2,Num1) :- Num1 > Num2, !, write(Num1).
printMax(Num1,Num2,Num2) :- Num1 =< Num2, !, write(Num2).

readInt(Num1) :- read(Num2), printMax(Num1,Num2,Max), readInt(Max).
*/

/* MAX AND MIN */
readInt :- read(Num), 
    printMax(Num), printMin(Num),
    readInt(Num,Num).

printMax(Num) :- write('Current Max: '),
    write(Num),nl.
printMax(Num1,Num2,Num1) :- Num1 > Num2, !, 
    write('Current Max: '), write(Num1),nl.
printMax(Num1,Num2,Num2) :- Num1 =< Num2, !, 
    write('Current Max: '), write(Num2),nl.

printMin(Num) :- write('Current Min: '), 
    write(Num),nl.
printMin(Num1,Num2,Num1) :- Num1 =< Num2, !, 
    write('Current Min: '), write(Num1),nl.
printMin(Num1,Num2,Num2) :- Num1 > Num2, !, 
    write('Current Min: '), write(Num2),nl.

readInt(OldMax,OldMin) :- read(Number), 
    printMax(OldMax,Number,NewMax), 
    printMin(OldMin,Number,NewMin),
    readInt(NewMax,NewMin).
