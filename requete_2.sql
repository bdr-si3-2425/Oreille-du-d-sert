SELECT train FROM (
SELECT (max(horaire)-min(horaire)) AS time,train FROM reseau.horaires
GROUP BY train)
FULL JOIN "reseau"."Incidents" ON train=idtrain
WHERE time>'4:00' OR idtrain is not null;

-- "max(horaire)-min(horaire)" représente le temps de trajet total parcouru par un train donné
-- ici on estime qu'un train doit être entrtenu toutes les 4h de fonctionnement, 
-- pour avoir a rentrer moins de données

-- requête par Thomas LE DUEY