-- Revert cims-db:project from pg

BEGIN;

DROP TABLE project;

COMMIT;
