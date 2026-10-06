"""Extract a reviewable ICD-10 IM reference, never automatic coding approval.

Requires Python 3 and pdftotext (Poppler). Titles/notes retain source spelling.
Usage: python3 scripts/build_icd10_im.py primary.pdf [comparison.pdf]
"""
import hashlib
import json
import re
import sqlite3
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
START = re.compile(r'^\s*(M\d{4}/[0-9]|[A-Z]\d{2}(?:\.\d{1,3})?)\s+(.+)$')
NOISE = re.compile(r'List Code ICD|Daftar Kode Diagnosa|MERAH\s*:|BIRU\s*:|HIJAU\s*:|Indonesian Modification Version|Copyright|^\s*\d+\s*$')
SCHEMA = '''CREATE TABLE IF NOT EXISTS icd10_im_entries (
 entry_id TEXT PRIMARY KEY, code TEXT NOT NULL, kind TEXT NOT NULL,
 title_extracted TEXT NOT NULL, raw_text TEXT NOT NULL,
 explicit_im_marker INTEGER NOT NULL CHECK (explicit_im_marker IN (0,1)),
 source_file TEXT NOT NULL, source_sha256 TEXT NOT NULL,
 pdf_page INTEGER NOT NULL, review_status TEXT NOT NULL DEFAULT 'draft'
 CHECK (review_status IN ('draft','reviewed'))
);
CREATE INDEX IF NOT EXISTS idx_icd10_im_code ON icd10_im_entries(code);
'''


def extract(path):
    digest = hashlib.sha256(path.read_bytes()).hexdigest()
    text = subprocess.check_output(['pdftotext', '-layout', str(path), '-'], text=True)
    entries = []
    current = None
    title_open = False
    def finish():
        nonlocal current
        if current:
            raw = '\n'.join(current.pop('lines')).strip()
            current['raw_text'] = raw
            current['explicit_im_marker'] = int('(IM)' in current['title_extracted'])
            current['entry_id'] = hashlib.sha256(
                f'{digest}:{current["pdf_page"]}:{current["code"]}:{raw}'.encode()
            ).hexdigest()[:24]
            entries.append(current)
        current = None
    for page, body in enumerate(text.split('\f'), 1):
        # A page boundary terminates a record: continuation on another page
        # requires manual review rather than silently guessing its owner.
        finish()
        for line in body.splitlines():
            if NOISE.search(line):
                continue
            match = START.match(line)
            if match:
                finish()
                code, title = match.groups()
                current = dict(code=code, kind='morphology' if '/' in code else 'diagnosis',
                    title_extracted=title.strip(), lines=[line.rstrip()],
                    source_file=path.name, source_sha256=digest, pdf_page=page,
                    review_status='draft')
                title_open = '(IM)' not in title
            elif current:
                current['lines'].append(line.rstrip())
                stripped = line.strip()
                if not stripped or re.match(r'^(?:[•]|Incl|Excl|Note|Chapter|Conditions|Use |Code )', stripped):
                    title_open = False
                elif title_open:
                    current['title_extracted'] += ' ' + stripped
                    if '(IM)' in stripped:
                        title_open = False
        finish()
    return entries


def main():
    paths = [Path(p) for p in sys.argv[1:]]
    if not paths:
        raise SystemExit(__doc__)
    rows = extract(paths[0])
    out = ROOT / 'data'
    out.mkdir(exist_ok=True)
    columns = list(rows[0])
    db_path = out / 'icd10_im.sqlite'
    db_path.unlink(missing_ok=True)
    db = sqlite3.connect(db_path)
    db.executescript(SCHEMA)
    sql = 'INSERT INTO icd10_im_entries (' + ','.join(columns) + ') VALUES (' + ','.join('?' for _ in columns) + ')'
    db.executemany(sql, [tuple(row[c] for c in columns) for row in rows])
    db.commit()
    # D1-compatible, idempotent seed preserving future reviewed rows.
    def literal(value):
        return str(value) if isinstance(value, int) else "'" + value.replace("'", "''") + "'"
    seed = [SCHEMA]
    for row in rows:
        seed.append('INSERT OR IGNORE INTO icd10_im_entries (' + ','.join(columns) + ') VALUES (' + ','.join(literal(row[c]) for c in columns) + ');')
    (out / 'icd10_im.sql').write_text('\n'.join(seed), encoding='utf-8')
    (out / 'icd10_im.json').write_text(json.dumps(rows, ensure_ascii=False, indent=2), encoding='utf-8')
    report = dict(source=paths[0].name, entries=len(rows), unique_codes=len({r['code'] for r in rows}),
        diagnosis_entries=sum(r['kind']=='diagnosis' for r in rows),
        morphology_entries=sum(r['kind']=='morphology' for r in rows),
        explicitly_marked_im=sum(r['explicit_im_marker'] for r in rows), review_status='draft',
        limitations=['Not the complete WHO ICD-10 list.', 'PDF colors and layout are not retained.',
                      'Titles, notes, code references and page continuations require human review.',
                      'An IM marker is a source label, not proof of coding validity.'])
    if len(paths) > 1:
        comparison = extract(paths[1])
        a, b = {r['code'] for r in rows}, {r['code'] for r in comparison}
        report['comparison'] = dict(source=paths[1].name, entries=len(comparison),
            unique_codes=len(b), only_primary=sorted(a-b), only_comparison=sorted(b-a),
            note='Compared extracted code sets only; does not establish document equivalence.')
    (out / 'icd10_im_report.json').write_text(json.dumps(report, indent=2), encoding='utf-8')
    db.close()
    print(json.dumps(report, indent=2))


if __name__ == '__main__':
    main()
