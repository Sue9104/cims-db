-- Revert cims-db:variant from pg

BEGIN;

DROP TABLE variant;
DROP TYPE inheritance_option;
DROP TYPE pathogenicity_level_option;

COMMIT;
