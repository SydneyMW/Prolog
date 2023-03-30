/* snow is the precipitation of freezing weather */
precip(snow,freezing).
/* rain is the precipiation of non-freezing weather */
precip(rain,notFreezing).

/* the current precipitation is snow */
currPrecip(snow).

/* get temperature based on current precipitation */
currTemp(Temp) :- precip(Weather,Temp),
    currPrecip(Weather).

/* get precipitation based on current temp */
currWeather(Weather) :- precip(Weather,Temp), 
    currTemp(Temp).