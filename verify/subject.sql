-- Verify cims-db:subject on pg

BEGIN;

SELECT has_table_privilege('subject','SELECT');
SELECT has_column_privilege('subject', 'subject_id', 'SELECT');
SELECT has_type_privilege('sex_option', 'SELECT');

ROLLBACK;
