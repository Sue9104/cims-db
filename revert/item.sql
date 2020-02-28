-- Revert cims-db:item from pg

BEGIN;

DROP TABLE item;
DROP TYPE method_option;

COMMIT;
