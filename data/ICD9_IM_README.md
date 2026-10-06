# ICD-9-CM Indonesian Modification

Source: `list-icd9cm-im_compress.pdf`, Kementerian Kesehatan RI, Indonesian Modification Version_01 2025.
SHA-256: `46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8`.

The SQL contains 1,141 source entries: 181 categories and 960 procedures, with 1,140 distinct codes. Codes are TEXT to preserve leading zeros. All records are `draft`: titles are the first extracted line and may be incomplete where the PDF wraps; consult raw_text and the original PDF. raw_text retains subsequent text until the next code, including contextual headings. explicit_im_marker indicates `(IM)` anywhere in this extracted text, not a reviewed classification.

Code `91.040` occurs twice with different descriptions (nervous system; liver/biliary tract). Both source occurrences are preserved with distinct entry IDs; do not silently correct the PDF.

D1: `icd9-im-db`; binding: `ICD9_IM_DB`; table: `icd9_im_entries`.
Database ID: `faad1234-19fc-4614-afca-dd485a837c5d`.

Rebuild with `python scripts/extract_icd9_im.py /path/to/list-icd9cm-im_compress.pdf data` (requires pdftotext). The script validates count and repeat-import behavior using SQLite. Import with `npx wrangler d1 execute icd9-im-db --remote --file=data/icd9_im.sql`. Verify with `SELECT COUNT(*) FROM icd9_im_entries;` (expected 1141).

This change prepares data and configuration only; application queries and the deployed Worker binding must be wired separately.
