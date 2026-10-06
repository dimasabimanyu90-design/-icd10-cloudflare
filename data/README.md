# ICD-10 Indonesian Modification reference

Draft extracted from `list-of-icd-10im-terbaru_compress.pdf` supplied by the user.
The document identifies Kemenkes RI, Version_01 2025. Its copyright notice is
“Tidak Untuk diperjualbelikan”. This dataset preserves source spelling.

This is an additional-code/reference document, **not the full ICD-10 dataset**.
All extracted records start as `draft`. No WHO validation or AI coding logic is
changed. `explicit_im_marker` only means the extracted title contains `(IM)`.
Diagnosis and morphology entries are separate via `kind`.

Each entry includes an extracted title, raw block, PDF page (1-based, including
cover), source filename and SHA-256. PDF colors, semantic note relationships and
page continuations need manual review. Do not treat extracted titles or entries
as automatic coding approval. Code-set comparison with the second PDF is in
`icd10_im_report.json`; matching code sets do not prove identical content.

## Rebuild

Requires Python 3 and Poppler's `pdftotext`:

```sh
python3 scripts/build_icd10_im.py /path/to/list-of-icd-10im-terbaru_compress.pdf /path/to/4a496a26f98c9845.pdf
```

Outputs: SQLite for inspection, JSON for review/export, and SQL for Cloudflare
D1. The SQL creates only the new `icd10_im_entries` table and index; it does not
replace `icd9_paths`. Reimport preserves existing entry IDs, including reviewed
records. A changed source hash produces new entries; reconcile versions before
importing a revised PDF.

## Cloudflare D1 import

The API uses a dedicated `ICD10_IM_DB` binding pointing to a new database
`icd10-im-db`. The user has created this database and its ID is configured in
`wrangler.toml`. For a new installation, create a database from the repository
root:

```sh
npx wrangler login
npx wrangler d1 create icd10-im-db
```

For a new installation, update the `ICD10_IM_DB` block in `wrangler.toml`
with the ID returned by Cloudflare. For the configured database, import into
a local database first:

```sh
npx wrangler d1 execute icd10-im-db --local --file=data/icd10_im.sql
```

After review and when ready to update the live database:

```sh
npx wrangler d1 execute icd10-im-db --remote --file=data/icd10_im.sql
```

For a dashboard-managed Pages project, add a D1 binding named `ICD10_IM_DB`
under Settings → Bindings, selecting `icd10-im-db`. Configure the binding in
each environment you use (production/preview), and redeploy the Pages project.
Deploy the new Pages Function through your existing Cloudflare workflow.
Remote import and deployment have not been performed by this change.

API examples: `/api/icd10-im?code=A15.00`,
`/api/icd10-im?q=tuberculosis&limit=20`. Results explicitly report
`coding_validity: not_assessed`. This endpoint is not connected to the current
auto-coding output yet.
