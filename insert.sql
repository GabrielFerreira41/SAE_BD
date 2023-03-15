INSERT INTO COMPAGNIE values (1,'Air France','Paris');
INSERT INTO COMPAGNIE values (2,'Air Canada','Montréal');
INSERT INTO COMPAGNIE values (3,'Air Portugal','Lisbonne');
INSERT INTO COMPAGNIE values (4,'Air Angleterre','Londre');
INSERT INTO COMPAGNIE values (5,'Air Espagne','Madrid');


INSERT INTO AEROPORT values ('Orly','France','Paris');
INSERT INTO AEROPORT values ('Francisci sa carneiro','Portugal','Porto');
INSERT INTO AEROPORT values ('Charles de Gaulle','France','Paris');
INSERT INTO AEROPORT values ('Antonio Carlos Jobim','Bresil','Rio');
INSERT INTO AEROPORT values ('Pierre-Elliott-Trudeau','Canada','Montréal');
INSERT INTO AEROPORT values ('Adolfo-Suárez de Madrid-Barajas','Espagne','Madrid');
INSERT INTO AEROPORT values ('Londres Heathrow','Angleterre','Londres');



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
INSERT INTO TERMINAL values ('1M','Pierre-Elliott-Trudeau');
INSERT INTO TERMINAL values ('2M','Pierre-Elliott-Trudeau');
INSERT INTO TERMINAL values ('3M','Pierre-Elliott-Trudeau');
INSERT INTO TERMINAL values ('4M','Pierre-Elliott-Trudeau');
INSERT INTO TERMINAL values ('5M','Pierre-Elliott-Trudeau');
INSERT INTO TERMINAL values ('1ES','Adolfo-Suárez de Madrid-Barajas');
INSERT INTO TERMINAL values ('2ES','Adolfo-Suárez de Madrid-Barajas');
INSERT INTO TERMINAL values ('3ES','Adolfo-Suárez de Madrid-Barajas');
INSERT INTO TERMINAL values ('4ES','Adolfo-Suárez de Madrid-Barajas');
INSERT INTO TERMINAL values ('5ES','Adolfo-Suárez de Madrid-Barajas');
INSERT INTO TERMINAL values ('1A','Londres Heathrow');
INSERT INTO TERMINAL values ('2A','Londres Heathrow');
INSERT INTO TERMINAL values ('3A','Londres Heathrow');
INSERT INTO TERMINAL values ('4A','Londres Heathrow');
INSERT INTO TERMINAL values ('5A','Londres Heathrow');


INSERT INTO VOL values (0442,TO_DATE('2023-07-10 23:30:00', 'YYYY-MM-DD HH24:MI:SS'),TO_DATE('2023-07-11 05:30:00', 'YYYY-MM-DD HH24:MI:SS'),1,'Charles de Gaulle','Antonio Carlos Jobim','2C','1');
INSERT INTO VOL values (0443,TO_DATE('2023-07-11 10:30:00', 'YYYY-MM-DD HH24:MI:SS'),TO_DATE('2023-07-12 01:30:00', 'YYYY-MM-DD HH24:MI:SS'),1,'Antonio Carlos Jobim','Francisci sa carneiro','1','1F');
INSERT INTO VOL values (0444,TO_DATE('2023-07-12 05:30:00', 'YYYY-MM-DD HH24:MI:SS'),TO_DATE('2023-07-12 20:30:00', 'YYYY-MM-DD HH24:MI:SS'),1,'Francisci sa carneiro','Pierre-Elliott-Trudeau','1F','1M');
INSERT INTO VOL values (0445,TO_DATE('2023-07-12 05:30:00', 'YYYY-MM-DD HH24:MI:SS'),TO_DATE('2023-07-12 07:30:00', 'YYYY-MM-DD HH24:MI:SS'),1,'Adolfo-Suárez de Madrid-Barajas','Londres Heathrow','1ES','1A');
INSERT INTO VOL values (0446,TO_DATE('2023-07-12 08:30:00', 'YYYY-MM-DD HH24:MI:SS'),TO_DATE('2023-07-12 10:30:00', 'YYYY-MM-DD HH24:MI:SS'),1,'Londres Heathrow','Adolfo-Suárez de Madrid-Barajas','1A','1ES');



