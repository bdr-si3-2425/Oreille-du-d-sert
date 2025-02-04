SELECT A.nom,quais FROM (
SELECT nom,COUNT(nom) as frequentation FROM "reseau"."Gares"
JOIN "reseau"."horaires" ON (nom=gare)
WHERE (horaire>'07:00' AND horaire<'09:00') 
GROUP BY nom
) as A
JOIN "reseau"."Gares" on "reseau"."Gares".nom=A.nom
WHERE frequentation/quais>=0;

-- La sous-requête renvoie la frequentaion, c'est à dire le nombre de fois qu'un train
-- passe dans cette gare entre 7h et 9h
-- remarque : ici la condition est que "frequentation/quai >= 0", mais on aurait pu prendre 
-- une valeur plus élevée pour ressortir moins de gares
-- Le problème est que l'arrondi de la division de ces 2 integers est toujours plus petit que
-- 1dans notre jeu de donnée

-- requête par Gabriel LOIRAT