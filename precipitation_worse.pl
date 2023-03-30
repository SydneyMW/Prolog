/* if it is raining or snowing, we have precipitation */
precip(X) :- raining(X); snowing(X).

/* if it is freezing and there is precipitation then it is snowing */
snowing(X,Y) :- (freezing(X), precipitation(Y)).

/* if it is not freezing and there is precipitation then it is raining */
raining(X,Y) :- (not(freezing(X)), precipitation(Y)).

/* it is snowing */
precipitation(snowing).