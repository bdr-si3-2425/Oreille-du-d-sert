SELECT idtrain FROM "reseau"."Trains" 
WHERE maintenance='done' AND idtrain NOT IN (SELECT DISTINCT train FROM "reseau"."horaires");

-- selectionne les trains dont la maintenance a été faite et qui ne sont pas en service 

-- requête par Gabriel LOIRAT