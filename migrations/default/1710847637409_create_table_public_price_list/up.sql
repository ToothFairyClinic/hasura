CREATE TABLE "public"."price_list" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "title" text NOT NULL, "price" numeric NOT NULL, "price_list_category_id" uuid NOT NULL, PRIMARY KEY ("id") );
CREATE EXTENSION IF NOT EXISTS pgcrypto;
