SELECT
    "pl"."first_name" ,
    "pl"."last_name"
FROM
    "players" AS 'pl'
    JOIN "salaries" AS 'sl' ON "sl"."player_id" = "pl"."id"
ORDER BY
    "sl"."salary" DESC
LIMIT 1;
