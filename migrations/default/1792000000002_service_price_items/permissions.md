# Права Hasura після міграції

Роль `guest` має бачити нові колонки, інакше сайт не отримає ціни:

- `services`: додати `price_items` до колонок select-дозволу ролі `guest`.
- `price_list`: додати `title_en` до колонок select-дозволу ролі `guest`.

Роль `admin` бачить усе автоматично.
- `services`: додати `summary` і `summary_en` до колонок select-дозволу ролі `guest`.
