-- Verify cims-db:variant on pg

BEGIN;

SELECT has_table_privilege('variant','SELECT');
SELECT has_column_privilege('variant', 'variant_id', 'SELECT');
SELECT has_type_privilege('inheritance_option','SELECT');

ROLLBACK;
