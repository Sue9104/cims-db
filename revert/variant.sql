-- Revert cims-db:variant from pg

BEGIN;

DROP TABLE variant;
DROP TYPE inheritance_option;

COMMIT;
