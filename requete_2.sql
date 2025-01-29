SELECT train FROM (
SELECT (max(horaire)-min(horaire)) AS time,train FROM reseau.horaires
GROUP BY train)
FULL JOIN "reseau"."Incidents" ON train=idtrain
WHERE time>'96:00' OR idtrain is not null;