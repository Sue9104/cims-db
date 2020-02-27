-- Deploy cims-db:subject to pg

BEGIN;

CREATE TYPE sex_option AS ENUM ('female', 'male');
CREATE TABLE IF NOT EXISTS subject (
  subject_id INTEGER PRIMARY KEY NOT NULL,
  family_id INTEGER NOT NULL,
  family_role TEXT,
  sex sex_option,
  birthday DATE,
  race TEXT,
  consanguinity BOOLEAN,
  past_history TEXT,
  family_history TEXT,
  symptom TEXT,
  clinical_diagnosis TEXT,
  liboratory_examination TEXT,
  imaging_examination TEXT,
  pathological_examination TEXT,
  other TEXT
);

COMMIT;
