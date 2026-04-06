SELECT
    ROUND(AVG("sl"."salary"),2) AS 'average salary' ,
    "tm"."name"
FROM
    "teams" AS 'tm'
    JOIN "salaries" AS 'sl' ON "sl"."team_id" = "tm"."id"
WHERE
    "sl"."year" = 2001
GROUP BY
    "tm"."name"
ORDER BY
    "average salary" ASC
LIMIT 5;
