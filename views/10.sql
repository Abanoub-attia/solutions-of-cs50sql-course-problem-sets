SELECT
    "english_title" ,
    "artist"
FROM "views"
WHERE
    "contrast" >= 0.5
ORDER BY
    "average_color" DESC
LIMIT 5;
