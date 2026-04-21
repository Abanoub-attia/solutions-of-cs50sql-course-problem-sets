SELECT
    "tm"."name"
FROM
    "players" AS "pl"
    JOIN "performances" AS "pr" ON "pr"."player_id" = "pl"."id"
    JOIN "teams" AS 'tm' ON "pr"."team_id" = "tm"."id"
WHERE
    "pl"."first_name" LIKE 'Satchel'
    AND "pl"."last_name" LIKE 'Paige'
GROUP BY
    "tm"."name";
