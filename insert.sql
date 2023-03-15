INSERT INTO COMPAGNIE values (1,'Air France','Paris');
INSERT INTO COMPAGNIE values (2,'Air Canada','Montréal');
INSERT INTO COMPAGNIE values (3,'Air Portugal','Lisbonne');


INSERT INTO AEROPORT values ('Orly','France','Paris');
INSERT INTO AEROPORT values ('Francisci sa carneiro','Portugal','Porto');
INSERT INTO AEROPORT values ('Charles de Gaulle','France','Paris');
INSERT INTO AEROPORT values ('Antonio Carlos Jobim','Bresil','Rio');


INSERT INTO TERMINAL values ('1E','Orly');
INSERT INTO TERMINAL values ('2E','Orly');
INSERT INTO TERMINAL values ('3E','Orly');
INSERT INTO TERMINAL values ('4E','Orly');
INSERT INTO TERMINAL values ('5E','Orly');
INSERT INTO TERMINAL values ('1F','Francisci sa carneiro');
INSERT INTO TERMINAL values ('2F','Francisci sa carneiro');
INSERT INTO TERMINAL values ('3F','Francisci sa carneiro');
INSERT INTO TERMINAL values ('1C','Charles de Gaulle');
INSERT INTO TERMINAL values ('2C','Charles de Gaulle');
INSERT INTO TERMINAL values ('3C','Charles de Gaulle');
INSERT INTO TERMINAL values ('4C','Charles de Gaulle');
INSERT INTO TERMINAL values ('5C','Charles de Gaulle');
INSERT INTO TERMINAL values ('1','Antonio Carlos Jobim');
INSERT INTO TERMINAL values ('2','Antonio Carlos Jobim');
INSERT INTO TERMINAL values ('3','Antonio Carlos Jobim');
INSERT INTO TERMINAL values ('4','Antonio Carlos Jobim');
INSERT INTO TERMINAL values ('5','Antonio Carlos Jobim');


INSERT INTO VOL values (0442,TO_DATE('2023-07-10 23:30:00', 'YYYY-MM-DD HH24:MI:SS'),TO_DATE('2023-07-11 05:30:00', 'YYYY-MM-DD HH24:MI:SS'),1,'Charles de Gaulle','Antonio Carlos Jobim','2C','1');
INSERT INTO VOL values (0443,TO_DATE('2023-07-11 10:30:00', 'YYYY-MM-DD HH24:MI:SS'),TO_DATE('2023-07-12 01:30:00', 'YYYY-MM-DD HH24:MI:SS'),1,'Antonio Carlos Jobim','Francisci sa carneiro','1','1F');


