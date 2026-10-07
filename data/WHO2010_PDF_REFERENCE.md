# Uploaded WHO 2010 PDF reference database

Database: `icd10-who2010-reference-db` (`bc979608-eccf-454c-9887-8f3bcebeb19a`), binding `ICD10_WHO_DB` in preview and production.
Source: user-uploaded `ICD10_2010.pdf`, 1,999 pages, SHA-256 in `who2010/manifest.json`.

## Data and review boundaries

- 11,200 tabular source records representing 11,099 distinct parsed headings; no automatic expansion of shared subdivisions into invented full titles.
- 67,434 unique index records: 64,319 diagnosis/injury and 3,115 external-cause records.
- 13,827 index records carry unresolved continuation/modifier context and are excluded from application lookup.
- 10 explicitly printed E10–E14 shared fourth-character subdivisions support separate diabetes source steps.
- PDF pages 1,859–1,999 (141 pages) are quarantined as drugs/chemicals because running headers include version 2007 despite a 2010 compilation cover. They are not used for coding lookup.
- All extracted records require review. Zero records are certified by this import. Geometry-based column separation and continuation tracking do not guarantee every printed relation was reconstructed correctly.

Parser SQL, file fingerprint, page number, raw text, hierarchy and review flags are retained. Entry IDs deduplicate repeated identical targets; manifest counts describe actual database rows, not emitted candidate count. The 28 MB generated SQL and full SQLite snapshot are deployment outputs rather than Pages assets; the persistent D1 database holds their data. Rebuild from the authorized source with:

```
python scripts/build_who2010_pdf.py /path/to/ICD10_2010.pdf --out /tmp/who2010
```

Import SQL contains replacement statements for these reference tables only. Use it on the dedicated reference database, not on an IM or ICD-9 database. Source dependencies: Python 3 and PyMuPDF.

## Application behavior

`/api/icd10-reference?code=S72.3` or `?term=Fracture` exposes source candidates with `certified:false`. Results are bounded and use parameterized SQL.

`/api/who-index` uses local exact-code candidates before the remote WHO search when eligible PDF paths exist. It returns `review_required:true`; the shared resolver preserves paths and page provenance while refusing to mark unreviewed PDF extraction as verified. Complex shared diabetes instructions appear as separate source steps; no fictitious single index path is assembled. Missing/failed/empty local lookup falls back to the existing WHO adapter.

Before the model call, bounded lexical retrieval supplies source candidates for supported literal concepts (fracture, pneumonia, diabetes, retinopathy, cataract). This is partial retrieval coverage, not a general clinical diagnosis engine or a certified index matcher. Retrieved records are labeled unreviewed data. The existing WHO-first gate still controls DU/DS; IM options remain separate.

The tabular extraction is a reference layer. Official WHO code/title validation remains in place and does not accept PDF extraction as an automatic substitute. PDF inclusion/exclusion text is retained verbatim; it is not automatically interpreted as a complete coding-rule engine.

## Verification

D1 row counts match the local SQLite restore. Source samples were checked for S72.3 (tabular PDF824 / index PDF1419), J18.9 and J18.1 (tabular PDF426 / index PDF1657–1659), H36.0 (tabular PDF354), and diabetes type/shared subdivision references (index PDF1330–1331 / tabular PDF186–187). Legacy database bindings are retained. Regression tests cover context/version exclusion, source-only provenance, no false index certification, diabetes multi-step references, bounded pre-model retrieval and network fallback.
