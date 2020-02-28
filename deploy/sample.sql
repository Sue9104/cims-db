-- Deploy cims-db:sample to pg

BEGIN;

CREATE TABLE IF NOT EXISTS sample (
  sample_id INTEGER PRIMARY KEY NOT NULL,
  sample_type TEXT NOT NULL,
  item_id INTEGER,
  referred_date DATE,
  coverage NUMERIC(7,3) CHECK (coverage <=100),
  average_depth INTEGER,
  percentage_over_20x NUMERIC(7,3) CHECK (percentage_over_20x <=100)
);

COMMIT;
