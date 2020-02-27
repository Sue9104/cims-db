-- Revert cims-db:disease from pg

BEGIN;

DROP TABLE disease;

COMMIT;
