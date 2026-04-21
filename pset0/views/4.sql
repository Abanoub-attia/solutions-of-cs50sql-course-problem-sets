SELECT
    COUNT("id") AS 'number of paints'
FROM "views"
WHERE
    "artist" LIKE 'Hiroshige'
    AND
    "english_title" LIKE '%Eastern Capital%';
