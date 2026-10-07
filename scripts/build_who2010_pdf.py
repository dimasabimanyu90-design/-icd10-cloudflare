#!/usr/bin/env python3
"""Extract uploaded PDF into reviewable source records, never certified code paths."""
import argparse, hashlib, json, re, sqlite3
from collections import Counter
from pathlib import Path
import fitz
CODE=re.compile(r'(?<![A-Za-z0-9])([A-Z]\d{2}(?:\.[0-9-]{1,2})?)([†*]?)')
HEADER=re.compile(r'^([A-Z]\d{2}(?:\.\d{1,2})?)([†*]?)(?:\s+(.*))?$')
def norm(s): return re.sub(r'\s+',' ',s).strip()
def lines(page):
 out=[]
 for b in page.get_text('dict')['blocks']:
  for l in b.get('lines',[]):
   t=norm(''.join(s['text'] for s in l['spans']))
   x,y,_,_=l['bbox']
   if t and 50<y<535 and not re.fullmatch(r'\d+',t): out.append((x,y,t))
 return out
SCHEMA='''
CREATE TABLE IF NOT EXISTS reference_sources(source_id TEXT PRIMARY KEY,file_name TEXT,sha256 TEXT,pages INTEGER,declared_version TEXT,notes TEXT);
CREATE TABLE IF NOT EXISTS tabular_entries(entry_id TEXT PRIMARY KEY,code TEXT,title TEXT,symbol TEXT,raw_text TEXT,pdf_page INTEGER,source_id TEXT,review_status TEXT);
CREATE INDEX IF NOT EXISTS tabular_code ON tabular_entries(code);
CREATE TABLE IF NOT EXISTS index_entries(entry_id TEXT PRIMARY KEY,code TEXT,lead_term TEXT,modifiers_json TEXT,path_text TEXT,raw_text TEXT,targets_json TEXT,pdf_page INTEGER,end_page INTEGER,source_id TEXT,section TEXT,version TEXT,review_status TEXT,context_issue TEXT);
CREATE INDEX IF NOT EXISTS index_code ON index_entries(code,section);
CREATE INDEX IF NOT EXISTS index_lead ON index_entries(lead_term COLLATE NOCASE);
CREATE TABLE IF NOT EXISTS shared_subdivisions(group_start TEXT,group_end TEXT,suffix TEXT,title TEXT,raw_text TEXT,pdf_page INTEGER,source_id TEXT,review_status TEXT,PRIMARY KEY(group_start,group_end,suffix));
CREATE TABLE IF NOT EXISTS quarantined_pages(pdf_page INTEGER PRIMARY KEY,section TEXT,version_label TEXT,raw_text TEXT,source_id TEXT);
'''
def extract(pdf):
 doc=fitz.open(pdf);sha=hashlib.sha256(Path(pdf).read_bytes()).hexdigest();source=sha[:24]
 tab=[];current=None
 # Source headings, not inferred ICD leaf codes. Shared fourth-character tables
 # remain in raw_text; expansion is a separate reviewed mapping step.
 for n in range(16,1118):
  for x,y,t in sorted(lines(doc[n]),key=lambda z:(z[1],z[0])):
   if 'WHO’s ICD-10' in t or 'Version for 2010' in t:continue
   m=HEADER.match(t) if 45<x<85 else None
   if m:
    if current:tab.append(current)
    current={'code':m[1],'title':m[3] or '','symbol':m[2],'raw_text':t,'pdf_page':n+1,'source_id':source,'review_status':'extracted_requires_review'}
   elif current:
    current['raw_text']+='\n'+t
    # Wrapped title uses an indented line immediately after its heading.
    if not current['title']:
     current['title']=t
    elif len(current['raw_text'].splitlines())==2 and not re.match(r'Includes|Excludes|Note|Use |See |\[|·',t) and abs(x-86.6)<9:
     current['title']+=' '+t
 if current:tab.append(current)
 rows=[];root='';stack=[];context='';pending=None
 def emit():
  nonlocal pending,root,stack,context
  if not pending:return
  text=pending['text'];page=pending['page'];end=pending['end'];depth=pending['depth']
  targets=[{'code':m[1],'symbol':m[2]} for m in CODE.finditer(text)]
  label=norm(re.sub(r'(?:\s+[A-Z]\d{2}(?:\.[0-9-]{1,2})?[†*]?)+\s*$','',text));label=re.sub(r'^(?:-\s*)+','',label).strip()
  if depth==0:
   root=label;stack=[];context=''
  elif not root:context='missing_lead_term'
  if depth:
   if len(stack)<depth-1:context='missing_modifier_context'
   stack=stack[:depth-1]+[label]
  path=[root]+['-'*(i+1)+' '+v for i,v in enumerate(stack)]
  for target in targets or [{'code':'','symbol':''}]:
   record={'code':target['code'],'lead_term':root,'modifiers_json':json.dumps(stack,ensure_ascii=False),'path_text':'\n'.join(path),'raw_text':text,'targets_json':json.dumps(targets,ensure_ascii=False),'pdf_page':page,'end_page':end,'source_id':source,'section':pending['section'],'version':'2010','review_status':'extracted_requires_review','context_issue':context}
   record['entry_id']=hashlib.sha256(json.dumps(record,sort_keys=True).encode()).hexdigest()[:24];rows.append(record)
  pending=None
 for n in range(1130,1858):
  section='diagnosis' if n<1806 else 'external_cause'
  if n==1806:emit();root='';stack=[];context=''
  all_lines=lines(doc[n]);cols=[[],[]]
  for x,y,t in all_lines:
   if 'WHO’s ICD-10' in t or t.startswith('Alphabetical Index') or t.startswith('External Causes') or re.fullmatch(r'[A-Z]',t) or t=='Section II':continue
   cols[int(x>=210)].append((x,y,t))
  for col in cols:
   if not col:continue
   baseline=Counter(round(x) for x,y,t in col).most_common(1)[0][0]
   for x,y,t in sorted(col,key=lambda z:(z[1],z[0])):
    if 'continued' in t.lower() and re.search(r'-{3,}|…',t):
     emit();name=re.split(r'-{3,}|…',t)[0].strip()
     if not root.lower().startswith(name.lower()):root=name;stack=[];context='continuation_context_unresolved'
     continue
    m=re.match(r'^((?:-\s*)+)',t);depth=m[1].count('-') if m else 0
    starts=bool(m) or abs(x-baseline)<3
    if starts:
     emit();pending={'text':t,'page':n+1,'end':n+1,'depth':depth,'section':section}
    elif pending:
     pending['text']+=' '+t;pending['end']=n+1
    else:
     pending={'text':t,'page':n+1,'end':n+1,'depth':0,'section':section};context='orphan_wrapped_line'
 emit()
 for r in tab:r['entry_id']=hashlib.sha256(json.dumps(r,sort_keys=True).encode()).hexdigest()[:24]
 quarantine=[{'pdf_page':n+1,'section':'drugs_and_chemicals','version_label':'mixed_2010_cover_2007_running_headers','raw_text':doc[n].get_text(),'source_id':source} for n in range(1858,len(doc))]
 shared=[];part=None
 for n in [185,186]:
  for x,y,t in sorted(lines(doc[n]),key=lambda z:(z[1],z[0])):
   if HEADER.match(t) and t.startswith('E10 '):break
   m=re.match(r'^\.(\d)([†*]?)\s+(.*)',t)
   if m:
    if part:shared.append(part)
    part={'group_start':'E10','group_end':'E14','suffix':m[1],'title':m[3],'raw_text':t,'pdf_page':n+1,'source_id':source,'review_status':'extracted_requires_review'}
   elif part and 50<y<530:part['raw_text']+='\n'+t
 if part:shared.append(part)
 return {'source_id':source,'file_name':Path(pdf).name,'sha256':sha,'pages':len(doc),'declared_version':'2010','notes':'User-uploaded compilation. Drugs/chemicals section contains 2007 running headers and is quarantined.'},tab,rows,quarantine,shared

def main():
 ap=argparse.ArgumentParser();ap.add_argument('pdf');ap.add_argument('--out',required=True);a=ap.parse_args();out=Path(a.out);out.mkdir(parents=True,exist_ok=True)
 source,tab,index,quarantine,shared=extract(a.pdf)
 db=sqlite3.connect(out/'who2010.sqlite');db.executescript(SCHEMA)
 for table,records in [('reference_sources',[source]),('tabular_entries',tab),('index_entries',index),('quarantined_pages',quarantine),('shared_subdivisions',shared)]:
  for r in records:
   keys=list(r);db.execute(f"INSERT OR REPLACE INTO {table} ({','.join(keys)}) VALUES ({','.join('?' for _ in keys)})",list(r.values()))
 db.commit()
 sql=SCHEMA+'\nDELETE FROM index_entries; DELETE FROM tabular_entries; DELETE FROM reference_sources; DELETE FROM quarantined_pages; DELETE FROM shared_subdivisions;\n'+'\n'.join(x for x in db.iterdump() if not x.startswith(('BEGIN TRANSACTION','COMMIT','CREATE TABLE','CREATE INDEX')))+'\n';(out/'who2010.sql').write_text(sql);(out/'schema.sql').write_text(SCHEMA)
 summary={**source,'tabular_records':len(tab),'tabular_distinct_codes':len({r['code'] for r in tab}),'index_records':len(index),'diagnosis_index_records':sum(r['section']=='diagnosis' for r in index),'external_cause_records':sum(r['section']=='external_cause' for r in index),'index_context_issues':sum(bool(r['context_issue']) for r in index),'quarantined_pages':len(quarantine),'shared_subdivisions':len(shared),'certified_records':0}
 summary['index_emitted_records']=summary['index_records']
 summary['index_records']=db.execute('SELECT COUNT(*) FROM index_entries').fetchone()[0]
 summary['diagnosis_index_records']=db.execute("SELECT COUNT(*) FROM index_entries WHERE section='diagnosis'").fetchone()[0]
 summary['external_cause_records']=db.execute("SELECT COUNT(*) FROM index_entries WHERE section='external_cause'").fetchone()[0]
 summary['index_context_issues']=db.execute("SELECT COUNT(*) FROM index_entries WHERE context_issue <> ''").fetchone()[0]
 (out/'manifest.json').write_text(json.dumps(summary,indent=2));print(json.dumps(summary))
if __name__=='__main__':main()
