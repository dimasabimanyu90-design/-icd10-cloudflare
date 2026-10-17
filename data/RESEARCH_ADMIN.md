# Research collection and owner administration

Public questionnaire: `/penelitian.html`. Owner dashboard: `/admin/`.
Only the configured owner email can log in via Cloudflare Access email OTP.
The `/admin` Access application must include every admin subpath. Pages middleware
also verifies the RS256 signature, issuer, audience, expiration and exact owner email
on all `/admin/*` requests. Missing configuration denies access, including on preview URLs.

Required Pages configuration in each environment:

- `RESEARCH_DB`: dedicated D1 database, initialized using `research-schema.sql`.
- `RESEARCH_ACCESS_ISSUER`: exact HTTPS Cloudflare Access team URL, no trailing slash.
- `RESEARCH_ACCESS_AUD`: application audience tag.
- `RESEARCH_ADMIN_EMAIL`: exact owner email allowed by the Access policy.

Keep production and preview research databases separate. This project uses
dashboard-managed Pages bindings; the existing `wrangler.toml` is not the source
of truth for Pages deployment configuration. No admin password or token is shipped
to the browser. Do not disable JWT verification to test preview deployments.

## Workflow

1. Owner logs into `/admin/`, creates an anonymous participant ID and saves the
   generated invitation link. The database stores only the token hash.
2. Give the invitation link directly to that participant. Treat it as a secret:
   whoever possesses it can submit once. It expires after 30 days. No automatic
   email is sent by the application.
3. Participant opens the public form, tries the system, consents and submits.
   Responses cannot be listed, edited, exported or deleted via the public API.
   The participant ID comes from the invitation, not user-supplied JSON.
4. Owner loads responses, exports all pages to CSV, and records expert-reference
   cases separately. SUS scores and exact code matches are computed on the server.
5. Deletion archives a record from active views and logs the owner action. It does
   not erase the underlying record or allow reuse of an invitation. A retention
   and permanent-erasure policy must be specified in the study protocol.

The questionnaire remains a draft instrument. Review translated wording, consent,
institutional permission and protocol before issuing invitations for a formal study.
No research responses are bundled with the static site. Previously entered local
draft responses are not uploaded or silently migrated to the central database.
Local coding history remains separate and is not uploaded with survey responses.

## Verification

`node --test tests/*.test.cjs` includes research access tests for valid/invalid
signed JWTs, mismatched owner email, issuer/audience/expiry, absent configuration,
cross-origin deletion, public read rejection, replay handling and score tampering.
Public form and admin controls require online Pages Functions; `file://` previews
can display the questionnaire but cannot submit or authenticate.

## Rollback

Revert the feature commit to remove the entry points and endpoints. Preserve the
research D1 databases and Access policy until retention decisions are made.
Do not export or delete existing response data as part of code rollback.
