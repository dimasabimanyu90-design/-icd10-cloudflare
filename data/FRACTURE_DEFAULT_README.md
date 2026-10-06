# Closed-fracture coding default

A traumatic fracture not indicated as closed or open is classified as closed for coding. Source: ICD-10 fracture category notes, also reproduced in the uploaded ICD-10 IM Version 01 2025 list (PDF page 84, printed page 83, S82 note). Official WHO ICD-10 browser: https://icd.who.int/browse10/2010/en.

coding-rules.js owns applyFractureDefaults. The server applies it before D1 and WHO reference lookup. Each diagnosis gets fracture_status with classification, documented versus icd10_default basis, clinical_confirmation, and code_unchanged. A visible INFO message explains the default. Source quotations and clinical descriptions are not rewritten to pretend the doctor documented closed status.

The check is scoped to traumatic fracture categories and the source clause for each diagnosis. Explicit open/compound or closed documentation takes precedence. Conflicting documentation remains unverified. ORIF/open reduction does not establish an open fracture. Unrelated open wounds are not treated as fracture status. Missing or unmatched source quotes remain unverified. Pathological M-code fractures are outside this rule.

No 0/1 suffix is appended automatically: IM subcodes can encode morphology (e.g. S72.30 simple fracture), so closed status must not invent a simple fracture or overwrite a local extension. Supplementary characters need separate tabular/profile verification.

Regression tests read the actual fracture example from index.html and cover explicit open/closed, multiple injuries, conflicts, missing evidence, ORIF and preservation of codes/quotes.

A live regression exposed an unsupported S72.32 comminuted proposal for the built-in femoral shaft case. A separate targeted morphology audit now returns S72.30/.31/.32/.37 proposals to provisional S72.3 when the source quote establishes the shaft/femur but does not document the subcode's morphology. The original code is retained in coding_adjustment; explicit morphology is preserved. Run this audit before status defaults so notes refer to the resulting code. This correction does not append a closed/open suffix.
