-- Verify cims-db:item on pg

BEGIN;

SELECT has_table_privilege('item','SELECT');
SELECT has_column_privilege('item', 'item_id', 'SELECT');

ROLLBACK;
