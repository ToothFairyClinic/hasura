CREATE TABLE "public"."our_works" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "image_before" text NOT NULL, "title" text NOT NULL, "description" text NOT NULL, "image_after" text NOT NULL, PRIMARY KEY ("id") );
CREATE EXTENSION IF NOT EXISTS pgcrypto;
