CREATE TABLE "passengers" (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    "age" INTEGER,
    PRIMARY KEY("id")
);

CREATE TABLE "check-ins" (
    "id" INTEGER,
    "check-in_time" NUMERIC,
    "flight_id" INTEGER,
    "passenger_id" INTEGER,
    PRIMARY KEY("id"),
    FOREIGN KEY ("flight_id") REFERENCES "flights"("id")
    FOREIGN KEY ("passenger_id") REFERENCES "passengers"("id")
);

CREATE TABLE "airlines" (
    "id" INTEGER,
    "name" TEXT,
    "concourse" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "fights" (
    "id" INTEGER,
    "code" INTEGER,
    "airlines_id" INTEGER,
    "departure_airport" TEXT,
    "arrival_airport" TEXT,
    "departure_time" NUMERIC,
    "arrival_time" NUMERIC,
    PRIMARY KEY("id")
    FOREIGN KEY ("airlines_id") REFERENCES "airlines"("id")
);

