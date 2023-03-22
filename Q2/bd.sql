DROP TABLE VOL;
DROP TYPE EQUIPAGE FORCE;
DROP TYPE QUALITES FORCE;
DROP TYPE equipageTabT FORCE;
DROP TYPE QUALITES_LIST FORCE;



create or replace type EQUIPAGE as object(
    nomE VARCHAR2(50),
    fonctionE VARCHAR2(50)
);
/
create type equipageTabT as table of EQUIPAGE;
/
create or replace type QUALITES as object(
    nomQualite VARCHAR2(50),
    indiceQualite NUMBER,
    nb_votes NUMBER
);
/
CREATE TYPE QUALITES_LIST AS VARRAY(10) OF QUALITES;
/
CREATE TABLE VOL(
    numVol NUMBER,
    dateheureDEP DATE,
    dateheureARR DATE,
    AeroportDEP VARCHAR2(100),
    AeroportARR VARCHAR2(100),
    Equipage equipageTabT,
    IndicesQualite QUALITES_LIST,
    CONSTRAINT vol_pk PRIMARY KEY (numVol)
)
nested table Equipage store as Equipage_nt;

INSERT INTO VOL values('2556', TO_DATE('2023-07-10 23:30:00', 'YYYY-MM-DD HH24:MI:SS'),TO_DATE('2023-07-11 05:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Charles de Gaulle','Antonio Carlos Jobim',
    equipageTabT(EQUIPAGE('Jean', 'conducteur'), EQUIPAGE('George', 'femme de ménage')),QUALITES_LIST(QUALITES('securite', 2,5), QUALITES('Carbone', 2,5)) );