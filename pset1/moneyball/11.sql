SELECT
	"pl"."first_name",
	"pl"."last_name",
	"sl"."salary" / "pr"."H" AS "dollars per hit"
FROM
	"players" AS "pl"
	JOIN "salaries" AS "sl" ON "pl"."id" = "sl"."player_id"
	JOIN "performances" AS "pr" ON "pl"."id" = "pr"."player_id"
	AND "sl"."year" = "pr"."year"
WHERE
	"pr"."year" = 2001
	AND "pr".H > 0
ORDER BY
	"dollars per hit" ASC ,
    "pl"."first_name" ASC ,
    "pl"."last_name" ASC
LIMIT
	10;
