-- Deploy cims-db:sample to pg

BEGIN;

CREATE TABLE IF NOT EXISTS sample (
  sample_id INTEGER PRIMARY KEY NOT NULL,
  sample_type TEXT NOT NULL,
  project_id INTEGER,
  referred_date DATE
);

COMMIT;
