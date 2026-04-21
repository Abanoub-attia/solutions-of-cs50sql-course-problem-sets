SELECT
    "first_name" ,
    "last_name"
FROM (
    SELECT *
    FROM (
        SELECT
            "pl"."first_name",
            "pl"."last_name" ,
            "pl"."id"
        FROM
            "players" AS "pl"
            JOIN "performances" AS "pr" ON "pl"."id" = "pr"."player_id"
            JOIN "salaries" AS "sl" ON "pl"."id" = "sl"."player_id"
            AND "sl"."year" = "pr"."year"
        WHERE
            "pr"."year" = 2001
            AND "pr"."H" > 0
            AND "pr"."RBI" > 0
        ORDER BY
            ("sl"."salary" / "pr"."H") ASC
        LIMIT 10)

    INTERSECT

    SELECT *
    FROM (
        SELECT
            "pl"."first_name",
            "pl"."last_name" ,
            "pl"."id"
        FROM
            "players" AS "pl"
            JOIN "performances" AS "pr" ON "pl"."id" = "pr"."player_id"
            JOIN "salaries" AS "sl" ON "pl"."id" = "sl"."player_id"
            AND "sl"."year" = "pr"."year"
        WHERE
            "pr"."year" = 2001
            AND "pr"."H" > 0
            AND "pr"."RBI" > 0
        ORDER BY
            ("sl"."salary" / "pr"."RBI") ASC
        LIMIT 10)
    ORDER BY
        "id" ASC);
