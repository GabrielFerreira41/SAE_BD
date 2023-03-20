
CREATE TYPE EQUIPAGE as object(
    nomE VARCHAR2(50),
    fonctionE VARCHAR2(50)
);

CREATE TYPE QUALITES as object(
    nomQualite VARCHAR2(50),
    indiceQualite NUMBER,
    nb_votes NUMBER
);

CREATE TABLE VOL(
    numVol NUMBER,
    dateheureDEP DATE,
    dateheureARR DATE,
    AeroportDEP VARCHAR2(100),
    AeroportARR VARCHAR2(100),
    Equipage EQUIPAGE,
    IndicesQualite QUALITES,
    CONSTRAINT vol_pk PRIMARY KEY (numVol)
);
