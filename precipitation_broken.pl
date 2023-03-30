/* If it is raining or snowing, then there is precipitation. */
precipitation('rain').
precipitation('snow').

/* If it is freezing and there is precipitation, then it is snowing. */
snowing(X) :- freezing(X), precipitation(X).
/* If it is not freezing and there is precipitation, then it is raining. */
raining(X) :- notFreezing(X), precipitation(X).

/* It is snowing */
snowing(Y).