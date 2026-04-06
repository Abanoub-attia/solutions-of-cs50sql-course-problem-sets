SELECT
    "pl"."first_name" ,
    "pl"."last_name" ,
    "sl"."salary"
FROM
    "players" AS 'pl'
    JOIN "salaries" AS 'sl' ON "sl"."player_id" = "pl"."id"
WHERE
    "sl"."year" = 2001
ORDER BY
    "sl"."salary" ASC ,
    "pl"."first_name" ASC ,
    "pl"."last_name" ASC ,
    "pl"."id"
LIMIT 50;
