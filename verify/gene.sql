-- Verify cims-db:gene on pg

BEGIN;

SELECT has_table_privilege('gene','SELECT');
SELECT has_column_privilege('gene', 'gene_id', 'SELECT');

ROLLBACK;
