-- Deploy cims-db:gene to pg

BEGIN;

CREATE TABLE IF NOT EXISTS gene (
  gene_id SERIAL PRIMARY KEY NOT NULL,
  disease_id INTEGER REFERENCES disease(disease_id),
  gene_symbol TEXT,
  penetrance DOUBLE PRECISION NOT NULL,
  citation TEXT
);

COMMIT;
