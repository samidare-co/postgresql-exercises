\echo requete 1 : 
SELECT * FROM tournois ; 
SELECT * FROM matchs; 
SELECT * FROM equipes ; 
SELECT * FROM participation;

\echo requete 2 : 
SELECT annee FROM tournois WHERE nom = 'Coupe du Monde' AND pays = 'Nouvelle-Zélande' ;

\echo requete 3 : 
SELECT pays FROM equipes WHERE nom = 'XV de France' ;

\echo requete 4 : 
SELECT DISTINCT equipes.eid FROM matchs JOIN equipes ON matchs.gagnant = equipes.eid; 

\echo ------------
\echo Partie 2 
\echo requete 1 
SELECT DISTINCT equipes.nom FROM matchs JOIN equipes ON matchs.gagnant = equipes.eid; 

\echo requete 2
SELECT tournois.nom, tournois.annee FROM tournois JOIN matchs ON matchs.tournois = tournois.tid WHERE matchs.perdant = 2 ; 

\echo requete 3 
SELECT matchs.mid FROM matchs JOIN equipes ON equipes.eid = matchs.perdant WHERE equipes.nom = 'Wallabies';  

\echo requete 4 
SELECT matchs.mid FROM matchs JOIN equipes ON equipes.eid = matchs.perdant OR equipes.eid = matchs.gagnant WHERE equipes.nom = 'All Blacks' ;

\echo requete 5 
SELECT equipes.eid FROM equipes JOIN participation ON participation.eid = equipes.eid JOIN tournois ON participation.tid = tournois.tid WHERE tournois.annee = 1991; 

\echo ----- 
\echo Partie 3 
\echo requete 1 
SELECT equipes.nom FROM equipes JOIN participation ON participation.eid = equipes.eid JOIN tournois ON participation.tid = tournois.tid WHERE tournois.annee = 1991; 

\echo requete 2 
SELECT tournois.nom, tournois.annee FROM tournois JOIN matchs ON matchs.tournois =tournois.tid JOIN equipes ON equipes.eid = matchs.perdant WHERE equipes.nom = 'XV de France' ; 


\echo requete 3 
SELECT equipes.nom, tournois.annee FROM matchs JOIN tournois on matchs.tournois = tournois.tid JOIN equipes ON equipes.eid = matchs.gagnant WHERE tour = 'finale'; 

\echo requete 4 
SELECT DISTINCT equipes.nom FROM equipes JOIN matchs m1 ON m1.gagnant = equipes.eid JOIN matchs m2 ON m2.perdant = equipes.eid WHERE m1.gagnant = m2.perdant AND m1.tournois = m2.tournois ; 

\echo requete 5
SELECT equipes.nom FROM equipes JOIN matchs ON matchs.gagnant = equipes.eid OR matchs.perdant = equipes.eid WHERE matchs.tour = 'finale' GROUP BY equipes.nom HAVING COUNT(*)>=2;  

\echo -------
\echo Partie 4 
\echo requete 1

SELECT equipes.nom FROM equipes WHERE pays NOT IN (SELECT pays FROM tournois WHERE tournois.nom = 'Coupe du Monde'); 

\echo requete 2

SELECT equipes.nom FROM equipes WHERE eid NOT IN (SELECT gagnant,perdant FROM matchs WHERE tour ='finale') ; 

\echo requete 3 
SELECT t1.nom, t1.annee FROM tournois t1 JOIN matchs m1 ON m1.tournois = t1.tid JOIN equipes ON equipes.eid = m1.perdant WHERE equipes.nom = 'XV de France' AND equipes.eid NOT IN (SELECT gagnant FROM matchs m2 WHERE m2.tournois= m1.tournois); 
