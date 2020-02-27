-- Revert cims-db:result from pg

BEGIN;

DROP TABLE genetic_result;

COMMIT;
