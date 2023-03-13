DROP TABLE VOL;
DROP TABLE TERMINAL;
DROP TABLE AEROPORT;
DROP TABLE COMPAGNIE;

create table COMPAGNIE(
    codeC INT(9) PRIMARY KEY,
    nomC VARCHAR(100),
    siegesocialC VARCHAR(100)
);

create table AEROPORT(
    nomA VARCHAR(100) PRIMARY KEY,
    paysA VARCHAR(100),
    villeA VARCHAR(100)
);

create table TERMINAL(
    idTerminal INT(9) PRIMARY KEY,
    nomA VARCHAR(100),
    numTerminal VARCHAR(20)
);

create table VOL(
    numVol INT(9),
    dateheureDEP DATE,
    dateheureARR DATE,
    codeC INT(9),
    AeroportDEP VARCHAR(100),
    AeroportARR VARCHAR(100),
    terminalDEP INT(9),
    terminalARR INT(9),
    PRIMARY KEY (numVol, dateheureDEP, codeC)
);

ALTER TABLE VOL ADD FOREIGN KEY (CodeC) REFERENCES COMPAGNIE(CodeC);
ALTER TABLE TERMINAL ADD FOREIGN KEY (nomA) REFERENCES AEROPORT(nomA);
ALTER TABLE VOL ADD FOREIGN KEY (AeroportDEP) REFERENCES AEROPORT(nomA);
ALTER TABLE VOL ADD FOREIGN KEY (AeroportARR) REFERENCES AEROPORT(nomA);
ALTER TABLE VOL ADD FOREIGN KEY (terminalDEP) REFERENCES TERMINAL(idTerminal);
ALTER TABLE VOL ADD FOREIGN KEY (terminalARR) REFERENCES TERMINAL(idTerminal);