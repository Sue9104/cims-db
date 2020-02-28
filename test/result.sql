SET client_min_messages TO warning;
CREATE EXTENSION IF NOT EXISTS pgtap;
RESET client_min_messages;

BEGIN;

SELECT no_plan();

SET search_path TO public;
SELECT has_table('result');
SELECT col_is_pk('result', 'result_id');
SELECT col_is_fk('result', 'item_id');
SELECT col_is_fk('result', 'disease_id');
SELECT col_is_fk('result', 'gene_id');
SELECT col_is_fk('result', 'variant_id');
SELECT col_type_is('result', 'pathogenicity_level', 'pathogenicity_level_option');

SELECT finish();

ROLLBACK;
