-- rlwrap sqlplus ferreira@ora12
-- 3.1 
    -- A Donner les villes que nous pouvons atteindre par vols directs qui partent de Paris
            SELECT DISTINCT a.villeA
            FROM VOL v
            JOIN AEROPORT a ON v.AeroportARR = a.nomA
            JOIN AEROPORT b ON v.AeroportDEP = b.nomA
            WHERE b.villeA = 'Paris';


--     (b) En considerant les horaires des vols, veuillez fournir la liste des villes accessibles
-- depuis Paris avec un vol comprenant UNE correspondance. L’objectif est de per-
-- mettre aux passagers de r ́ealiser leur correspondance.
            SELECT DISTINCT d.villeA
            FROM VOL v
            JOIN AEROPORT a ON v.AeroportDEP = a.nomA
            JOIN AEROPORT b ON v.AeroportARR = b.nomA
            JOIN VOL v2 ON v2.AeroportDEP = b.nomA
            JOIN AEROPORT d ON v2.AeroportARR = d.nomA
            WHERE a.villeA = 'Paris';


--     (c) En consid ́erant les horaires des vols, veuillez fournir la liste des villes accessibles
-- depuis Paris avec un vol comprenant DEUX correspondances.
            SELECT DISTINCT e.villeA
            FROM VOL v
            JOIN AEROPORT a ON v.AeroportDEP = a.nomA
            JOIN AEROPORT b ON v.AeroportARR = b.nomA
            JOIN VOL v2 ON v2.AeroportDEP = b.nomA
            JOIN AEROPORT d ON v2.AeroportARR = d.nomA
            JOIN VOL v3 ON v3.AeroportDEP = d.nomA
            JOIN AEROPORT e ON v3.AeroportARR = e.nomA
            WHERE a.villeA = 'Paris';



--     (d) Veuillez fournir la liste des villes accessibles depuis Paris, en tenant compte des
-- horaires de vol, avec des vols directs ou un nombre quelconque de correspondances

WITH correspondances(villeA) AS (
  SELECT DISTINCT d.villeA
    FROM VOL v
    JOIN AEROPORT a ON v.AeroportDEP = a.nomA
    JOIN AEROPORT b ON v.AeroportARR = b.nomA
    JOIN VOL v2 ON v2.AeroportDEP = b.nomA
    JOIN AEROPORT d ON v2.AeroportARR = d.nomA
    WHERE a.villeA = 'Paris'
)
SELECT villeA
FROM   correspondances;
    

    