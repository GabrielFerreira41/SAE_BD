-- rlwrap sqlplus ferreira@ora12
-- 3.1 
    -- A Donner les villes que nous pouvons atteindre par vols directs qui partent de Paris
    Select villeA from AEROPORT where nomA in (
        Select l2.nomA
        from l1 VOL l2 VOL
        where l1.
    )

    