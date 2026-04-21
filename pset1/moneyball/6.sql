SELECT
    "tm"."name" ,
    SUM("pr"."H") AS 'total hits'
FROM
    "teams" AS "tm"
    JOIN "performances" AS "pr" ON "pr"."team_id" = "tm"."id"
WHERE
    "pr"."year" = 2001
GROUP BY
    "tm"."name"
ORDER BY
    "total hits" DESC
LIMIT 5;

