CREATE TABLE "public"."advantages" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "title" text NOT NULL, "label" text NOT NULL, PRIMARY KEY ("id") );
CREATE EXTENSION IF NOT EXISTS pgcrypto;
