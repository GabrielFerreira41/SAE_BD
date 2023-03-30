compagnie(1, airfrance, paris).
compagnie(2, aircanada, pontréal).
compagnie(3, airportugal, lisbonne).
compagnie(4, airangletere, londre).
compagnie(5, airespagne, madrid).

aeroport(orly, france, paris).
aeroport(francisci-sa-carneiro, portugal, porto).
aeroport(charles-de-gaule, france, paris).
aeroport(antonio-carlos-jobim, bresil, rio).
aeroport(pierre-eliot-trudeau, canada, montréal).
aeroport(adolfo-Suárez-de-madrid-barajas, espagne, madrid).
aeroport(londres-heathrow,angletere, londres).

terminal(1e, orly).
terminal(2e, orly).
terminal(3e, orly).
terminal(4e, orly).
terminal(5e, orly).
terminal(1f, francisci-sa-carneiro).
terminal(2f, francisci-sa-carneiro).
terminal(3f, francisci-sa-carneiro).
terminal(1c, charles-de-gaule).
terminal(2c, charles-de-gaule).
terminal(3c, charles-de-gaule).
terminal(4c, charles-de-gaule).
terminal(5c, charles-de-gaule).
terminal(1, antonio-carlos-jobim).
terminal(2, antonio-carlos-jobim).
terminal(3, antonio-carlos-jobim).
terminal(4, antonio-carlos-jobim).
terminal(5, antonio-carlos-jobim).
terminal(1m, pierre-eliot-trudeau).
terminal(2m, pierre-eliot-trudeau).
terminal(3m, pierre-eliot-trudeau).
terminal(4m, pierre-eliot-trudeau).
terminal(5m, pierre-eliot-trudeau).
terminal(1eS, adolfo-Suárez-de-madrid-barajas).
terminal(2eS, adolfo-Suárez-de-madrid-barajas).
terminal(3eS, adolfo-Suárez-de-madrid-barajas).
terminal(4eS, adolfo-Suárez-de-madrid-barajas).
terminal(5eS, adolfo-Suárez-de-madrid-barajas).
terminal(1a, londres-heathrow).
terminal(2a, londres-heathrow).
terminal(3a, londres-heathrow).
terminal(4a, londres-heathrow).
terminal(5a, londres-heathrow).


vol(0442, 23, 05, 1,charles-de-gaule,antonio-carlos-jobim,2c,1).
vol(0443,10,01,1,antonio-carlos-jobim,francisci-sa-carneiro,1,1f).
vol(0444,05,20,1,francisci-sa-carneiro,pierre-eliot-trudeau,1f,1m).
vol(0445,05,07,1,adolfo-Suárez-de-madrid-barajas,londres-heathrow,1eS,1a).
vol(0446,08,10,1,londres-heathrow,adolfo-Suárez-de-madrid-barajas,1a,1eS).

vol_possible(X, Y,A) :- vol(_, _, _, A, X, Y, _, _).
vol_possible(X, Y,A) :- vol(_, _,D, _, X, Z, _, _), vol_possible(Z, Y,A), Y != X.

ville_possible(D,A) :- vol_possible(X,Y,_),aeroport(X,_,D),aeroport(Y,_,A).