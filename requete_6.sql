SELECT idtrain FROM "reseau"."Trains" 
WHERE maintenance='done' AND idtrain NOT IN (SELECT DISTINCT train FROM "reseau"."horaires");