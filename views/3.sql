SELECT
    COUNT("id") AS 'number of paints'
FROM "views"
WHERE
    "artist" LIKE 'Hokusai'
    AND
    "english_title" LIKE '%Fuji%';
