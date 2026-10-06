CREATE TABLE IF NOT EXISTS icd9_paths_backup_20261006 (code TEXT PRIMARY KEY, path TEXT NOT NULL, vol1 TEXT);
INSERT OR IGNORE INTO icd9_paths_backup_20261006 SELECT code,path,vol1 FROM icd9_paths WHERE code IN ('00','00.66','01.09','39.50','99.10');
UPDATE icd9_paths SET path='Tabular List
00 Procedures and interventions, Not Elsewhere Classified', vol1='[]' WHERE code='00';
UPDATE icd9_paths SET path='Angioplasty
- coronary artery
-- percutaneous transluminal (balloon) 00.66
00.66 Percutaneous transluminal coronary angioplasty [PTCA] or coronary atherectomy', vol1='[{"type":"includes","text":"Balloon angioplasty of coronary artery; Coronary atherectomy; Percutaneous coronary angioplasty NOS; PTCA NOS"},{"type":"note","text":"Code also any: injection or infusion of thrombolytic agent (99.10); insertion of coronary artery stent(s) (36.06-36.07); intracoronary artery thrombolytic infusion (36.04); number of vascular stents inserted (00.45-00.48); number of vessels treated (00.40-00.43); procedure on vessel bifurcation (00.44); SuperSaturated oxygen therapy (00.49)"}]' WHERE code='00.66';
UPDATE icd9_paths SET path='cranial (puncture)
01.09 Other cranial puncture', vol1='[{"type":"includes","text":"Aspiration of subarachnoid space or subdural space; Cranial aspiration NOS; Puncture of anterior fontanel; Subdural tap (through fontanel)"}]' WHERE code='01.09';
UPDATE icd9_paths SET path='Atherectomy
- peripheral
39.50 Angioplasty or atherectomy of other non-coronary vessel(s)', vol1='[{"type":"includes","text":"Percutaneous transluminal angioplasty (PTA) of non-coronary vessels: lower extremity vessels; mesenteric artery; renal artery; upper extremity vessels"},{"type":"note","text":"Code also any: injection or infusion of thrombolytic agent (99.10); insertion of non-drug-eluting peripheral vessel stent(s) or stent graft(s) (39.90); percutaneous insertion of carotid artery stent(s) (00.63); number of vascular stents inserted (00.45-00.48); number of vessels treated (00.40-00.43); procedure on vessel bifurcation (00.44); insertion of drug-eluting peripheral vessel stent (00.55)"},{"type":"excludes","text":"Percutaneous angioplasty or atherectomy of precerebral or cerebral vessel(s) (00.61-00.62)"}]' WHERE code='39.50';
UPDATE icd9_paths SET path='Activase®
99.10 Injection or infusion of thrombolytic agent', vol1='[{"type":"includes","text":"Alteplase; Anistreplase; Reteplase; Streptokinase; Tenecteplase; Tissue plasminogen activator (TPA); Urokinase"},{"type":"excludes","text":"Aspirin --omit code; GP IIB/IIIa platelet inhibitor (99.20); heparin (99.19); SuperSaturated oxygen therapy (00.49); warfarin --omit code"}]' WHERE code='99.10';