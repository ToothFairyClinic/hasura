CREATE EXTENSION IF NOT EXISTS pgcrypto;
alter table "public"."products" add column "products_category_id" uuid
 null default gen_random_uuid();
