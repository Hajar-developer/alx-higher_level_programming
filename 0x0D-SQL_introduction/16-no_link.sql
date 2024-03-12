-- Computes the average score of all records in the table second_table in my MySQL server.
SELECT score, name 
FROM second_table
WHERE name != ""
ORDER BY score DESC;
