MATCH (a1:AEROPORT {villeA: 'Paris'})-[:DEPART]->(v1:VOL)-[:ARRIVE]->(a2:AEROPORT)return a2


-- 1
MATCH (a1:AEROPORT {villeA: 'Paris'})-[:ITINERAIRE*]->(v1:VOL)-[:ITINERAIRE*]->(a2:AEROPORT)return distinct a2

-- 2 
MATCH (a1:AEROPORT {villeA: 'Paris'})-[:ITINERAIRE*]->(v1:VOL)-[:ITINERAIRE*]->(a2:AEROPORT) where v1.dateheureARR<v1.dateheureDEP return distinct a2