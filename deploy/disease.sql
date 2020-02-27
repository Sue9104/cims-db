-- Deploy cims-db:disease to pg

BEGIN;

CREATE TABLE IF NOT EXISTS disease (
  disease_id INTEGER PRIMARY KEY NOT NULL,
  disease_name TEXT UNIQUE NOT NULL,
  incidence NUMERIC(9,8),
  clinical_manifestation TEXT,
  citation TEXT,
  CHECK (incidence <= 1::NUMERIC(9,8) )
);

COMMIT;
