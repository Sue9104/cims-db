-- Deploy cims-db:item to pg

BEGIN;

CREATE TABLE IF NOT EXISTS item (
  item_id INTEGER PRIMARY KEY  NOT NULL,
  item_name TEXT NOT NULL,
  material TEXT,
  method TEXT,
  process TEXT,
  instrument TEXT,
  instrument_parameter TEXT,
  include_area TEXT,
  include_gene TEXT ARRAY,
  include_disease INTEGER ARRAY,
  capture_probe TEXT,
  scope TEXT,
  limitation TEXT
);

COMMIT;
