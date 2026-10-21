-- Кейси: окрема сторінка /ua/our-work/<slug> для прикладу роботи (публікується з адмінки)
ALTER TABLE public.our_works
  ADD COLUMN IF NOT EXISTS title_en text,
  ADD COLUMN IF NOT EXISTS description_en text,
  ADD COLUMN IF NOT EXISTS slug text,
  ADD COLUMN IF NOT EXISTS slug_en text,
  ADD COLUMN IF NOT EXISTS h1 text,
  ADD COLUMN IF NOT EXISTS h1_en text,
  ADD COLUMN IF NOT EXISTS intro text,
  ADD COLUMN IF NOT EXISTS intro_en text,
  ADD COLUMN IF NOT EXISTS content text,
  ADD COLUMN IF NOT EXISTS content_en text,
  ADD COLUMN IF NOT EXISTS image_alt text,
  ADD COLUMN IF NOT EXISTS image_alt_en text,
  ADD COLUMN IF NOT EXISTS seo_title text,
  ADD COLUMN IF NOT EXISTS seo_title_en text,
  ADD COLUMN IF NOT EXISTS seo_description text,
  ADD COLUMN IF NOT EXISTS seo_description_en text,
  ADD COLUMN IF NOT EXISTS is_case_published boolean NOT NULL DEFAULT false,
  ADD COLUMN IF NOT EXISTS case_published_at timestamptz,
  ADD COLUMN IF NOT EXISTS updated_at timestamptz NOT NULL DEFAULT now();
CREATE UNIQUE INDEX IF NOT EXISTS our_works_slug_key ON public.our_works (slug) WHERE slug IS NOT NULL;
CREATE UNIQUE INDEX IF NOT EXISTS our_works_slug_en_key ON public.our_works (slug_en) WHERE slug_en IS NOT NULL;
CREATE OR REPLACE FUNCTION public.our_works_set_updated_at() RETURNS trigger AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;
DROP TRIGGER IF EXISTS our_works_set_updated_at ON public.our_works;
CREATE TRIGGER our_works_set_updated_at BEFORE UPDATE ON public.our_works
  FOR EACH ROW EXECUTE FUNCTION public.our_works_set_updated_at();
