SELECT i.type, COUNT(*) AS nombre_incidents, 
       AVG(EXTRACT(EPOCH FROM (h.horaire - i.date_incident))/60) AS retard_moyen_minutes
FROM incidents i
JOIN horaires h ON i.idtrain = h.train
WHERE h.horaire > i.date_incident  -- Incidents affectant les trains après leur survenue
GROUP BY i.type
ORDER BY retard_moyen_minutes DESC
LIMIT 5;

--On compte combien d’incidents de chaque type ont eu lieu.
--On calcule le retard moyen en minutes des trains impactés.
--On affiche les 5 incidents les plus impactants.
--Requête par l'ensemble du groupe
