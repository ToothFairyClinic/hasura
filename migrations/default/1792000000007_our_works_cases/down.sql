DROP TRIGGER IF EXISTS our_works_set_updated_at ON public.our_works;
DROP FUNCTION IF EXISTS public.our_works_set_updated_at();
DROP INDEX IF EXISTS our_works_slug_key;
DROP INDEX IF EXISTS our_works_slug_en_key;
ALTER TABLE public.our_works
  DROP COLUMN IF EXISTS title_en, DROP COLUMN IF EXISTS description_en,
  DROP COLUMN IF EXISTS slug, DROP COLUMN IF EXISTS slug_en,
  DROP COLUMN IF EXISTS h1, DROP COLUMN IF EXISTS h1_en,
  DROP COLUMN IF EXISTS intro, DROP COLUMN IF EXISTS intro_en,
  DROP COLUMN IF EXISTS content, DROP COLUMN IF EXISTS content_en,
  DROP COLUMN IF EXISTS image_alt, DROP COLUMN IF EXISTS image_alt_en,
  DROP COLUMN IF EXISTS seo_title, DROP COLUMN IF EXISTS seo_title_en,
  DROP COLUMN IF EXISTS seo_description, DROP COLUMN IF EXISTS seo_description_en,
  DROP COLUMN IF EXISTS is_case_published, DROP COLUMN IF EXISTS case_published_at,
  DROP COLUMN IF EXISTS updated_at;
