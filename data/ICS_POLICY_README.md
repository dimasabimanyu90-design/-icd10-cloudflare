# Uploaded ICS/iDRG reference profile

Profile: `uploaded-ics-draft-v1-20250725`. ICS file is marked DRAFT V1; April2025 document is a presentation and describes IM as draft. Neither upload establishes currently binding policy. Hashes are recorded in ics-reference-profile.json.

Implemented scope: core primary-diagnosis principles, MB1–MB5 branches, symptom documentation, source-based see/see also, conditional operative-approach omission, performed-only code also, and explicit outpatient chemotherapy/radiotherapy rules. Source sections and printed/PDF page numbers accompany runtime profile metadata. This is not a complete implementation of every MDC-specific chapter in the documents.

The prompt carries paraphrased source rules and an explicit precedence overlay. The server checks a single DU, whether documentation quotations occur in input, whether MB rules/MB5 modes are recognized, consistency with the reported first alternative code, and narrowly scoped outpatient injection checks. It returns per-check results and source-labelled warnings. No diagnosis is automatically resequenced or deleted by these checks.

A quotation match only shows that text occurs in the user's input. It does not authenticate the medical record, establish the diagnosis-code mapping, prove a clinical relationship, or verify the model's reported ordering/MB branch. All MB decisions require review. `finalized` remains false even when documentation checks pass.

MB5 follows the uploaded draft's distinct symptom/possible-causes and alternative-diagnoses cases. Applicability must be reviewed against the actual setting and governing version. Outpatient chemotherapy rules must not be extrapolated to inpatient or oral treatment.

Tests: `node tests/ics-policy.test.cjs`, `node tests/coding-integration.test.cjs`, `node tests/index-cross-reference.test.cjs`. Cases cover source-grounded MB examples, missing or fabricated quotes, duplicate primary diagnoses and setting/route boundaries. WHO/model/D1 are mocked in these tests; tests do not certify clinical performance.
