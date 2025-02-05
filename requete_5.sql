WITH RECURSIVE trajets_alternatifs AS (
    -- Étape 1 : Trouver les gares touchées par l'incident
    SELECT DISTINCT h.gare, h.lignes, NULL AS ligne_precedente, 0 AS profondeur
    FROM horaires h
    JOIN incidents i ON h.lignes = i.idligne
    WHERE i.idligne = X  -- Ligne impactée

    UNION ALL

    -- Étape 2 : Trouver les lignes alternatives
    SELECT DISTINCT h.gare, h.lignes, t.lignes AS ligne_precedente, t.profondeur + 1
    FROM horaires h
    JOIN trajets_alternatifs t ON h.gare = t.gare
    WHERE h.lignes != t.lignes  -- Éviter la ligne bloquée
    AND t.profondeur < 3  -- Limiter à 3 correspondances max
)

SELECT DISTINCT ta.gare, ta.lignes AS ligne_alternative, h.horaire, t.idtrain, t.type
FROM trajets_alternatifs ta
JOIN horaires h ON ta.gare = h.gare AND ta.lignes = h.lignes
JOIN trains t ON h.train = t.idtrain
ORDER BY ta.gare, h.horaire;

--On commence par les gares touchées par l’incident (idligne = X).
--Récursivement, on trouve d'autres lignes passant par ces gares.
--On limite à 3 correspondances max pour éviter les trajets trop longs.
--Requête par Alexandre Larguech
