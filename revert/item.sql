-- Revert cims-db:item from pg

BEGIN;

DROP TABLE item;

COMMIT;
