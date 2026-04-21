/*
SELECT
    "number of public schools" ,
    "city"
FROM
    (SELECT
        COUNT("id") AS 'number of public schools' ,
        "city"
    FROM
        "schools"
    WHERE
        "type" LIKE 'Public School'
    GROUP BY
        "city")
WHERE
    "number of public schools" <= 3
ORDER BY
    "number of public schools" DESC,
    "city" ASC;
*/

SELECT
    "city" ,
    COUNT("id") AS 'number of public schools'
FROM
    "schools"
WHERE
    "type" LIKE 'Public School'
GROUP BY
    "city"
HAVING
    "number of public schools" <= 3
ORDER BY
    "number of public schools" DESC,
    "city" ASC
