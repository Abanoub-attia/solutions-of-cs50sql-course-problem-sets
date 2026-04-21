CREATE TABLE "ingredients" (
    "id" INTEGER,
    "type" TEXT,
    "price_per_unit" NUMERIC,
    PRIMARY KEY("id")
);

CREATE TABLE "dounts" (
    "id" INTEGER,
    "name" TEXT,
    "is_gluten_free" TEXT CHECK("is_gluten_free" IN ("yes" , "no")),
    "price_per_dount" NUMERIC  NOT NULL CHECK("price_per_dount" > 0),
    PRIMARY KEY("id")
);

CREATE TABLE "dounts_ingredients" (
    "dount_id" INTEGER,
    "ingredient_id" INTEGER,
    FOREIGN KEY ("dount_id") REFERENCES "dounts"("id"),
    FOREIGN KEY ("ingredient_id") REFERENCES "ingredients"("id")
);

CREATE TABLE "custumers" (
    "id" INTEGER,
    "first_name" TEXT NOT NULL,
    "last_name" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "orders" (
    "id" INTEGER,
    "custumer_id" INTEGER,
    "last_name" TEXT,
    PRIMARY KEY("id"),
    FOREIGN KEY ("custumer_id") REFERENCES "custumers"("id")
);

CREATE TABLE "order_dounts" (
    "order_id" INTEGER,
    "dount_id" INTEGER,
    FOREIGN KEY ("dount_id") REFERENCES "dounts"("id"),
    FOREIGN KEY ("order_id") REFERENCES "orders"("id")
);

CREATE TABLE "custumer_orders_history" (
    "custumer_id" INTEGER,
    "order_id" INTEGER,
    FOREIGN KEY ("custumer_id") REFERENCES "custumers"("id"),
    FOREIGN KEY ("order_id") REFERENCES "orders"("id")
);
