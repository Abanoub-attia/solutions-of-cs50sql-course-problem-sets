SELECT
    "title" ,
    "topic"
FROM "episodes"
WHERE
    "air_date" LIKE "2007%"
    AND
    "title" LIKE "%the%";

