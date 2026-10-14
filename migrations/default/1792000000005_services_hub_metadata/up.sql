-- Метадані сторінки-хаба /services (потрапляє і в sitemap)
INSERT INTO public.page_metadata (page_route, h1, h1_en, seo_title, seo_title_en, seo_description, seo_description_en, updated_at)
SELECT '/services',
  'Послуги стоматології Зубна Фея у Білій Церкві',
  'Dental services at Tooth Fairy in Bila Tserkva',
  'Послуги стоматології у Білій Церкві | Зубна Фея',
  'Dental Services in Bila Tserkva | Tooth Fairy',
  'Усі послуги стоматології Зубна Фея у Білій Церкві: дитяча й доросла стоматологія, лікування карієсу, ортодонтія, імплантація, протезування, хірургія та КТ.',
  'All Tooth Fairy dental services in Bila Tserkva: children''s and adult dentistry, cavity treatment, orthodontics, implants, prosthodontics, oral surgery and CT scans.',
  now()
WHERE NOT EXISTS (SELECT 1 FROM public.page_metadata WHERE page_route = '/services');
