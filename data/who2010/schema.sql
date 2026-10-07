
CREATE TABLE IF NOT EXISTS reference_sources(source_id TEXT PRIMARY KEY,file_name TEXT,sha256 TEXT,pages INTEGER,declared_version TEXT,notes TEXT);
CREATE TABLE IF NOT EXISTS tabular_entries(entry_id TEXT PRIMARY KEY,code TEXT,title TEXT,symbol TEXT,raw_text TEXT,pdf_page INTEGER,source_id TEXT,review_status TEXT);
CREATE INDEX IF NOT EXISTS tabular_code ON tabular_entries(code);
CREATE TABLE IF NOT EXISTS index_entries(entry_id TEXT PRIMARY KEY,code TEXT,lead_term TEXT,modifiers_json TEXT,path_text TEXT,raw_text TEXT,targets_json TEXT,pdf_page INTEGER,end_page INTEGER,source_id TEXT,section TEXT,version TEXT,review_status TEXT,context_issue TEXT);
CREATE INDEX IF NOT EXISTS index_code ON index_entries(code,section);
CREATE INDEX IF NOT EXISTS index_lead ON index_entries(lead_term COLLATE NOCASE);
CREATE TABLE IF NOT EXISTS shared_subdivisions(group_start TEXT,group_end TEXT,suffix TEXT,title TEXT,raw_text TEXT,pdf_page INTEGER,source_id TEXT,review_status TEXT,PRIMARY KEY(group_start,group_end,suffix));
CREATE TABLE IF NOT EXISTS quarantined_pages(pdf_page INTEGER PRIMARY KEY,section TEXT,version_label TEXT,raw_text TEXT,source_id TEXT);
