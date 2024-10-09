\echo Requete 1: \d 
\echo Requete 2 : \d produit \d usine \d magasin \d provenance; 
\echo Requete 3 : 
SELECT DISTINCT ville FROM usine ;
\echo Requete 4 :
SELECT couleur,nom_prod FROM produit; 

\echo Requete 5 : 
SELECT provenance.quantite, produit.ref_prod FROM provenance, produit WHERE provenance.ref_mag= 14 AND provenance.ref_prod = produit.ref_prod ;

\echo Requete 6 : 
SELECT * FROM usine WHERE ville = 'Marseille'; 

\echo Requete 7 :
SELECT ref_mag FROM provenance WHERE ref_usine = 109 AND ref_prod = 1; 

\echo Requete 8 : 
SELECT ref_prod, nom_prod FROM produit WHERE couleur = 'rouge' ; 

\echo Requete 9 : 
SELECT nom_mag FROM magasin WHERE ville LIKE 'L%'; 

\echo Requete 10 : 
SELECT ref_prod, nom_prod FROM produit WHERE nom_prod LIKE 'casse%' ; 

\echo Requete 11 :
SELECT ref_mag FROM provenance ; 
SELECT DISTINCT ref_mag FROM provenance ; 

\echo Requete 12 : 
SELECT nom_prod, couleur FROM produit WHERE poids >=15 AND poids <=45 ; 

\echo Requete 13 : 
SELECT nom_prod FROM produit WHERE (couleur ='jaune' OR couleur = 'bleu') AND poids<=20; 

\echo Requete 14 : 

SELECT nom_prod FROM produit WHERE (couleur='jaune') OR (couleur='bleu' AND poids <=20); 

\echo la condition pese moins que 20kg est que sur les produits bleus

\echo Requete 15: 

SELECT * FROM produit WHERE nom_prod LIKE 'lampe%' OR poids >=30; 

\echo Requete 16 :  
SELECT ref_mag FROM magasin WHERE nom_mag ='NULL'; 

\echo Requete 17:
SELECT ref_mag FROM magasin WHERE nom_mag IS NULL OR nom_mag = ''; 

\echo Requete 18 : 
SELECT produit.ref_prod FROM produit, provenance, usine WHERE usine.ref_usine = provenance.ref_usine AND usine.nom_usine = 'martin' AND usine.ville = 'Nantes' AND provenance.ref_prod = produit.ref_prod ; 

\echo Avec JOIN : 
SELECT produit.ref_prod FROM produit JOIN provenance ON provenance.ref_prod = produit.ref_prod JOIN usine ON usine.ref_usine = provenance.ref_usine WHERE usine.nom_usine = 'martin' AND usine.ville = 'Nantes' ;

\echo Requete 19 : 
SELECT DISTINCT nom_usine FROM usine JOIN magasin ON usine.ville = magasin.ville ; 


\echo Requete 20 : 
SELECT produit.ref_prod, provenance.quantite FROM produit JOIN provenance ON provenance.ref_prod = produit.ref_prod JOIN magasin ON provenance.ref_mag = magasin.ref_mag WHERE magasin.nom_mag LIKE 'P%';

\echo Requete 21 : 
SELECT nom_usine FROM usine, provenance,produit WHERE usine.ref_usine=provenance.ref_usine AND provenance.ref_prod = produit.ref_prod AND produit.nom_prod= 'ordinateur'; 

\echo Requete 22 : 
SELECT p1.nom_prod, p2.nom_prod FROM produit p1, produit p2 WHERE p1.nom_prod = p2.nom_prod AND p1.poids != p2.poids; 
