# Pneumonia regression and limits

WHO ICD-10 2010: J18.0 is bronchopneumonia, unspecified; J18.1 is lobar pneumonia, unspecified; J18.9 is pneumonia, unspecified. Sources: official WHO ICD-10 2010 browser and its ACSearch index terms, https://icd.who.int/browse10/2010/en and WHO 2010 Volume 2 https://icd.who.int/browse10/Content/statichtml/ICD10Volume2_en_2010.pdf.

The prior specialist prompt incorrectly labeled J18.1 as bronchopneumonia. The cached J18.1 entry also incorrectly included Bronchopneumonia NOS. Both are corrected. Right-upper-lobe location alone does not establish bronchopneumonia or a physician-confirmed lobar pattern. The prompt proposes J18.9 with clarification when only location/CAP is documented and no organism or specific pattern is established; it preserves J18.1 for explicit lobar/lobaris pneumonia and J18.0 for explicit bronchopneumonia.

A targeted documentation audit blocks index approval for unsupported J18.0/J18.1 and J96.x selections. It retains the AI proposal with review warnings rather than silently substituting a code. It is not a complete clinical validity engine. A matching quote is not proof of all clinical or secondary-diagnosis criteria.

Index lead-root matching cannot prove essential dash modifiers. Such branches now require manual review instead of a green badge. Parenthesized nonessential qualifiers remain accepted, and complete source terms remain displayed. This conservative change reduces false approval but leaves some correctly selected modifier-dependent codes unverified until a full source-and-documentation modifier resolver is implemented.

GDS/HbA1c values alone do not prove procedure 90.59. A documented chest radiograph can support a radiology procedure; confirm the exact ICD-9-CM code against its tabular description. Tabular existence is labeled as code existence rather than clinical approval.

Tests: node tests/pneumonia-accuracy.test.cjs plus the shared module, ICS, index cross-reference, integration and WHO adapter suites.

A subsequent live regression showed the model still proposes J18.1 for location-only wording despite the prompt. A bounded provisional normalization now changes J18.0/J18.1 to J18.9 only when the source quote is present, it states pneumonia without the proposed broncho/lobar pattern, the input explicitly states an unknown/unspecified organism, and the quote does not state an etiological/aspiration/hypostatic form. The original code is retained in coding_adjustment, confidence is capped at 70, and clarification is warned. This is not a final clinical assignment. The normalized diagnosis is then checked against D1 and WHO, rather than reusing references from the old code.
