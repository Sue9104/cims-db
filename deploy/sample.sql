-- Deploy cims-db:sample to pg

BEGIN;

CREATE TABLE IF NOT EXISTS sample (
  sample_id INTEGER PRIMARY KEY NOT NULL,
  sample_type TEXT NOT NULL,
  item_id INTEGER,
  referred_date DATE,
  coverage DOUBLE PRECISION,
  average_depth INTEGER,
  percentage_over_20x DOUBLE PRECISION
);

COMMIT;
