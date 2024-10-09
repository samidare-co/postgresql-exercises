\echo "Question a" 
SELECT DISTINCT annaiss, nom FROM joueurtennis JOIN rencontre r ON r.nugagnant = joueurtennis.nujoueur OR r.nuperdant = joueurtennis.nujoueur WHERE r.annee = 1994 AND r.lieutournoi = 'Roland Garros';   

\echo "Question b" 
SELECT DISTINCT nom, nationalite FROM joueurtennis JOIN rencontre r1 ON r1.nugagnant = joueurtennis.nujoueur OR r1.nuperdant = joueurtennis.nujoueur JOIN rencontre r2 ON r2.nugagnant = joueurtennis.nujoueur OR r2.nuperdant = joueurtennis.nujoueur WHERE (r1.annee =1992 AND r1.lieutournoi = 'Roland Garros') AND (r2.annee= 1992 AND r2.lieutournoi = 'Wimbledon'); 

\echo "Question c" 
SELECT DISTINCT nom, nationalite FROM joueurtennis JOIN gain ON gain.nujoueur = joueurtennis.nujoueur JOIN rencontre ON rencontre.nugagnant = joueurtennis.nujoueur WHERE sponsor = 'Peugeot' and rencontre.lieutournoi = 'Roland Garros' ;

\echo "Question e" 
SELECT DISTINCT nom, lieutournoi, annee FROM joueurtennis jt JOIN rencontre r ON r.nugagnant = jt.nujoueur ; 

\echo "Question g" 
SELECT COUNT(*) FROM rencontre ; 

\echo "Question h" 
SELECT lieutournoi, annee, COUNT(nugagnant) FROM rencontre GROUP BY lieutournoi, annee; 
