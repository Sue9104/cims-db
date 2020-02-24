-- Revert cims-db:basic-information from pg

BEGIN;

DROP TABLE basic_information;
DROP TYPE sex_option;

COMMIT;
