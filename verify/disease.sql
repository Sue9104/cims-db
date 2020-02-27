-- Verify cims-db:disease on pg

BEGIN;

SELECT has_table_privilege('disease','SELECT');
SELECT has_column_privilege('disease', 'disease_id', 'SELECT');

ROLLBACK;
