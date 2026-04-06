SELECT
    COUNT(DISTINCT "latitude") AS 'number of latitude'
FROM "normals"
WHERE
    "%m" IS NOT NULL;
