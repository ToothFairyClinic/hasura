CREATE TABLE "public"."reviews" ("id" uuid NOT NULL DEFAULT gen_random_uuid(), "client_name" text NOT NULL, "client_phone" text NOT NULL, "review_text" text NOT NULL, PRIMARY KEY ("id") );
CREATE EXTENSION IF NOT EXISTS pgcrypto;
