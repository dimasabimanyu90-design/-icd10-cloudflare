# WHO diagnoses with separate IM reference options

DU/DS use WHO ICD-10 2010. A successful exact-code WHO lookup and official title are required before a proposed diagnosis enters the DU/DS list. This proves code existence, not clinical fit or sequencing. Invalid, unavailable, explicitly IM, and unsupported extended-code proposals are retained in `blocked_diagnoses` with a reason, outside DU/DS counts. No fallback truncation is performed.

The model is instructed to propose WHO base diagnoses. `ICD10_IM_DB` supplies `im_options` after WHO validation; it does not overwrite a WHO code, role, or title. The options are bounded code-family candidates with independent database descriptions and PDF provenance. A shared prefix does not prove an IM mapping or clinical fit, especially for WHO closed/open characters that collide with IM morphology. All options require review and remain unselected. Missing IM lookup leaves the WHO diagnosis available. Proposals cannot supply trusted options or validation metadata through model normalization.

Vol. 3 paths belong to the WHO diagnosis; an IM option references that WHO parent scope only and does not gain child-code verification. Existing IM procedure behavior is unchanged.

## Next reference-data step

A local WHO 2010 Alphabetical Index dataset should preserve lead terms, essential modifier levels, nonessential modifiers, explicit code targets, cross-references (`see`, `see also`, `see condition`), source pages, edition, and review status. A matching versioned Tabular dataset must preserve inclusion/exclusion notes and dagger/asterisk conventions. An IM crosswalk needs source-backed WHO parent relations plus required documented qualifiers; prefix matching alone is advisory. DU/DS selection still depends on the documented care episode and applicable coding rules. No fabricated index hierarchy should be imported from model output.

## Validation

Regression tests cover invalid/offline code quarantine, unchanged WHO titles, WHO/IM numeric collisions, independent candidate descriptions, missing IM bindings, no automatic option selection, no digit truncation, and safe UI rendering. Existing coding and source-path tests remain in place with legacy IM-diagnosis expectations updated for the WHO-only base policy.
