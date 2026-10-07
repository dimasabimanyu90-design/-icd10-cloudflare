# IM descriptions and parent index references

Diagnosis/procedure labels use exact title_extracted values from the appropriate IM D1 table. WHO title enrichment no longer overwrites a database description. Unverified AI translations are omitted when a DB title is selected. Multiple distinct DB titles are preserved and marked ambiguous rather than selecting one arbitrarily.

For extended ICD-10 codes, candidate parent prefixes are resolved against D1 in the same batch lookup. A prefix alone is not source proof. index_parent_reference retains the child code and existence flag, nearest DB parent, parent entries, and a four-character WHO anchor only when that anchor exists in the database. The original DU/DS code is unchanged.

For a local IM code, WHO index lookup operates on a separate parent object. The resulting who_index has scope parent_reference_only and never grants WHO approval to the child. The browser shows the closest DB parent and a separate parent index reference. If WHO index terms remain unverified, a cached known parent path can be displayed only as an unverified stored reference. Child code existence, clinical applicability and index coverage remain separate.

Live D1 inspection found S72.3 and S72.30 but no S72.301. S72.30 means simple fracture (IM); it is not itself a generic closed-fracture marker. Therefore the implementation does not generate child codes or assign 0/1 suffix semantics by truncation. Open/closed remains in fracture_status with documented/default provenance.

Tests cover canonical titles, parent chain resolution, absent children, ambiguous titles, independent parent verification and browser reference rendering. The S72.301 exact-child test is synthetic and does not claim that code exists in the live dataset.
