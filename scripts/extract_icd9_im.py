import hashlib,json,re,sqlite3,subprocess,sys
from pathlib import Path
pdf=Path(sys.argv[1]); out=Path(sys.argv[2]); out.mkdir(parents=True,exist_ok=True)
text=subprocess.check_output(['pdftotext','-layout',str(pdf),'-']).decode()
sha=hashlib.sha256(pdf.read_bytes()).hexdigest()
entries=[]; current=None
for page,body in enumerate(text.split('\f'),1):
 for line in body.splitlines():
  stripped=line.strip()
  if not stripped or any(x in stripped for x in ['Copyright®','Indonesian Modification Version','MERAH :','BIRU :','HIJAU :','TABULAR LIST OF PROCEDURES','Daftar Kode Indonesian Modification']) or re.fullmatch(r'\d+',stripped): continue
  m=re.match(r'^\s*(\d{2}\.\d{1,3})\s+(.+)$',line)
  if m:
   if current: entries.append(current)
   code,title=m.groups()
   current=dict(code=code,kind='category' if len(code.split('.')[1])==1 else 'procedure',title_extracted=title.strip(),raw_text=stripped,source_file=pdf.name,source_sha256=sha,pdf_page=page,review_status='draft')
  elif current:
   current['raw_text']+='\n'+stripped
if current: entries.append(current)
for e in entries:
 e['explicit_im_marker']=int('(IM)' in e['raw_text'])
 e['entry_id']=hashlib.sha256((sha+'|'+str(e['pdf_page'])+'|'+e['code']+'|'+e['raw_text']).encode()).hexdigest()[:24]
schema="""CREATE TABLE IF NOT EXISTS icd9_im_entries (
 entry_id TEXT PRIMARY KEY, code TEXT NOT NULL, kind TEXT NOT NULL,
 title_extracted TEXT NOT NULL, raw_text TEXT NOT NULL,
 explicit_im_marker INTEGER NOT NULL CHECK (explicit_im_marker IN (0,1)),
 source_file TEXT NOT NULL, source_sha256 TEXT NOT NULL,
 pdf_page INTEGER NOT NULL, review_status TEXT NOT NULL DEFAULT 'draft'
 CHECK (review_status IN ('draft','reviewed'))
);
CREATE INDEX IF NOT EXISTS idx_icd9_im_code ON icd9_im_entries(code);
"""
def quote(v): return str(v) if isinstance(v,int) else "'"+v.replace("'","''")+"'"
cols=list(entries[0]); sql=schema+'\n'+'\n'.join('INSERT OR IGNORE INTO icd9_im_entries ('+','.join(cols)+') VALUES ('+','.join(quote(e[c]) for c in cols)+');' for e in entries)
(out/'icd9_im.sql').write_text(sql)
(out/'icd9_im.json').write_text(json.dumps(entries,ensure_ascii=False,indent=2))
c=sqlite3.connect(':memory:');c.executescript(sql);c.executescript(sql)
assert c.execute('select count(*) from icd9_im_entries').fetchone()[0]==len(entries)
print(json.dumps({'entries':len(entries),'by_kind':c.execute('select kind,count(*) from icd9_im_entries group by kind').fetchall(),'duplicates':c.execute('select code,count(*) from icd9_im_entries group by code having count(*)>1').fetchall(),'source_sha256':sha,'idempotent':True}))
