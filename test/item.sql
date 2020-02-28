SET client_min_messages TO warning;
CREATE EXTENSION IF NOT EXISTS pgtap;
RESET client_min_messages;

BEGIN;

SELECT no_plan();
-- SELECT plan(1);

SET search_path TO public;
SELECT has_table('item');

SELECT col_is_pk('item', 'item_id');

SELECT col_not_null('item', 'item_name');
SELECT throws_ok(
  $$ INSERT INTO item (item_id, item_name, method) VALUES (1, 'a', 'other')$$,
  '22P02'
);
SELECT throws_ok(
  $$ INSERT INTO item (item_id, item_name, method) VALUES (1, 'a', 'WES')$$,
  23514
);
SELECT lives_ok(
  $$ INSERT INTO item (item_id, item_name, method, capture_probe) VALUES (1, 'a', 'WES', 'capture_probe')$$,
  'insert item using wes'
);

SELECT throws_ok(
  $$ INSERT INTO item (item_id, item_name, method) VALUES (2, 'a', 'panel')$$,
  23514
);
SELECT throws_ok(
  $$ INSERT INTO item (item_id, item_name, method, include_gene) VALUES (2, 'a', 'panel', ARRAY['a'])$$,
  23514
);
SELECT throws_ok(
  $$ INSERT INTO item (item_id, item_name, method, include_disease) VALUES (2, 'a', 'panel', ARRAY['b'] )$$,
  23514
);
SELECT lives_ok(
  $$ INSERT INTO item (item_id, item_name, method, include_gene, include_disease) VALUES (2, 'a', 'panel', ARRAY['a'], ARRAY['b'] )$$,
  'insert item using panel'
);
SELECT finish();

ROLLBACK;
