
-- Pour chaque vol, donner le nombre de personnes de l’ équipage, par fonction en requete oracle
SELECT numVol, fonctionE, COUNT(*) as nb_personnes
FROM VOL, TABLE(Equipage) e
GROUP BY numVol, fonctionE;


-- Pour chaque pilote, indiquer combien des vols lui sont associ ́es.

select nomE,count(*) as nombre_vol
From VOL, TABLE(Equipage) e
Where fonctionE='conducteur'
group BY nomE;

-- L’impact d’un indice de qualit e est donn ́e par le produit de sa valeur et du poids
-- que lui est attribué. Pour chaque vol, indiquer l’impact de chaque indice de qualité
SELECT numVol, nomQualite, indiceQualite * nb_votes AS impact
FROM VOL, TABLE(IndicesQualite) iq
ORDER BY numVol;

-- Pour chaque indice de qualite, calculer son impact moyen
SELECT nomQualite, AVG(indiceQualite * nb_votes) AS impact_moyen
FROM VOL, TABLE(IndicesQualite) iq
GROUP BY nomQualite;
