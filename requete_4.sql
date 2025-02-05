WITH connexions AS (
    SELECT h.gare, COUNT(DISTINCT h.lignes) AS nb_lignes
    FROM horaires h
    GROUP BY h.gare
)
SELECT c.gare, c.nb_lignes, g.quais
FROM connexions c
JOIN gares g ON c.gare = g.nom
WHERE c.nb_lignes BETWEEN 2 AND 5  -- Prioriser les gares avec 2 à 5 lignes existantes
ORDER BY c.nb_lignes DESC, g.quais DESC
LIMIT 5;

--On compte combien de lignes passent par chaque gare.
--On sélectionne les gares les mieux connectées (2 à 5 lignes) ce sera celles qui seront les plus optimales.
--On propose les 5 meilleures gares pour la nouvelle ligne.
--Requête par Alexandre Larguech
