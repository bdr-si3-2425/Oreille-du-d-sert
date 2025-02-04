WITH trajets AS (
    SELECT h1.gare AS gare_depart,h2.gare AS gare_arrivee, h1.lignes AS ligne, h1.train AS train, h1.horaire AS depart, h2.horaire AS arrivee, 0 AS correspondances
    FROM horaires h1
    JOIN horaires h2 ON h1.lignes = h2.lignes AND h1.train = h2.train
    WHERE h1.gare = 'GARE_A' AND h2.gare = 'GARE_B' AND h1.horaire < h2.horaire
    UNION ALL
    SELECT t1.gare_depart, h3.gare, t1.ligne, h3.train, t1.depart, h3.horaire, t1.correspondances + 1
    FROM trajets t1
    JOIN horaires h3 ON t1.gare_arrivee = h3.gare AND t1.ligne != h3.lignes
    WHERE t1.correspondances < 2
)
SELECT * FROM trajets
ORDER BY correspondances, arrivee - depart;

--On cherche d'abord les trajets directs sans correspondance.
--Ensuite, on ajoute des correspondances au maximum 2 fois.
--On trie par moins de correspondances et durée la plus courte.
