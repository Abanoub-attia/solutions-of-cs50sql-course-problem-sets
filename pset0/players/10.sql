SELECT
    ROUND(AVG("height"),2) AS 'Average Height' ,
    ROUND(AVG("weight"),2) AS 'Average Weight'
FROM "players"
WHERE
    "birth_year" LIKE "2001%"
ORDER BY
    "first_name" ASC,
    "last_name" ASC;
