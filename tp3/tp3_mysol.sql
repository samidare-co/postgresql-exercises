\echo "1) il n'y a que 4 attributs alors que la table en a 5 car l'attribut id de type Serial s'auto incremente sans avoir besoin de specifier de valeur" 

\echo "2)" 

/*
\echo "4)" 
INSERT INTO tournois VALUES (220, 'Coupe du Monde', 2020, 'France'); 

\echo "5)" 
CREATE TABLE joueurs (
	id SERIAL PRIMARY KEY, 
	nom VARCHAR(255) NOT NULL , 
	prenom VARCHAR(255) NOT NULL , 
	dateDeNaissance timestamp NOT NULL , 
	nationalite VARCHAR(255) NOT NULL  
)
\echo "7)" 
CREATE TABLE joueurEquipes(
	jid INTEGER NOT NULL ,
	eid INTEGER NOT NULL, 
	PRIMARY KEY (jid, eid)
)

\echo "9)" 
--INSERT INTO joueurEquipes VALUES(1,30); 
\echo "Non ce nest pas possible, l'equipe 30 n'existe pas"

\echo "10)" 
--DELETE FROM equipes WHERE nom = 'All Blacks'; 
\echo "Non ce n'est pas possible les colonnes gagnant et perdant referencent la tabla cle primaire de la table equipes"  

\echo "11)" 
ALTER TABLE matchs DROP CONSTRAINT matchs_gagnant_fkey, DROP CONSTRAINT matchs_perdant_fkey, ADD CONSTRAINT matchs_gagnant_fk FOREIGN KEY (gagnant) REFERENCES equipes(eid) ON DELETE CASCADE,ADD CONSTRAINT matchs_perdant_fk FOREIGN KEY (perdant) REFERENCES equipes(eid) ON DELETE CASCADE ;  

\echo "12)"
ALTER TABLE participation DROP CONSTRAINT participation_eid_fkey, ADD CONSTRAINT participation_eid_fkey FOREIGN KEY (eid) REFERENCES equipes (eid) ON DELETE CASCADE;   
ALTER TABLE joueurEquipes DROP CONSTRAINT equipe_fk, ADD CONSTRAINT eid_fk FOREIGN KEY (eid) REFERENCES equipes (eid) ON DELETE CASCADE ; 
\echo "13)"
DELETE FROM equipes WHERE nom = 'All Blacks'; 

*/

\echo "PARTIE 2" 
\echo "1)"

CREATE TABLE routes (
	route_id TEXT NOT NULL PRIMARY KEY, 
	agency_id TEXT NOT NULL,
	route_short_name INT ,
	route_long_name TEXT , 
	route_desc TEXT, 
	route_type INT NOT NULL ,
	route_url TEXT, 
	route_color TEXT, 
	route_text_color TEXT, 
	route_sort_order TEXT
); 


