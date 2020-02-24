-- Deploy cims-db:basic-information to pg

BEGIN;

CREATE TYPE sex_option AS ENUM ('female', 'male');
CREATE TABLE IF NOT EXISTS basic_information (
  subject_id INTEGER PRIMARY KEY NOT NULL,
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
