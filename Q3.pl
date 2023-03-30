sum(Sum) :- sum(10,Sum).
sum(1,Term) :- term(1,Term).

sum(N, Total) :-
    N1 is N-1,
    term(N,Term),
    sum(N1, SmallerSum),
    Total is SmallerSum+Term.
    
term(I,Term) :- 
    Term1 is (-1)**((3*I)+2),
    Term2 is I**3,
    Term is Term1*Term2.
    