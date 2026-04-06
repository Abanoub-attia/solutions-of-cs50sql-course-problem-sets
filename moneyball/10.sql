SELECT
	"pl"."first_name",
	"pl"."last_name",
	"sl"."salary",
	"pr"."HR",
	"sl"."year"
FROM
	players AS "pl"
	JOIN salaries AS "sl" ON "pl".id = "sl".player_id
	JOIN performances AS "pr" ON "pl".id = "pr".player_id
	AND "sl".year = "pr".year
ORDER BY
	"pl".id ASC,
	"pr".year DESC,
	"pr".HR DESC,
	"sl".salary DESC;
