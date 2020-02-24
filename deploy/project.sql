-- Deploy cims-db:project to pg

BEGIN;

CREATE TABLE IF NOT EXISTS project (
  project_id INTEGER PRIMARY KEY  NOT NULL,
  project_name TEXT NOT NULL,
  material TEXT,
  method TEXT,
  process TEXT,
  scope TEXT,
  limitation TEXT
);

COMMIT;
