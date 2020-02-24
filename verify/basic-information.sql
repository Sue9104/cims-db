-- Verify cims-db:basic-information on pg

BEGIN;

SELECT has_table_privilege('basic_information','select');
SELECT id FROM basic_information WHERE FALSE;

ROLLBACK;
