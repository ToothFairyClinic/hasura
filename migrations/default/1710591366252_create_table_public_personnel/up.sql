CREATE TABLE "public"."personnel" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "image" text NOT NULL, "name" text NOT NULL, "description" text NOT NULL, "personnel_category_id" uuid NOT NULL, PRIMARY KEY ("id") );
CREATE EXTENSION IF NOT EXISTS pgcrypto;
