-- Deploy cims-db:genetic-result to pg

BEGIN;

CREATE TABLE IF NOT EXISTS genetic_result (
  variant_id BIGINT PRIMARY KEY NOT NULL,
  transcript TEXT  NOT NULL,
  amino_acid_change TEXT,
  nucleotide_change TEXT,
  heteroxygosity TEXT,
  chromosome TEXT,
  position TEXT,
  pathogenicity_level TEXT,
  pathogenicity_evidence TEXT,
  pathogenicity_reference TEXT,
  frequency FLOAT,
  prediction_on_protein TEXT,
  coseparation TEXT,
  cenogenesis BOOLEAN
);

COMMIT;
