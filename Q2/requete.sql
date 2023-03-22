
-- Pour chaque vol, donner le nombre de personnes de l’ équipage, par fonction en requete oracle
SELECT numVol, fonctionE, COUNT(*) as nb_personnes
FROM VOL, TABLE(Equipage) e
GROUP BY numVol, fonctionE;

-- Pour chaque pilote, indiquer combien des vols lui sont associ ́es.

select nomE,count(*) as nombre_vol
From VOL, TABLE(Equipage) e
Where fonctionE='conducteur'
group BY nomE;