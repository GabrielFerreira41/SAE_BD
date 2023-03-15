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
            SELECT DISTINCT a.villeA
            FROM VOL v
            JOIN AEROPORT a ON v.AeroportARR = a.nomA
            JOIN AEROPORT b ON v.AeroportDEP = b.nomA
            JOIN AEROPORT c ON v.AeroportDEP = a.nomA
            WHERE b.villeA = 'Paris';

--     (c) En consid ́erant les horaires des vols, veuillez fournir la liste des villes accessibles
-- depuis Paris avec un vol comprenant DEUX correspondances.




--     (d) Veuillez fournir la liste des villes accessibles depuis Paris, en tenant compte des
-- horaires de vol, avec des vols directs ou un nombre quelconque de correspondances


    

    