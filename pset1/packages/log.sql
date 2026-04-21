-- *** The Lost Letter ***
SELECT
    "address" ,
    "type"
FROM "addresses"
WHERE
    "id" = (
    SELECT
        "address_id"
    FROM "scans"
    WHERE
        "package_id" = (
        SELECT
            "id"
        FROM "packages"
        WHERE
            "to_address_id" = (
                SELECT
                    "id"
                FROM "addresses"
                WHERE
                    "address" LIKE '2 Finnigan Street')
            AND "from_address_id" = (
                SELECT
                    "id"
                FROM "addresses"
                WHERE
                    "address" LIKE '900 Somerville Avenue'))
            AND "action" LIKE 'drop');
-- *** The Devious Delivery ***
SELECT
    "type"
FROM "addresses"
WHERE
    "id" = (
    SELECT
        "address_id"
    FROM "scans"
    WHERE
        "package_id" = (
        SELECT
            "id"
        FROM
            "packages"
        WHERE
            "from_address_id" IS NULL)
        AND "action" LIKE 'drop');

SELECT
    "contents"
FROM
    "packages"
WHERE
    "from_address_id" IS NULL;
-- *** The Forgotten Gift ***
SELECT
    "contents"
FROM "packages"
WHERE
    "to_address_id" = (
        SELECT
            "id"
        FROM "addresses"
        WHERE
            "address" LIKE '728 Maple Place')
    AND "from_address_id" = (
        SELECT
            "id"
        FROM "addresses"
        WHERE
            "address" LIKE '109 Tileston Street');

SELECT
    "driver_id" ,
    "action"
FROM "scans"
WHERE
    "package_id" = (
        SELECT
            "id"
        FROM "packages"
        WHERE
            "to_address_id" = (
                SELECT
                    "id"
                FROM "addresses"
                WHERE
                    "address" LIKE '728 Maple Place')
        AND "from_address_id" = (
                SELECT
                    "id"
                FROM "addresses"
                WHERE
                    "address" LIKE '109 Tileston Street'));

SELECT
    "name"
FROM "drivers"
WHERE
    "id" = 17;
