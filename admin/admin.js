'use strict';
const status=document.getElementById('status');
let cursor=null;
let busy=false;
async function api(kind,options={}) {
  const response=await fetch('/admin/api?kind='+encodeURIComponent(kind),{credentials:'same-origin',...options,headers:{'Content-Type':'application/json',...options.headers},signal:AbortSignal.timeout(20000)});
  if (response.redirected || !response.headers.get('Content-Type')?.includes('application/json')) throw new Error('Sesi berakhir. Muat ulang halaman untuk login.');
  const data=await response.json(); if (!response.ok) throw new Error(data.error || 'Operasi gagal.'); return data;
}
function post(kind,body) {return api(kind,{method:'POST',body:JSON.stringify(body)});}
async function load(after='') {
  if (busy) return; busy=true;
  const kind=document.getElementById('kind').value;
  try {
    const response=await fetch('/admin/api?kind='+kind+'&after='+encodeURIComponent(after),{signal:AbortSignal.timeout(20000)});
    if (response.redirected || !response.headers.get('Content-Type')?.includes('application/json')) throw new Error('Sesi berakhir. Muat ulang untuk login.');
    const data=await response.json(); if (!response.ok) throw new Error(data.error);
    if (kind!==document.getElementById('kind').value) return;
    const tbody=document.getElementById('records'); tbody.replaceChildren();
    for (const row of data.rows) {
      const tr=document.createElement('tr');
      for (const value of [new Date(row.timestamp).toLocaleString('id-ID'),row.participant || row.caseId,kind==='surveys'?row.score+'/100 SUS':row.match?'Cocok tepat':'Tidak cocok / gagal']) {const td=document.createElement('td');td.textContent=value;tr.append(td);}
      const td=document.createElement('td'); const details=document.createElement('details');const summary=document.createElement('summary'); summary.textContent='Lihat / kelola';const pre=document.createElement('pre');pre.textContent=JSON.stringify(row,null,2);const del=document.createElement('button');del.textContent='Hapus dari data aktif';del.onclick=async()=>{if(!confirm('Arsipkan data ini dari daftar aktif? Undangan tetap tidak dapat dipakai ulang.'))return;del.disabled=true;try{await api(kind,{method:'DELETE',body:JSON.stringify({id:row.id})});await load();}catch(e){status.textContent=e.message;del.disabled=false;}};details.append(summary,pre,del);td.append(details);tr.append(td);tbody.append(tr);
    }
    cursor=data.next;document.getElementById('next').hidden=!cursor;status.textContent=data.rows.length+' catatan pada halaman ini.';
  } catch(e){status.textContent=e.message;} finally{busy=false;}
}
function bindForm(id,handler) {document.getElementById(id).addEventListener('submit',async e=>{e.preventDefault();const b=e.target.querySelector('button');if(b.disabled)return;b.disabled=true;try{await handler(new FormData(e.target));}catch(error){status.textContent=error.message;}finally{b.disabled=false;}});}
bindForm('inviteForm',async f=>{const r=await post('surveys',{action:'invite',participant:f.get('participant')});const target=document.getElementById('invitation');target.replaceChildren();const a=document.createElement('a');a.href=r.link;a.textContent=r.link;target.append(a,document.createElement('br'),'Berlaku sampai '+new Date(r.expires).toLocaleString('id-ID'));status.textContent='Undangan dibuat. Salin tautan dan berikan kepada responden yang sesuai.';});
bindForm('caseForm',async f=>{await post('cases',{action:'case',caseId:f.get('caseId'),version:f.get('version'),reference:f.get('reference').toUpperCase(),prediction:f.get('prediction').toUpperCase(),expertConfirmed:f.get('expertConfirmed')==='on'});document.getElementById('caseForm').reset();document.getElementById('kind').value='cases';await load();});
document.getElementById('refresh').onclick=()=>load();document.getElementById('kind').onchange=()=>{document.getElementById('records').replaceChildren();load();};document.getElementById('next').onclick=()=>load(cursor);
function csvCell(value) {let s=String(value??'');if(/^\s*[=+@-]|^[\t\r\n]/.test(s))s="'"+s;return '"'+s.replace(/"/g,'""')+'"';}
document.getElementById('export').onclick=async e=>{
  const b=e.target;b.disabled=true;const kind=document.getElementById('kind').value;
  try {
    const rows=[];let after='';
    do {const r=await fetch('/admin/api?kind='+kind+'&after='+encodeURIComponent(after),{signal:AbortSignal.timeout(20000)});if(r.redirected||!r.ok||!r.headers.get('Content-Type')?.includes('application/json'))throw new Error('Ekspor gagal atau sesi berakhir.');const page=await r.json();rows.push(...page.rows);after=page.next;} while(after);
    const assessment=['documentation_fit','code_specificity','reasoning_clarity','reference_traceability','warning_clarity','review_support'];
    const headers=kind==='surveys'?['id','participant','role','experience',...Array.from({length:10},(_,i)=>'sus'+(i+1)),'sus_score',...assessment,'feedback','timestamp','instrument','assessment_instrument','consent']:['id','case_id','version','reference','prediction','exact_match','timestamp','expert_confirmed'];
    const values=rows.map(r=>kind==='surveys'?[r.id,r.participant,r.role,r.experience,...r.answers,r.score,...assessment.map(k=>r.assessment[k]),r.feedback,r.timestamp,r.instrument,r.assessmentInstrument,r.consent]:[r.id,r.caseId,r.version,r.reference,r.prediction,r.match,r.timestamp,r.expertConfirmed]);
    const url=URL.createObjectURL(new Blob(['\ufeff'+[headers,...values].map(row=>row.map(csvCell).join(',')).join('\r\n')],{type:'text/csv;charset=utf-8'}));const a=document.createElement('a');a.href=url;a.download='penelitian-'+kind+'.csv';document.body.append(a);a.click();a.remove();setTimeout(()=>URL.revokeObjectURL(url),1000);status.textContent=rows.length+' catatan diekspor.';
  }catch(error){status.textContent=error.message;}finally{b.disabled=false;}
};
load();
