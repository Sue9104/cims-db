-- Verify cims-db:result on pg

BEGIN;

SELECT has_table_privilege('result','SELECT');
SELECT has_column_privilege('result', 'result_id', 'SELECT');

ROLLBACK;
