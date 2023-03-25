MATCH (a1:AEROPORT {villeA: 'Paris'})-[:DEPART]->(v1:VOL)-[:ARRIVE]->(a2:AEROPORT)return a2



MATCH (a:AEROPORT {villeA: 'Paris'})-[:DEPART]->(:VOL)-[:ARRIVE]->(a2:AEROPORT)
WITH collect(a2) AS aList
MATCH (a)-[:DEPART]->(:VOL)-[:ARRIVE]->(a3:AEROPORT) 
RETURN collect(a2)