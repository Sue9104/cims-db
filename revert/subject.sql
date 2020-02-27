-- Revert cims-db:subject from pg

BEGIN;

DROP TABLE subject;
DROP TYPE sex_option;

COMMIT;
