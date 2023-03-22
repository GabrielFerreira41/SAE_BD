
-- Pour chaque vol, donner le nombre de personnes de l’ équipage, par fonction en requete oracle
SELECT numVol, fonctionE, COUNT(*) as nb_personnes
FROM VOL, TABLE(Equipage) e
GROUP BY numVol, fonctionE;