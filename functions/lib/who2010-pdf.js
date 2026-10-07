// User-uploaded PDF extraction. Source candidates are not certified coding.
export async function lookupPDFReference(db, code, term = '', limit = 8) {
  if (!db) return null;
  const bounded = Math.min(20,Math.max(1,Number(limit)||8));
  const tabular = code ? await db.prepare('SELECT code,title,symbol,raw_text,pdf_page,review_status FROM tabular_entries WHERE code = ? ORDER BY pdf_page LIMIT 4').bind(code).all() : {results:[]};
  const params=code ? [code,bounded] : [term.replace(/[\\%_]/g,'\\$&')+'%',bounded];
  const index=await db.prepare(code
    ? "SELECT * FROM index_entries WHERE code = ? AND section = 'diagnosis' AND version = '2010' AND context_issue = '' ORDER BY pdf_page LIMIT ?"
    : "SELECT * FROM index_entries WHERE lead_term LIKE ? ESCAPE '\\' AND section = 'diagnosis' AND version = '2010' AND context_issue = '' ORDER BY lead_term,pdf_page LIMIT ?").bind(...params).all();
  const steps=[];
  let shared=[];
  // Explicit shared subdivision tables are shown as source instructions,
  // never assembled into a fictitious single printed index path.
  if (/^E1[0-4]\.\d$/.test(code)) {
    shared=(await db.prepare('SELECT * FROM shared_subdivisions WHERE group_start = ? AND group_end = ? AND suffix = ?').bind('E10','E14',code.at(-1)).all()).results || [];
    const family=(await db.prepare("SELECT path_text,raw_text,pdf_page FROM index_entries WHERE code = ? AND section = 'diagnosis' AND context_issue = '' AND lead_term LIKE 'Diabetes%' ORDER BY pdf_page LIMIT 6").bind(code.slice(0,3)+'.-').all()).results || [];
    for(const row of family) steps.push({...row,type:'diabetes_type_reference'});
    for(const row of shared) steps.push({path_text:row.group_start+'–'+row.group_end+' → .'+row.suffix+' '+row.title,raw_text:row.raw_text,pdf_page:row.pdf_page,type:'shared_tabular_subdivision'});
  }
  const rows=index.results || [];
  const source=(await db.prepare('SELECT file_name,sha256,source_id FROM reference_sources LIMIT 1').all()).results?.[0];
  if(!source) return null;
  return {source:'UPLOADED_WHO2010_PDF',file_name:source.file_name,sha256:source.sha256,code,
    review_required:true,certified:false,tabular_candidates:tabular.results || [],index_candidates:rows,
    reference_steps:steps,shared_subdivisions:shared};
}

export async function retrievePDFContext(db, clinicalText) {
  if (!db) return [];
  const text=String(clinicalText||'').toLowerCase();
  const terms=[];
  if (/fraktur|fracture/.test(text)) terms.push(['Fracture',/femur/.test(text) && /shaft|diafis|1\s*\/\s*3\s*tengah/.test(text) ? 'shaft' : /femur/.test(text) ? 'femur' : '']);
  if (/pneumonia|bronkopneumonia/.test(text)) terms.push(['Pneumonia',/lobar|lobaris/.test(text) ? 'lobar' : '']);
  if (/diabetes|\bdm\b/.test(text)) terms.push(['Diabetes',/tipe\s*2|type\s*2/.test(text) ? 'type II' : '']);
  if (/retinopati|retinopathy/.test(text)) terms.push(['Retinopathy','diabetic']);
  if (/katarak|cataract/.test(text)) terms.push(['Cataract',/nuklear|nuclear/.test(text) ? 'nuclear' : '']);
  const records=[];
  for(const [lead,modifier] of terms.slice(0,4)) {
    const result=await db.prepare("SELECT code,path_text,raw_text,pdf_page FROM index_entries WHERE lead_term LIKE ? AND path_text LIKE ? AND section = 'diagnosis' AND version = '2010' AND context_issue = '' ORDER BY pdf_page LIMIT 5").bind(lead+'%','%'+modifier+'%').all();
    for(const row of result.results || []) records.push({...row,raw_text:String(row.raw_text).slice(0,800),path_text:String(row.path_text).slice(0,1000),review_status:'extracted_requires_review'});
  }
  if (/diabetes|\bdm\b/.test(text)) {
    const result=await db.prepare('SELECT group_start,group_end,suffix,title,pdf_page FROM shared_subdivisions ORDER BY suffix').all();
    for(const row of result.results || []) records.push({...row,review_status:'extracted_requires_review'});
  }
  // Maternal obstetric candidates: literal source excerpts, never an ordering rule.
  const codes=new Set();
  if (/\bttts\b|twin.to.twin transfusion/.test(text)) codes.add('O43.0');
  if (/\biufd\b|intrauterine (?:fetal )?(?:death|demise)/.test(text)) {codes.add('O36.4');if(/gemelli|kembar|twin/.test(text))codes.add('O31.2');}
  if (/gemelli|kembar|twin pregnancy/.test(text)) codes.add('O30.0');
  if (/partus prematur|preterm|persalinan prematur/.test(text)) {codes.add('O60.1');codes.add('O60.3');}
  if (/bekas sc|previous caesarean|previous cesarean/.test(text)) codes.add('O34.2');
  for(const code of [...codes].slice(0,7)) {
    const tabular=await db.prepare('SELECT code,title,raw_text,pdf_page FROM tabular_entries WHERE code = ? ORDER BY pdf_page LIMIT 1').bind(code).all();
    for(const row of tabular.results||[]) records.push({...row,raw_text:String(row.raw_text).slice(0,1200),reference_type:'tabular_candidate',review_status:'extracted_requires_review'});
    const index=await db.prepare("SELECT code,path_text,raw_text,pdf_page FROM index_entries WHERE code = ? AND section = 'diagnosis' AND version = '2010' AND context_issue = '' ORDER BY pdf_page LIMIT 1").bind(code).all();
    for(const row of index.results||[]) records.push({...row,raw_text:String(row.raw_text).slice(0,800),reference_type:'index_candidate',review_status:'extracted_requires_review'});
  }
  return records.slice(0,40);
}
