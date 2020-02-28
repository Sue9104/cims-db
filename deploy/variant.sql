-- Deploy cims-db:variant to pg

BEGIN;

CREATE TYPE inheritance_option AS ENUM ('AD', 'AR', 'XD', 'XR', 'Y-linked', 'M-linked', 'Unknown');
CREATE TYPE pathogenicity_level_option AS ENUM ('B', 'LB', 'VUS', 'LP', 'P');
CREATE TABLE IF NOT EXISTS variant (
  variant_id SERIAL PRIMARY KEY NOT NULL,
  gene_id INTEGER REFERENCES gene(gene_id),
  disease_id INTEGER REFERENCES disease(disease_id),
  variant_genotype char(2),
  variant_description TEXT,
  transcript TEXT,
  amino_acid_change TEXT,
  nucleotide_change TEXT,
  chromosome TEXT,
  position TEXT,
  inheritance inheritance_option,
  pathogenicity_level pathogenicity_level_option,
  pathogenicity_evidence TEXT,
  pathogenicity_reference TEXT,
  frequency NUMERIC(7,6) CHECK (frequency > 0 AND frequency <=1),
  prediction_on_protein TEXT,
  cenogenesis BOOLEAN
);

COMMIT;
