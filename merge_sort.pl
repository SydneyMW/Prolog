/* MERGESORT: */

/* BASE CASE: sorting empty list returns empty list */
mergeSort([],[]).

/* BASE CASE: sorting a single-element list returns the same list */
mergeSort([X],[X|[]]).

/* RECURSIVE STEP: pass in list L, return sorted list Sorted */
mergeSort(Result, L) :-
    /* Partition the list into parts A and B: */
    /* find length of L and assign to LL */
    length(L,LL),
    /* part A gets length LA = LL // 2 */
    LA is //(LL,2),
    length(A,LA),
    /* part B gets length LB = LL - LA */
    LB is LL - LA,
    length(B,LB),
    /* Ensure that A and B make up partitions of L */
    append(A,B,L),
    /* recursively call MS on A, store result in ASorted */
    mergeSort(ASorted,A),
    /* recursively call MS on B, store result in BSorted */
    mergeSort(BSorted,B),
    /* merge ASorted and BSorted in final result, called Result */
    merge(Result,ASorted,BSorted).

/* MERGE: */

/* BASE CASE: List L and empty list [] becomes L*/
merge(L,[],L).
merge([],L,L).

/* RECURSIVE STEP:
 * Check first elements (smallest of list A, B)
 * If MinA <= MinB, new list starts with minA
 * Then call merge on the rest of ListA and [B,the rest of list B]
 * */
merge([MinA|Merged],[MinA|ListA],[MinB|ListB]) :-
    MinA =< MinB,
    merge(Merged,ListA,[MinB|ListB]).

/* If minB < minA, new list starts with minB
 * Then call merge on the rest of listB and [A,the rest of list A]
 * */
merge([MinB|Merged],[MinA|ListA],[MinB|ListB]) :-
    MinA > MinB,
    merge(Merged,ListB,[MinA|ListA]).




