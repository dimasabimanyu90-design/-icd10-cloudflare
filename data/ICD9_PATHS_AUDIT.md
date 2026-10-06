# ICD-9 paths review — 2026-10-06

PR #29 adds a separate IM dataset; it does not repair the older icd9_paths table.

Reviewed source: user-supplied ICD 9 CM.pdf, FY10 tabular procedures and alphabetical index, including Thai DRG annotations. Text extraction emitted PDF syntax errors; this is not evidence that the entire source can be parsed reliably.

Five reviewed corrections:
- 00: replace corrupted radiation/high-voltage path with an explicitly labeled tabular category fallback. This is a category, not a billable procedure.
- 00.66: complete the tabular title and all seven Code also references visible in the PDF.
- 01.09: retain the existing index fragment; correct final description to Other cranial puncture and add inclusion terms.
- 39.50: retain Atherectomy / peripheral as an index synonym; add canonical title, inclusion, exclusion and Code also references.
- 99.10: retain Activase as an index synonym; add canonical title, inclusion agents and exclusions.

These corrections do not certify existing index hierarchies. In particular, 01.09 still has an orphaned index fragment needing reconstruction. The other index synonyms are not themselves invalid diagnoses or procedure descriptions; their use as final tabular titles was incomplete.

Local validation: source SQL has 3646 unique codes, valid JSON vol1 values and valid code formats. After this patch 3637 entries still have empty vol1, so absence of notes must not be interpreted as absence of coding instructions. Patch can run twice without changing count. Live D1 has 3644 entries: this count difference is not resolved by a five-entry update.

Apply only data/icd9_paths_fix_20261006.sql to the live database for this repair. It backs up the five pre-patch rows in icd9_paths_backup_20261006 using INSERT OR IGNORE before updating. Do not re-import the full SQL merely to apply these fixes, since it deletes and reloads the table. Restoring originals is possible by updating path and vol1 from the backup table.

Remaining work: reconstruct and validate all lead-term paths, synonyms, inherited notes, source versions, and code-set differences against a reliable official source. Current count and sampled fixes do not establish clinical completeness.
