# Coding logic audit — 7 October 2026

Scope: main after PR44; all runtime JS, API adapters, browser rendering, existing regression tests, deployment bindings/workflow, and live reference counts. This is a software/evidence audit, not certification of every clinical case or every row of the reference datasets.

## Findings repaired

- Conflicting obstetric instructions forced delivery mode as DU and inferred anemia, hypertension or diabetes from numeric measurements. Removed these shortcuts and automatic O08/Z37 additions; retained documentary, episode-specific sequencing under the ICS core.
- Other specialty shortcuts inferred DM type from history, Alzheimer onset from current age, universal musculoskeletal digits, fixed DU ordering, blanket dagger pairs and many-to-one laboratory procedure mappings. Replaced them with explicit evidence requirements. Dagger/asterisk proposals remain unverified until conventions are independently checked.
- Incorrect phaco/IOL shortcut: 13.72 denotes secondary IOL insertion. Separate extraction and one-stage insertion candidates with the source's code-also instruction.
- Pneumonia audit previously read only the model's selected quote. It now considers relevant documented radiology and avoids downcoding solely because that quote omits the lobar pattern. Uninterpreted organism results remain insufficient for an organism-specific diagnosis.
- WHO fracture supplementary closed/open digits collided with IM morphology. WHO proposals no longer inherit IM morphology titles. Ambiguous schemes remain explicitly unresolved; S72.30/S72.31 are not automatically relabelled simple/butterfly. IM morphology still requires supporting documentation. Closed-default metadata does not invent morphology or a clinical quote.
- Negated, planned, cancelled and historical-procedure contexts, substring-only abbreviations, multiple injuries in one clause and true open-fracture text after ORIF now receive bounded evidence checks. These are conservative lexical guards, not a complete clinical language parser.
- DS requires a separate quoted basis of episode relevance under ICS §2.1.2. Merely quoting the condition does not certify comorbidity eligibility. DU/MB checks remain documentary checks and need coder review.
- Model output cannot supply trusted WHO/IM metadata, finalized flags, source paths or validation badges. Proposal fields are allowlisted; malformed and oversized item collections are rejected. Missing confidence is no longer fabricated as 85%, and model confidence is not presented as calibrated accuracy.
- Available unverified WHO source branches are preserved. Source results take precedence over saved parent paths; no model-only path is presented as WHO evidence.
- Referral traversal is capped at four queries, tabular parent chains at six with cycle detection. Aggregate validation calls, request durations and enrichment counts are bounded and repeated lookups are cached per request. WHO entities must match the requested code and have a title.
- Empty results no longer pass validation vacuously; unverified ICD9, structural problems, source ambiguity or unresolved documentation checks prevent aggregate success. Clinical finalization stays false.
- ICD9 titles are taken from source path terminal titles where available; missing/invalid notes and missing databases are handled conservatively. Removed duplicate warnings and browser-only silent deletion of 90.59 so API and UI retain the same proposed codes for review.
- Browser output escapes dynamic clinical/source text, removes inline code interpolation, rejects incomplete JSON rather than repairing it, clears stale procedure warnings, preserves cooldown and avoids rendering results for replaced input.
- Added automatic Node regression checks for pull requests and main.

## Sources checked

- Uploaded ICS Version 1_25072025.pdf (DRAFT V1): §2.1.1/2.2 core already incorporated; §2.1.2 PDF29–31 for DS; §2.5.2–2.5.3 PDF62–63 for documentary and radiology support.
- Uploaded ICD 9 CM.pdf: tabular PDF46 and Insertion/lens index PDF368 for 13.71/13.72.
- Uploaded ICD10 IM list and its D1 rows retain the distinct IM morphology labels. No assumption that WHO and IM code strings have interchangeable meanings.
- CMS official ICD9 titles catalogue was checked for version context: https://www.cms.gov/medicare/coding-billing/icd-10-codes/icd-9-cm-diagnosis-procedure-codes-abbreviated-and-full-code-titles

## Live reference inspection and narrow repair

ICD10 IM: 1,524 rows. ICD9 IM: 1,141 rows. Before repair ICD9 paths: 3,644 rows, of which 3,635 have no notes. Compared code identities against repository SQL inside the database tool execution to avoid response truncation. Missing identities were 13.71 and 36.01.

13.71 is supported by the uploaded source and was inserted with `data/icd9_missing_iol_20261007.sql`, an idempotent insert-only migration. The full legacy SQL was not reimported. 36.01 was not restored merely to equalize counts: it was not found in the supplied FY10 text and needs separate version resolution. The legacy setup workflow still contains a full-table reload and should not be used to apply this narrow repair.

## Validation and limits

Run `node --test tests/*.test.cjs`. Ten test files cover existing flows plus source-identity errors, trust boundaries, no-data results, IM/WHO collisions, radiologist documentation, negation/planning, malformed output, DS evidence, procedure subtype specificity, XSS output boundaries, cache budgets and parent cycles.

Coverage of WHO search terms is partial; branches and see/see also/see condition cannot all be certified from search output. The legacy ICD9 path dataset is not a fully verified printed index and most inherited tabular instructions are missing. Saved paths are labelled reference-only. ICD9 IM cross-reference traversal is not implemented. Rules are tied to the user's draft reference profile, not a claim of current national reimbursement policy. An LLM may still propose incorrect clinical coding; final review remains necessary.
