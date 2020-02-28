-- Deploy cims-db:item to pg

BEGIN;

CREATE TYPE method_option AS ENUM ('panel', 'WES', 'WGS');
CREATE TABLE IF NOT EXISTS item (
  item_id INTEGER PRIMARY KEY  NOT NULL,
  item_name TEXT NOT NULL,
  material TEXT,
  method method_option,
  process TEXT,
  instrument TEXT,
  instrument_parameter TEXT,
  include_area TEXT,
  include_gene TEXT ARRAY,
  include_disease TEXT ARRAY,
  capture_probe TEXT,
  scope TEXT,
  limitation TEXT,
  CONSTRAINT wes_required CHECK (method != 'WES' OR capture_probe is not NULL),
  CONSTRAINT panel_required CHECK (method != 'panel' OR (include_gene is not NULL AND include_disease is not NULL))
);

COMMIT;
