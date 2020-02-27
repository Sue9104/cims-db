-- Deploy cims-db:variant to pg

BEGIN;

CREATE TYPE inheritance_option AS ENUM ('AD', 'AR', 'XD', 'XR', 'Y-linked', 'M-linked', 'Unknown');
CREATE TABLE IF NOT EXISTS variant (
  variant_id SERIAL NOT NULL,
  gene_id INTEGER REFERENCES gene(gene_id),
  disease_id INTEGER REFERENCES disease(disease_id),
  variant_genotype char(2),
  variant_description TEXT,
  transcript TEXT  NOT NULL,
  amino_acid_change TEXT,
  nucleotide_change TEXT,
  chromosome TEXT,
  position TEXT,
  inheritance inheritance_option,
  pathogenicity_level TEXT,
  pathogenicity_evidence TEXT,
  pathogenicity_reference TEXT,
  frequency FLOAT,
  prediction_on_protein TEXT,
  cenogenesis BOOLEAN
);

COMMIT;
