CREATE (c1:COMPAGNIE {name: 'Air France', codeC: 1, nomC: 'Air France', siegesocialC: 'Paris'})
CREATE (c2:COMPAGNIE {name: 'Air Canada', codeC: 2, nomC: 'Air Canada', siegesocialC: 'Montréal'})
CREATE (c3:COMPAGNIE {name: 'Air Portugal', codeC: 3, nomC: 'Air Portugal', siegesocialC: 'Lisbonne'})
CREATE (c4:COMPAGNIE {name: 'Air Angleterre', codeC: 4, nomC: 'Air Angleterre', siegesocialC: 'Londre'})
CREATE (c5:COMPAGNIE {name: 'Air Espagne', codeC: 5, nomC: 'Air Espagne', siegesocialC: 'Madrid'})

CREATE (a1:AEROPORT {nomA: 'Orly', paysA: 'France', villeA: 'Paris'})
CREATE (a2:AEROPORT {nomA: 'Francisci sa carneiro', paysA: 'Portugal', villeA: 'Porto'})
CREATE (a3:AEROPORT {nomA: 'Charles de Gaulle', paysA: 'France', villeA: 'Paris'})
CREATE (a4:AEROPORT {nomA: 'Antonio Carlos Jobim', paysA: 'Bresil', villeA: 'Rio'})
CREATE (a5:AEROPORT {nomA: 'Pierre-Elliott-Trudeau', paysA: 'Canada', villeA: 'Montréal'})
CREATE (a6:AEROPORT {nomA: 'Adolfo-Suárez de Madrid-Barajas', paysA: 'Espagne', villeA: 'Madrid'})
CREATE (a7:AEROPORT {nomA: 'Londres Heathrow', paysA: 'Angleterre', villeA: 'Londres'})


CREATE (t1e:TERMINAL {name: '1E'})
CREATE (t2e:TERMINAL {name: '2E'})
CREATE (t3e:TERMINAL {name: '3E'})
CREATE (t4e:TERMINAL {name: '4E'})
CREATE (t5e:TERMINAL {name: '5E'})
CREATE (a1)-[:TERMINAL]->(t1e)
CREATE (a1)-[:TERMINAL]->(t2e)
CREATE (a1)-[:TERMINAL]->(t3e)
CREATE (a1)-[:TERMINAL]->(t4e)
CREATE (a1)-[:TERMINAL]->(t5e)

CREATE (t1f:TERMINAL {name: '1F'})
CREATE (t2f:TERMINAL {name: '2F'})
CREATE (t3f:TERMINAL {name: '3F'})
CREATE (a2)-[:H2S_TERMINAL]->(t1f)
CREATE (a2)-[:HA2S_TERMINAL]->(t2f)
CREATE (a2)-[:HAS2_TERMINAL]->(t3f)

CREATE (t1c:TERMINAL {name: '1C'})
CREATE (t2c:TERMINAL {name: '2C'})
CREATE (t3c:TERMINAL {name: '3C'})
CREATE (t4c:TERMINAL {name: '4C'})
CREATE (t5c:TERMINAL {name: '5C'})
CREATE (a3)-[:TERMINAL]->(t1c)
CREATE (a3)-[:TERMINAL]->(t2c)
CREATE (a3)-[:TERMINAL]->(t3c)
CREATE (a3)-[:TERMINAL]->(t4c)
CREATE (a3)-[:TERMINAL]->(t5c)

CREATE (t1:TERMINAL {name: '1'})
CREATE (t2:TERMINAL {name: '2'})
CREATE (t3:TERMINAL {name: '3'})
CREATE (t4:TERMINAL {name: '4'})
CREATE (t5:TERMINAL {name: '5'})
CREATE (a4)-[:TERMINAL]->(t1)
CREATE (a4)-[:TERMINAL]->(t2)
CREATE (a4)-[:TERMINAL]->(t3)
CREATE (a4)-[:TERMINAL]->(t4)
CREATE (a4)-[:TERMINAL]->(t5)

CREATE (t1m:TERMINAL {name: '1M'})
CREATE (t2m:TERMINAL {name: '2M'})
CREATE (t3m:TERMINAL {name: '3M'})
CREATE (t4m:TERMINAL {name: '4M'})
CREATE (t5m:TERMINAL {name: '5M'})
CREATE (a5)-[:TERMINAL]->(t1m)
CREATE (a5)-[:TERMINAL]->(t2m)
CREATE (a5)-[:TERMINAL]->(t3m)
CREATE (a5)-[:TERMINAL]->(t4m)
CREATE (a5)-[:TERMINAL]->(t5m)

CREATE (t1es:TERMINAL {name: '1ES'})
CREATE (t2es:TERMINAL {name: '2ES'})
CREATE (t3es:TERMINAL {name: '3ES'})
CREATE (t4es:TERMINAL {name: '4ES'})
CREATE (t5es:TERMINAL {name: '5ES'})
CREATE (a6)-[:TERMINAL]->(t1es)
CREATE (a6)-[:TERMINAL]->(t2es)
CREATE (a6)-[:TERMINAL]->(t3es)
CREATE (a6)-[:TERMINAL]->(t4es)
CREATE (a6)-[:TERMINAL]->(t5es)

CREATE (t1a:TERMINAL {name: '1A'})
CREATE (t2a:TERMINAL {name: '2A'})
CREATE (t3a:TERMINAL {name: '3A'})
CREATE (t4a:TERMINAL {name: '4A'})
CREATE (t5a:TERMINAL {name: '5A'})
CREATE (a7)-[:TERMINAL]->(t1a)
CREATE (a7)-[:TERMINAL]->(t2a)
CREATE (a7)-[:TERMINAL]->(t3a)
CREATE (a7)-[:TERMINAL]->(t4a)
CREATE (a7)-[:TERMINAL]->(t5a)


create (v1:VOL {name:'0442', numVol:'0442',dateheureDEP:'2023-07-10 23:30:00',dateheureARR:'2023-07-11 05:30:00'})
CREATE (c1)-[:VOL]->(v1)
CREATE (a3)-[:ITINERAIRE]->(v1)
CREATE (v1)-[:ITINERAIRE]->(a4)


create (v2:VOL {name:'0443', numVol:'0443',dateheureDEP:'2023-07-11 10:30:00',dateheureARR:'2023-07-12 01:30:00'})
CREATE (c1)-[:VOL]->(v2)
CREATE (a4)-[:ITINERAIRE]->(v2)
CREATE (v2)-[:ITINERAIRE]->(a2)


create (v3:VOL {name:'0444', numVol:'0444',dateheureDEP:'2023-07-12 2:30:00',dateheureARR:'2023-07-12 20:30:00'})
CREATE (c1)-[:VOL]->(v3)
CREATE (a2)-[:ITINERAIRE]->(v3)
CREATE (v3)-[:ITINERAIRE]->(a5)


create (v4:VOL {name:'0445', numVol:'0445',dateheureDEP:'2023-07-12 05:30:00',dateheureARR:'2023-07-12 07:30:00'})
CREATE (c1)-[:VOL]->(v4)
CREATE (a6)-[:ITINERAIRE]->(v4)
CREATE (v4)-[:ITINERAIRE]->(a7)


create (v5:VOL {name:'0446', numVol:'0446',dateheureDEP:'2023-07-12 08:30:00',dateheureARR:'2023-07-12 10:30:00'})
CREATE (c1)-[:VOL]->(v5)
CREATE (a7)-[:ITINERAIRE]->(v5)
CREATE (v5)-[:ITINERAIRE]->(a6)

create (v6:VOL {name:'0447', numVol:'0447',dateheureDEP:'2023-07-11 04:30:00',dateheureARR:'2023-07-11 8:30:00'})
CREATE (c1)-[:VOL]->(v6)
CREATE (a4)-[:ITINERAIRE]->(v6)
CREATE (v6)-[:ITINERAIRE]->(a1)


--insert 1 
--Charles de Gaulle: depart aeroport 
--Antonio Carlos Jobim: arrivée aeroport  
--dateheureDEP:'2023-07-10 23:30:00',dateheureARR:'2023-07-11 05:30:00'

--insert 2 
--Antonio Carlos Jobim:depart aeroport 
--Francisci sa carneiro: arrivée aeroport
--dateheureDEP:'2023-07-11 10:30:00',dateheureARR:'2023-07-12 01:30:00'

--insert 3 
--Francisci sa carneiro: depart aeroport
--Pierre-Elliott-Trudeau: arrivée aeroport
--dateheureDEP:'2023-07-12 01:00:00',dateheureARR:'2023-07-12 20:30:00'

--insert 4 
--Adolfo-Suárez de Madrid-Barajas: depart aeroport
--Londres Heathrow:  arrivée aeroport
--dateheureDEP:'2023-07-12 05:30:00',dateheureARR:'2023-07-12 07:30:00'

--insert 5
--Londres Heathrow: depart aeroport
--Adolfo-Suárez de Madrid-Barajas:  arrivée aeroport
--dateheureDEP:'2023-07-12 08:30:00',dateheureARR:'2023-07-12 10:30:00'

--insert 6
--Antonio Carlos Jobim: depart aeroport
--Orly:  arrivée aeroport
--dateheureDEP:'2023-07-12 09:30:00',dateheureARR:'2023-07-12 11:30:00'


