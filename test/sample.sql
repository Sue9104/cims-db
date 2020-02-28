SET client_min_messages TO warning;
CREATE EXTENSION IF NOT EXISTS pgtap;
RESET client_min_messages;

BEGIN;

SELECT no_plan();
-- SELECT plan(1);

SET search_path TO public;
SELECT has_table('sample');
SELECT col_is_pk('sample', 'sample_id');

SELECT finish();

ROLLBACK;
