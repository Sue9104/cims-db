-- Revert cims-db:gene from pg

BEGIN;

DROP TABLE gene;

COMMIT;
