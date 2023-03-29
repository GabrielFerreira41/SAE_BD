MATCH (a1:AEROPORT {villeA: 'Paris'})-[:DEPART]->(v1:VOL)-[:ARRIVE]->(a2:AEROPORT)return a2


-- 1
MATCH (a1:AEROPORT {villeA: 'Paris'})-[:ITINERAIRE*]->(v1:VOL)-[:ITINERAIRE*]->(a2:AEROPORT)return distinct a2
MATCH (a1:AEROPORT {villeA: 'Paris'})-[:ITINERAIRE*]->(v1:VOL)-[:ITINERAIRE*]->(a2:AEROPORT) WITH v1 MATCH (adep:AEROPORT)-[:ITINERAIRE]->(v1)-[:ITINERAIRE]->(aarr:AEROPORT) return distinct adep, v1.numVol, aarr

-- 2 
MATCH (aeroinit:AEROPORT {villeA: 'Paris'})-[:ITINERAIRE]->(v:VOL)-[:ITINERAIRE]->(aerofin:AEROPORT)
return distinct aeroinit as depart,aerofin as arrive 

UNION ALL 
MATCH (a1:AEROPORT {villeA: 'Paris'})-[:ITINERAIRE*]->(v1:VOL)-[:ITINERAIRE*]->(a2:AEROPORT)  
WITH v1 MATCH (adep:AEROPORT)-[:ITINERAIRE]->(v1)-[:ITINERAIRE]->(aarr:AEROPORT)-[:ITINERAIRE]->(v2:VOL)-[:ITINERAIRE]->(arrive:AEROPORT) 
where v1.dateheureARR<v2.dateheureDEP return distinct aarr as depart,arrive

-- 3
MATCH (a1:AEROPORT {villeA: 'Paris'})-[:ITINERAIRE*]->(v1:VOL)-[:ITINERAIRE*]->(a2:AEROPORT) WITH v1 MATCH (adep:AEROPORT)-[:ITINERAIRE]->(v1)-[:ITINERAIRE]->(aarr:AEROPORT)-[:ITINERAIRE]->(v2:VOL) where v1.dateheureARR<v2.dateheureDEP with adep, v1, aarr, v2 MATCH (aaa:AEROPORT) where adep.villeA<>'Paris' and (aaa=adep or aaa=aarr) return distinct aaa.nomA as villeintermediaire