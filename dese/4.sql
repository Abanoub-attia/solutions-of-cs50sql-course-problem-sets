SELECT
    "city" ,
    COUNT("id") AS 'number of public schools'
FROM
    "schools"
WHERE
    "type" LIKE 'Public School'
GROUP BY
    "city"
ORDER BY
    "number of public schools" DESC,
    "city" ASC
LIMIT 10;
