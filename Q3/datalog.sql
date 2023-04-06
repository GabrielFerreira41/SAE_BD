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

inf(0,1).
inf(1,2).
inf(2,3).
inf(3,4).
inf(4,5).
inf(5,6).
inf(6,7).
inf(7,8).
inf(8,9).
inf(9,10).
inf(10,11).
inf(11,12).
inf(12,13).
inf(13,14).
inf(14,15).
inf(15,16).
inf(16,17).
inf(17,18).
inf(18,19).
inf(19,20).
inf(20,21).
inf(21,22).
inf(22,23).
inf(23,24).

inf(X,Y) :- inf(X,Z), inf(Z,Y).

vol(0442,1, 5, 1,charles-de-gaule,antonio-carlos-jobim,2c,1).
vol(0443,6,7,1,antonio-carlos-jobim,francisci-sa-carneiro,1,1f).
vol(0444,5,10,1,francisci-sa-carneiro,pierre-eliot-trudeau,1f,1m).
vol(0445,05,07,1,adolfo-Suárez-de-madrid-barajas,londres-heathrow,1eS,1a).
vol(0446,08,10,1,londres-heathrow,adolfo-Suárez-de-madrid-barajas,1a,1eS).

connected(X, Y, DepartureTime, ArrivalTime) :-
    vol(_, DepartureTime,ArrivalTime , _, X, Y, _, _),
    aeroport(X,_,D),
    aeroport(Y,_,A),
    X!=Y.
    
connected(X, Y, DepartureTime1, ArrivalTime2) :-
    connected(X, Z, DepartureTime1, ArrivalTime1),
    connected(Z, Y, DepartureTime2, ArrivalTime2),
    inf(ArrivalTime1, DepartureTime2),
    X!=Y.


    