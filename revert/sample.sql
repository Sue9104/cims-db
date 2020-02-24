-- Revert cims-db:sample from pg

BEGIN;

DROP TABLE sample;

COMMIT;
