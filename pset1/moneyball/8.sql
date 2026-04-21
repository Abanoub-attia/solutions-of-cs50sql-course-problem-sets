SELECT
    "sl"."salary"
FROM
    "players" AS "pl"
    JOIN "performances" AS "pr" ON "pr"."player_id" = "pl"."id"
    JOIN "salaries" AS 'sl' ON "sl"."player_id" = "pl"."id"
    AND "sl"."year" = "pr"."year"
WHERE
    "pr"."year" = 2001
ORDER BY
    "pr"."HR" DESC
LIMIT 1;
