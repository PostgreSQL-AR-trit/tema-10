------------------------
-- Qué índices sobran --
------------------------

SELECT schemaname ESQUEMA,
       relname TABLA,
       indexrelname INDICE,
       idx_scan,
       PG_SIZE_PRETTY(PG_RELATION_SIZE(indexrelid)) AS idx_size
  FROM pg_stat_user_indexes
 LIMIT 10;

 