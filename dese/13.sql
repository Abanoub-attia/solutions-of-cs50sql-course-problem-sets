SELECT
    "d"."name",
    "se"."proficient"
FROM "districts" AS "d"
JOIN "staff_evaluations" AS "se" ON "d"."id" = "se"."district_id"
ORDER BY
    "se"."proficient" DESC
LIMIT 10;
