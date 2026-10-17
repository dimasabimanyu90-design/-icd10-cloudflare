CREATE TABLE IF NOT EXISTS research_invites (
 token_hash TEXT PRIMARY KEY, participant TEXT NOT NULL UNIQUE,
 created_at TEXT NOT NULL, expires_at TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS research_responses (
 id TEXT PRIMARY KEY, invite_hash TEXT NOT NULL UNIQUE,
 participant TEXT NOT NULL, payload TEXT NOT NULL,
 created_at TEXT NOT NULL, deleted_at TEXT,
 FOREIGN KEY(invite_hash) REFERENCES research_invites(token_hash)
);
CREATE TABLE IF NOT EXISTS research_cases (
 id TEXT PRIMARY KEY, case_id TEXT NOT NULL, version TEXT NOT NULL,
 payload TEXT NOT NULL, created_at TEXT NOT NULL, deleted_at TEXT,
 UNIQUE(case_id,version)
);
CREATE TABLE IF NOT EXISTS research_audit (
 id TEXT PRIMARY KEY, actor TEXT NOT NULL, action TEXT NOT NULL,
 target TEXT NOT NULL, created_at TEXT NOT NULL
);
