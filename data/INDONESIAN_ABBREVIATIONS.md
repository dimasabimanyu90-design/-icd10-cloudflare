# Indonesian medical abbreviation reading support

Adds a small, curated interpretation vocabulary to `buildPrompt`, shared by the browser/server policy module. Only whole-token abbreviations present in the original input are included. Repeated terms are deduplicated. G2P1A0 / G2 P1 A0 / P2 A0 are recognized separately.

This is prompt assistance, not a clinical parser, national abbreviation standard, or a new code dictionary. The vocabulary contains commonly used Indonesian terms and international abbreviations encountered in Indonesian records. Local hospital definitions and explicit document expansions take precedence. There are no abbreviation-to-ICD mappings and no automatic DU/DS assignment. Unknown/ambiguous abbreviations require clarification through existing model validations/reasoning; that behavior is an instruction, not a deterministic guarantee.

SC, TB, MS, PT, OD and other context-dependent entries retain ambiguity. SC by itself no longer activates the obstetric prompt: an insulin SC record should not receive delivery instructions. Explicit obstetric language, KPD/PEB/HEG/KET or obstetric notation still activates it. Full clinical text and original quotes are not rewritten. Negation, uncertainty, family history, historical diagnoses, planned and cancelled procedures must survive interpretation. No added database, API calls, credentials, model changes or schema migrations.

## Reference checks and limits (9 October 2026)

- Kemenkes, PNPK PPOK: https://keslan.kemkes.go.id/unduhan/fileunduhan_1610419527_23703.pdf — PPOK terminology.
- PERDOSKI, Panduan Praktik Klinis 2017: https://www.perdoski.id/uploads/original/2017/10/PPKPERDOSKI2017.pdf — SC as subcutaneous, demonstrating why SC cannot universally mean caesarean delivery.
- RSUD Dr. Saiful Anwar, Buku Singkatan: https://rsusaifulanwar.jatimprov.go.id/file%20download/akreditasi/buku%20singkatan%20mix.pdf — search-indexed CHF and SC entries checked; full PDF retrieval returned 403. Not treated as a fully imported or verified hospital dictionary.

The remaining entries are a curated starting vocabulary, not a claim that every entry is certified by those sources. A hospital-approved abbreviation list should be used for local validation. The implementation deliberately retains contextual caveats rather than treating an expansion as clinical evidence.

## Verification

`node --test tests/*.test.cjs` includes token boundaries, case variants, selective prompt size, obstetric notation, insulin SC vs obstetric contexts, mixed SC meanings, unchanged evidence text, and preservation instructions for negation/history/uncertainty/planning. Existing tests cover source quote auditing and clinical review gates. No real-model accuracy improvement has been measured yet; these tests verify software behavior, not clinical correctness.
