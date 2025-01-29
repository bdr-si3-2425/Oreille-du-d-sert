SELECT A.nom,quais FROM (SELECT nom,COUNT(*) as frequentation FROM "reseau"."Gares"
JOIN "reseau"."horaires" ON (nom=gare)
WHERE (horaire>'07:00' AND horaire<'09:00') 
GROUP BY nom) as A
JOIN "reseau"."Gares" on "reseau"."Gares".nom=A.nom
WHERE frequentation/quais>2;
