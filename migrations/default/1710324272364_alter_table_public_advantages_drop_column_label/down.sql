alter table "public"."advantages" alter column "label" drop not null;
alter table "public"."advantages" add column "label" text;
