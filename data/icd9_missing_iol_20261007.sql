-- Reviewed against ICD 9 CM.pdf: tabular PDF46, index Insertion/lens PDF368.
-- Add only the confirmed missing code; do not reload the legacy table.
INSERT OR IGNORE INTO icd9_paths (code,path,vol1) VALUES ('13.71','Insertion
- lens, prosthetic (intraocular)
-- with cataract extraction, one-stage 13.71
13.71 Insertion of intraocular lens prosthesis at time of cataract extraction, one-stage','[{"type":"note","text":"Code also synchronous extraction of cataract (13.11-13.69). Source: ICD 9 CM.pdf, PDF46. Reference excerpt; inherited notes and clinical applicability require review."}]');
