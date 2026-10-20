-- Відео під першим екраном публікації блогу (завантажується в Cloudinary з адмінки)
ALTER TABLE public.posts
  ADD COLUMN IF NOT EXISTS video text,
  ADD COLUMN IF NOT EXISTS video_poster text,
  ADD COLUMN IF NOT EXISTS video_title text,
  ADD COLUMN IF NOT EXISTS video_title_en text,
  ADD COLUMN IF NOT EXISTS video_description text,
  ADD COLUMN IF NOT EXISTS video_description_en text,
  ADD COLUMN IF NOT EXISTS video_duration numeric,
  ADD COLUMN IF NOT EXISTS video_width integer,
  ADD COLUMN IF NOT EXISTS video_height integer,
  ADD COLUMN IF NOT EXISTS video_uploaded_at timestamptz,
  ADD COLUMN IF NOT EXISTS video_chapters jsonb,
  ADD COLUMN IF NOT EXISTS video_chapters_en jsonb,
  ADD COLUMN IF NOT EXISTS video_transcript text,
  ADD COLUMN IF NOT EXISTS video_transcript_en text;
