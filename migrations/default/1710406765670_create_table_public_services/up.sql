CREATE TABLE "public"."services" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "name" text NOT NULL, "image" text NOT NULL, PRIMARY KEY ("id") );
CREATE EXTENSION IF NOT EXISTS pgcrypto;
