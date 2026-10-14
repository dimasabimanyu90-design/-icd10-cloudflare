# MB1–MB5 documentary review

Source: the user's `ICS Version 1_25072025.pdf`, DRAFT V1, §2.2, printed pages 33–37 / PDF pages 34–38, read on 14 October 2026. The introduction requires clarification of an inappropriate recorded primary diagnosis with the DPJP, then MB reselection if clarification does not succeed. This feature implements a review workflow against that uploaded draft, not a claim that it is current national reimbursement policy.

## Behavior

`auditMBReselection` runs through the server's existing `auditICSContext` on every analysis. It extracts explicitly labelled source DU/DS sections independently of the model's role assignment, checks original evidence quotes, and returns a server-computed `ics_policy.mb_review`. Model-supplied review metadata is not trusted.

- MB1 asks for source DS membership, documentary support for the recorded minor/incidental condition and the proposed condition's relevance to care.
- MB2 checks a source-labelled multiple-DU list, membership of the proposed choice, documented combination limitation and care/specialty evidence. It cannot independently decide whether conditions may be coded together.
- MB3 asks for source DS membership, an explicit relationship between the recorded symptom/problem and the proposed condition, and performed treatment evidence. Coexistence alone is insufficient.
- MB4 asks for documentary linkage showing that the proposed condition is a refinement of the recorded condition, not an unrelated diagnosis.
- MB5 checks alternatives in the source DU, distinguishes the symptom branch, and compares the proposed quote with the first written alternative rather than trusting the model's `first_alternative_code` alone.

Each proposed MB rule also requires a documented unsuccessful clarification attempt; missing evidence generates questions. A statement that clarification is merely planned does not pass. All MB decisions remain review-required, even when quotes provide documentary support. No codes or roles are changed automatically.

If the model omits MB, bounded source patterns raise possible-omission alerts: explicit alternatives, multiple labelled DU entries, explicit relationship/refinement/minor-condition cues, or a proposed DU quote that differs from the recorded DU. These are review hints, not comprehensive clinical detection or automatic rule selection. Ordinary cases with no such signal are unchanged.

The result panel displays recorded DU, proposed DU, proposed rule, evidence and unresolved questions. All dynamic text is escaped.

## Verification and limits

`node --test tests/*.test.cjs`: 67 passing tests. The UI module also passes `node --check`. Coverage includes all five rules, both MB5 branches, omitted rules, missing/forged/irrelevant quotes, absent DPJP clarification, planned treatment, incorrect source roles, no automatic code mutation, escaped UI text and a mocked endpoint replay. Existing obstetric and other regression tests pass.

The illustrative positive cases are inspired by the uploaded examples but deliberately add explicit relationship/clarification wording to test the software. They are not a separately coder-validated gold dataset or a live-model accuracy benchmark. Exact quote matching and conservative lexical scope can request clarification for valid paraphrases, abbreviations, complex chronology or missing headings. Subcode semantics, condition severity, true causality, coding combinations and final DU selection still require coder/DPJP review. No database, provider, model or deployment configuration changes.
