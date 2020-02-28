SET client_min_messages TO warning;
CREATE EXTENSION IF NOT EXISTS pgtap;
RESET client_min_messages;

BEGIN;

SELECT no_plan();

SET search_path TO public;
SELECT has_table('subject');
SELECT col_is_pk('subject', 'subject_id');
SELECT col_type_is('subject', 'sex', 'sex_option');

SELECT finish();

ROLLBACK;
