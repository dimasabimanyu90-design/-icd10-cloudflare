# Shared coding policy

Edit `coding-rules.js` for coding policy. Both browser (`index.html`) and Cloudflare Functions (`functions/api/claude.js`) import this ES module.

Sections: extraction/output prompts; sourced ICS/MB rules and specialty selection; source-based index referral checks; structural/quote evidence checks; procedure keyword warnings; diagnosis format checks; source-backed IM badges.

The endpoint retains HTTP, model, WHO and D1 adapters. `known-paths.js` retains reference data and its accessor only. Legacy `validator.js` is removed. The browser exposes thin compatibility wrappers for existing render functions, with no separate rule copies.

Cleanup: corrected stale cholecystectomy/colonoscopy/joint-replacement prompt mappings; removed lab-number inference, automatic PCI stent selection and blanket operative-approach omission; replaced static IM badge allowlist with returned reference metadata. Cached paths no longer certify clinical validity. Keyword warnings are evidence prompts, not proof of performed procedures.

Sources and clinical limits remain in ICS_POLICY_README.md and ICD9_PATHS_AUDIT.md. Some specialty hints and cached reference paths still need clinical audit; moving them here does not establish that every rule is complete or current. No clinical auto-finalization is enabled.

Run all four suites:
- node tests/coding-rules-module.test.cjs
- node tests/coding-integration.test.cjs
- node tests/ics-policy.test.cjs
- node tests/index-cross-reference.test.cjs

Tests include native ESM import without browser globals, shared policy ownership, source-backed badges, corrected mappings, lab-only numeric input, documentation/MB checks, and cross-reference failures. Mocked model/WHO/D1 tests do not certify clinical performance.
