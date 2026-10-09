# Z-code context support

The prompt now explicitly considers reasons for encounters, current status, family history and personal history, alongside active diseases. It distinguishes screening, follow-up, ongoing care and active complications. It does not force additional Z codes, automatically assign a DU/DS role, or infer a birth outcome from G/P/A or IUFD.

## Documentary correction

Previously RPK/RPD context was rejected uniformly as evidence of a current diagnosis. `documentationIssue` now takes a server-derived evidence kind for Z80–Z84 (family history) or Z85–Z87 (personal history). Only the matching historical-context rejection is relaxed. Literal-source matching, negation, uncertainty and procedure checks remain active. Active-disease candidates receive no exemption. Personal-history candidates additionally require explicit inactive/resolved/completed-treatment context in the quote; RPD alone cannot establish recovery. These are conservative lexical guards, not complete clinical interpretation.

`z_context` is computed by the server during audit (not taken from model metadata). It records the broad documentary scope and always retains `review_required: true` and `clinical_validity: not_certified`. Subcode correctness, condition identity, clinical relevance and sequencing still need the existing source checks and coder review. Other Z categories get a bounded context-presence check, not automatic validation. No codes are inserted, removed or recoded by this feature. The existing DS relevance check remains unchanged.

## Reference checks

WHO 2010 remains the application's code/version authority. Its public GetConcept block pages could not be retrieved during this change. The official NHS ICD-10 fifth-edition tabular browser was used only to cross-check broad chapter groupings and distinctions, not to import UK reimbursement policy or assert WHO-2010 validity of a new subcode:

- https://classbrowser.nhs.uk/ICD-10-5TH-Edition/vol1/block-z80-z99.htm
- https://classbrowser.nhs.uk/ICD-10-5TH-Edition/vol1/block-z00-z13.htm
- https://classbrowser.nhs.uk/ICD-10-5TH-Edition/vol1/block-z40-z54.htm

The WHO-2010 validation adapter, uploaded references and existing Indonesian draft-reference policy remain in place. There are no changes to database contents, model, API keys or deployment configuration.

## Tests and limits

`node --test tests/*.test.cjs`: 54 tests pass. Coverage includes family vs active vs personal-history evidence, RPK multiline scope, negated/uncertain/fabricated history, inactive personal-history documentation, no automatic Z insertion, continued DS relevance checking, and an API replay with a mocked model.

No live LLM accuracy benchmark has been performed. An accepted documentary context does not prove a disease-specific subcode. Complex chronology, unfamiliar section headings, concurrent conditions and compound quotes remain limitations; the feature requests review rather than certifying clinical coding. Missing Z proposals are addressed by prompt coverage, not a comprehensive deterministic omission detector.
