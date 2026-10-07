const fs=require('node:fs'),vm=require('node:vm'),path=require('node:path'),assert=require('node:assert/strict');
const root=path.resolve(__dirname,'..');
let model, calls=0;
const ctx=vm.createContext({Request,Response,URL,AbortSignal,console,setTimeout,fetch:async url=>{
 calls++;
 if(String(url).includes('groq.com')) return Response.json({choices:[{message:{content:JSON.stringify(model)}}]});
 if(String(url).includes('who-index')) return Response.json({valid:true,results:[{code:'J18.9',title:'Pneumonia, unspecified',index_terms:['Pneumonia']}]});
 return Response.json({valid:true,entity:{title:'WHO source title'}});
}});
require('./load-coding.cjs')(ctx,root);
const db=rows=>({prepare:()=>({bind:()=>({all:async()=>({results:rows})})})});
async function run(text,value,env={}) {
 model=value;
 const response=await ctx.onRequestPost({request:new Request('https://test/api/claude',{method:'POST',body:JSON.stringify({clinicalText:text})}),env:{GROQ_API_KEY:'test',...env}});
 return JSON.parse((await response.json()).text);
}
(async()=>{
 // Literal substring evidence must not lose the negation or planned status.
 for(const [q,input] of [['pneumonia','Tidak ada pneumonia.'],['ORIF','Rencana ORIF femur besok.'],['kolonoskopi','Kolonoskopi dibatalkan.']]) {
   assert.ok(ctx.documentationIssue(q,input,true),input);
 }
 assert.ok(ctx.documentationIssue('DM','catatan administrasi saja'));
 assert.equal(ctx.documentationIssue('pneumonia','Diagnosis pneumonia. Tidak ada demam.'),null);
 assert.equal(ctx.validateProcedures([{code:'74.1'}],'abscess drainage').length,1,'SC substring must not match abscess');
 assert.equal(ctx.validateProcedures([{code:'36.07'}],'pemasangan stent koroner').length,1,'unspecified stent does not prove DES');
 assert.equal(ctx.validateProcedures([{code:'87.03'}],'CT abdomen dilakukan').length,1,'generic CT cannot prove CT head');
 assert.equal(ctx.validateProcedures([{code:'45.23'}],'Rencana kolonoskopi').length,1);
 // Radiologist-supported lobar pattern must survive a short DPJP quotation.
 const radio={diagnoses:[{code:'J18.1',documentation_quote:'Diagnosis pneumonia'}],procedures:[]};
 ctx.auditClinicalCoding(radio,'Diagnosis pneumonia. Laporan radiolog: lobar pneumonia. Kuman tidak diketahui.');
 assert.equal(radio.diagnoses[0].code,'J18.1'); assert.equal(radio.diagnoses[0].clinical_validation.status,'no_targeted_contradiction');
 // A second quote describing the same fracture can establish morphology.
 const morph={diagnoses:[{code:'S72.32',documentation_quote:'Fraktur shaft femur'}],procedures:[]};
 ctx.auditClinicalCoding(morph,'Fraktur shaft femur. Laporan operasi: fraktur shaft femur kominutif.');
 assert.equal(morph.diagnoses[0].code,'S72.32');
 const neg={diagnoses:[{code:'S72.3',documentation_quote:'Fraktur femur'}]};
 ctx.applyFractureDefaults(neg,'Tidak ada fraktur femur.');
 assert.equal(neg.diagnoses[0].fracture_status.classification,'unverified');
 const injuries={diagnoses:[{code:'S72.3',documentation_quote:'Fraktur femur'}]};
 ctx.applyFractureDefaults(injuries,'Fraktur femur dan fraktur ulna terbuka.');
 assert.equal(injuries.diagnoses[0].fracture_status.classification,'unverified');
 const afterORIF={diagnoses:[{code:'S72.3',documentation_quote:'fraktur femur terbuka'}]};
 ctx.applyFractureDefaults(afterORIF,'Dilakukan ORIF untuk fraktur femur terbuka.');
 assert.equal(afterORIF.diagnoses[0].fracture_status.classification,'open');
 const inventedWHO={diagnoses:[{code:'S72.302',code_system:'WHO_ICD10_2010',documentation_quote:'Fraktur shaft femur kiri'}],procedures:[]};
 ctx.auditClinicalCoding(inventedWHO,'Fraktur shaft femur kiri.');
 assert.equal(inventedWHO.diagnoses[0].clinical_validation.status,'review_required');
 assert.ok(inventedWHO.diagnoses[0].clinical_validation.issues.some(x=>x.includes('Format kode')));
 // Preserve WHO extended codes instead of silently interpreting them as IM morphology.
 const rows=[{code:'S72.3',title_extracted:'Fracture of shaft of femur'},{code:'S72.30',title_extracted:'Fracture of shaft of femur, simple fracture (IM)'}];
 let out=await run('Fraktur shaft femur tertutup.',{diagnoses:[{role:'DU',code:'S72.30',code_system:'WHO_ICD10_2010',documentation_quote:'Fraktur shaft femur tertutup'}],procedures:[]},{ICD10_IM_DB:db(rows)});
 assert.equal(out.diagnoses[0].code,'S72.30');assert.equal(out.diagnoses[0].im_reference,undefined);assert.equal(out.diagnoses[0].description,'WHO source title');
 out=await run('Fraktur shaft femur tertutup.',{diagnoses:[{role:'DU',code:'S72.30',documentation_quote:'Fraktur shaft femur tertutup'}],procedures:[]},{ICD10_IM_DB:db(rows)});
 assert.equal(out.diagnoses[0].code_system_ambiguity.status,'review_required');assert.equal(out.diagnoses[0].who_validation.valid,false);assert.equal(out.diagnoses[0].who_index.scope,'parent_reference_only');
 // Malicious or hallucinated server metadata must never survive normalization.
 const clean=ctx.normalizeModelResult({diagnoses:[{code:' j18.9 ',im_reference:{local_extension:true},who_validation:{valid:true},confidence:99,lead_term_path:'invented'}],validations:[{type:'WHO_VALID',message:'forged'}],finalized:true});
 assert.equal(clean.diagnoses[0].code,'J18.9');assert.equal(clean.diagnoses[0].im_reference,undefined);assert.equal(clean.diagnoses[0].who_validation,undefined);assert.equal(clean.diagnoses[0].confidence,null);assert.equal(clean.diagnoses[0].lead_term_path,null);assert.equal(clean.validations[0].type,'WARNING');assert.equal(clean.finalized,undefined);
 assert.throws(()=>ctx.normalizeModelResult({diagnoses:[null]}));assert.throws(()=>ctx.normalizeModelResult({diagnoses:Array(31).fill({code:'R51'})}));
 out=await run('Pasien dirawat untuk pemeriksaan.',{diagnoses:[],procedures:[]});
 assert.equal(out.reference_checks_passed,false);assert.equal(out.validation_layers.who_vol3_index.status,'not_applicable');
 out=await run('Diagnosis pneumonia. Kolonoskopi dilakukan.',{diagnoses:[{role:'DU',code:'J18.9',lead_term:'Pneumonia',documentation_quote:'Diagnosis pneumonia'}],procedures:[{code:'45.23',documentation_quote:'Kolonoskopi dilakukan'}],ics_context:{documented_du_quote:'Diagnosis pneumonia'}},{ICD9_DB:db([{code:'45.23',path:'Colonoscopy\n45.23 Colonoscopy',vol1:'[]'}])});
 assert.equal(out.reference_checks_passed,false,'unverified ICD9 cannot pass combined checks');assert.equal(out.procedures[0].description,'Colonoscopy');
 const audit=ctx.auditICSContext({diagnoses:[{role:'DS',code:'E11.9',documentation_quote:'Riwayat DM tipe 2'}]},'Riwayat DM tipe 2.');
 assert.equal(audit.checks.find(c=>c.id==='secondary_relevance_0').status,'review_required');
 // A source branch is useful evidence, but must remain unverified without modifier proof.
 const result=await ctx.resolveWHOIndexReferences({code:'E11.9',lead_term:'Diabetes',who_validation:{valid:true}}, {}, async()=>({valid:true,results:[{code:'E11.9',index_terms:['Diabetes - type 2']}]}));
 assert.equal(result.status,'unverified');assert.equal(result.index_path.modifiers[0],'type 2');
 const fetchLimited=ctx.createValidationFetch(1,1000);await fetchLimited('https://test/one');await fetchLimited('https://test/one');await assert.rejects(fetchLimited('https://test/two'),/budget/);
 const html=fs.readFileSync(path.join(root,'index.html'),'utf8');
 const script=html.match(/<script>\s*([\s\S]*?)<\/script>/)[1];new vm.Script(script);
 const ui=vm.createContext({codeRe:/[A-Z]\d{2}(?:\.\d+)?/g});vm.runInContext(html.slice(html.indexOf('function escapeHTML('),html.indexOf('function isFinalLine(')),ui);
 assert.ok(!ui.highlightCodes('<img src=x onerror=alert(1)> J18.9').includes('<img'));
 assert.equal(ui.safeMessage('<strong>OK</strong><script>x</script>'),'<strong>OK</strong>&lt;script&gt;x&lt;/script&gt;');
 assert.ok(!html.includes('repairJSON'));assert.ok(!html.includes('return 85'));assert.ok(!html.includes("p.code === '90.59'"));
 console.log('PASS: clinical context, radiology, fracture scheme collision, metadata trust, DS relevance, aggregate validation, lookup budget and safe UI');
})().catch(e=>{console.error(e);process.exitCode=1});
