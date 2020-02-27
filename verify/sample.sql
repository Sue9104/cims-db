-- Verify cims-db:sample on pg

BEGIN;

SELECT has_table_privilege('sample','SELECT');
SELECT has_column_privilege('sample', 'sample_id', 'SELECT');

ROLLBACK;
