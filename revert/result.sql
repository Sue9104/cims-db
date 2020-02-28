-- Revert cims-db:result from pg

BEGIN;

DROP TABLE result;

COMMIT;
