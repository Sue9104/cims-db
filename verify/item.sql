-- Verify cims-db:item on pg

BEGIN;

SELECT has_table_privilege('item','SELECT');
SELECT has_column_privilege('item', 'item_id', 'SELECT');
SELECT has_type_privilege('method_option', 'SELECT');

ROLLBACK;
