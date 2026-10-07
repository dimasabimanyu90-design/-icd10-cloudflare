# Maternal TTTS and complex delivery review

This is a narrow regression fix for the reported gemelli + TTTS + IUFD + preterm caesarean episode. It is not a complete obstetric sequencing engine.

Sources: user-uploaded ICD10_2010.pdf, tabular PDF pages 625 (O31.2: continuing pregnancy after intrauterine death), 630 (O36, including placental transfusion exclusion), 632 (O43.0: includes twin-to-twin transfusion), 634 (O60.1 and O60.3); WHO 2010 Volume 2 section 4.4, printed page 144 / PDF page 149: https://icd.who.int/browse10/Content/statichtml/ICD10Volume2_en_2010.pdf. Source extraction remains unreviewed; neighbouring raw-text notes are not automatically interpreted as rules. Local ICD-9 database 74.99: Other caesarean section of unspecified type.

- Retrieve bounded maternal obstetric source candidates before generation.
- A final maternal diagnosis explicitly documenting TTTS supports provisional O43.0, including recovery of an omitted model candidate. Do not apply to negated, suspected, historical or newborn-record mentions. Code still passes the official WHO gate.
- Do not infer DU from the order of coexisting diagnoses, the plus sign, caesarean route, or presumed TTTS-to-IUFD causality.
- In the reported complex episode, preserve the model's DU as a proposal and visibly request the dominant admission/SC indication when not specifically documented. The combined heading “Diagnosis utama dan riwayat” is not a specific primary designation.
- A unique explicit “Diagnosis utama: TTTS” can move the maternal TTTS candidate to DU when the competing model primary is preterm delivery, twin pregnancy or intrauterine death. Multiple competing DU entries remain reviewable.
- Reject MB5 alternative interpretation of the reported plus-separated coexistence list. This is not a global rewrite of all MB5 cases.
- Do not derive anemia from Hb, another twin's birth outcome from IUFD, continuing pregnancy from gemelli alone, or a low-cervical procedure from the term SC alone. The procedure instruction is source-backed prompting; no deterministic procedure insertion is performed.

Validation: regression replay of the observed wrong TTTS code and MB5 branch, negation/history/newborn boundaries, repeat safety, explicit-primary and ambiguous-primary cases, source-query bounds, and actual UI grouping/clarification rendering. Clinical validity remains not certified.
