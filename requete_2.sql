SELECT train,time FROM (
SELECT (max(horaire)-min(horaire)) AS time,train FROM reseau.horaires
GROUP BY train)
WHERE time>'96:00';