SET client_min_messages TO warning;
CREATE EXTENSION IF NOT EXISTS pgtap;
RESET client_min_messages;

BEGIN;

SELECT plan(6);

SET search_path TO public;

SELECT has_table('gene');

SELECT col_type_is('gene', 'gene_id', 'integer');
SELECT col_is_pk('gene', 'gene_id');

SELECT col_is_fk('gene', 'disease_id');

SELECT lives_ok(
  $$ INSERT INTO gene (penetrance) VALUES (0.01) $$,
  'insert into gene ok' -- descript
);
SELECT throws_ok(
  $$ INSERT INTO gene (penetrance) VALUES (2) $$,
  23514
);
SELECT finish();
ROLLBACK;
