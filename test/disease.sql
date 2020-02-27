SET client_min_messages TO warning;
CREATE EXTENSION IF NOT EXISTS pgtap;
RESET client_min_messages;

BEGIN;

SELECT plan(8);

SET search_path TO public;

SELECT has_table('disease');
SELECT has_pk('disease');

SELECT col_type_is('disease', 'disease_name', 'text');
SELECT col_not_null('disease', 'disease_name');

SELECT col_type_is('disease', 'incidence', 'numeric(9,8)');
SELECT lives_ok(
  $$ INSERT INTO disease (disease_id, disease_name, incidence) values (1, 'aa', '0.001') $$,
  'insert disease aa ok' -- description
);
SELECT throws_ok(
  $$ INSERT INTO disease (disease_id, disease_name, incidence) values (2, 'aa', '2') $$,
  23514
);
SELECT row_eq(
  $$ select disease_id, disease_name, incidence from disease $$,
  ROW(1, 'aa', 0.001::numeric(9,8)),
  'the users show has been insert'
);
SELECT lives_ok(
  $$ delete from disease $$
);
SELECT finish();

ROLLBACK;
