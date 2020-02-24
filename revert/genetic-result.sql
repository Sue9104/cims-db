-- Revert cims-db:genetic-result from pg

BEGIN;

DROP TABLE genetic_result;

COMMIT;
