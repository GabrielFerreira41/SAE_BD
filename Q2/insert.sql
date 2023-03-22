

INSERT INTO VOL values('2556', 
TO_DATE('2023-07-10 23:30:00', 'YYYY-MM-DD HH24:MI:SS'),
TO_DATE('2023-07-11 05:30:00', 'YYYY-MM-DD HH24:MI:SS'), 
'Charles de Gaulle',
'Antonio Carlos Jobim',
equipageTabT(EQUIPAGE('Jean', 'conducteur'), EQUIPAGE('George', 'femme de ménage'),EQUIPAGE('Azid', 'conducteur')),
QUALITES_LIST(QUALITES('securite', 2,5), QUALITES('Carbone', 2,5)) );

INSERT INTO VOL values('2557', TO_DATE('2023-07-12 10:30:00', 'YYYY-MM-DD HH24:MI:SS'),TO_DATE('2023-07-12 12:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Charles de Gaulle','Antonio Carlos Jobim',
equipageTabT(EQUIPAGE('Jean', 'conducteur'), EQUIPAGE('Hugette', 'femme de ménage'),EQUIPAGE('Théo', 'conducteur')),
QUALITES_LIST(QUALITES('securite', 1,5), QUALITES('Carbone', 3,5)) );