-- Deploy cims-db:result to pg

BEGIN;

CREATE TABLE IF NOT EXISTS result (
  result_id BIGINT PRIMARY KEY NOT NULL,
  variant_id INTEGER REFERENCES variant(variant_id),
  gene_id INTEGER REFERENCES gene(gene_id),
  disease_id INTEGER REFERENCES disease(disease_id),
  item_id INTEGER REFERENCES item(item_id),
  transcript TEXT  NOT NULL,
  amino_acid_change TEXT,
  nucleotide_change TEXT,
  heteroxygosity TEXT,
  chromosome TEXT,
  position TEXT,
  pathogenicity_level pathogenicity_level_option,
  pathogenicity_evidence TEXT,
  pathogenicity_reference TEXT,
  frequency FLOAT,
  prediction_on_protein TEXT,
  coseparation TEXT,
  cenogenesis BOOLEAN
);

COMMIT;
