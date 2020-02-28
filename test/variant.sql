SET client_min_messages TO warning;
CREATE EXTENSION IF NOT EXISTS pgtap;
RESET client_min_messages;

BEGIN;

SELECT no_plan();
-- SELECT plan(1);

SET search_path TO public;
SELECT has_table('variant');
SELECT col_is_pk('variant', 'variant_id');

SELECT col_type_is('variant', 'inheritance', 'inheritance_option');
SELECT throws_ok(
  $$ INSERT INTO variant (inheritance) values ('XX') $$,
  '22P02'
);
SELECT col_type_is('variant', 'pathogenicity_level', 'pathogenicity_level_option');
SELECT throws_ok(
  $$ INSERT INTO variant (pathogenicity_level) values ('XX') $$,
  '22P02'
);
SELECT finish();

ROLLBACK;
