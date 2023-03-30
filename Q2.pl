
bigsmall(L,Min2,Max2) :- sort(L,LSort), 
    small(LSort,Min2), large(LSort,Max2).

small(L,NewSmallest) :-
    min_member(Smallest,L),
    delete(L, Smallest, NewL),
    min_member(NewSmallest,NewL).

large(L,NewLargest) :-
    max_member(Largest,L),
    delete(L, Largest, NewL),
    max_member(NewLargest,NewL).