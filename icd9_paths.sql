-- ICD-9-CM paths database for Cloudflare D1
-- Auto-generated from ICD-9-CM PDF

CREATE TABLE IF NOT EXISTS icd9_paths (
  code TEXT PRIMARY KEY,
  path TEXT NOT NULL,
  vol1 TEXT DEFAULT '[]'
);

-- Clear existing data
DELETE FROM icd9_paths;

INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00', 'Procedures and interventions, Not Elsewhere Classified
00 Procedures and interventions, Not Elsewhere Classified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.0', 'Procedures and interventions, Not Elsewhere Classified
- Therapeutic ultrasound 00.0
00.0 Therapeutic ultrasound', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.01', 'Procedures and interventions, Not Elsewhere Classified
- Therapeutic ultrasound
-- Therapeutic ultrasound of vessels of head and neck 00.01
00.01 Therapeutic ultrasound of vessels of head and neck', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.02', 'Procedures and interventions, Not Elsewhere Classified
- Therapeutic ultrasound
-- Therapeutic ultrasound of heart 00.02
00.02 Therapeutic ultrasound of heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.03', 'Procedures and interventions, Not Elsewhere Classified
- Therapeutic ultrasound
-- Therapeutic ultrasound of peripheral vascular vessels 00.03
00.03 Therapeutic ultrasound of peripheral vascular vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.09', 'Procedures and interventions, Not Elsewhere Classified
- Therapeutic ultrasound
-- Other therapeutic ultrasound 00.09
00.09 Other therapeutic ultrasound', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.1', 'Procedures and interventions, Not Elsewhere Classified
- Pharamaceuticals 00.1
00.1 Pharamaceuticals', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.10', 'Procedures and interventions, Not Elsewhere Classified
- Pharamaceuticals
-- Implantation of chemotherapeutic agent 00.10
00.10 Implantation of chemotherapeutic agent', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.11', 'Procedures and interventions, Not Elsewhere Classified
- Pharamaceuticals
-- Infusion of drotrecogin alfa (activated) 00.11
00.11 Infusion of drotrecogin alfa (activated)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.12', 'Procedures and interventions, Not Elsewhere Classified
- Pharamaceuticals
-- Administration of inhaled nitric oxide 00.12
00.12 Administration of inhaled nitric oxide', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.13', 'Procedures and interventions, Not Elsewhere Classified
- Pharamaceuticals
-- Injection or infusion of nesiritide 00.13
00.13 Injection or infusion of nesiritide', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.14', 'Procedures and interventions, Not Elsewhere Classified
- Pharamaceuticals
-- Injection or infusion of oxazolidinone class of antibiotics 00.14
00.14 Injection or infusion of oxazolidinone class of antibiotics', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.15', 'Procedures and interventions, Not Elsewhere Classified
- Pharamaceuticals
-- High-dose infusion interleukin-2 [IL-2] 00.15
00.15 High-dose infusion interleukin-2 [IL-2]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.16', 'Procedures and interventions, Not Elsewhere Classified
- Pharamaceuticals
-- Pressurized treatment of venous bypass graft [conduit] with 00.16
00.16 Pressurized treatment of venous bypass graft [conduit] with', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.17', 'Procedures and interventions, Not Elsewhere Classified
- Pharamaceuticals
-- Infusion of vasopressor agent 00.17
00.17 Infusion of vasopressor agent', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.18', 'Procedures and interventions, Not Elsewhere Classified
- Pharamaceuticals
-- Infusion of immunosuppressive antibody therapy 00.18
00.18 Infusion of immunosuppressive antibody therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.19', 'Procedures and interventions, Not Elsewhere Classified
- Pharamaceuticals
-- Disruption of blood brain barrier via infusion [BBBD]  00.19
00.19 Disruption of blood brain barrier via infusion [BBBD] ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.2', 'Procedures and interventions, Not Elsewhere Classified
- Intravascular imaging of blood vessels 00.2
00.2 Intravascular imaging of blood vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.21', 'Procedures and interventions, Not Elsewhere Classified
- Intravascular imaging of blood vessels
-- Intravascular imaging of extracranial cerebral vessels 00.21
00.21 Intravascular imaging of extracranial cerebral vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.22', 'Procedures and interventions, Not Elsewhere Classified
- Intravascular imaging of blood vessels
-- Intravascular imaging of intrathoracic vessels 00.22
00.22 Intravascular imaging of intrathoracic vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.23', 'Procedures and interventions, Not Elsewhere Classified
- Intravascular imaging of blood vessels
-- Intravascular imaging of peripheral vessels 00.23
00.23 Intravascular imaging of peripheral vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.24', 'Procedures and interventions, Not Elsewhere Classified
- Intravascular imaging of blood vessels
-- Intravascular imaging of coronary vessels 00.24
00.24 Intravascular imaging of coronary vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.25', 'Procedures and interventions, Not Elsewhere Classified
- Intravascular imaging of blood vessels
-- Intravascular imaging of renal vessels 00.25
00.25 Intravascular imaging of renal vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.28', 'Procedures and interventions, Not Elsewhere Classified
- Intravascular imaging of blood vessels
-- Intravascular imaging, other specified vessel(s) 00.28
00.28 Intravascular imaging, other specified vessel(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.29', 'Procedures and interventions, Not Elsewhere Classified
- Intravascular imaging of blood vessels
-- Intravascular imaging, unspecified vessel(s) 00.29
00.29 Intravascular imaging, unspecified vessel(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.3', 'Procedures and interventions, Not Elsewhere Classified
- Computer assisted surgery [CAS] 00.3
00.3 Computer assisted surgery [CAS]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.31', 'Procedures and interventions, Not Elsewhere Classified
- Computer assisted surgery [CAS]
-- Computer assisted surgery with CT/CTA 00.31
00.31 Computer assisted surgery with CT/CTA', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.32', 'Procedures and interventions, Not Elsewhere Classified
- Computer assisted surgery [CAS]
-- Computer assisted surgery with MR/MRA 00.32
00.32 Computer assisted surgery with MR/MRA', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.33', 'Procedures and interventions, Not Elsewhere Classified
- Computer assisted surgery [CAS]
-- Computer assisted surgery with fluoroscopy 00.33
00.33 Computer assisted surgery with fluoroscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.34', 'Procedures and interventions, Not Elsewhere Classified
- Computer assisted surgery [CAS]
-- Imageless computer assisted surgery 00.34
00.34 Imageless computer assisted surgery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.35', 'Procedures and interventions, Not Elsewhere Classified
- Computer assisted surgery [CAS]
-- Computer assisted surgery with multiple datasets 00.35
00.35 Computer assisted surgery with multiple datasets', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.39', 'Procedures and interventions, Not Elsewhere Classified
- Computer assisted surgery [CAS]
-- Other computer assisted surgery 00.39
00.39 Other computer assisted surgery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.4', 'Procedures and interventions, Not Elsewhere Classified
- Adjunct Vascular System Procedures 00.4
00.4 Adjunct Vascular System Procedures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.40', 'Procedures and interventions, Not Elsewhere Classified
- Adjunct Vascular System Procedures
-- Procedure on single vessel 00.40
00.40 Procedure on single vessel', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.41', 'Procedures and interventions, Not Elsewhere Classified
- Adjunct Vascular System Procedures
-- Procedure on two vessels 00.41
00.41 Procedure on two vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.42', 'Procedures and interventions, Not Elsewhere Classified
- Adjunct Vascular System Procedures
-- Procedure on three vessels 00.42
00.42 Procedure on three vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.43', 'Procedures and interventions, Not Elsewhere Classified
- Adjunct Vascular System Procedures
-- Procedure on four or more vessels 00.43
00.43 Procedure on four or more vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.44', 'Procedures and interventions, Not Elsewhere Classified
- Adjunct Vascular System Procedures
-- Procedure on vessel bifurcation 00.44
00.44 Procedure on vessel bifurcation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.45', 'Procedures and interventions, Not Elsewhere Classified
- Adjunct Vascular System Procedures
-- Insertion of one vascular stent 00.45
00.45 Insertion of one vascular stent', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.46', 'Procedures and interventions, Not Elsewhere Classified
- Adjunct Vascular System Procedures
-- Insertion of two vascular stents 00.46
00.46 Insertion of two vascular stents', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.47', 'Procedures and interventions, Not Elsewhere Classified
- Adjunct Vascular System Procedures
-- Insertion of three vascular stents 00.47
00.47 Insertion of three vascular stents', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.48', 'Procedures and interventions, Not Elsewhere Classified
- Adjunct Vascular System Procedures
-- Insertion of four or more vascular stents 00.48
00.48 Insertion of four or more vascular stents', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.49', 'Procedures and interventions, Not Elsewhere Classified
- Adjunct Vascular System Procedures
-- SuperSaturated oxygen therapy 00.49
00.49 SuperSaturated oxygen therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.5', 'Procedures and interventions, Not Elsewhere Classified
- Other cardiovascular procedures 00.5
00.5 Other cardiovascular procedures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.50', 'Procedures and interventions, Not Elsewhere Classified
- Other cardiovascular procedures
-- Implantation of cardiac resynchronization pacemaker without 00.50
00.50 Implantation of cardiac resynchronization pacemaker without', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.51', 'Procedures and interventions, Not Elsewhere Classified
- Other cardiovascular procedures
-- Implantation of cardiac resynchronization defibrillator, total 00.51
00.51 Implantation of cardiac resynchronization defibrillator, total', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.52', 'Procedures and interventions, Not Elsewhere Classified
- Other cardiovascular procedures
-- Implantation or replacement of transvenous lead [electrode] 00.52
00.52 Implantation or replacement of transvenous lead [electrode]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.53', 'Procedures and interventions, Not Elsewhere Classified
- Other cardiovascular procedures
-- Implantation or replacement of cardiac resynchronization 00.53
00.53 Implantation or replacement of cardiac resynchronization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.54', 'Procedures and interventions, Not Elsewhere Classified
- Other cardiovascular procedures
-- Implantation or replacement of cardiac resynchronization 00.54
00.54 Implantation or replacement of cardiac resynchronization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.55', 'Procedures and interventions, Not Elsewhere Classified
- Other cardiovascular procedures
-- Insertion of drug-eluting peripheral vessel stent(s) 00.55
00.55 Insertion of drug-eluting peripheral vessel stent(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.56', 'Procedures and interventions, Not Elsewhere Classified
- Other cardiovascular procedures
-- Insertion or replacement of implantable pressure sensor (lead) 00.56
00.56 Insertion or replacement of implantable pressure sensor (lead)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.57', 'Procedures and interventions, Not Elsewhere Classified
- Other cardiovascular procedures
-- Implantation or replacement of subcutaneous device for 00.57
00.57 Implantation or replacement of subcutaneous device for', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.58', 'Procedures and interventions, Not Elsewhere Classified
- Other cardiovascular procedures
-- Insertion of intra-aneurysm sac pressure monitoring device 00.58
00.58 Insertion of intra-aneurysm sac pressure monitoring device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.59', 'Procedures and interventions, Not Elsewhere Classified
- Other cardiovascular procedures
-- Intravascular pressure measurement of coronary arteries  00.59
00.59 Intravascular pressure measurement of coronary arteries ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.6', 'Procedures and interventions, Not Elsewhere Classified
- Procedures on blood vessels 00.6
00.6 Procedures on blood vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.61', 'Procedures and interventions, Not Elsewhere Classified
- Procedures on blood vessels
-- Percutaneous angioplasty or atherectomy of precerebral 00.61
00.61 Percutaneous angioplasty or atherectomy of precerebral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.62', 'Procedures and interventions, Not Elsewhere Classified
- Procedures on blood vessels
-- Percutaneous angioplasty or atherectomy of intracranial vessel(s) 00.62
00.62 Percutaneous angioplasty or atherectomy of intracranial vessel(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.63', 'Procedures and interventions, Not Elsewhere Classified
- Procedures on blood vessels
-- Percutaneous insertion of carotid artery stent(s) 00.63
00.63 Percutaneous insertion of carotid artery stent(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.64', 'Procedures and interventions, Not Elsewhere Classified
- Procedures on blood vessels
-- Percutaneous insertion of other precerebral (extracranial) artery 00.64
00.64 Percutaneous insertion of other precerebral (extracranial) artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.65', 'Procedures and interventions, Not Elsewhere Classified
- Procedures on blood vessels
-- Percutaneous insertion of intracranial vascular stent(s) 00.65
00.65 Percutaneous insertion of intracranial vascular stent(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.66', 'Angioplasty
- coronary artery
-- percutaneous transluminal (balloon) 00.66
00.66 Percutaneous transluminal coronary angioplasty [PTCA]', '[{"type":"includes","text":"Balloon angioplasty of coronary artery"},{"type":"includes","text":"PTCA NOS"},{"type":"note","text":"Code also any: insertion of coronary artery stent (36.06-36.07)"}]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.67', 'Procedures and interventions, Not Elsewhere Classified
- Procedures on blood vessels
-- Intravascular pressure measurement of intrathoracic arteries  00.67
00.67 Intravascular pressure measurement of intrathoracic arteries ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.68', 'Procedures and interventions, Not Elsewhere Classified
- Procedures on blood vessels
-- Intravascular pressure measurement of peripheral arteries  00.68
00.68 Intravascular pressure measurement of peripheral arteries ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.69', 'Procedures and interventions, Not Elsewhere Classified
- Procedures on blood vessels
-- Intravascular pressure measurement, other specified and 00.69
00.69 Intravascular pressure measurement, other specified and', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.7', 'Procedures and interventions, Not Elsewhere Classified
- Other hip procedures 00.7
00.7 Other hip procedures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.70', 'Procedures and interventions, Not Elsewhere Classified
- Other hip procedures
-- Revision of hip replacement, both acetabular and femoral 00.70
00.70 Revision of hip replacement, both acetabular and femoral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.71', 'Procedures and interventions, Not Elsewhere Classified
- Other hip procedures
-- Revision of hip replacement, acetabular component 00.71
00.71 Revision of hip replacement, acetabular component', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.72', 'Procedures and interventions, Not Elsewhere Classified
- Other hip procedures
-- Revision of hip replacement, femoral component 00.72
00.72 Revision of hip replacement, femoral component', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.73', 'Procedures and interventions, Not Elsewhere Classified
- Other hip procedures
-- Revision of hip replacement, acetabular liner and/or femoral head 00.73
00.73 Revision of hip replacement, acetabular liner and/or femoral head', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.74', 'Procedures and interventions, Not Elsewhere Classified
- Other hip procedures
-- Hip bearing surface, metal on polyethylene 00.74
00.74 Hip bearing surface, metal on polyethylene', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.75', 'Procedures and interventions, Not Elsewhere Classified
- Other hip procedures
-- Hip bearing surface, metal-on-metal 00.75
00.75 Hip bearing surface, metal-on-metal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.76', 'Procedures and interventions, Not Elsewhere Classified
- Other hip procedures
-- Hip bearing surface, ceramic-on-ceramic 00.76
00.76 Hip bearing surface, ceramic-on-ceramic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.77', 'Procedures and interventions, Not Elsewhere Classified
- Other hip procedures
-- Hip bearing surface, ceramic-on-polyethylene 00.77
00.77 Hip bearing surface, ceramic-on-polyethylene', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.8', 'Procedures and interventions, Not Elsewhere Classified
- Other knee and hip procedures 00.8
00.8 Other knee and hip procedures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.80', 'Procedures and interventions, Not Elsewhere Classified
- Other knee and hip procedures
-- Revision of knee replacement, total (all components) 00.80
00.80 Revision of knee replacement, total (all components)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.81', 'Procedures and interventions, Not Elsewhere Classified
- Other knee and hip procedures
-- Revision of knee replacement, tibial component 00.81
00.81 Revision of knee replacement, tibial component', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.82', 'Procedures and interventions, Not Elsewhere Classified
- Other knee and hip procedures
-- Revision of knee replacement, femoral component 00.82
00.82 Revision of knee replacement, femoral component', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.83', 'Procedures and interventions, Not Elsewhere Classified
- Other knee and hip procedures
-- Revision of knee replacement, patellar component 00.83
00.83 Revision of knee replacement, patellar component', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.84', 'Procedures and interventions, Not Elsewhere Classified
- Other knee and hip procedures
-- Revision of total knee replacement, tibial insert (liner) 00.84
00.84 Revision of total knee replacement, tibial insert (liner)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.85', 'Procedures and interventions, Not Elsewhere Classified
- Other knee and hip procedures
-- Resurfacing hip, total, acetabulum and femoral head 00.85
00.85 Resurfacing hip, total, acetabulum and femoral head', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.86', 'Procedures and interventions, Not Elsewhere Classified
- Other knee and hip procedures
-- Resurfacing hip, partial, femoral head 00.86
00.86 Resurfacing hip, partial, femoral head', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.87', 'Procedures and interventions, Not Elsewhere Classified
- Other knee and hip procedures
-- Resurfacing hip, partial, acetabulum 00.87
00.87 Resurfacing hip, partial, acetabulum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.9', 'Procedures and interventions, Not Elsewhere Classified
- Other procedures and interventions 00.9
00.9 Other procedures and interventions', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.91', 'Procedures and interventions, Not Elsewhere Classified
- Other procedures and interventions
-- Transplant from live related donor 00.91
00.91 Transplant from live related donor', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.92', 'Procedures and interventions, Not Elsewhere Classified
- Other procedures and interventions
-- Transplant from live non-related donor 00.92
00.92 Transplant from live non-related donor', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.93', 'Procedures and interventions, Not Elsewhere Classified
- Other procedures and interventions
-- Transplant from cadaver 00.93
00.93 Transplant from cadaver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.94', 'Procedures and interventions, Not Elsewhere Classified
- Other procedures and interventions
-- Intra-operative neurophysiologic monitoring  00.94
00.94 Intra-operative neurophysiologic monitoring ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01', 'Incision and excision of skull, brain, and cerebral meninges
01 Incision and excision of skull, brain, and cerebral meninges', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.0', 'Incision and excision of skull, brain, and cerebral meninges
- Cranial puncture 01.0
01.0 Cranial puncture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.01', 'Incision and excision of skull, brain, and cerebral meninges
- Cranial puncture
-- Cisternal puncture 01.01
01.01 Cisternal puncture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.02', 'Incision and excision of skull, brain, and cerebral meninges
- Cranial puncture
-- Ventriculopuncture through previously implanted catheter 01.02
01.02 Ventriculopuncture through previously implanted catheter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.09', 'Incision and excision of skull, brain, and cerebral meninges
- Cranial puncture
-- Other cranial puncture 01.09
01.09 Other cranial puncture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.1', 'Incision and excision of skull, brain, and cerebral meninges
- Diagnostic procedures on skull, brain, and cerebral meninges 01.1
01.1 Diagnostic procedures on skull, brain, and cerebral meninges', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.10', 'Incision and excision of skull, brain, and cerebral meninges
- Diagnostic procedures on skull, brain, and cerebral meninges
-- Intracranial pressure monitoring  01.10
01.10 Intracranial pressure monitoring ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.11', 'Incision and excision of skull, brain, and cerebral meninges
- Diagnostic procedures on skull, brain, and cerebral meninges
-- Closed [percutaneous] [needle] biopsy of cerebral meninges 01.11
01.11 Closed [percutaneous] [needle] biopsy of cerebral meninges', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.12', 'Incision and excision of skull, brain, and cerebral meninges
- Diagnostic procedures on skull, brain, and cerebral meninges
-- Open biopsy of cerebral meninges 01.12
01.12 Open biopsy of cerebral meninges', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.13', 'Incision and excision of skull, brain, and cerebral meninges
- Diagnostic procedures on skull, brain, and cerebral meninges
-- Closed [percutaneous] [needle] biopsy of brain 01.13
01.13 Closed [percutaneous] [needle] biopsy of brain', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.14', 'Incision and excision of skull, brain, and cerebral meninges
- Diagnostic procedures on skull, brain, and cerebral meninges
-- Open biopsy of brain 01.14
01.14 Open biopsy of brain', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.15', 'Incision and excision of skull, brain, and cerebral meninges
- Diagnostic procedures on skull, brain, and cerebral meninges
-- Biopsy of skull 01.15
01.15 Biopsy of skull', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.16', 'Incision and excision of skull, brain, and cerebral meninges
- Diagnostic procedures on skull, brain, and cerebral meninges
-- Intracranial oxygen monitoring  01.16
01.16 Intracranial oxygen monitoring ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.17', 'Incision and excision of skull, brain, and cerebral meninges
- Diagnostic procedures on skull, brain, and cerebral meninges
-- Brain temperature monitoring  01.17
01.17 Brain temperature monitoring ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.18', 'Incision and excision of skull, brain, and cerebral meninges
- Diagnostic procedures on skull, brain, and cerebral meninges
-- Other diagnostic procedures on brain and cerebral meninges 01.18
01.18 Other diagnostic procedures on brain and cerebral meninges', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.19', 'Incision and excision of skull, brain, and cerebral meninges
- Diagnostic procedures on skull, brain, and cerebral meninges
-- Other diagnostic procedures on skull 01.19
01.19 Other diagnostic procedures on skull', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.2', 'Incision and excision of skull, brain, and cerebral meninges
- Craniotomy and craniectomy 01.2
01.2 Craniotomy and craniectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.21', 'Incision and excision of skull, brain, and cerebral meninges
- Craniotomy and craniectomy
-- Incision and drainage of cranial sinus 01.21
01.21 Incision and drainage of cranial sinus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.22', 'Incision and excision of skull, brain, and cerebral meninges
- Craniotomy and craniectomy
-- Removal of intracranial neurostimulator lead(s) 01.22
01.22 Removal of intracranial neurostimulator lead(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.23', 'Incision and excision of skull, brain, and cerebral meninges
- Craniotomy and craniectomy
-- Reopening of craniotomy site 01.23
01.23 Reopening of craniotomy site', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.24', 'Incision and excision of skull, brain, and cerebral meninges
- Craniotomy and craniectomy
-- Other craniotomy 01.24
01.24 Other craniotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.25', 'Incision and excision of skull, brain, and cerebral meninges
- Craniotomy and craniectomy
-- Other craniectomy 01.25
01.25 Other craniectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.26', 'Incision and excision of skull, brain, and cerebral meninges
- Craniotomy and craniectomy
-- Insertion of catheter(s) into cranial cavity or tissue 01.26
01.26 Insertion of catheter(s) into cranial cavity or tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.27', 'Incision and excision of skull, brain, and cerebral meninges
- Craniotomy and craniectomy
-- Removal of catheter(s) from cranial cavity or tissue 01.27
01.27 Removal of catheter(s) from cranial cavity or tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.28', 'Incision and excision of skull, brain, and cerebral meninges
- Craniotomy and craniectomy
-- Placement of intracerebral catheter(s) via burr hole(s) 01.28
01.28 Placement of intracerebral catheter(s) via burr hole(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.3', 'Incision and excision of skull, brain, and cerebral meninges
- Incision of brain and cerebral meninges 01.3
01.3 Incision of brain and cerebral meninges', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.31', 'Incision and excision of skull, brain, and cerebral meninges
- Incision of brain and cerebral meninges
-- Incision of cerebral meninges 01.31
01.31 Incision of cerebral meninges', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.32', 'Incision and excision of skull, brain, and cerebral meninges
- Incision of brain and cerebral meninges
-- Lobotomy and tractotomy 01.32
01.32 Lobotomy and tractotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.39', 'Incision and excision of skull, brain, and cerebral meninges
- Incision of brain and cerebral meninges
-- Other incision of brain 01.39
01.39 Other incision of brain', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.4', 'Incision and excision of skull, brain, and cerebral meninges
- Operations on thalamus and globus pallidus 01.4
01.4 Operations on thalamus and globus pallidus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.41', 'Incision and excision of skull, brain, and cerebral meninges
- Operations on thalamus and globus pallidus
-- Operations on thalamus 01.41
01.41 Operations on thalamus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.42', 'Incision and excision of skull, brain, and cerebral meninges
- Operations on thalamus and globus pallidus
-- Operations on globus pallidus 01.42
01.42 Operations on globus pallidus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.5', 'Incision and excision of skull, brain, and cerebral meninges
- Other excision or destruction of brain and meninges 01.5
01.5 Other excision or destruction of brain and meninges', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.51', 'Incision and excision of skull, brain, and cerebral meninges
- Other excision or destruction of brain and meninges
-- Excision of lesion or tissue of cerebral meninges 01.51
01.51 Excision of lesion or tissue of cerebral meninges', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.52', 'Incision and excision of skull, brain, and cerebral meninges
- Other excision or destruction of brain and meninges
-- Hemispherectomy 01.52
01.52 Hemispherectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.53', 'Incision and excision of skull, brain, and cerebral meninges
- Other excision or destruction of brain and meninges
-- Lobectomy of brain 01.53
01.53 Lobectomy of brain', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.59', 'Incision and excision of skull, brain, and cerebral meninges
- Other excision or destruction of brain and meninges
-- Other excision or destruction of lesion or tissue of brain 01.59
01.59 Other excision or destruction of lesion or tissue of brain', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.6', 'Incision and excision of skull, brain, and cerebral meninges
- Excision of lesion of skull 01.6
01.6 Excision of lesion of skull', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02', 'Other operations on skull, brain, and cerebral meninges
02 Other operations on skull, brain, and cerebral meninges', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.0', 'Other operations on skull, brain, and cerebral meninges
- Cranioplasty 02.0
02.0 Cranioplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.01', 'Other operations on skull, brain, and cerebral meninges
- Cranioplasty
-- Opening of cranial suture 02.01
02.01 Opening of cranial suture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.02', 'Other operations on skull, brain, and cerebral meninges
- Cranioplasty
-- Elevation of skull fracture fragments 02.02
02.02 Elevation of skull fracture fragments', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.03', 'Other operations on skull, brain, and cerebral meninges
- Cranioplasty
-- Formation of cranial bone flap 02.03
02.03 Formation of cranial bone flap', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.04', 'Other operations on skull, brain, and cerebral meninges
- Cranioplasty
-- Bone graft to skull 02.04
02.04 Bone graft to skull', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.05', 'Other operations on skull, brain, and cerebral meninges
- Cranioplasty
-- Insertion of skull plate 02.05
02.05 Insertion of skull plate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.06', 'Other operations on skull, brain, and cerebral meninges
- Cranioplasty
-- Other cranial osteoplasty 02.06
02.06 Other cranial osteoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.07', 'Other operations on skull, brain, and cerebral meninges
- Cranioplasty
-- Removal of skull plate 02.07
02.07 Removal of skull plate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.1', 'Other operations on skull, brain, and cerebral meninges
- Repair of cerebral meninges 02.1
02.1 Repair of cerebral meninges', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.11', 'Other operations on skull, brain, and cerebral meninges
- Repair of cerebral meninges
-- Simple suture of dura mater of brain 02.11
02.11 Simple suture of dura mater of brain', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.12', 'Other operations on skull, brain, and cerebral meninges
- Repair of cerebral meninges
-- Other repair of cerebral meninges 02.12
02.12 Other repair of cerebral meninges', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.13', 'Other operations on skull, brain, and cerebral meninges
- Repair of cerebral meninges
-- Ligation of meningeal vessel 02.13
02.13 Ligation of meningeal vessel', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.14', 'Other operations on skull, brain, and cerebral meninges
- Repair of cerebral meninges
-- Choroid plexectomy 02.14
02.14 Choroid plexectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.2', 'Other operations on skull, brain, and cerebral meninges
- Ventriculostomy 02.2
02.2 Ventriculostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.3', 'Other operations on skull, brain, and cerebral meninges
- Extracranial ventricular shunt 02.3
02.3 Extracranial ventricular shunt', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.31', 'Other operations on skull, brain, and cerebral meninges
- Extracranial ventricular shunt
-- Ventricular shunt to structure in head and neck 02.31
02.31 Ventricular shunt to structure in head and neck', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.32', 'Other operations on skull, brain, and cerebral meninges
- Extracranial ventricular shunt
-- Ventricular shunt to circulatory system 02.32
02.32 Ventricular shunt to circulatory system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.33', 'Other operations on skull, brain, and cerebral meninges
- Extracranial ventricular shunt
-- Ventricular shunt to thoracic cavity 02.33
02.33 Ventricular shunt to thoracic cavity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.34', 'Other operations on skull, brain, and cerebral meninges
- Extracranial ventricular shunt
-- Ventricular shunt to abdominal cavity and organs 02.34
02.34 Ventricular shunt to abdominal cavity and organs', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.35', 'Other operations on skull, brain, and cerebral meninges
- Extracranial ventricular shunt
-- Ventricular shunt to urinary system 02.35
02.35 Ventricular shunt to urinary system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.39', 'Other operations on skull, brain, and cerebral meninges
- Extracranial ventricular shunt
-- Other operations to establish drainage of ventricle 02.39
02.39 Other operations to establish drainage of ventricle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.4', 'Other operations on skull, brain, and cerebral meninges
- Revision, removal, and irrigation of ventricular shunt 02.4
02.4 Revision, removal, and irrigation of ventricular shunt', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.41', 'Other operations on skull, brain, and cerebral meninges
- Revision, removal, and irrigation of ventricular shunt
-- Irrigation and exploration of ventricular shunt 02.41
02.41 Irrigation and exploration of ventricular shunt', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.42', 'Other operations on skull, brain, and cerebral meninges
- Revision, removal, and irrigation of ventricular shunt
-- Replacement of ventricular shunt 02.42
02.42 Replacement of ventricular shunt', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.43', 'Other operations on skull, brain, and cerebral meninges
- Revision, removal, and irrigation of ventricular shunt
-- Removal of ventricular shunt 02.43
02.43 Removal of ventricular shunt', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.9', 'Other operations on skull, brain, and cerebral meninges
- Other operations on skull, brain, and cerebral meninges 02.9
02.9 Other operations on skull, brain, and cerebral meninges', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.91', 'Other operations on skull, brain, and cerebral meninges
- Other operations on skull, brain, and cerebral meninges
-- Lysis of cortical adhesions 02.91
02.91 Lysis of cortical adhesions', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.92', 'Other operations on skull, brain, and cerebral meninges
- Other operations on skull, brain, and cerebral meninges
-- Repair of brain 02.92
02.92 Repair of brain', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.93', 'Other operations on skull, brain, and cerebral meninges
- Other operations on skull, brain, and cerebral meninges
-- Implantation or replacement of intracranial neurostimulator lead(s) 02.93
02.93 Implantation or replacement of intracranial neurostimulator lead(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.94', 'Other operations on skull, brain, and cerebral meninges
- Other operations on skull, brain, and cerebral meninges
-- Insertion or replacement of skull tongs or halo traction device 02.94
02.94 Insertion or replacement of skull tongs or halo traction device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.95', 'Other operations on skull, brain, and cerebral meninges
- Other operations on skull, brain, and cerebral meninges
-- Removal of skull tongs or halo traction device 02.95
02.95 Removal of skull tongs or halo traction device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.96', 'Other operations on skull, brain, and cerebral meninges
- Other operations on skull, brain, and cerebral meninges
-- Insertion of sphenoidal electrodes 02.96
02.96 Insertion of sphenoidal electrodes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.99', 'Other operations on skull, brain, and cerebral meninges
- Other operations on skull, brain, and cerebral meninges
-- Other 02.99
02.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03', 'Operations on spinal cord and spinal canal structures
03 Operations on spinal cord and spinal canal structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.0', 'Operations on spinal cord and spinal canal structures
- Exploration and decompression of spinal canal structures 03.0
03.0 Exploration and decompression of spinal canal structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.01', 'Operations on spinal cord and spinal canal structures
- Exploration and decompression of spinal canal structures
-- Removal of foreign body from spinal canal 03.01
03.01 Removal of foreign body from spinal canal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.02', 'Operations on spinal cord and spinal canal structures
- Exploration and decompression of spinal canal structures
-- Reopening of laminectomy site 03.02
03.02 Reopening of laminectomy site', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.09', 'Operations on spinal cord and spinal canal structures
- Exploration and decompression of spinal canal structures
-- Other exploration and decompression of spinal canal 03.09
03.09 Other exploration and decompression of spinal canal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.1', 'Operations on spinal cord and spinal canal structures
- Division of intraspinal nerve root 03.1
03.1 Division of intraspinal nerve root', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.2', 'Operations on spinal cord and spinal canal structures
- Chordotomy 03.2
03.2 Chordotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.21', 'Operations on spinal cord and spinal canal structures
- Chordotomy
-- Percutaneous chordotomy 03.21
03.21 Percutaneous chordotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.29', 'Operations on spinal cord and spinal canal structures
- Chordotomy
-- Other chordotomy 03.29
03.29 Other chordotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.3', 'Operations on spinal cord and spinal canal structures
- Diagnostic procedures on spinal cord and spinal canal structures 03.3
03.3 Diagnostic procedures on spinal cord and spinal canal structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.31', 'Operations on spinal cord and spinal canal structures
- Diagnostic procedures on spinal cord and spinal canal structures
-- Spinal tap 03.31
03.31 Spinal tap', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.32', 'Operations on spinal cord and spinal canal structures
- Diagnostic procedures on spinal cord and spinal canal structures
-- Biopsy of spinal cord or spinal meninges 03.32
03.32 Biopsy of spinal cord or spinal meninges', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.39', 'Operations on spinal cord and spinal canal structures
- Diagnostic procedures on spinal cord and spinal canal structures
-- Other diagnostic procedures on spinal cord and spinal canal 03.39
03.39 Other diagnostic procedures on spinal cord and spinal canal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.4', 'Operations on spinal cord and spinal canal structures
- Excision or destruction of lesion of spinal cord or spinal 03.4
03.4 Excision or destruction of lesion of spinal cord or spinal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.5', 'Operations on spinal cord and spinal canal structures
- Plastic operations on spinal cord structures 03.5
03.5 Plastic operations on spinal cord structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.51', 'Operations on spinal cord and spinal canal structures
- Plastic operations on spinal cord structures
-- Repair of spinal meningocele 03.51
03.51 Repair of spinal meningocele', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.52', 'Operations on spinal cord and spinal canal structures
- Plastic operations on spinal cord structures
-- Repair of spinal myelomeningocele 03.52
03.52 Repair of spinal myelomeningocele', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.53', 'Operations on spinal cord and spinal canal structures
- Plastic operations on spinal cord structures
-- Repair of vertebral fracture 03.53
03.53 Repair of vertebral fracture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.59', 'Operations on spinal cord and spinal canal structures
- Plastic operations on spinal cord structures
-- Other repair and plastic operations on spinal cord structures 03.59
03.59 Other repair and plastic operations on spinal cord structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.6', 'Operations on spinal cord and spinal canal structures
- Lysis of adhesions of spinal cord and nerve roots 03.6
03.6 Lysis of adhesions of spinal cord and nerve roots', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.7', 'Operations on spinal cord and spinal canal structures
- Shunt of spinal theca 03.7
03.7 Shunt of spinal theca', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.71', 'Operations on spinal cord and spinal canal structures
- Shunt of spinal theca
-- Spinal subarachnoid-peritoneal shunt 03.71
03.71 Spinal subarachnoid-peritoneal shunt', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.72', 'Operations on spinal cord and spinal canal structures
- Shunt of spinal theca
-- Spinal subarachnoid-ureteral shunt 03.72
03.72 Spinal subarachnoid-ureteral shunt', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.79', 'Operations on spinal cord and spinal canal structures
- Shunt of spinal theca
-- Other shunt of spinal theca 03.79
03.79 Other shunt of spinal theca', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.8', 'Operations on spinal cord and spinal canal structures
- Injection of destructive agent into spinal canal 03.8
03.8 Injection of destructive agent into spinal canal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.9', 'Operations on spinal cord and spinal canal structures
- Other operations on spinal cord and spinal canal structures 03.9
03.9 Other operations on spinal cord and spinal canal structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.90', 'Operations on spinal cord and spinal canal structures
- Other operations on spinal cord and spinal canal structures
-- Insertion of catheter into spinal canal for infusion of therapeutic or 03.90
03.90 Insertion of catheter into spinal canal for infusion of therapeutic or', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.91', 'Operations on spinal cord and spinal canal structures
- Other operations on spinal cord and spinal canal structures
-- Injection of anesthetic into spinal canal for analgesia 03.91
03.91 Injection of anesthetic into spinal canal for analgesia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.92', 'Operations on spinal cord and spinal canal structures
- Other operations on spinal cord and spinal canal structures
-- Injection of other agent into spinal canal 03.92
03.92 Injection of other agent into spinal canal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.93', 'Operations on spinal cord and spinal canal structures
- Other operations on spinal cord and spinal canal structures
-- Implantation or replacement of spinal neurostimulator lead(s) 03.93
03.93 Implantation or replacement of spinal neurostimulator lead(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.94', 'Operations on spinal cord and spinal canal structures
- Other operations on spinal cord and spinal canal structures
-- Removal of spinal neurostimulator lead(s) 03.94
03.94 Removal of spinal neurostimulator lead(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.95', 'Operations on spinal cord and spinal canal structures
- Other operations on spinal cord and spinal canal structures
-- Spinal blood patch 03.95
03.95 Spinal blood patch', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.96', 'Operations on spinal cord and spinal canal structures
- Other operations on spinal cord and spinal canal structures
-- Percutaneous denervation of facet 03.96
03.96 Percutaneous denervation of facet', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.97', 'Operations on spinal cord and spinal canal structures
- Other operations on spinal cord and spinal canal structures
-- Revision of spinal thecal shunt 03.97
03.97 Revision of spinal thecal shunt', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.98', 'Operations on spinal cord and spinal canal structures
- Other operations on spinal cord and spinal canal structures
-- Removal of spinal thecal shunt 03.98
03.98 Removal of spinal thecal shunt', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.99', 'Operations on spinal cord and spinal canal structures
- Other operations on spinal cord and spinal canal structures
-- Other 03.99
03.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04', 'Operations on cranial and peripheral nerves
04 Operations on cranial and peripheral nerves', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.0', 'Operations on cranial and peripheral nerves
- Incision, division, and excision of cranial and peripheral nerves 04.0
04.0 Incision, division, and excision of cranial and peripheral nerves', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.01', 'Operations on cranial and peripheral nerves
- Incision, division, and excision of cranial and peripheral nerves
-- Excision of acoustic neuroma 04.01
04.01 Excision of acoustic neuroma', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.02', 'Operations on cranial and peripheral nerves
- Incision, division, and excision of cranial and peripheral nerves
-- Division of trigeminal nerve 04.02
04.02 Division of trigeminal nerve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.03', 'Operations on cranial and peripheral nerves
- Incision, division, and excision of cranial and peripheral nerves
-- Division or crushing of other cranial and peripheral nerves 04.03
04.03 Division or crushing of other cranial and peripheral nerves', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.04', 'Operations on cranial and peripheral nerves
- Incision, division, and excision of cranial and peripheral nerves
-- Other incision of cranial and peripheral nerves 04.04
04.04 Other incision of cranial and peripheral nerves', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.05', 'Operations on cranial and peripheral nerves
- Incision, division, and excision of cranial and peripheral nerves
-- Gasserian ganglionectomy 04.05
04.05 Gasserian ganglionectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.06', 'Operations on cranial and peripheral nerves
- Incision, division, and excision of cranial and peripheral nerves
-- Other cranial or peripheral ganglionectomy 04.06
04.06 Other cranial or peripheral ganglionectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.07', 'Operations on cranial and peripheral nerves
- Incision, division, and excision of cranial and peripheral nerves
-- Other excision or avulsion of cranial and peripheral nerves 04.07
04.07 Other excision or avulsion of cranial and peripheral nerves', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.1', 'Operations on cranial and peripheral nerves
- Diagnostic procedures on peripheral nervous system 04.1
04.1 Diagnostic procedures on peripheral nervous system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.11', 'Operations on cranial and peripheral nerves
- Diagnostic procedures on peripheral nervous system
-- Closed [percutaneous] [needle] biopsy of cranial or peripheral 04.11
04.11 Closed [percutaneous] [needle] biopsy of cranial or peripheral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.12', 'Operations on cranial and peripheral nerves
- Diagnostic procedures on peripheral nervous system
-- Open biopsy of cranial or peripheral nerve or ganglion 04.12
04.12 Open biopsy of cranial or peripheral nerve or ganglion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.19', 'Operations on cranial and peripheral nerves
- Diagnostic procedures on peripheral nervous system
-- Other diagnostic procedures on cranial and peripheral nerves 04.19
04.19 Other diagnostic procedures on cranial and peripheral nerves', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.2', 'Operations on cranial and peripheral nerves
- Destruction of cranial and peripheral nerves 04.2
04.2 Destruction of cranial and peripheral nerves', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.3', 'Operations on cranial and peripheral nerves
- Suture of cranial and peripheral nerves 04.3
04.3 Suture of cranial and peripheral nerves', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.4', 'Operations on cranial and peripheral nerves
- Lysis of adhesions and decompression of cranial and peripheral 04.4
04.4 Lysis of adhesions and decompression of cranial and peripheral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.41', 'Operations on cranial and peripheral nerves
- Lysis of adhesions and decompression of cranial and peripheral
-- Decompression of trigeminal nerve root 04.41
04.41 Decompression of trigeminal nerve root', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.42', 'Operations on cranial and peripheral nerves
- Lysis of adhesions and decompression of cranial and peripheral
-- Other cranial nerve decompression 04.42
04.42 Other cranial nerve decompression', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.43', 'Operations on cranial and peripheral nerves
- Lysis of adhesions and decompression of cranial and peripheral
-- Release of carpal tunnel 04.43
04.43 Release of carpal tunnel', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.44', 'Operations on cranial and peripheral nerves
- Lysis of adhesions and decompression of cranial and peripheral
-- Release of tarsal tunnel 04.44
04.44 Release of tarsal tunnel', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.49', 'Operations on cranial and peripheral nerves
- Lysis of adhesions and decompression of cranial and peripheral
-- Other peripheral nerve or ganglion decompression or lysis of 04.49
04.49 Other peripheral nerve or ganglion decompression or lysis of', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.5', 'Operations on cranial and peripheral nerves
- Cranial or peripheral nerve graft 04.5
04.5 Cranial or peripheral nerve graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.6', 'Operations on cranial and peripheral nerves
- Transposition of cranial and peripheral nerves 04.6
04.6 Transposition of cranial and peripheral nerves', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.7', 'Operations on cranial and peripheral nerves
- Other cranial or peripheral neuroplasty 04.7
04.7 Other cranial or peripheral neuroplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.71', 'Operations on cranial and peripheral nerves
- Other cranial or peripheral neuroplasty
-- Hypoglossal-facial anastomosis 04.71
04.71 Hypoglossal-facial anastomosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.72', 'Operations on cranial and peripheral nerves
- Other cranial or peripheral neuroplasty
-- Accessory-facial anastomosis 04.72
04.72 Accessory-facial anastomosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.73', 'Operations on cranial and peripheral nerves
- Other cranial or peripheral neuroplasty
-- Accessory-hypoglossal anastomosis 04.73
04.73 Accessory-hypoglossal anastomosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.74', 'Operations on cranial and peripheral nerves
- Other cranial or peripheral neuroplasty
-- Other anastomosis of cranial or peripheral nerve 04.74
04.74 Other anastomosis of cranial or peripheral nerve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.75', 'Operations on cranial and peripheral nerves
- Other cranial or peripheral neuroplasty
-- Revision of previous repair of cranial and peripheral nerves 04.75
04.75 Revision of previous repair of cranial and peripheral nerves', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.76', 'Operations on cranial and peripheral nerves
- Other cranial or peripheral neuroplasty
-- Repair of old traumatic injury of cranial and peripheral nerves 04.76
04.76 Repair of old traumatic injury of cranial and peripheral nerves', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.79', 'Operations on cranial and peripheral nerves
- Other cranial or peripheral neuroplasty
-- Other neuroplasty 04.79
04.79 Other neuroplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.8', 'Operations on cranial and peripheral nerves
- Injection into peripheral nerve 04.8
04.8 Injection into peripheral nerve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.80', 'Operations on cranial and peripheral nerves
- Injection into peripheral nerve
-- Peripheral nerve injection, not otherwise specified 04.80
04.80 Peripheral nerve injection, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.81', 'Operations on cranial and peripheral nerves
- Injection into peripheral nerve
-- Injection of anesthetic into peripheral nerve for analgesia 04.81
04.81 Injection of anesthetic into peripheral nerve for analgesia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.89', 'Operations on cranial and peripheral nerves
- Injection into peripheral nerve
-- Injection of other agent, except neurolytic 04.89
04.89 Injection of other agent, except neurolytic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.9', 'Operations on cranial and peripheral nerves
- Other operations on cranial and peripheral nerves 04.9
04.9 Other operations on cranial and peripheral nerves', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.91', 'Operations on cranial and peripheral nerves
- Other operations on cranial and peripheral nerves
-- Neurectasis 04.91
04.91 Neurectasis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.92', 'Operations on cranial and peripheral nerves
- Other operations on cranial and peripheral nerves
-- Implantation or replacement of peripheral neurostimulator lead(s) 04.92
04.92 Implantation or replacement of peripheral neurostimulator lead(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.93', 'Operations on cranial and peripheral nerves
- Other operations on cranial and peripheral nerves
-- Removal of peripheral neurostimulator lead(s) 04.93
04.93 Removal of peripheral neurostimulator lead(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.99', 'Operations on cranial and peripheral nerves
- Other operations on cranial and peripheral nerves
-- Other 04.99
04.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05', 'Operations on sympathetic nerves or ganglia
05 Operations on sympathetic nerves or ganglia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.0', 'Operations on sympathetic nerves or ganglia
- Division of sympathetic nerve or ganglion 05.0
05.0 Division of sympathetic nerve or ganglion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.1', 'Operations on sympathetic nerves or ganglia
- Diagnostic procedures on sympathetic nerves or ganglia 05.1
05.1 Diagnostic procedures on sympathetic nerves or ganglia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.11', 'Operations on sympathetic nerves or ganglia
- Diagnostic procedures on sympathetic nerves or ganglia
-- Biopsy of sympathetic nerve or ganglion 05.11
05.11 Biopsy of sympathetic nerve or ganglion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.19', 'Operations on sympathetic nerves or ganglia
- Diagnostic procedures on sympathetic nerves or ganglia
-- Other diagnostic procedures on sympathetic nerves or ganglia 05.19
05.19 Other diagnostic procedures on sympathetic nerves or ganglia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.2', 'Operations on sympathetic nerves or ganglia
- Sympathectomy 05.2
05.2 Sympathectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.21', 'Operations on sympathetic nerves or ganglia
- Sympathectomy
-- Sphenopalatine ganglionectomy 05.21
05.21 Sphenopalatine ganglionectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.22', 'Operations on sympathetic nerves or ganglia
- Sympathectomy
-- Cervical sympathectomy 05.22
05.22 Cervical sympathectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.23', 'Operations on sympathetic nerves or ganglia
- Sympathectomy
-- Lumbar sympathectomy 05.23
05.23 Lumbar sympathectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.24', 'Operations on sympathetic nerves or ganglia
- Sympathectomy
-- Presacral sympathectomy 05.24
05.24 Presacral sympathectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.25', 'Operations on sympathetic nerves or ganglia
- Sympathectomy
-- Periarterial sympathectomy 05.25
05.25 Periarterial sympathectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.29', 'Operations on sympathetic nerves or ganglia
- Sympathectomy
-- Other sympathectomy and ganglionectomy 05.29
05.29 Other sympathectomy and ganglionectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.3', 'Operations on sympathetic nerves or ganglia
- Injection into sympathetic nerve or ganglion 05.3
05.3 Injection into sympathetic nerve or ganglion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.31', 'Operations on sympathetic nerves or ganglia
- Injection into sympathetic nerve or ganglion
-- Injection of anesthetic into sympathetic nerve for analgesia 05.31
05.31 Injection of anesthetic into sympathetic nerve for analgesia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.32', 'Operations on sympathetic nerves or ganglia
- Injection into sympathetic nerve or ganglion
-- Injection of neurolytic agent into sympathetic nerve 05.32
05.32 Injection of neurolytic agent into sympathetic nerve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.39', 'Operations on sympathetic nerves or ganglia
- Injection into sympathetic nerve or ganglion
-- Other injection into sympathetic nerve or ganglion 05.39
05.39 Other injection into sympathetic nerve or ganglion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.8', 'Operations on sympathetic nerves or ganglia
- Other operations on sympathetic nerves or ganglia 05.8
05.8 Other operations on sympathetic nerves or ganglia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.81', 'Operations on sympathetic nerves or ganglia
- Other operations on sympathetic nerves or ganglia
-- Repair of sympathetic nerve or ganglion 05.81
05.81 Repair of sympathetic nerve or ganglion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.89', 'Operations on sympathetic nerves or ganglia
- Other operations on sympathetic nerves or ganglia
-- Other 05.89
05.89 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.9', 'Operations on sympathetic nerves or ganglia
- Other operations on nervous system 05.9
05.9 Other operations on nervous system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06', 'Operations on thyroid and parathyroid glands
06 Operations on thyroid and parathyroid glands', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.0', 'Operations on thyroid and parathyroid glands
- Incision of thyroid field 06.0
06.0 Incision of thyroid field', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.01', 'Operations on thyroid and parathyroid glands
- Incision of thyroid field
-- Aspiration of thyroid field 06.01
06.01 Aspiration of thyroid field', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.02', 'Operations on thyroid and parathyroid glands
- Incision of thyroid field
-- Reopening of wound of thyroid field 06.02
06.02 Reopening of wound of thyroid field', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.09', 'Operations on thyroid and parathyroid glands
- Incision of thyroid field
-- Other incision of thyroid field 06.09
06.09 Other incision of thyroid field', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.1', 'Operations on thyroid and parathyroid glands
- Diagnostic procedures on thyroid and parathyroid glands 06.1
06.1 Diagnostic procedures on thyroid and parathyroid glands', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.11', 'Operations on thyroid and parathyroid glands
- Diagnostic procedures on thyroid and parathyroid glands
-- Closed [percutaneous] [needle] biopsy of thyroid gland 06.11
06.11 Closed [percutaneous] [needle] biopsy of thyroid gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.12', 'Operations on thyroid and parathyroid glands
- Diagnostic procedures on thyroid and parathyroid glands
-- Open biopsy of thyroid gland 06.12
06.12 Open biopsy of thyroid gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.13', 'Operations on thyroid and parathyroid glands
- Diagnostic procedures on thyroid and parathyroid glands
-- Biopsy of parathyroid gland 06.13
06.13 Biopsy of parathyroid gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.19', 'Operations on thyroid and parathyroid glands
- Diagnostic procedures on thyroid and parathyroid glands
-- Other diagnostic procedures on thyroid and parathyroid glands 06.19
06.19 Other diagnostic procedures on thyroid and parathyroid glands', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.2', 'Operations on thyroid and parathyroid glands
- Unilateral thyroid lobectomy 06.2
06.2 Unilateral thyroid lobectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.3', 'Operations on thyroid and parathyroid glands
- Other partial thyroidectomy 06.3
06.3 Other partial thyroidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.31', 'Operations on thyroid and parathyroid glands
- Other partial thyroidectomy
-- Excision of lesion of thyroid 06.31
06.31 Excision of lesion of thyroid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.39', 'Operations on thyroid and parathyroid glands
- Other partial thyroidectomy
-- Other 06.39
06.39 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.4', 'Operations on thyroid and parathyroid glands
- Complete thyroidectomy 06.4
06.4 Complete thyroidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.5', 'Operations on thyroid and parathyroid glands
- Substernal thyroidectomy 06.5
06.5 Substernal thyroidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.50', 'Operations on thyroid and parathyroid glands
- Substernal thyroidectomy
-- Substernal thyroidectomy, not otherwise specified 06.50
06.50 Substernal thyroidectomy, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.51', 'Operations on thyroid and parathyroid glands
- Substernal thyroidectomy
-- Partial substernal thyroidectomy 06.51
06.51 Partial substernal thyroidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.52', 'Operations on thyroid and parathyroid glands
- Substernal thyroidectomy
-- Complete substernal thyroidectomy 06.52
06.52 Complete substernal thyroidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.6', 'Operations on thyroid and parathyroid glands
- Excision of lingual thyroid 06.6
06.6 Excision of lingual thyroid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.7', 'Operations on thyroid and parathyroid glands
- Excision of thyroglossal duct or tract 06.7
06.7 Excision of thyroglossal duct or tract', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.8', 'Operations on thyroid and parathyroid glands
- Parathyroidectomy 06.8
06.8 Parathyroidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.81', 'Operations on thyroid and parathyroid glands
- Parathyroidectomy
-- Complete parathyroidectomy 06.81
06.81 Complete parathyroidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.89', 'Operations on thyroid and parathyroid glands
- Parathyroidectomy
-- Other parathyroidectomy 06.89
06.89 Other parathyroidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.9', 'Operations on thyroid and parathyroid glands
- Other operations on thyroid (region) and parathyroid 06.9
06.9 Other operations on thyroid (region) and parathyroid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.91', 'Operations on thyroid and parathyroid glands
- Other operations on thyroid (region) and parathyroid
-- Division of thyroid isthmus 06.91
06.91 Division of thyroid isthmus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.92', 'Operations on thyroid and parathyroid glands
- Other operations on thyroid (region) and parathyroid
-- Ligation of thyroid vessels 06.92
06.92 Ligation of thyroid vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.93', 'Operations on thyroid and parathyroid glands
- Other operations on thyroid (region) and parathyroid
-- Suture of thyroid gland 06.93
06.93 Suture of thyroid gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.94', 'Operations on thyroid and parathyroid glands
- Other operations on thyroid (region) and parathyroid
-- Thyroid tissue reimplantation 06.94
06.94 Thyroid tissue reimplantation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.95', 'Operations on thyroid and parathyroid glands
- Other operations on thyroid (region) and parathyroid
-- Parathyroid tissue reimplantation 06.95
06.95 Parathyroid tissue reimplantation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.98', 'Operations on thyroid and parathyroid glands
- Other operations on thyroid (region) and parathyroid
-- Other operations on thyroid glands 06.98
06.98 Other operations on thyroid glands', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.99', 'Operations on thyroid and parathyroid glands
- Other operations on thyroid (region) and parathyroid
-- Other operations on parathyroid glands 06.99
06.99 Other operations on parathyroid glands', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07', 'Operations on other endocrine glands
07 Operations on other endocrine glands', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.0', 'Operations on other endocrine glands
- Exploration of adrenal field 07.0
07.0 Exploration of adrenal field', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.00', 'Operations on other endocrine glands
- Exploration of adrenal field
-- Exploration of adrenal field, not otherwise specified 07.00
07.00 Exploration of adrenal field, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.01', 'Operations on other endocrine glands
- Exploration of adrenal field
-- Unilateral exploration of adrenal field 07.01
07.01 Unilateral exploration of adrenal field', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.02', 'Operations on other endocrine glands
- Exploration of adrenal field
-- Bilateral exploration of adrenal field 07.02
07.02 Bilateral exploration of adrenal field', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.1', 'Operations on other endocrine glands
- Diagnostic procedures on adrenal glands, pituitary gland, pineal 07.1
07.1 Diagnostic procedures on adrenal glands, pituitary gland, pineal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.11', 'Operations on other endocrine glands
- Diagnostic procedures on adrenal glands, pituitary gland, pineal
-- Closed [percutaneous] [needle] biopsy of adrenal gland 07.11
07.11 Closed [percutaneous] [needle] biopsy of adrenal gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.12', 'Operations on other endocrine glands
- Diagnostic procedures on adrenal glands, pituitary gland, pineal
-- Open biopsy of adrenal gland 07.12
07.12 Open biopsy of adrenal gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.13', 'Operations on other endocrine glands
- Diagnostic procedures on adrenal glands, pituitary gland, pineal
-- Biopsy of pituitary gland, transfrontal approach 07.13
07.13 Biopsy of pituitary gland, transfrontal approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.14', 'Operations on other endocrine glands
- Diagnostic procedures on adrenal glands, pituitary gland, pineal
-- Biopsy of pituitary gland, transsphenoidal approach 07.14
07.14 Biopsy of pituitary gland, transsphenoidal approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.15', 'Operations on other endocrine glands
- Diagnostic procedures on adrenal glands, pituitary gland, pineal
-- Biopsy of pituitary gland, unspecified approach 07.15
07.15 Biopsy of pituitary gland, unspecified approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.16', 'Operations on other endocrine glands
- Diagnostic procedures on adrenal glands, pituitary gland, pineal
-- Biopsy of thymus 07.16
07.16 Biopsy of thymus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.17', 'Operations on other endocrine glands
- Diagnostic procedures on adrenal glands, pituitary gland, pineal
-- Biopsy of pineal gland 07.17
07.17 Biopsy of pineal gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.19', 'Operations on other endocrine glands
- Diagnostic procedures on adrenal glands, pituitary gland, pineal
-- Other diagnostic procedures on adrenal glands, pituitary gland, 07.19
07.19 Other diagnostic procedures on adrenal glands, pituitary gland,', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.2', 'Operations on other endocrine glands
- Partial adrenalectomy 07.2
07.2 Partial adrenalectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.21', 'Operations on other endocrine glands
- Partial adrenalectomy
-- Excision of lesion of adrenal gland 07.21
07.21 Excision of lesion of adrenal gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.22', 'Operations on other endocrine glands
- Partial adrenalectomy
-- Unilateral adrenalectomy 07.22
07.22 Unilateral adrenalectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.29', 'Operations on other endocrine glands
- Partial adrenalectomy
-- Other partial adrenalectomy 07.29
07.29 Other partial adrenalectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.3', 'Operations on other endocrine glands
- Bilateral adrenalectomy 07.3
07.3 Bilateral adrenalectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.4', 'Operations on other endocrine glands
- Other operations on adrenal glands, nerves, and vessels 07.4
07.4 Other operations on adrenal glands, nerves, and vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.41', 'Operations on other endocrine glands
- Other operations on adrenal glands, nerves, and vessels
-- Incision of adrenal gland 07.41
07.41 Incision of adrenal gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.42', 'Operations on other endocrine glands
- Other operations on adrenal glands, nerves, and vessels
-- Division of nerves to adrenal glands 07.42
07.42 Division of nerves to adrenal glands', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.43', 'Operations on other endocrine glands
- Other operations on adrenal glands, nerves, and vessels
-- Ligation of adrenal vessels 07.43
07.43 Ligation of adrenal vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.44', 'Operations on other endocrine glands
- Other operations on adrenal glands, nerves, and vessels
-- Repair of adrenal gland 07.44
07.44 Repair of adrenal gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.45', 'Operations on other endocrine glands
- Other operations on adrenal glands, nerves, and vessels
-- Reimplantation of adrenal tissue 07.45
07.45 Reimplantation of adrenal tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.49', 'Operations on other endocrine glands
- Other operations on adrenal glands, nerves, and vessels
-- Other 07.49
07.49 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.5', 'Operations on other endocrine glands
- Operations on pineal gland 07.5
07.5 Operations on pineal gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.51', 'Operations on other endocrine glands
- Operations on pineal gland
-- Exploration of pineal field 07.51
07.51 Exploration of pineal field', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.52', 'Operations on other endocrine glands
- Operations on pineal gland
-- Incision of pineal gland 07.52
07.52 Incision of pineal gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.53', 'Operations on other endocrine glands
- Operations on pineal gland
-- Partial excision of pineal gland 07.53
07.53 Partial excision of pineal gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.54', 'Operations on other endocrine glands
- Operations on pineal gland
-- Total excision of pineal gland 07.54
07.54 Total excision of pineal gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.59', 'Operations on other endocrine glands
- Operations on pineal gland
-- Other operations on pineal gland 07.59
07.59 Other operations on pineal gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.6', 'Operations on other endocrine glands
- Hypophysectomy 07.6
07.6 Hypophysectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.61', 'Operations on other endocrine glands
- Hypophysectomy
-- Partial excision of pituitary gland, transfrontal approach 07.61
07.61 Partial excision of pituitary gland, transfrontal approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.62', 'Operations on other endocrine glands
- Hypophysectomy
-- Partial excision of pituitary gland, transsphenoidal approach 07.62
07.62 Partial excision of pituitary gland, transsphenoidal approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.63', 'Operations on other endocrine glands
- Hypophysectomy
-- Partial excision of pituitary gland, unspecified approach 07.63
07.63 Partial excision of pituitary gland, unspecified approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.64', 'Operations on other endocrine glands
- Hypophysectomy
-- Total excision of pituitary gland, transfrontal approach 07.64
07.64 Total excision of pituitary gland, transfrontal approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.65', 'Operations on other endocrine glands
- Hypophysectomy
-- Total excision of pituitary gland, transsphenoidal approach 07.65
07.65 Total excision of pituitary gland, transsphenoidal approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.68', 'Operations on other endocrine glands
- Hypophysectomy
-- Total excision of pituitary gland, other specified approach 07.68
07.68 Total excision of pituitary gland, other specified approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.69', 'Operations on other endocrine glands
- Hypophysectomy
-- Total excision of pituitary gland, unspecified approach 07.69
07.69 Total excision of pituitary gland, unspecified approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.7', 'Operations on other endocrine glands
- Other operations on hypophysis 07.7
07.7 Other operations on hypophysis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.71', 'Operations on other endocrine glands
- Other operations on hypophysis
-- Exploration of pituitary fossa 07.71
07.71 Exploration of pituitary fossa', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.72', 'Operations on other endocrine glands
- Other operations on hypophysis
-- Incision of pituitary gland 07.72
07.72 Incision of pituitary gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.79', 'Operations on other endocrine glands
- Other operations on hypophysis
-- Other 07.79
07.79 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.8', 'Operations on other endocrine glands
- Thymectomy 07.8
07.8 Thymectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.80', 'Operations on other endocrine glands
- Thymectomy
-- Thymectomy, not otherwise specified 07.80
07.80 Thymectomy, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.81', 'Operations on other endocrine glands
- Thymectomy
-- Other partial excision of thymus 07.81
07.81 Other partial excision of thymus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.82', 'Operations on other endocrine glands
- Thymectomy
-- Other total excision of thymus 07.82
07.82 Other total excision of thymus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.83', 'Operations on other endocrine glands
- Thymectomy
-- Thoracoscopic partial excision of thymus  07.83
07.83 Thoracoscopic partial excision of thymus ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.84', 'Operations on other endocrine glands
- Thymectomy
-- Thoracoscopic total excision of thymus  07.84
07.84 Thoracoscopic total excision of thymus ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.9', 'Operations on other endocrine glands
- Other operations on thymus 07.9
07.9 Other operations on thymus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.91', 'Operations on other endocrine glands
- Other operations on thymus
-- Exploration of thymus field 07.91
07.91 Exploration of thymus field', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.92', 'Operations on other endocrine glands
- Other operations on thymus
-- Other incision of thymus 07.92
07.92 Other incision of thymus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.93', 'Operations on other endocrine glands
- Other operations on thymus
-- Repair of thymus 07.93
07.93 Repair of thymus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.94', 'Operations on other endocrine glands
- Other operations on thymus
-- Transplantation of thymus 07.94
07.94 Transplantation of thymus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.95', 'Operations on other endocrine glands
- Other operations on thymus
-- Thoracoscopic incision of thymus  07.95
07.95 Thoracoscopic incision of thymus ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.98', 'Operations on other endocrine glands
- Other operations on thymus
-- Other and unspecified thoracoscopic operations on thymus  07.98
07.98 Other and unspecified thoracoscopic operations on thymus ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.99', 'Operations on other endocrine glands
- Other operations on thymus
-- Other and unspecified operations on thymus 07.99
07.99 Other and unspecified operations on thymus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08', 'Operations on eyelids
08 Operations on eyelids', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.0', 'Operations on eyelids
- Incision of eyelid 08.0
08.0 Incision of eyelid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.01', 'Operations on eyelids
- Incision of eyelid
-- Incision of lid margin 08.01
08.01 Incision of lid margin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.02', 'Operations on eyelids
- Incision of eyelid
-- Severing of blepharorrhaphy 08.02
08.02 Severing of blepharorrhaphy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.09', 'Operations on eyelids
- Incision of eyelid
-- Other incision of eyelid 08.09
08.09 Other incision of eyelid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.1', 'Operations on eyelids
- Diagnostic procedures on eyelid 08.1
08.1 Diagnostic procedures on eyelid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.11', 'Operations on eyelids
- Diagnostic procedures on eyelid
-- Biopsy of eyelid 08.11
08.11 Biopsy of eyelid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.19', 'Operations on eyelids
- Diagnostic procedures on eyelid
-- Other diagnostic procedures on eyelid 08.19
08.19 Other diagnostic procedures on eyelid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.2', 'Operations on eyelids
- Excision or destruction of lesion or tissue of eyelid 08.2
08.2 Excision or destruction of lesion or tissue of eyelid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.20', 'Operations on eyelids
- Excision or destruction of lesion or tissue of eyelid
-- Removal of lesion of eyelid, not otherwise specified 08.20
08.20 Removal of lesion of eyelid, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.21', 'Operations on eyelids
- Excision or destruction of lesion or tissue of eyelid
-- Excision of chalazion 08.21
08.21 Excision of chalazion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.22', 'Operations on eyelids
- Excision or destruction of lesion or tissue of eyelid
-- Excision of other minor lesion of eyelid 08.22
08.22 Excision of other minor lesion of eyelid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.23', 'Operations on eyelids
- Excision or destruction of lesion or tissue of eyelid
-- Excision of major lesion of eyelid, partial-thickness 08.23
08.23 Excision of major lesion of eyelid, partial-thickness', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.24', 'Operations on eyelids
- Excision or destruction of lesion or tissue of eyelid
-- Excision of major lesion of eyelid, full-thickness 08.24
08.24 Excision of major lesion of eyelid, full-thickness', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.25', 'Operations on eyelids
- Excision or destruction of lesion or tissue of eyelid
-- Destruction of lesion of eyelid 08.25
08.25 Destruction of lesion of eyelid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.3', 'Operations on eyelids
- Repair of blepharoptosis and lid retraction 08.3
08.3 Repair of blepharoptosis and lid retraction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.31', 'Operations on eyelids
- Repair of blepharoptosis and lid retraction
-- Repair of blepharoptosis by frontalis muscle technique with suture 08.31
08.31 Repair of blepharoptosis by frontalis muscle technique with suture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.32', 'Operations on eyelids
- Repair of blepharoptosis and lid retraction
-- Repair of blepharoptosis by frontalis muscle technique with fascial 08.32
08.32 Repair of blepharoptosis by frontalis muscle technique with fascial', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.33', 'Operations on eyelids
- Repair of blepharoptosis and lid retraction
-- Repair of blepharoptosis by resection or advancement of levator 08.33
08.33 Repair of blepharoptosis by resection or advancement of levator', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.34', 'Operations on eyelids
- Repair of blepharoptosis and lid retraction
-- Repair of blepharoptosis by other levator muscle techniques 08.34
08.34 Repair of blepharoptosis by other levator muscle techniques', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.35', 'Operations on eyelids
- Repair of blepharoptosis and lid retraction
-- Repair of blepharoptosis by tarsal technique 08.35
08.35 Repair of blepharoptosis by tarsal technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.36', 'Operations on eyelids
- Repair of blepharoptosis and lid retraction
-- Repair of blepharoptosis by other techniques 08.36
08.36 Repair of blepharoptosis by other techniques', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.37', 'Operations on eyelids
- Repair of blepharoptosis and lid retraction
-- Reduction of overcorrection of ptosis 08.37
08.37 Reduction of overcorrection of ptosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.38', 'Operations on eyelids
- Repair of blepharoptosis and lid retraction
-- Correction of lid retraction 08.38
08.38 Correction of lid retraction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.4', 'Operations on eyelids
- Repair of entropion or ectropion 08.4
08.4 Repair of entropion or ectropion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.41', 'Operations on eyelids
- Repair of entropion or ectropion
-- Repair of entropion or ectropion by thermocauterization 08.41
08.41 Repair of entropion or ectropion by thermocauterization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.42', 'Operations on eyelids
- Repair of entropion or ectropion
-- Repair of entropion or ectropion by suture technique 08.42
08.42 Repair of entropion or ectropion by suture technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.43', 'Operations on eyelids
- Repair of entropion or ectropion
-- Repair of entropion or ectropion with wedge resection 08.43
08.43 Repair of entropion or ectropion with wedge resection', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.44', 'Operations on eyelids
- Repair of entropion or ectropion
-- Repair of entropion or ectropion with lid reconstruction 08.44
08.44 Repair of entropion or ectropion with lid reconstruction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.49', 'Operations on eyelids
- Repair of entropion or ectropion
-- Other repair of entropion or ectropion 08.49
08.49 Other repair of entropion or ectropion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.5', 'Operations on eyelids
- Other adjustment of lid position 08.5
08.5 Other adjustment of lid position', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.51', 'Operations on eyelids
- Other adjustment of lid position
-- Canthotomy 08.51
08.51 Canthotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.52', 'Operations on eyelids
- Other adjustment of lid position
-- Blepharorrhaphy 08.52
08.52 Blepharorrhaphy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.59', 'Operations on eyelids
- Other adjustment of lid position
-- Other 08.59
08.59 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.6', 'Operations on eyelids
- Reconstruction of eyelid with flaps or grafts 08.6
08.6 Reconstruction of eyelid with flaps or grafts', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.61', 'Operations on eyelids
- Reconstruction of eyelid with flaps or grafts
-- Reconstruction of eyelid with skin flap or graft 08.61
08.61 Reconstruction of eyelid with skin flap or graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.62', 'Operations on eyelids
- Reconstruction of eyelid with flaps or grafts
-- Reconstruction of eyelid with mucous membrane flap or graft 08.62
08.62 Reconstruction of eyelid with mucous membrane flap or graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.63', 'Operations on eyelids
- Reconstruction of eyelid with flaps or grafts
-- Reconstruction of eyelid with hair follicle graft 08.63
08.63 Reconstruction of eyelid with hair follicle graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.64', 'Operations on eyelids
- Reconstruction of eyelid with flaps or grafts
-- Reconstruction of eyelid with tarsoconjunctival flap 08.64
08.64 Reconstruction of eyelid with tarsoconjunctival flap', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.69', 'Operations on eyelids
- Reconstruction of eyelid with flaps or grafts
-- Other reconstruction of eyelid with flaps or grafts 08.69
08.69 Other reconstruction of eyelid with flaps or grafts', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.7', 'Operations on eyelids
- Other reconstruction of eyelid 08.7
08.7 Other reconstruction of eyelid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.70', 'Operations on eyelids
- Other reconstruction of eyelid
-- Reconstruction of eyelid, not otherwise specified 08.70
08.70 Reconstruction of eyelid, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.71', 'Operations on eyelids
- Other reconstruction of eyelid
-- Reconstruction of eyelid involving lid margin, partial-thickness 08.71
08.71 Reconstruction of eyelid involving lid margin, partial-thickness', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.72', 'Operations on eyelids
- Other reconstruction of eyelid
-- Other reconstruction of eyelid, partial-thickness 08.72
08.72 Other reconstruction of eyelid, partial-thickness', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.73', 'Operations on eyelids
- Other reconstruction of eyelid
-- Reconstruction of eyelid involving lid margin, full-thickness 08.73
08.73 Reconstruction of eyelid involving lid margin, full-thickness', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.74', 'Operations on eyelids
- Other reconstruction of eyelid
-- Other reconstruction of eyelid, full-thickness 08.74
08.74 Other reconstruction of eyelid, full-thickness', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.8', 'Operations on eyelids
- Other repair of eyelid 08.8
08.8 Other repair of eyelid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.81', 'Operations on eyelids
- Other repair of eyelid
-- Linear repair of laceration of eyelid or eyebrow 08.81
08.81 Linear repair of laceration of eyelid or eyebrow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.82', 'Operations on eyelids
- Other repair of eyelid
-- Repair of laceration involving lid margin, partial-thickness 08.82
08.82 Repair of laceration involving lid margin, partial-thickness', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.83', 'Operations on eyelids
- Other repair of eyelid
-- Other repair of laceration of eyelid, partial-thickness 08.83
08.83 Other repair of laceration of eyelid, partial-thickness', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.84', 'Operations on eyelids
- Other repair of eyelid
-- Repair of laceration involving lid margin, full-thickness 08.84
08.84 Repair of laceration involving lid margin, full-thickness', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.85', 'Operations on eyelids
- Other repair of eyelid
-- Other repair of laceration of eyelid, full-thickness 08.85
08.85 Other repair of laceration of eyelid, full-thickness', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.86', 'Operations on eyelids
- Other repair of eyelid
-- Lower eyelid rhytidectomy 08.86
08.86 Lower eyelid rhytidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.87', 'Operations on eyelids
- Other repair of eyelid
-- Upper eyelid rhytidectomy 08.87
08.87 Upper eyelid rhytidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.89', 'Operations on eyelids
- Other repair of eyelid
-- Other eyelid repair 08.89
08.89 Other eyelid repair', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.9', 'Operations on eyelids
- Other operations on eyelids 08.9
08.9 Other operations on eyelids', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.91', 'Operations on eyelids
- Other operations on eyelids
-- Electrosurgical epilation of eyelid 08.91
08.91 Electrosurgical epilation of eyelid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.92', 'Operations on eyelids
- Other operations on eyelids
-- Cryosurgical epilation of eyelid 08.92
08.92 Cryosurgical epilation of eyelid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.93', 'Operations on eyelids
- Other operations on eyelids
-- Other epilation of eyelid 08.93
08.93 Other epilation of eyelid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.99', 'Operations on eyelids
- Other operations on eyelids
-- Other 08.99
08.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09', 'Operations on lacrimal system
09 Operations on lacrimal system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.0', 'Operations on lacrimal system
- Incision of lacrimal gland 09.0
09.0 Incision of lacrimal gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.1', 'Operations on lacrimal system
- Diagnostic procedures on lacrimal system 09.1
09.1 Diagnostic procedures on lacrimal system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.11', 'Operations on lacrimal system
- Diagnostic procedures on lacrimal system
-- Biopsy of lacrimal gland 09.11
09.11 Biopsy of lacrimal gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.12', 'Operations on lacrimal system
- Diagnostic procedures on lacrimal system
-- Biopsy of lacrimal sac 09.12
09.12 Biopsy of lacrimal sac', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.19', 'Operations on lacrimal system
- Diagnostic procedures on lacrimal system
-- Other diagnostic procedures on lacrimal system 09.19
09.19 Other diagnostic procedures on lacrimal system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.2', 'Operations on lacrimal system
- Excision of lesion or tissue of lacrimal gland 09.2
09.2 Excision of lesion or tissue of lacrimal gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.20', 'Operations on lacrimal system
- Excision of lesion or tissue of lacrimal gland
-- Excision of lacrimal gland, not otherwise specified 09.20
09.20 Excision of lacrimal gland, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.21', 'Operations on lacrimal system
- Excision of lesion or tissue of lacrimal gland
-- Excision of lesion of lacrimal gland 09.21
09.21 Excision of lesion of lacrimal gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.22', 'Operations on lacrimal system
- Excision of lesion or tissue of lacrimal gland
-- Other partial dacryoadenectomy 09.22
09.22 Other partial dacryoadenectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.23', 'Operations on lacrimal system
- Excision of lesion or tissue of lacrimal gland
-- Total dacryoadenectomy 09.23
09.23 Total dacryoadenectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.3', 'Operations on lacrimal system
- Other operations on lacrimal gland 09.3
09.3 Other operations on lacrimal gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.4', 'Operations on lacrimal system
- Manipulation of lacrimal passage 09.4
09.4 Manipulation of lacrimal passage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.41', 'Operations on lacrimal system
- Manipulation of lacrimal passage
-- Probing of lacrimal punctum 09.41
09.41 Probing of lacrimal punctum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.42', 'Operations on lacrimal system
- Manipulation of lacrimal passage
-- Probing of lacrimal canaliculi 09.42
09.42 Probing of lacrimal canaliculi', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.43', 'Operations on lacrimal system
- Manipulation of lacrimal passage
-- Probing of nasolacrimal duct 09.43
09.43 Probing of nasolacrimal duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.44', 'Operations on lacrimal system
- Manipulation of lacrimal passage
-- Intubation of nasolacrimal duct 09.44
09.44 Intubation of nasolacrimal duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.49', 'Operations on lacrimal system
- Manipulation of lacrimal passage
-- Other manipulation of lacrimal passage 09.49
09.49 Other manipulation of lacrimal passage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.5', 'Operations on lacrimal system
- Incision of lacrimal sac and passages 09.5
09.5 Incision of lacrimal sac and passages', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.51', 'Operations on lacrimal system
- Incision of lacrimal sac and passages
-- Incision of lacrimal punctum 09.51
09.51 Incision of lacrimal punctum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.52', 'Operations on lacrimal system
- Incision of lacrimal sac and passages
-- Incision of lacrimal canaliculi 09.52
09.52 Incision of lacrimal canaliculi', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.53', 'Operations on lacrimal system
- Incision of lacrimal sac and passages
-- Incision of lacrimal sac 09.53
09.53 Incision of lacrimal sac', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.59', 'Operations on lacrimal system
- Incision of lacrimal sac and passages
-- Other incision of lacrimal passages 09.59
09.59 Other incision of lacrimal passages', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.6', 'Operations on lacrimal system
- Excision of lacrimal sac and passage 09.6
09.6 Excision of lacrimal sac and passage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.7', 'Operations on lacrimal system
- Repair of canaliculus and punctum 09.7
09.7 Repair of canaliculus and punctum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.71', 'Operations on lacrimal system
- Repair of canaliculus and punctum
-- Correction of everted punctum 09.71
09.71 Correction of everted punctum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.72', 'Operations on lacrimal system
- Repair of canaliculus and punctum
-- Other repair of punctum 09.72
09.72 Other repair of punctum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.73', 'Operations on lacrimal system
- Repair of canaliculus and punctum
-- Repair of canaliculus 09.73
09.73 Repair of canaliculus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.8', 'Operations on lacrimal system
- Fistulization of lacrimal tract to nasal cavity 09.8
09.8 Fistulization of lacrimal tract to nasal cavity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.81', 'Operations on lacrimal system
- Fistulization of lacrimal tract to nasal cavity
-- Dacryocystorhinostomy [DCR] 09.81
09.81 Dacryocystorhinostomy [DCR]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.82', 'Operations on lacrimal system
- Fistulization of lacrimal tract to nasal cavity
-- Conjunctivocystorhinostomy 09.82
09.82 Conjunctivocystorhinostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.83', 'Operations on lacrimal system
- Fistulization of lacrimal tract to nasal cavity
-- Conjunctivorhinostomy with insertion of tube or stent 09.83
09.83 Conjunctivorhinostomy with insertion of tube or stent', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.9', 'Operations on lacrimal system
- Other operations on lacrimal system 09.9
09.9 Other operations on lacrimal system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.91', 'Operations on lacrimal system
- Other operations on lacrimal system
-- Obliteration of lacrimal punctum 09.91
09.91 Obliteration of lacrimal punctum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.99', 'Operations on lacrimal system
- Other operations on lacrimal system
-- Other 09.99
09.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10', 'Operations on conjunctiva
10 Operations on conjunctiva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.0', 'Operations on conjunctiva
- Removal of embedded foreign body from conjunctiva by incision 10.0
10.0 Removal of embedded foreign body from conjunctiva by incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.1', 'Operations on conjunctiva
- Other incision of conjunctiva 10.1
10.1 Other incision of conjunctiva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.2', 'Operations on conjunctiva
- Diagnostic procedures on conjunctiva 10.2
10.2 Diagnostic procedures on conjunctiva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.21', 'Operations on conjunctiva
- Diagnostic procedures on conjunctiva
-- Biopsy of conjunctiva 10.21
10.21 Biopsy of conjunctiva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.29', 'Operations on conjunctiva
- Diagnostic procedures on conjunctiva
-- Other diagnostic procedures on conjunctiva 10.29
10.29 Other diagnostic procedures on conjunctiva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.3', 'Operations on conjunctiva
- Excision or destruction of lesion or tissue of conjunctiva 10.3
10.3 Excision or destruction of lesion or tissue of conjunctiva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.31', 'Operations on conjunctiva
- Excision or destruction of lesion or tissue of conjunctiva
-- Excision of lesion or tissue of conjunctiva 10.31
10.31 Excision of lesion or tissue of conjunctiva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.32', 'Operations on conjunctiva
- Excision or destruction of lesion or tissue of conjunctiva
-- Destruction of lesion of conjunctiva 10.32
10.32 Destruction of lesion of conjunctiva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.33', 'Operations on conjunctiva
- Excision or destruction of lesion or tissue of conjunctiva
-- Other destructive procedures on conjunctiva 10.33
10.33 Other destructive procedures on conjunctiva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.4', 'Operations on conjunctiva
- Conjunctivoplasty 10.4
10.4 Conjunctivoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.41', 'Operations on conjunctiva
- Conjunctivoplasty
-- Repair of symblepharon with free graft 10.41
10.41 Repair of symblepharon with free graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.42', 'Operations on conjunctiva
- Conjunctivoplasty
-- Reconstruction of conjunctival cul-de-sac with free graft 10.42
10.42 Reconstruction of conjunctival cul-de-sac with free graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.43', 'Operations on conjunctiva
- Conjunctivoplasty
-- Other reconstruction of conjunctival cul-de-sac 10.43
10.43 Other reconstruction of conjunctival cul-de-sac', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.44', 'Operations on conjunctiva
- Conjunctivoplasty
-- Other free graft to conjunctiva 10.44
10.44 Other free graft to conjunctiva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.49', 'Operations on conjunctiva
- Conjunctivoplasty
-- Other conjunctivoplasty 10.49
10.49 Other conjunctivoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.5', 'Operations on conjunctiva
- Lysis of adhesions of conjunctiva and eyelid 10.5
10.5 Lysis of adhesions of conjunctiva and eyelid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.6', 'Operations on conjunctiva
- Repair of laceration of conjunctiva 10.6
10.6 Repair of laceration of conjunctiva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.9', 'Operations on conjunctiva
- Other operations on conjunctiva 10.9
10.9 Other operations on conjunctiva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.91', 'Operations on conjunctiva
- Other operations on conjunctiva
-- Subconjunctival injection 10.91
10.91 Subconjunctival injection', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.99', 'Operations on conjunctiva
- Other operations on conjunctiva
-- Other 10.99
10.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11', 'Operations on cornea
11 Operations on cornea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.0', 'Operations on cornea
- Magnetic removal of embedded foreign body from cornea 11.0
11.0 Magnetic removal of embedded foreign body from cornea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.1', 'Operations on cornea
- Incision of cornea 11.1
11.1 Incision of cornea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.2', 'Operations on cornea
- Diagnostic procedures on cornea 11.2
11.2 Diagnostic procedures on cornea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.21', 'Operations on cornea
- Diagnostic procedures on cornea
-- Scraping of cornea for smear or culture 11.21
11.21 Scraping of cornea for smear or culture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.22', 'Operations on cornea
- Diagnostic procedures on cornea
-- Biopsy of cornea 11.22
11.22 Biopsy of cornea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.29', 'Operations on cornea
- Diagnostic procedures on cornea
-- Other diagnostic procedures on cornea 11.29
11.29 Other diagnostic procedures on cornea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.3', 'Operations on cornea
- Excision of pterygium 11.3
11.3 Excision of pterygium', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.31', 'Operations on cornea
- Excision of pterygium
-- Transposition of pterygium 11.31
11.31 Transposition of pterygium', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.32', 'Operations on cornea
- Excision of pterygium
-- Excision of pterygium with corneal graft 11.32
11.32 Excision of pterygium with corneal graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.39', 'Operations on cornea
- Excision of pterygium
-- Other excision of pterygium 11.39
11.39 Other excision of pterygium', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.4', 'Operations on cornea
- Excision or destruction of tissue or other lesion of cornea 11.4
11.4 Excision or destruction of tissue or other lesion of cornea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.41', 'Operations on cornea
- Excision or destruction of tissue or other lesion of cornea
-- Mechanical removal of corneal epithelium 11.41
11.41 Mechanical removal of corneal epithelium', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.42', 'Operations on cornea
- Excision or destruction of tissue or other lesion of cornea
-- Thermocauterization of corneal lesion 11.42
11.42 Thermocauterization of corneal lesion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.43', 'Operations on cornea
- Excision or destruction of tissue or other lesion of cornea
-- Cryotherapy of corneal lesion 11.43
11.43 Cryotherapy of corneal lesion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.49', 'Operations on cornea
- Excision or destruction of tissue or other lesion of cornea
-- Other removal or destruction of corneal lesion 11.49
11.49 Other removal or destruction of corneal lesion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.5', 'Operations on cornea
- Repair of cornea 11.5
11.5 Repair of cornea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.51', 'Operations on cornea
- Repair of cornea
-- Suture of corneal laceration 11.51
11.51 Suture of corneal laceration', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.52', 'Operations on cornea
- Repair of cornea
-- Repair of postoperative wound dehiscence of cornea 11.52
11.52 Repair of postoperative wound dehiscence of cornea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.53', 'Operations on cornea
- Repair of cornea
-- Repair of corneal laceration or wound with conjunctival flap 11.53
11.53 Repair of corneal laceration or wound with conjunctival flap', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.59', 'Operations on cornea
- Repair of cornea
-- Other repair of cornea 11.59
11.59 Other repair of cornea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.6', 'Operations on cornea
- Corneal transplant 11.6
11.6 Corneal transplant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.60', 'Operations on cornea
- Corneal transplant
-- Corneal transplant, not otherwise specified 11.60
11.60 Corneal transplant, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.61', 'Operations on cornea
- Corneal transplant
-- Lamellar keratoplasty with autograft 11.61
11.61 Lamellar keratoplasty with autograft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.62', 'Operations on cornea
- Corneal transplant
-- Other lamellar keratoplasty 11.62
11.62 Other lamellar keratoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.63', 'Operations on cornea
- Corneal transplant
-- Penetrating keratoplasty with autograft 11.63
11.63 Penetrating keratoplasty with autograft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.64', 'Operations on cornea
- Corneal transplant
-- Other penetrating keratoplasty 11.64
11.64 Other penetrating keratoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.69', 'Operations on cornea
- Corneal transplant
-- Other corneal transplant 11.69
11.69 Other corneal transplant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.7', 'Operations on cornea
- Other reconstructive and refractive surgery on cornea 11.7
11.7 Other reconstructive and refractive surgery on cornea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.71', 'Operations on cornea
- Other reconstructive and refractive surgery on cornea
-- Keratomileusis 11.71
11.71 Keratomileusis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.72', 'Operations on cornea
- Other reconstructive and refractive surgery on cornea
-- Keratophakia 11.72
11.72 Keratophakia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.73', 'Operations on cornea
- Other reconstructive and refractive surgery on cornea
-- Keratoprosthesis 11.73
11.73 Keratoprosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.74', 'Operations on cornea
- Other reconstructive and refractive surgery on cornea
-- Thermokeratoplasty 11.74
11.74 Thermokeratoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.75', 'Operations on cornea
- Other reconstructive and refractive surgery on cornea
-- Radial keratotomy 11.75
11.75 Radial keratotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.76', 'Operations on cornea
- Other reconstructive and refractive surgery on cornea
-- Epikeratophakia 11.76
11.76 Epikeratophakia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.79', 'Operations on cornea
- Other reconstructive and refractive surgery on cornea
-- Other 11.79
11.79 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.9', 'Operations on cornea
- Other operations on cornea 11.9
11.9 Other operations on cornea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.91', 'Operations on cornea
- Other operations on cornea
-- Tattooing of cornea 11.91
11.91 Tattooing of cornea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.92', 'Operations on cornea
- Other operations on cornea
-- Removal of artificial implant from cornea 11.92
11.92 Removal of artificial implant from cornea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.99', 'Operations on cornea
- Other operations on cornea
-- Other 11.99
11.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12', 'Operations on iris, ciliary body, sclera, and anterior chamber
12 Operations on iris, ciliary body, sclera, and anterior chamber', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.0', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Removal of intraocular foreign body from anterior segment of eye 12.0
12.0 Removal of intraocular foreign body from anterior segment of eye', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.00', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Removal of intraocular foreign body from anterior segment of eye
-- Removal of intraocular foreign body from anterior segment of eye, 12.00
12.00 Removal of intraocular foreign body from anterior segment of eye,', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.01', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Removal of intraocular foreign body from anterior segment of eye
-- Removal of intraocular foreign body from anterior segment of eye 12.01
12.01 Removal of intraocular foreign body from anterior segment of eye', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.02', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Removal of intraocular foreign body from anterior segment of eye
-- Removal of intraocular foreign body from anterior segment of eye 12.02
12.02 Removal of intraocular foreign body from anterior segment of eye', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.1', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Iridotomy and simple iridectomy 12.1
12.1 Iridotomy and simple iridectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.11', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Iridotomy and simple iridectomy
-- Iridotomy with transfixion 12.11
12.11 Iridotomy with transfixion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.12', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Iridotomy and simple iridectomy
-- Other iridotomy 12.12
12.12 Other iridotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.13', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Iridotomy and simple iridectomy
-- Excision of prolapsed iris 12.13
12.13 Excision of prolapsed iris', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.14', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Iridotomy and simple iridectomy
-- Other iridectomy 12.14
12.14 Other iridectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.2', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Diagnostic procedures on iris, ciliary body, sclera, and anterior 12.2
12.2 Diagnostic procedures on iris, ciliary body, sclera, and anterior', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.21', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Diagnostic procedures on iris, ciliary body, sclera, and anterior
-- Diagnostic aspiration of anterior chamber of eye 12.21
12.21 Diagnostic aspiration of anterior chamber of eye', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.22', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Diagnostic procedures on iris, ciliary body, sclera, and anterior
-- Biopsy of iris 12.22
12.22 Biopsy of iris', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.29', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Diagnostic procedures on iris, ciliary body, sclera, and anterior
-- Other diagnostic procedures on iris, ciliary body, sclera, and 12.29
12.29 Other diagnostic procedures on iris, ciliary body, sclera, and', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.3', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Iridoplasty and coreoplasty 12.3
12.3 Iridoplasty and coreoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.31', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Iridoplasty and coreoplasty
-- Lysis of goniosynechiae 12.31
12.31 Lysis of goniosynechiae', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.32', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Iridoplasty and coreoplasty
-- Lysis of other anterior synechiae 12.32
12.32 Lysis of other anterior synechiae', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.33', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Iridoplasty and coreoplasty
-- Lysis of posterior synechiae 12.33
12.33 Lysis of posterior synechiae', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.34', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Iridoplasty and coreoplasty
-- Lysis of corneovitreal adhesions 12.34
12.34 Lysis of corneovitreal adhesions', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.35', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Iridoplasty and coreoplasty
-- Coreoplasty 12.35
12.35 Coreoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.39', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Iridoplasty and coreoplasty
-- Other iridoplasty 12.39
12.39 Other iridoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.4', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Excision or destruction of lesion of iris and ciliary body 12.4
12.4 Excision or destruction of lesion of iris and ciliary body', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.40', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Excision or destruction of lesion of iris and ciliary body
-- Removal of lesion of anterior segment of eye, not otherwise 12.40
12.40 Removal of lesion of anterior segment of eye, not otherwise', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.41', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Excision or destruction of lesion of iris and ciliary body
-- Destruction of lesion of iris, nonexcisional 12.41
12.41 Destruction of lesion of iris, nonexcisional', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.42', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Excision or destruction of lesion of iris and ciliary body
-- Excision of lesion of iris 12.42
12.42 Excision of lesion of iris', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.43', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Excision or destruction of lesion of iris and ciliary body
-- Destruction of lesion of ciliary body, nonexcisional 12.43
12.43 Destruction of lesion of ciliary body, nonexcisional', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.44', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Excision or destruction of lesion of iris and ciliary body
-- Excision of lesion of ciliary body 12.44
12.44 Excision of lesion of ciliary body', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.5', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Facilitation of intraocular circulation 12.5
12.5 Facilitation of intraocular circulation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.51', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Facilitation of intraocular circulation
-- Goniopuncture without goniotomy 12.51
12.51 Goniopuncture without goniotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.52', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Facilitation of intraocular circulation
-- Goniotomy without goniopuncture 12.52
12.52 Goniotomy without goniopuncture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.53', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Facilitation of intraocular circulation
-- Goniotomy with goniopuncture 12.53
12.53 Goniotomy with goniopuncture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.54', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Facilitation of intraocular circulation
-- Trabeculotomy ab externo 12.54
12.54 Trabeculotomy ab externo', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.55', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Facilitation of intraocular circulation
-- Cyclodialysis 12.55
12.55 Cyclodialysis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.59', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Facilitation of intraocular circulation
-- Other facilitation of intraocular circulation 12.59
12.59 Other facilitation of intraocular circulation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.6', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Scleral fistulization 12.6
12.6 Scleral fistulization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.61', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Scleral fistulization
-- Trephination of sclera with iridectomy 12.61
12.61 Trephination of sclera with iridectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.62', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Scleral fistulization
-- Thermocauterization of sclera with iridectomy 12.62
12.62 Thermocauterization of sclera with iridectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.63', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Scleral fistulization
-- Iridencleisis and iridotasis 12.63
12.63 Iridencleisis and iridotasis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.64', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Scleral fistulization
-- Trabeculectomy ab externo 12.64
12.64 Trabeculectomy ab externo', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.65', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Scleral fistulization
-- Other scleral fistulization with iridectomy 12.65
12.65 Other scleral fistulization with iridectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.66', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Scleral fistulization
-- Postoperative revision of scleral fistulization procedure 12.66
12.66 Postoperative revision of scleral fistulization procedure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.69', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Scleral fistulization
-- Other fistulizing procedure 12.69
12.69 Other fistulizing procedure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.7', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Other procedures for relief of elevated intraocular pressure 12.7
12.7 Other procedures for relief of elevated intraocular pressure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.71', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Other procedures for relief of elevated intraocular pressure
-- Cyclodiathermy 12.71
12.71 Cyclodiathermy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.72', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Other procedures for relief of elevated intraocular pressure
-- Cyclocryotherapy 12.72
12.72 Cyclocryotherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.73', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Other procedures for relief of elevated intraocular pressure
-- Cyclophotocoagulation 12.73
12.73 Cyclophotocoagulation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.74', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Other procedures for relief of elevated intraocular pressure
-- Diminution of ciliary body, not otherwise specified 12.74
12.74 Diminution of ciliary body, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.79', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Other procedures for relief of elevated intraocular pressure
-- Other glaucoma procedures 12.79
12.79 Other glaucoma procedures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.8', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Operations on sclera 12.8
12.8 Operations on sclera', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.81', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Operations on sclera
-- Suture of laceration of sclera 12.81
12.81 Suture of laceration of sclera', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.82', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Operations on sclera
-- Repair of scleral fistula 12.82
12.82 Repair of scleral fistula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.83', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Operations on sclera
-- Revision of operative wound of anterior segment, not elsewhere 12.83
12.83 Revision of operative wound of anterior segment, not elsewhere', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.84', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Operations on sclera
-- Excision or destruction of lesion of sclera 12.84
12.84 Excision or destruction of lesion of sclera', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.85', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Operations on sclera
-- Repair of scleral staphyloma with graft 12.85
12.85 Repair of scleral staphyloma with graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.86', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Operations on sclera
-- Other repair of scleral staphyloma 12.86
12.86 Other repair of scleral staphyloma', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.87', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Operations on sclera
-- Scleral reinforcement with graft 12.87
12.87 Scleral reinforcement with graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.88', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Operations on sclera
-- Other scleral reinforcement 12.88
12.88 Other scleral reinforcement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.89', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Operations on sclera
-- Other operations on sclera 12.89
12.89 Other operations on sclera', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.9', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Other operations on iris, ciliary body, and anterior chamber 12.9
12.9 Other operations on iris, ciliary body, and anterior chamber', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.91', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Other operations on iris, ciliary body, and anterior chamber
-- Therapeutic evacuation of anterior chamber 12.91
12.91 Therapeutic evacuation of anterior chamber', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.92', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Other operations on iris, ciliary body, and anterior chamber
-- Injection into anterior chamber 12.92
12.92 Injection into anterior chamber', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.93', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Other operations on iris, ciliary body, and anterior chamber
-- Removal or destruction of epithelial downgrowth from anterior 12.93
12.93 Removal or destruction of epithelial downgrowth from anterior', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.97', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Other operations on iris, ciliary body, and anterior chamber
-- Other operations on iris 12.97
12.97 Other operations on iris', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.98', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Other operations on iris, ciliary body, and anterior chamber
-- Other operations on ciliary body 12.98
12.98 Other operations on ciliary body', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.99', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Other operations on iris, ciliary body, and anterior chamber
-- Other operations on anterior chamber 12.99
12.99 Other operations on anterior chamber', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13', 'Operations on lens
13 Operations on lens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.0', 'Operations on lens
- Removal of foreign body from lens 13.0
13.0 Removal of foreign body from lens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.00', 'Operations on lens
- Removal of foreign body from lens
-- Removal of foreign body from lens, not otherwise specified 13.00
13.00 Removal of foreign body from lens, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.01', 'Operations on lens
- Removal of foreign body from lens
-- Removal of foreign body from lens with use of magnet 13.01
13.01 Removal of foreign body from lens with use of magnet', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.02', 'Operations on lens
- Removal of foreign body from lens
-- Removal of foreign body from lens without use of magnet 13.02
13.02 Removal of foreign body from lens without use of magnet', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.1', 'Operations on lens
- Intracapsular extraction of lens 13.1
13.1 Intracapsular extraction of lens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.11', 'Operations on lens
- Intracapsular extraction of lens
-- Intracapsular extraction of lens by temporal inferior route 13.11
13.11 Intracapsular extraction of lens by temporal inferior route', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.19', 'Operations on lens
- Intracapsular extraction of lens
-- Other intracapsular extraction of lens 13.19
13.19 Other intracapsular extraction of lens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.2', 'Operations on lens
- Extracapsular extraction of lens by linear extraction technique 13.2
13.2 Extracapsular extraction of lens by linear extraction technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.3', 'Operations on lens
- Extracapsular extraction of lens by simple aspiration (and 13.3
13.3 Extracapsular extraction of lens by simple aspiration (and', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.4', 'Operations on lens
- Extracapsular extraction of lens by fragmentation and aspiration 13.4
13.4 Extracapsular extraction of lens by fragmentation and aspiration', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.41', 'Operations on lens
- Extracapsular extraction of lens by fragmentation and aspiration
-- Phacoemulsification and aspiration of cataract 13.41
13.41 Phacoemulsification and aspiration of cataract', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.42', 'Operations on lens
- Extracapsular extraction of lens by fragmentation and aspiration
-- Mechanical phacofragmentation and aspiration of cataract by 13.42
13.42 Mechanical phacofragmentation and aspiration of cataract by', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.43', 'Operations on lens
- Extracapsular extraction of lens by fragmentation and aspiration
-- Mechanical phacofragmentation and other aspiration of cataract 13.43
13.43 Mechanical phacofragmentation and other aspiration of cataract', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.5', 'Operations on lens
- Other extracapsular extraction of lens 13.5
13.5 Other extracapsular extraction of lens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.51', 'Operations on lens
- Other extracapsular extraction of lens
-- Extracapsular extraction of lens by temporal inferior route 13.51
13.51 Extracapsular extraction of lens by temporal inferior route', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.59', 'Operations on lens
- Other extracapsular extraction of lens
-- Other extracapsular extraction of lens 13.59
13.59 Other extracapsular extraction of lens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.6', 'Operations on lens
- Other cataract extraction 13.6
13.6 Other cataract extraction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.64', 'Operations on lens
- Other cataract extraction
-- Discission of secondary membrane [after cataract] 13.64
13.64 Discission of secondary membrane [after cataract]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.65', 'Operations on lens
- Other cataract extraction
-- Excision of secondary membrane [after cataract] Capsulectomy 13.65
13.65 Excision of secondary membrane [after cataract] Capsulectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.66', 'Operations on lens
- Other cataract extraction
-- Mechanical fragmentation of secondary membrane [after cataract] 13.66
13.66 Mechanical fragmentation of secondary membrane [after cataract]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.69', 'Operations on lens
- Other cataract extraction
-- Other cataract extraction 13.69
13.69 Other cataract extraction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.7', 'Operations on lens
- Insertion of prosthetic lens [pseudophakos] 13.7
13.7 Insertion of prosthetic lens [pseudophakos]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.70', 'Operations on lens
- Insertion of prosthetic lens [pseudophakos]
-- Insertion of pseudophakos, not otherwise specified 13.70
13.70 Insertion of pseudophakos, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.71', 'Operations on lens
- Insertion of prosthetic lens [pseudophakos]
-- Insertion of intraocular lens prosthesis at time of cataract 13.71
13.71 Insertion of intraocular lens prosthesis at time of cataract', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.72', 'Insertion
- lens prosthesis
-- intraocular
--- one-stage 13.72
13.72 Phacoemulsification and insertion of intraocular lens prosthesis', '[{"type":"includes","text":"Phacoemulsification with insertion of intraocular lens prosthesis (posterior chamber)"}]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.8', 'Operations on lens
- Removal of implanted lens 13.8
13.8 Removal of implanted lens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.9', 'Operations on lens
- Other operations on lens 13.9
13.9 Other operations on lens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.90', 'Operations on lens
- Other operations on lens
-- Operation on lens, Not Elsewhere Classified 13.90
13.90 Operation on lens, Not Elsewhere Classified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.91', 'Operations on lens
- Other operations on lens
-- Implantation of intraocular telescope prosthesis 13.91
13.91 Implantation of intraocular telescope prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14', 'C-Urea breath test
14 C-Urea breath test', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.0', 'C-Urea breath test
- Removal of foreign body from posterior segment of eye 14.0
14.0 Removal of foreign body from posterior segment of eye', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.00', 'C-Urea breath test
- Removal of foreign body from posterior segment of eye
-- Removal of foreign body from posterior segment of eye, not 14.00
14.00 Removal of foreign body from posterior segment of eye, not', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.01', 'C-Urea breath test
- Removal of foreign body from posterior segment of eye
-- Removal of foreign body from posterior segment of eye with use of 14.01
14.01 Removal of foreign body from posterior segment of eye with use of', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.02', 'C-Urea breath test
- Removal of foreign body from posterior segment of eye
-- Removal of foreign body from posterior segment of eye without use 14.02
14.02 Removal of foreign body from posterior segment of eye without use', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.1', 'C-Urea breath test
- Diagnostic procedures on retina, choroid, vitreous, and posterior 14.1
14.1 Diagnostic procedures on retina, choroid, vitreous, and posterior', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.11', 'C-Urea breath test
- Diagnostic procedures on retina, choroid, vitreous, and posterior
-- Diagnostic aspiration of vitreous 14.11
14.11 Diagnostic aspiration of vitreous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.19', 'C-Urea breath test
- Diagnostic procedures on retina, choroid, vitreous, and posterior
-- Other diagnostic procedures on retina, choroid, vitreous, and 14.19
14.19 Other diagnostic procedures on retina, choroid, vitreous, and', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.2', 'C-Urea breath test
- Destruction of lesion of retina and choroid 14.2
14.2 Destruction of lesion of retina and choroid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.21', 'C-Urea breath test
- Destruction of lesion of retina and choroid
-- Destruction of chorioretinal lesion by diathermy 14.21
14.21 Destruction of chorioretinal lesion by diathermy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.22', 'C-Urea breath test
- Destruction of lesion of retina and choroid
-- Destruction of chorioretinal lesion by cryotherapy 14.22
14.22 Destruction of chorioretinal lesion by cryotherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.23', 'C-Urea breath test
- Destruction of lesion of retina and choroid
-- Destruction of chorioretinal lesion by xenon arc photocoagulation 14.23
14.23 Destruction of chorioretinal lesion by xenon arc photocoagulation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.24', 'C-Urea breath test
- Destruction of lesion of retina and choroid
-- Destruction of chorioretinal lesion by laser photocoagulation 14.24
14.24 Destruction of chorioretinal lesion by laser photocoagulation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.25', 'C-Urea breath test
- Destruction of lesion of retina and choroid
-- Destruction of chorioretinal lesion by photocoagulation of 14.25
14.25 Destruction of chorioretinal lesion by photocoagulation of', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.26', 'C-Urea breath test
- Destruction of lesion of retina and choroid
-- Destruction of chorioretinal lesion by radiation therapy 14.26
14.26 Destruction of chorioretinal lesion by radiation therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.27', 'C-Urea breath test
- Destruction of lesion of retina and choroid
-- Destruction of chorioretinal lesion by implantation of radiation 14.27
14.27 Destruction of chorioretinal lesion by implantation of radiation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.29', 'C-Urea breath test
- Destruction of lesion of retina and choroid
-- Other destruction of chorioretinal lesion 14.29
14.29 Other destruction of chorioretinal lesion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.3', 'C-Urea breath test
- Repair of retinal tear 14.3
14.3 Repair of retinal tear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.31', 'C-Urea breath test
- Repair of retinal tear
-- Repair of retinal tear by diathermy 14.31
14.31 Repair of retinal tear by diathermy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.32', 'C-Urea breath test
- Repair of retinal tear
-- Repair of retinal tear by cryotherapy 14.32
14.32 Repair of retinal tear by cryotherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.33', 'C-Urea breath test
- Repair of retinal tear
-- Repair of retinal tear by xenon arc photocoagulation 14.33
14.33 Repair of retinal tear by xenon arc photocoagulation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.34', 'C-Urea breath test
- Repair of retinal tear
-- Repair of retinal tear by laser photocoagulation 14.34
14.34 Repair of retinal tear by laser photocoagulation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.35', 'C-Urea breath test
- Repair of retinal tear
-- Repair of retinal tear by photocoagulation of unspecified type 14.35
14.35 Repair of retinal tear by photocoagulation of unspecified type', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.39', 'C-Urea breath test
- Repair of retinal tear
-- Other repair of retinal tear 14.39
14.39 Other repair of retinal tear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.4', 'C-Urea breath test
- Repair of retinal detachment with scleral buckling and implant 14.4
14.4 Repair of retinal detachment with scleral buckling and implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.41', 'C-Urea breath test
- Repair of retinal detachment with scleral buckling and implant
-- Scleral buckling with implant 14.41
14.41 Scleral buckling with implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.49', 'C-Urea breath test
- Repair of retinal detachment with scleral buckling and implant
-- Other scleral buckling 14.49
14.49 Other scleral buckling', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.5', 'C-Urea breath test
- Other repair of retinal detachment 14.5
14.5 Other repair of retinal detachment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.51', 'C-Urea breath test
- Other repair of retinal detachment
-- Repair of retinal detachment with diathermy 14.51
14.51 Repair of retinal detachment with diathermy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.52', 'C-Urea breath test
- Other repair of retinal detachment
-- Repair of retinal detachment with cryotherapy 14.52
14.52 Repair of retinal detachment with cryotherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.53', 'C-Urea breath test
- Other repair of retinal detachment
-- Repair of retinal detachment with xenon arc photocoagulation 14.53
14.53 Repair of retinal detachment with xenon arc photocoagulation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.54', 'C-Urea breath test
- Other repair of retinal detachment
-- Repair of retinal detachment with laser photocoagulation 14.54
14.54 Repair of retinal detachment with laser photocoagulation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.55', 'C-Urea breath test
- Other repair of retinal detachment
-- Repair of retinal detachment with photocoagulation of 14.55
14.55 Repair of retinal detachment with photocoagulation of', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.59', 'C-Urea breath test
- Other repair of retinal detachment
-- Other 14.59
14.59 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.6', 'C-Urea breath test
- Removal of surgically implanted material from posterior 14.6
14.6 Removal of surgically implanted material from posterior', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.7', 'C-Urea breath test
- Operations on vitreous 14.7
14.7 Operations on vitreous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.71', 'C-Urea breath test
- Operations on vitreous
-- Removal of vitreous, anterior approach 14.71
14.71 Removal of vitreous, anterior approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.72', 'C-Urea breath test
- Operations on vitreous
-- Other removal of vitreous 14.72
14.72 Other removal of vitreous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.73', 'C-Urea breath test
- Operations on vitreous
-- Mechanical vitrectomy by anterior approach 14.73
14.73 Mechanical vitrectomy by anterior approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.74', 'C-Urea breath test
- Operations on vitreous
-- Other mechanical vitrectomy 14.74
14.74 Other mechanical vitrectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.75', 'C-Urea breath test
- Operations on vitreous
-- Injection of vitreous substitute 14.75
14.75 Injection of vitreous substitute', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.79', 'C-Urea breath test
- Operations on vitreous
-- Other operations on vitreous 14.79
14.79 Other operations on vitreous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.9', 'C-Urea breath test
- Other operations on retina, choroid, and posterior chamber 14.9
14.9 Other operations on retina, choroid, and posterior chamber', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15', 'Operations on extraocular muscles
15 Operations on extraocular muscles', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.0', 'Operations on extraocular muscles
- Diagnostic procedures on extraocular muscles or tendons 15.0
15.0 Diagnostic procedures on extraocular muscles or tendons', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.01', 'Operations on extraocular muscles
- Diagnostic procedures on extraocular muscles or tendons
-- Biopsy of extraocular muscle or tendon 15.01
15.01 Biopsy of extraocular muscle or tendon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.09', 'Operations on extraocular muscles
- Diagnostic procedures on extraocular muscles or tendons
-- Other diagnostic procedures on extraocular muscles and tendons 15.09
15.09 Other diagnostic procedures on extraocular muscles and tendons', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.1', 'Operations on extraocular muscles
- Operations on one extraocular muscle involving temporary 15.1
15.1 Operations on one extraocular muscle involving temporary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.11', 'Operations on extraocular muscles
- Operations on one extraocular muscle involving temporary
-- Recession of one extraocular muscle 15.11
15.11 Recession of one extraocular muscle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.12', 'Operations on extraocular muscles
- Operations on one extraocular muscle involving temporary
-- Advancement of one extraocular muscle 15.12
15.12 Advancement of one extraocular muscle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.13', 'Operations on extraocular muscles
- Operations on one extraocular muscle involving temporary
-- Resection of one extraocular muscle 15.13
15.13 Resection of one extraocular muscle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.19', 'Operations on extraocular muscles
- Operations on one extraocular muscle involving temporary
-- Other operations on one extraocular muscle involving temporary 15.19
15.19 Other operations on one extraocular muscle involving temporary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.2', 'Operations on extraocular muscles
- Other operations on one extraocular muscle 15.2
15.2 Other operations on one extraocular muscle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.21', 'Operations on extraocular muscles
- Other operations on one extraocular muscle
-- Lengthening procedure on one extraocular muscle 15.21
15.21 Lengthening procedure on one extraocular muscle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.22', 'Operations on extraocular muscles
- Other operations on one extraocular muscle
-- Shortening procedure on one extraocular muscle 15.22
15.22 Shortening procedure on one extraocular muscle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.29', 'Operations on extraocular muscles
- Other operations on one extraocular muscle
-- Other 15.29
15.29 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.3', 'Operations on extraocular muscles
- Operations on two or more extraocular muscles involving 15.3
15.3 Operations on two or more extraocular muscles involving', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.4', 'Operations on extraocular muscles
- Other operations on two or more extraocular muscles, one or 15.4
15.4 Other operations on two or more extraocular muscles, one or', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.5', 'Operations on extraocular muscles
- Transposition of extraocular muscles 15.5
15.5 Transposition of extraocular muscles', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.6', 'Operations on extraocular muscles
- Revision of extraocular muscle surgery 15.6
15.6 Revision of extraocular muscle surgery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.7', 'Operations on extraocular muscles
- Repair of injury of extraocular muscle 15.7
15.7 Repair of injury of extraocular muscle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.9', 'Operations on extraocular muscles
- Other operations on extraocular muscles and tendons 15.9
15.9 Other operations on extraocular muscles and tendons', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16', 'Operations on orbit and eyeball
16 Operations on orbit and eyeball', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.0', 'Operations on orbit and eyeball
- Orbitotomy 16.0
16.0 Orbitotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.01', 'Operations on orbit and eyeball
- Orbitotomy
-- Orbitotomy with bone flap 16.01
16.01 Orbitotomy with bone flap', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.02', 'Operations on orbit and eyeball
- Orbitotomy
-- Orbitotomy with insertion of orbital implant 16.02
16.02 Orbitotomy with insertion of orbital implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.09', 'Operations on orbit and eyeball
- Orbitotomy
-- Other orbitotomy 16.09
16.09 Other orbitotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.1', 'Operations on orbit and eyeball
- Removal of penetrating foreign body from eye, not otherwise 16.1
16.1 Removal of penetrating foreign body from eye, not otherwise', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.2', 'Operations on orbit and eyeball
- Diagnostic procedures on orbit and eyeball 16.2
16.2 Diagnostic procedures on orbit and eyeball', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.21', 'Operations on orbit and eyeball
- Diagnostic procedures on orbit and eyeball
-- Ophthalmoscopy 16.21
16.21 Ophthalmoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.22', 'Operations on orbit and eyeball
- Diagnostic procedures on orbit and eyeball
-- Diagnostic aspiration of orbit 16.22
16.22 Diagnostic aspiration of orbit', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.23', 'Operations on orbit and eyeball
- Diagnostic procedures on orbit and eyeball
-- Biopsy of eyeball and orbit 16.23
16.23 Biopsy of eyeball and orbit', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.29', 'Operations on orbit and eyeball
- Diagnostic procedures on orbit and eyeball
-- Other diagnostic procedures on orbit and eyeball 16.29
16.29 Other diagnostic procedures on orbit and eyeball', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.3', 'Operations on orbit and eyeball
- Evisceration of eyeball 16.3
16.3 Evisceration of eyeball', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.31', 'Operations on orbit and eyeball
- Evisceration of eyeball
-- Removal of ocular contents with synchronous implant into scleral 16.31
16.31 Removal of ocular contents with synchronous implant into scleral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.39', 'Operations on orbit and eyeball
- Evisceration of eyeball
-- Other evisceration of eyeball 16.39
16.39 Other evisceration of eyeball', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.4', 'Operations on orbit and eyeball
- Enucleation of eyeball 16.4
16.4 Enucleation of eyeball', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.41', 'Operations on orbit and eyeball
- Enucleation of eyeball
-- Enucleation of eyeball with synchronous implant into Tenon''s 16.41
16.41 Enucleation of eyeball with synchronous implant into Tenon''s', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.42', 'Operations on orbit and eyeball
- Enucleation of eyeball
-- Enucleation of eyeball with other synchronous implant 16.42
16.42 Enucleation of eyeball with other synchronous implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.49', 'Operations on orbit and eyeball
- Enucleation of eyeball
-- Other enucleation of eyeball 16.49
16.49 Other enucleation of eyeball', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.5', 'Operations on orbit and eyeball
- Exenteration of orbital contents 16.5
16.5 Exenteration of orbital contents', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.51', 'Operations on orbit and eyeball
- Exenteration of orbital contents
-- Exenteration of orbit with removal of adjacent structures 16.51
16.51 Exenteration of orbit with removal of adjacent structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.52', 'Operations on orbit and eyeball
- Exenteration of orbital contents
-- Exenteration of orbit with therapeutic removal of orbital bone 16.52
16.52 Exenteration of orbit with therapeutic removal of orbital bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.59', 'Operations on orbit and eyeball
- Exenteration of orbital contents
-- Other exenteration of orbit 16.59
16.59 Other exenteration of orbit', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.6', 'Operations on orbit and eyeball
- Secondary procedures after removal of eyeball 16.6
16.6 Secondary procedures after removal of eyeball', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.61', 'Operations on orbit and eyeball
- Secondary procedures after removal of eyeball
-- Secondary insertion of ocular implant 16.61
16.61 Secondary insertion of ocular implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.62', 'Operations on orbit and eyeball
- Secondary procedures after removal of eyeball
-- Revision and reinsertion of ocular implant 16.62
16.62 Revision and reinsertion of ocular implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.63', 'Operations on orbit and eyeball
- Secondary procedures after removal of eyeball
-- Revision of enucleation socket with graft 16.63
16.63 Revision of enucleation socket with graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.64', 'Operations on orbit and eyeball
- Secondary procedures after removal of eyeball
-- Other revision of enucleation socket 16.64
16.64 Other revision of enucleation socket', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.65', 'Operations on orbit and eyeball
- Secondary procedures after removal of eyeball
-- Secondary graft to exenteration cavity 16.65
16.65 Secondary graft to exenteration cavity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.66', 'Operations on orbit and eyeball
- Secondary procedures after removal of eyeball
-- Other revision of exenteration cavity 16.66
16.66 Other revision of exenteration cavity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.69', 'Operations on orbit and eyeball
- Secondary procedures after removal of eyeball
-- Other secondary procedures after removal of eyeball 16.69
16.69 Other secondary procedures after removal of eyeball', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.7', 'Operations on orbit and eyeball
- Removal of ocular or orbital implant 16.7
16.7 Removal of ocular or orbital implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.71', 'Operations on orbit and eyeball
- Removal of ocular or orbital implant
-- Removal of ocular implant 16.71
16.71 Removal of ocular implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.72', 'Operations on orbit and eyeball
- Removal of ocular or orbital implant
-- Removal of orbital implant 16.72
16.72 Removal of orbital implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.8', 'Operations on orbit and eyeball
- Repair of injury of eyeball and orbit 16.8
16.8 Repair of injury of eyeball and orbit', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.81', 'Operations on orbit and eyeball
- Repair of injury of eyeball and orbit
-- Repair of wound of orbit 16.81
16.81 Repair of wound of orbit', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.82', 'Operations on orbit and eyeball
- Repair of injury of eyeball and orbit
-- Repair of rupture of eyeball 16.82
16.82 Repair of rupture of eyeball', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.89', 'Operations on orbit and eyeball
- Repair of injury of eyeball and orbit
-- Other repair of injury of eyeball or orbit 16.89
16.89 Other repair of injury of eyeball or orbit', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.9', 'Operations on orbit and eyeball
- Other operations on orbit and eyeball 16.9
16.9 Other operations on orbit and eyeball', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.91', 'Operations on orbit and eyeball
- Other operations on orbit and eyeball
-- Retrobulbar injection of therapeutic agent 16.91
16.91 Retrobulbar injection of therapeutic agent', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.92', 'Operations on orbit and eyeball
- Other operations on orbit and eyeball
-- Excision of lesion of orbit 16.92
16.92 Excision of lesion of orbit', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.93', 'Operations on orbit and eyeball
- Other operations on orbit and eyeball
-- Excision of lesion of eye, unspecified structure 16.93
16.93 Excision of lesion of eye, unspecified structure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.98', 'Operations on orbit and eyeball
- Other operations on orbit and eyeball
-- Other operations on orbit 16.98
16.98 Other operations on orbit', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.99', 'Operations on orbit and eyeball
- Other operations on orbit and eyeball
-- Other operations on eyeball 16.99
16.99 Other operations on eyeball', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17', 'Other miscellaneous procedures
17 Other miscellaneous procedures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.1', 'Other miscellaneous procedures
- Laparoscopic unilateral repair of inguinal hernia 17.1
17.1 Laparoscopic unilateral repair of inguinal hernia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.11', 'Other miscellaneous procedures
- Laparoscopic unilateral repair of inguinal hernia
-- Laparoscopic repair of direct inguinal hernia with graft or 17.11
17.11 Laparoscopic repair of direct inguinal hernia with graft or', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.12', 'Other miscellaneous procedures
- Laparoscopic unilateral repair of inguinal hernia
-- Laparoscopic repair of indirect inguinal hernia with graft or 17.12
17.12 Laparoscopic repair of indirect inguinal hernia with graft or', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.13', 'Other miscellaneous procedures
- Laparoscopic unilateral repair of inguinal hernia
-- Laparoscopic repair of inguinal hernia with graft or prosthesis, not 17.13
17.13 Laparoscopic repair of inguinal hernia with graft or prosthesis, not', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.2', 'Other miscellaneous procedures
- Laparoscopic bilateral repair of inguinal hernia 17.2
17.2 Laparoscopic bilateral repair of inguinal hernia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.21', 'Other miscellaneous procedures
- Laparoscopic bilateral repair of inguinal hernia
-- Laparoscopic bilateral repair of direct inguinal hernia with graft 17.21
17.21 Laparoscopic bilateral repair of direct inguinal hernia with graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.22', 'Other miscellaneous procedures
- Laparoscopic bilateral repair of inguinal hernia
-- Laparoscopic bilateral repair of indirect inguinal hernia with 17.22
17.22 Laparoscopic bilateral repair of indirect inguinal hernia with', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.23', 'Other miscellaneous procedures
- Laparoscopic bilateral repair of inguinal hernia
-- Laparoscopic bilateral repair of inguinal hernia, one direct and 17.23
17.23 Laparoscopic bilateral repair of inguinal hernia, one direct and', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.24', 'Other miscellaneous procedures
- Laparoscopic bilateral repair of inguinal hernia
-- Laparoscopic bilateral repair of inguinal hernia with graft or 17.24
17.24 Laparoscopic bilateral repair of inguinal hernia with graft or', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.3', 'Other miscellaneous procedures
- Laparoscopic partial excision of large intestine 17.3
17.3 Laparoscopic partial excision of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.31', 'Other miscellaneous procedures
- Laparoscopic partial excision of large intestine
-- Laparoscopic multiple segmental resection of large intestine 17.31
17.31 Laparoscopic multiple segmental resection of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.32', 'Other miscellaneous procedures
- Laparoscopic partial excision of large intestine
-- Laparoscopic cecectomy 17.32
17.32 Laparoscopic cecectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.33', 'Other miscellaneous procedures
- Laparoscopic partial excision of large intestine
-- Laparoscopic right hemicolectomy 17.33
17.33 Laparoscopic right hemicolectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.34', 'Other miscellaneous procedures
- Laparoscopic partial excision of large intestine
-- Laparoscopic resection of transverse colon 17.34
17.34 Laparoscopic resection of transverse colon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.35', 'Other miscellaneous procedures
- Laparoscopic partial excision of large intestine
-- Laparoscopic left hemicolectomy 17.35
17.35 Laparoscopic left hemicolectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.36', 'Other miscellaneous procedures
- Laparoscopic partial excision of large intestine
-- Laparoscopic sigmoidectomy 17.36
17.36 Laparoscopic sigmoidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.39', 'Other miscellaneous procedures
- Laparoscopic partial excision of large intestine
-- Other laparoscopic partial excision of large intestine 17.39
17.39 Other laparoscopic partial excision of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.4', 'Other miscellaneous procedures
- Robotic assisted procedures 17.4
17.4 Robotic assisted procedures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.41', 'Other miscellaneous procedures
- Robotic assisted procedures
-- Open robotic assisted procedure 17.41
17.41 Open robotic assisted procedure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.42', 'Other miscellaneous procedures
- Robotic assisted procedures
-- Laparoscopic robotic assisted procedure 17.42
17.42 Laparoscopic robotic assisted procedure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.43', 'Other miscellaneous procedures
- Robotic assisted procedures
-- Percutaneous robotic assisted procedure 17.43
17.43 Percutaneous robotic assisted procedure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.44', 'Other miscellaneous procedures
- Robotic assisted procedures
-- Endoscopic robotic assisted procedure 17.44
17.44 Endoscopic robotic assisted procedure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.45', 'Other miscellaneous procedures
- Robotic assisted procedures
-- Thoracoscopic robotic assisted procedure 17.45
17.45 Thoracoscopic robotic assisted procedure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.49', 'Other miscellaneous procedures
- Robotic assisted procedures
-- Other and unspecified robotic assisted procedure 17.49
17.49 Other and unspecified robotic assisted procedure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.51', 'Other miscellaneous procedures
- Implantation of rechargeable cardiac contractility modulation 17.51
17.51 Implantation of rechargeable cardiac contractility modulation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.52', 'Other miscellaneous procedures
- Implantation or replacement of cardiac contractility modulation 17.52
17.52 Implantation or replacement of cardiac contractility modulation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.6', 'Other miscellaneous procedures
- Laser interstitial thermal therapy [LITT] under guidance 17.6
17.6 Laser interstitial thermal therapy [LITT] under guidance', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.61', 'Other miscellaneous procedures
- Laser interstitial thermal therapy [LITT] under guidance
-- Laser interstitial thermal therapy [LITT] of lesion or tissue of 17.61
17.61 Laser interstitial thermal therapy [LITT] of lesion or tissue of', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.62', 'Other miscellaneous procedures
- Laser interstitial thermal therapy [LITT] under guidance
-- Laser interstitial thermal therapy [LITT] of lesion or tissue of 17.62
17.62 Laser interstitial thermal therapy [LITT] of lesion or tissue of', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.63', 'Other miscellaneous procedures
- Laser interstitial thermal therapy [LITT] under guidance
-- Laser interstitial thermal therapy [LITT] of lesion or tissue of 17.63
17.63 Laser interstitial thermal therapy [LITT] of lesion or tissue of', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.69', 'Other miscellaneous procedures
- Laser interstitial thermal therapy [LITT] under guidance
-- Laser interstitial thermal therapy [LITT] of lesion or tissue of 17.69
17.69 Laser interstitial thermal therapy [LITT] of lesion or tissue of', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.7', 'Other miscellaneous procedures
- Other diagnostic and therapeutic procedures 17.7
17.7 Other diagnostic and therapeutic procedures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.70', 'Other miscellaneous procedures
- Other diagnostic and therapeutic procedures
-- Intravenous infusion of clofarabine 17.70
17.70 Intravenous infusion of clofarabine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18', 'Operations on external ear
18 Operations on external ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.0', 'Operations on external ear
- Incision of external ear 18.0
18.0 Incision of external ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.01', 'Operations on external ear
- Incision of external ear
-- Piercing of ear lobe 18.01
18.01 Piercing of ear lobe', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.02', 'Operations on external ear
- Incision of external ear
-- Incision of external auditory canal 18.02
18.02 Incision of external auditory canal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.09', 'Operations on external ear
- Incision of external ear
-- Other incision of external ear 18.09
18.09 Other incision of external ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.1', 'Operations on external ear
- Diagnostic procedures on external ear 18.1
18.1 Diagnostic procedures on external ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.11', 'Operations on external ear
- Diagnostic procedures on external ear
-- Otoscopy 18.11
18.11 Otoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.12', 'Operations on external ear
- Diagnostic procedures on external ear
-- Biopsy of external ear 18.12
18.12 Biopsy of external ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.19', 'Operations on external ear
- Diagnostic procedures on external ear
-- Other diagnostic procedures on external ear 18.19
18.19 Other diagnostic procedures on external ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.2', 'Operations on external ear
- Excision or destruction of lesion of external ear 18.2
18.2 Excision or destruction of lesion of external ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.21', 'Operations on external ear
- Excision or destruction of lesion of external ear
-- Excision of preauricular sinus 18.21
18.21 Excision of preauricular sinus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.29', 'Operations on external ear
- Excision or destruction of lesion of external ear
-- Excision or destruction of other lesion of external ear 18.29
18.29 Excision or destruction of other lesion of external ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.3', 'Operations on external ear
- Other excision of external ear 18.3
18.3 Other excision of external ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.31', 'Operations on external ear
- Other excision of external ear
-- Radical excision of lesion of external ear 18.31
18.31 Radical excision of lesion of external ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.39', 'Operations on external ear
- Other excision of external ear
-- Other 18.39
18.39 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.4', 'Operations on external ear
- Suture of laceration of external ear 18.4
18.4 Suture of laceration of external ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.5', 'Operations on external ear
- Surgical correction of prominent ear 18.5
18.5 Surgical correction of prominent ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.6', 'Operations on external ear
- Reconstruction of external auditory canal 18.6
18.6 Reconstruction of external auditory canal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.7', 'Operations on external ear
- Other plastic repair of external ear 18.7
18.7 Other plastic repair of external ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.71', 'Operations on external ear
- Other plastic repair of external ear
-- Construction of auricle of ear 18.71
18.71 Construction of auricle of ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.72', 'Operations on external ear
- Other plastic repair of external ear
-- Reattachment of amputated ear 18.72
18.72 Reattachment of amputated ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.79', 'Operations on external ear
- Other plastic repair of external ear
-- Other plastic repair of external ear 18.79
18.79 Other plastic repair of external ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.9', 'Operations on external ear
- Other operations on external ear 18.9
18.9 Other operations on external ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19', 'Reconstructive operations on middle ear
19 Reconstructive operations on middle ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.0', 'Reconstructive operations on middle ear
- Stapes mobilization 19.0
19.0 Stapes mobilization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.1', 'Reconstructive operations on middle ear
- Stapedectomy 19.1
19.1 Stapedectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.11', 'Reconstructive operations on middle ear
- Stapedectomy
-- Stapedectomy with incus replacement 19.11
19.11 Stapedectomy with incus replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.19', 'Reconstructive operations on middle ear
- Stapedectomy
-- Other stapedectomy 19.19
19.19 Other stapedectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.2', 'Reconstructive operations on middle ear
- Revision of stapedectomy 19.2
19.2 Revision of stapedectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.21', 'Reconstructive operations on middle ear
- Revision of stapedectomy
-- Revision of stapedectomy with incus replacement 19.21
19.21 Revision of stapedectomy with incus replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.29', 'Reconstructive operations on middle ear
- Revision of stapedectomy
-- Other revision of stapedectomy 19.29
19.29 Other revision of stapedectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.3', 'Reconstructive operations on middle ear
- Other operations on ossicular chain 19.3
19.3 Other operations on ossicular chain', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.4', 'Reconstructive operations on middle ear
- Myringoplasty 19.4
19.4 Myringoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.5', 'Reconstructive operations on middle ear
- Other tympanoplasty 19.5
19.5 Other tympanoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.52', 'Reconstructive operations on middle ear
- Other tympanoplasty
-- Type II tympanoplasty 19.52
19.52 Type II tympanoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.53', 'Reconstructive operations on middle ear
- Other tympanoplasty
-- Type III tympanoplasty 19.53
19.53 Type III tympanoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.54', 'Reconstructive operations on middle ear
- Other tympanoplasty
-- Type IV tympanoplasty 19.54
19.54 Type IV tympanoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.55', 'Reconstructive operations on middle ear
- Other tympanoplasty
-- Type V tympanoplasty 19.55
19.55 Type V tympanoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.6', 'Reconstructive operations on middle ear
- Revision of tympanoplasty 19.6
19.6 Revision of tympanoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.9', 'Reconstructive operations on middle ear
- Other repair of middle ear 19.9
19.9 Other repair of middle ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20', 'Other operations on middle and inner ear
20 Other operations on middle and inner ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.0', 'Other operations on middle and inner ear
- Myringotomy 20.0
20.0 Myringotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.01', 'Other operations on middle and inner ear
- Myringotomy
-- Myringotomy with insertion of tube 20.01
20.01 Myringotomy with insertion of tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.09', 'Other operations on middle and inner ear
- Myringotomy
-- Other myringotomy 20.09
20.09 Other myringotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.1', 'Other operations on middle and inner ear
- Removal of tympanostomy tube 20.1
20.1 Removal of tympanostomy tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.2', 'Other operations on middle and inner ear
- Incision of mastoid and middle ear 20.2
20.2 Incision of mastoid and middle ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.21', 'Other operations on middle and inner ear
- Incision of mastoid and middle ear
-- Incision of mastoid 20.21
20.21 Incision of mastoid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.22', 'Other operations on middle and inner ear
- Incision of mastoid and middle ear
-- Incision of petrous pyramid air cells 20.22
20.22 Incision of petrous pyramid air cells', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.23', 'Other operations on middle and inner ear
- Incision of mastoid and middle ear
-- Incision of middle ear 20.23
20.23 Incision of middle ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.3', 'Other operations on middle and inner ear
- Diagnostic procedures on middle and inner ear 20.3
20.3 Diagnostic procedures on middle and inner ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.31', 'Other operations on middle and inner ear
- Diagnostic procedures on middle and inner ear
-- Electrocochleography 20.31
20.31 Electrocochleography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.32', 'Other operations on middle and inner ear
- Diagnostic procedures on middle and inner ear
-- Biopsy of middle and inner ear 20.32
20.32 Biopsy of middle and inner ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.39', 'Other operations on middle and inner ear
- Diagnostic procedures on middle and inner ear
-- Other diagnostic procedures on middle and inner ear 20.39
20.39 Other diagnostic procedures on middle and inner ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.4', 'Other operations on middle and inner ear
- Mastoidectomy 20.4
20.4 Mastoidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.41', 'Other operations on middle and inner ear
- Mastoidectomy
-- Simple mastoidectomy 20.41
20.41 Simple mastoidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.42', 'Other operations on middle and inner ear
- Mastoidectomy
-- Radical mastoidectomy 20.42
20.42 Radical mastoidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.49', 'Other operations on middle and inner ear
- Mastoidectomy
-- Other mastoidectomy 20.49
20.49 Other mastoidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.5', 'Other operations on middle and inner ear
- Other excision of middle ear 20.5
20.5 Other excision of middle ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.51', 'Other operations on middle and inner ear
- Other excision of middle ear
-- Excision of lesion of middle ear 20.51
20.51 Excision of lesion of middle ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.59', 'Other operations on middle and inner ear
- Other excision of middle ear
-- Other 20.59
20.59 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.6', 'Other operations on middle and inner ear
- Fenestration of inner ear 20.6
20.6 Fenestration of inner ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.61', 'Other operations on middle and inner ear
- Fenestration of inner ear
-- Fenestration of inner ear (initial) 20.61
20.61 Fenestration of inner ear (initial)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.62', 'Other operations on middle and inner ear
- Fenestration of inner ear
-- Revision of fenestration of inner ear 20.62
20.62 Revision of fenestration of inner ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.7', 'Other operations on middle and inner ear
- Incision, excision, and destruction of inner ear 20.7
20.7 Incision, excision, and destruction of inner ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.71', 'Other operations on middle and inner ear
- Incision, excision, and destruction of inner ear
-- Endolymphatic shunt 20.71
20.71 Endolymphatic shunt', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.72', 'Other operations on middle and inner ear
- Incision, excision, and destruction of inner ear
-- Injection into inner ear 20.72
20.72 Injection into inner ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.79', 'Other operations on middle and inner ear
- Incision, excision, and destruction of inner ear
-- Other incision, excision, and destruction of inner ear 20.79
20.79 Other incision, excision, and destruction of inner ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.8', 'Other operations on middle and inner ear
- Operations on Eustachian tube 20.8
20.8 Operations on Eustachian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.9', 'Other operations on middle and inner ear
- Other operations on inner and middle ear 20.9
20.9 Other operations on inner and middle ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.91', 'Other operations on middle and inner ear
- Other operations on inner and middle ear
-- Tympanosympathectomy 20.91
20.91 Tympanosympathectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.92', 'Other operations on middle and inner ear
- Other operations on inner and middle ear
-- Revision of mastoidectomy 20.92
20.92 Revision of mastoidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.93', 'Other operations on middle and inner ear
- Other operations on inner and middle ear
-- Repair of oval and round windows 20.93
20.93 Repair of oval and round windows', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.94', 'Other operations on middle and inner ear
- Other operations on inner and middle ear
-- Injection of tympanum 20.94
20.94 Injection of tympanum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.95', 'Other operations on middle and inner ear
- Other operations on inner and middle ear
-- Implantation of electromagnetic hearing device 20.95
20.95 Implantation of electromagnetic hearing device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.96', 'Other operations on middle and inner ear
- Other operations on inner and middle ear
-- Implantation or replacement of cochlear prosthetic device, not 20.96
20.96 Implantation or replacement of cochlear prosthetic device, not', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.97', 'Other operations on middle and inner ear
- Other operations on inner and middle ear
-- Implantation or replacement of cochlear prosthetic device, 20.97
20.97 Implantation or replacement of cochlear prosthetic device,', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.98', 'Other operations on middle and inner ear
- Other operations on inner and middle ear
-- Implantation or replacement of cochlear prosthetic device, 20.98
20.98 Implantation or replacement of cochlear prosthetic device,', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.99', 'Other operations on middle and inner ear
- Other operations on inner and middle ear
-- Other operations on middle and inner ear 20.99
20.99 Other operations on middle and inner ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21', 'Operations on nose
21 Operations on nose', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.0', 'Operations on nose
- Control of epistaxis 21.0
21.0 Control of epistaxis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.00', 'Operations on nose
- Control of epistaxis
-- Control of epistaxis, not otherwise specified 21.00
21.00 Control of epistaxis, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.01', 'Operations on nose
- Control of epistaxis
-- Control of epistaxis by anterior nasal packing 21.01
21.01 Control of epistaxis by anterior nasal packing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.02', 'Operations on nose
- Control of epistaxis
-- Control of epistaxis by posterior (and anterior) packing 21.02
21.02 Control of epistaxis by posterior (and anterior) packing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.03', 'Operations on nose
- Control of epistaxis
-- Control of epistaxis by cauterization (and packing) 21.03
21.03 Control of epistaxis by cauterization (and packing)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.04', 'Operations on nose
- Control of epistaxis
-- Control of epistaxis by ligation of ethmoidal arteries 21.04
21.04 Control of epistaxis by ligation of ethmoidal arteries', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.05', 'Operations on nose
- Control of epistaxis
-- Control of epistaxis by (transantral) ligation of the maxillary artery 21.05
21.05 Control of epistaxis by (transantral) ligation of the maxillary artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.06', 'Operations on nose
- Control of epistaxis
-- Control of epistaxis by ligation of the external carotid artery 21.06
21.06 Control of epistaxis by ligation of the external carotid artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.07', 'Operations on nose
- Control of epistaxis
-- Control of epistaxis by excision of nasal mucosa and skin grafting 21.07
21.07 Control of epistaxis by excision of nasal mucosa and skin grafting', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.09', 'Operations on nose
- Control of epistaxis
-- Control of epistaxis by other means 21.09
21.09 Control of epistaxis by other means', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.1', 'Operations on nose
- Incision of nose 21.1
21.1 Incision of nose', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.2', 'Operations on nose
- Diagnostic procedures on nose 21.2
21.2 Diagnostic procedures on nose', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.21', 'Operations on nose
- Diagnostic procedures on nose
-- Rhinoscopy 21.21
21.21 Rhinoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.22', 'Operations on nose
- Diagnostic procedures on nose
-- Biopsy of nose 21.22
21.22 Biopsy of nose', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.29', 'Operations on nose
- Diagnostic procedures on nose
-- Other diagnostic procedures on nose 21.29
21.29 Other diagnostic procedures on nose', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.3', 'Operations on nose
- Local excision or destruction of lesion of nose 21.3
21.3 Local excision or destruction of lesion of nose', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.30', 'Operations on nose
- Local excision or destruction of lesion of nose
-- Excision or destruction of lesion of nose, not otherwise specified 21.30
21.30 Excision or destruction of lesion of nose, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.31', 'Operations on nose
- Local excision or destruction of lesion of nose
-- Local excision or destruction of intranasal lesion 21.31
21.31 Local excision or destruction of intranasal lesion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.32', 'Operations on nose
- Local excision or destruction of lesion of nose
-- Local excision or destruction of other lesion of nose 21.32
21.32 Local excision or destruction of other lesion of nose', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.4', 'Operations on nose
- Resection of nose 21.4
21.4 Resection of nose', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.5', 'Operations on nose
- Submucous resection of nasal septum 21.5
21.5 Submucous resection of nasal septum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.6', 'Operations on nose
- Turbinectomy 21.6
21.6 Turbinectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.61', 'Operations on nose
- Turbinectomy
-- Turbinectomy by diathermy or cryosurgery 21.61
21.61 Turbinectomy by diathermy or cryosurgery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.62', 'Operations on nose
- Turbinectomy
-- Fracture of the turbinates 21.62
21.62 Fracture of the turbinates', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.69', 'Operations on nose
- Turbinectomy
-- Other turbinectomy 21.69
21.69 Other turbinectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.7', 'Operations on nose
- Reduction of nasal fracture 21.7
21.7 Reduction of nasal fracture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.71', 'Operations on nose
- Reduction of nasal fracture
-- Closed reduction of nasal fracture 21.71
21.71 Closed reduction of nasal fracture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.72', 'Operations on nose
- Reduction of nasal fracture
-- Open reduction of nasal fracture 21.72
21.72 Open reduction of nasal fracture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.8', 'Operations on nose
- Repair and plastic operations on the nose 21.8
21.8 Repair and plastic operations on the nose', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.81', 'Operations on nose
- Repair and plastic operations on the nose
-- Suture of laceration of nose 21.81
21.81 Suture of laceration of nose', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.82', 'Operations on nose
- Repair and plastic operations on the nose
-- Closure of nasal fistula 21.82
21.82 Closure of nasal fistula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.83', 'Operations on nose
- Repair and plastic operations on the nose
-- Total nasal reconstruction 21.83
21.83 Total nasal reconstruction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.84', 'Operations on nose
- Repair and plastic operations on the nose
-- Revision rhinoplasty 21.84
21.84 Revision rhinoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.85', 'Operations on nose
- Repair and plastic operations on the nose
-- Augmentation rhinoplasty 21.85
21.85 Augmentation rhinoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.86', 'Operations on nose
- Repair and plastic operations on the nose
-- Limited rhinoplasty 21.86
21.86 Limited rhinoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.87', 'Operations on nose
- Repair and plastic operations on the nose
-- Other rhinoplasty 21.87
21.87 Other rhinoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.88', 'Operations on nose
- Repair and plastic operations on the nose
-- Other septoplasty 21.88
21.88 Other septoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.89', 'Operations on nose
- Repair and plastic operations on the nose
-- Other repair and plastic operations on nose 21.89
21.89 Other repair and plastic operations on nose', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.9', 'Operations on nose
- Other operations on nose 21.9
21.9 Other operations on nose', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.91', 'Operations on nose
- Other operations on nose
-- Lysis of adhesions of nose 21.91
21.91 Lysis of adhesions of nose', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.99', 'Operations on nose
- Other operations on nose
-- Other 21.99
21.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22', 'Operations on nasal sinuses
22 Operations on nasal sinuses', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.0', 'Operations on nasal sinuses
- Aspiration and lavage of nasal sinus 22.0
22.0 Aspiration and lavage of nasal sinus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.00', 'Operations on nasal sinuses
- Aspiration and lavage of nasal sinus
-- Aspiration and lavage of nasal sinus, not otherwise specified 22.00
22.00 Aspiration and lavage of nasal sinus, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.01', 'Operations on nasal sinuses
- Aspiration and lavage of nasal sinus
-- Puncture of nasal sinus for aspiration or lavage 22.01
22.01 Puncture of nasal sinus for aspiration or lavage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.02', 'Operations on nasal sinuses
- Aspiration and lavage of nasal sinus
-- Aspiration or lavage of nasal sinus through natural ostium 22.02
22.02 Aspiration or lavage of nasal sinus through natural ostium', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.1', 'Operations on nasal sinuses
- Diagnostic procedures on nasal sinus 22.1
22.1 Diagnostic procedures on nasal sinus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.11', 'Operations on nasal sinuses
- Diagnostic procedures on nasal sinus
-- Closed [endoscopic] [needle] biopsy of nasal sinus 22.11
22.11 Closed [endoscopic] [needle] biopsy of nasal sinus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.12', 'Operations on nasal sinuses
- Diagnostic procedures on nasal sinus
-- Open biopsy of nasal sinus 22.12
22.12 Open biopsy of nasal sinus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.19', 'Operations on nasal sinuses
- Diagnostic procedures on nasal sinus
-- Other diagnostic procedures on nasal sinuses 22.19
22.19 Other diagnostic procedures on nasal sinuses', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.2', 'Operations on nasal sinuses
- Intranasal antrotomy 22.2
22.2 Intranasal antrotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.3', 'Operations on nasal sinuses
- External maxillary antrotomy 22.3
22.3 External maxillary antrotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.31', 'Operations on nasal sinuses
- External maxillary antrotomy
-- Radical maxillary antrotomy 22.31
22.31 Radical maxillary antrotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.39', 'Operations on nasal sinuses
- External maxillary antrotomy
-- Other external maxillary antrotomy 22.39
22.39 Other external maxillary antrotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.4', 'Operations on nasal sinuses
- Frontal sinusotomy and sinusectomy 22.4
22.4 Frontal sinusotomy and sinusectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.41', 'Operations on nasal sinuses
- Frontal sinusotomy and sinusectomy
-- Frontal sinusotomy 22.41
22.41 Frontal sinusotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.42', 'Operations on nasal sinuses
- Frontal sinusotomy and sinusectomy
-- Frontal sinusectomy 22.42
22.42 Frontal sinusectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.5', 'Operations on nasal sinuses
- Other nasal sinusotomy 22.5
22.5 Other nasal sinusotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.50', 'Operations on nasal sinuses
- Other nasal sinusotomy
-- Sinusotomy, not otherwise specified 22.50
22.50 Sinusotomy, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.51', 'Operations on nasal sinuses
- Other nasal sinusotomy
-- Ethmoidotomy 22.51
22.51 Ethmoidotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.52', 'Operations on nasal sinuses
- Other nasal sinusotomy
-- Sphenoidotomy 22.52
22.52 Sphenoidotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.53', 'Operations on nasal sinuses
- Other nasal sinusotomy
-- Incision of multiple nasal sinuses 22.53
22.53 Incision of multiple nasal sinuses', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.6', 'Operations on nasal sinuses
- Other nasal sinusectomy 22.6
22.6 Other nasal sinusectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.60', 'Operations on nasal sinuses
- Other nasal sinusectomy
-- Sinusectomy, not otherwise specified 22.60
22.60 Sinusectomy, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.61', 'Operations on nasal sinuses
- Other nasal sinusectomy
-- Excision of lesion of maxillary sinus with Caldwell-Luc approach 22.61
22.61 Excision of lesion of maxillary sinus with Caldwell-Luc approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.62', 'Operations on nasal sinuses
- Other nasal sinusectomy
-- Excision of lesion of maxillary sinus with other approach 22.62
22.62 Excision of lesion of maxillary sinus with other approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.63', 'Operations on nasal sinuses
- Other nasal sinusectomy
-- Ethmoidectomy 22.63
22.63 Ethmoidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.64', 'Operations on nasal sinuses
- Other nasal sinusectomy
-- Sphenoidectomy 22.64
22.64 Sphenoidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.7', 'Operations on nasal sinuses
- Repair of nasal sinus 22.7
22.7 Repair of nasal sinus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.71', 'Operations on nasal sinuses
- Repair of nasal sinus
-- Closure of nasal sinus fistula 22.71
22.71 Closure of nasal sinus fistula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.79', 'Operations on nasal sinuses
- Repair of nasal sinus
-- Other repair of nasal sinus 22.79
22.79 Other repair of nasal sinus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.9', 'Operations on nasal sinuses
- Other operations on nasal sinuses 22.9
22.9 Other operations on nasal sinuses', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23', 'Removal and restoration of teeth
23 Removal and restoration of teeth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.0', 'Removal and restoration of teeth
- Forceps extraction of tooth 23.0
23.0 Forceps extraction of tooth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.01', 'Removal and restoration of teeth
- Forceps extraction of tooth
-- Extraction of deciduous tooth 23.01
23.01 Extraction of deciduous tooth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.09', 'Removal and restoration of teeth
- Forceps extraction of tooth
-- Extraction of other tooth 23.09
23.09 Extraction of other tooth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.1', 'Removal and restoration of teeth
- Surgical removal of tooth 23.1
23.1 Surgical removal of tooth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.11', 'Removal and restoration of teeth
- Surgical removal of tooth
-- Removal of residual root 23.11
23.11 Removal of residual root', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.19', 'Removal and restoration of teeth
- Surgical removal of tooth
-- Other surgical extraction of tooth 23.19
23.19 Other surgical extraction of tooth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.2', 'Removal and restoration of teeth
- Restoration of tooth by filling 23.2
23.2 Restoration of tooth by filling', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.3', 'Removal and restoration of teeth
- Restoration of tooth by inlay 23.3
23.3 Restoration of tooth by inlay', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.4', 'Removal and restoration of teeth
- Other dental restoration 23.4
23.4 Other dental restoration', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.41', 'Removal and restoration of teeth
- Other dental restoration
-- Application of crown 23.41
23.41 Application of crown', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.42', 'Removal and restoration of teeth
- Other dental restoration
-- Insertion of fixed bridge 23.42
23.42 Insertion of fixed bridge', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.43', 'Removal and restoration of teeth
- Other dental restoration
-- Insertion of removable bridge 23.43
23.43 Insertion of removable bridge', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.49', 'Removal and restoration of teeth
- Other dental restoration
-- Other 23.49
23.49 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.5', 'Removal and restoration of teeth
- Implantation of tooth 23.5
23.5 Implantation of tooth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.6', 'Removal and restoration of teeth
- Prosthetic dental implant 23.6
23.6 Prosthetic dental implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.7', 'Removal and restoration of teeth
- Apicoectomy and root canal therapy 23.7
23.7 Apicoectomy and root canal therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.70', 'Removal and restoration of teeth
- Apicoectomy and root canal therapy
-- Root canal, not otherwise specified 23.70
23.70 Root canal, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.71', 'Removal and restoration of teeth
- Apicoectomy and root canal therapy
-- Root canal therapy with irrigation 23.71
23.71 Root canal therapy with irrigation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.72', 'Removal and restoration of teeth
- Apicoectomy and root canal therapy
-- Root canal therapy with apicoectomy 23.72
23.72 Root canal therapy with apicoectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.73', 'Removal and restoration of teeth
- Apicoectomy and root canal therapy
-- Apicoectomy 23.73
23.73 Apicoectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24', 'Other operations on teeth, gums, and alveoli
24 Other operations on teeth, gums, and alveoli', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.0', 'Other operations on teeth, gums, and alveoli
- Incision of gum or alveolar bone 24.0
24.0 Incision of gum or alveolar bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.1', 'Other operations on teeth, gums, and alveoli
- Diagnostic procedures on teeth, gums, and alveoli 24.1
24.1 Diagnostic procedures on teeth, gums, and alveoli', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.11', 'Other operations on teeth, gums, and alveoli
- Diagnostic procedures on teeth, gums, and alveoli
-- Biopsy of gum 24.11
24.11 Biopsy of gum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.12', 'Other operations on teeth, gums, and alveoli
- Diagnostic procedures on teeth, gums, and alveoli
-- Biopsy of alveolus 24.12
24.12 Biopsy of alveolus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.19', 'Other operations on teeth, gums, and alveoli
- Diagnostic procedures on teeth, gums, and alveoli
-- Other diagnostic procedures on teeth, gums, and alveoli 24.19
24.19 Other diagnostic procedures on teeth, gums, and alveoli', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.2', 'Other operations on teeth, gums, and alveoli
- Gingivoplasty 24.2
24.2 Gingivoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.3', 'Other operations on teeth, gums, and alveoli
- Other operations on gum 24.3
24.3 Other operations on gum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.31', 'Other operations on teeth, gums, and alveoli
- Other operations on gum
-- Excision of lesion or tissue of gum 24.31
24.31 Excision of lesion or tissue of gum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.32', 'Other operations on teeth, gums, and alveoli
- Other operations on gum
-- Suture of laceration of gum 24.32
24.32 Suture of laceration of gum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.39', 'Other operations on teeth, gums, and alveoli
- Other operations on gum
-- Other 24.39
24.39 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.4', 'Other operations on teeth, gums, and alveoli
- Excision of dental lesion of jaw 24.4
24.4 Excision of dental lesion of jaw', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.5', 'Other operations on teeth, gums, and alveoli
- Alveoloplasty 24.5
24.5 Alveoloplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.6', 'Other operations on teeth, gums, and alveoli
- Exposure of tooth 24.6
24.6 Exposure of tooth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.7', 'Other operations on teeth, gums, and alveoli
- Application of orthodontic appliance 24.7
24.7 Application of orthodontic appliance', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.8', 'Other operations on teeth, gums, and alveoli
- Other orthodontic operation 24.8
24.8 Other orthodontic operation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.9', 'Other operations on teeth, gums, and alveoli
- Other dental operations 24.9
24.9 Other dental operations', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.91', 'Other operations on teeth, gums, and alveoli
- Other dental operations
-- Extension or deepening of buccolabial or lingual sulcus 24.91
24.91 Extension or deepening of buccolabial or lingual sulcus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.99', 'Other operations on teeth, gums, and alveoli
- Other dental operations
-- Other 24.99
24.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25', 'Operations on tongue
25 Operations on tongue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.0', 'Operations on tongue
- Diagnostic procedures on tongue 25.0
25.0 Diagnostic procedures on tongue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.01', 'Operations on tongue
- Diagnostic procedures on tongue
-- Closed [needle] biopsy of tongue 25.01
25.01 Closed [needle] biopsy of tongue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.02', 'Operations on tongue
- Diagnostic procedures on tongue
-- Open biopsy of tongue 25.02
25.02 Open biopsy of tongue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.09', 'Operations on tongue
- Diagnostic procedures on tongue
-- Other diagnostic procedures on tongue 25.09
25.09 Other diagnostic procedures on tongue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.1', 'Operations on tongue
- Excision or destruction of lesion or tissue of tongue 25.1
25.1 Excision or destruction of lesion or tissue of tongue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.2', 'Operations on tongue
- Partial glossectomy 25.2
25.2 Partial glossectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.3', 'Operations on tongue
- Complete glossectomy 25.3
25.3 Complete glossectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.4', 'Operations on tongue
- Radical glossectomy 25.4
25.4 Radical glossectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.5', 'Operations on tongue
- Repair of tongue and glossoplasty 25.5
25.5 Repair of tongue and glossoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.51', 'Operations on tongue
- Repair of tongue and glossoplasty
-- Suture of laceration of tongue 25.51
25.51 Suture of laceration of tongue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.59', 'Operations on tongue
- Repair of tongue and glossoplasty
-- Other repair and plastic operations on tongue 25.59
25.59 Other repair and plastic operations on tongue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.9', 'Operations on tongue
- Other operations on tongue 25.9
25.9 Other operations on tongue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.91', 'Operations on tongue
- Other operations on tongue
-- Lingual frenotomy 25.91
25.91 Lingual frenotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.92', 'Operations on tongue
- Other operations on tongue
-- Lingual frenectomy 25.92
25.92 Lingual frenectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.93', 'Operations on tongue
- Other operations on tongue
-- Lysis of adhesions of tongue 25.93
25.93 Lysis of adhesions of tongue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.94', 'Operations on tongue
- Other operations on tongue
-- Other glossotomy 25.94
25.94 Other glossotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.99', 'Operations on tongue
- Other operations on tongue
-- Other 25.99
25.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26', 'Operations on salivary glands and ducts
26 Operations on salivary glands and ducts', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.0', 'Operations on salivary glands and ducts
- Incision of salivary gland or duct 26.0
26.0 Incision of salivary gland or duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.1', 'Operations on salivary glands and ducts
- Diagnostic procedures on salivary glands and ducts 26.1
26.1 Diagnostic procedures on salivary glands and ducts', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.11', 'Operations on salivary glands and ducts
- Diagnostic procedures on salivary glands and ducts
-- Closed [needle] biopsy of salivary gland or duct 26.11
26.11 Closed [needle] biopsy of salivary gland or duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.12', 'Operations on salivary glands and ducts
- Diagnostic procedures on salivary glands and ducts
-- Open biopsy of salivary gland or duct 26.12
26.12 Open biopsy of salivary gland or duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.19', 'Operations on salivary glands and ducts
- Diagnostic procedures on salivary glands and ducts
-- Other diagnostic procedures on salivary glands and ducts 26.19
26.19 Other diagnostic procedures on salivary glands and ducts', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.2', 'Operations on salivary glands and ducts
- Excision of lesion of salivary gland 26.2
26.2 Excision of lesion of salivary gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.21', 'Operations on salivary glands and ducts
- Excision of lesion of salivary gland
-- Marsupialization of salivary gland cyst 26.21
26.21 Marsupialization of salivary gland cyst', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.29', 'Operations on salivary glands and ducts
- Excision of lesion of salivary gland
-- Other excision of salivary gland lesion 26.29
26.29 Other excision of salivary gland lesion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.3', 'Operations on salivary glands and ducts
- Sialoadenectomy 26.3
26.3 Sialoadenectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.30', 'Operations on salivary glands and ducts
- Sialoadenectomy
-- Sialoadenectomy, not otherwise specified 26.30
26.30 Sialoadenectomy, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.31', 'Operations on salivary glands and ducts
- Sialoadenectomy
-- Partial sialoadenectomy 26.31
26.31 Partial sialoadenectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.32', 'Operations on salivary glands and ducts
- Sialoadenectomy
-- Complete sialoadenectomy 26.32
26.32 Complete sialoadenectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.4', 'Operations on salivary glands and ducts
- Repair of salivary gland or duct 26.4
26.4 Repair of salivary gland or duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.41', 'Operations on salivary glands and ducts
- Repair of salivary gland or duct
-- Suture of laceration of salivary gland 26.41
26.41 Suture of laceration of salivary gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.42', 'Operations on salivary glands and ducts
- Repair of salivary gland or duct
-- Closure of salivary fistula 26.42
26.42 Closure of salivary fistula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.49', 'Operations on salivary glands and ducts
- Repair of salivary gland or duct
-- Other repair and plastic operations on salivary gland or duct 26.49
26.49 Other repair and plastic operations on salivary gland or duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.9', 'Operations on salivary glands and ducts
- Other operations on salivary gland or duct 26.9
26.9 Other operations on salivary gland or duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.91', 'Operations on salivary glands and ducts
- Other operations on salivary gland or duct
-- Probing of salivary duct 26.91
26.91 Probing of salivary duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.99', 'Operations on salivary glands and ducts
- Other operations on salivary gland or duct
-- Other 26.99
26.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27', 'Other operations on mouth and face
27 Other operations on mouth and face', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.0', 'Other operations on mouth and face
- Drainage of face and floor of mouth 27.0
27.0 Drainage of face and floor of mouth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.1', 'Other operations on mouth and face
- Incision of palate 27.1
27.1 Incision of palate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.2', 'Other operations on mouth and face
- Diagnostic procedures on oral cavity 27.2
27.2 Diagnostic procedures on oral cavity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.21', 'Other operations on mouth and face
- Diagnostic procedures on oral cavity
-- Biopsy of bony palate 27.21
27.21 Biopsy of bony palate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.22', 'Other operations on mouth and face
- Diagnostic procedures on oral cavity
-- Biopsy of uvula and soft palate 27.22
27.22 Biopsy of uvula and soft palate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.23', 'Other operations on mouth and face
- Diagnostic procedures on oral cavity
-- Biopsy of lip 27.23
27.23 Biopsy of lip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.24', 'Other operations on mouth and face
- Diagnostic procedures on oral cavity
-- Biopsy of mouth, unspecified structure 27.24
27.24 Biopsy of mouth, unspecified structure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.29', 'Other operations on mouth and face
- Diagnostic procedures on oral cavity
-- Other diagnostic procedures on oral cavity 27.29
27.29 Other diagnostic procedures on oral cavity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.3', 'Other operations on mouth and face
- Excision of lesion or tissue of bony palate 27.3
27.3 Excision of lesion or tissue of bony palate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.31', 'Other operations on mouth and face
- Excision of lesion or tissue of bony palate
-- Local excision or destruction of lesion or tissue of bony palate 27.31
27.31 Local excision or destruction of lesion or tissue of bony palate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.32', 'Other operations on mouth and face
- Excision of lesion or tissue of bony palate
-- Wide excision or destruction of lesion or tissue of bony palate 27.32
27.32 Wide excision or destruction of lesion or tissue of bony palate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.4', 'Other operations on mouth and face
- Excision of other parts of mouth 27.4
27.4 Excision of other parts of mouth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.41', 'Other operations on mouth and face
- Excision of other parts of mouth
-- Labial frenectomy 27.41
27.41 Labial frenectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.42', 'Other operations on mouth and face
- Excision of other parts of mouth
-- Wide excision of lesion of lip 27.42
27.42 Wide excision of lesion of lip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.43', 'Other operations on mouth and face
- Excision of other parts of mouth
-- Other excision of lesion or tissue of lip 27.43
27.43 Other excision of lesion or tissue of lip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.49', 'Other operations on mouth and face
- Excision of other parts of mouth
-- Other excision of mouth 27.49
27.49 Other excision of mouth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.5', 'Other operations on mouth and face
- Plastic repair of lip and mouth 27.5
27.5 Plastic repair of lip and mouth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.51', 'Other operations on mouth and face
- Plastic repair of lip and mouth
-- Suture of laceration of lip 27.51
27.51 Suture of laceration of lip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.52', 'Other operations on mouth and face
- Plastic repair of lip and mouth
-- Suture of laceration of other part of mouth 27.52
27.52 Suture of laceration of other part of mouth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.53', 'Other operations on mouth and face
- Plastic repair of lip and mouth
-- Closure of fistula of mouth 27.53
27.53 Closure of fistula of mouth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.54', 'Other operations on mouth and face
- Plastic repair of lip and mouth
-- Repair of cleft lip 27.54
27.54 Repair of cleft lip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.55', 'Other operations on mouth and face
- Plastic repair of lip and mouth
-- Full-thickness skin graft to lip and mouth 27.55
27.55 Full-thickness skin graft to lip and mouth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.56', 'Other operations on mouth and face
- Plastic repair of lip and mouth
-- Other skin graft to lip and mouth 27.56
27.56 Other skin graft to lip and mouth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.57', 'Other operations on mouth and face
- Plastic repair of lip and mouth
-- Attachment of pedicle or flap graft to lip and mouth 27.57
27.57 Attachment of pedicle or flap graft to lip and mouth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.59', 'Other operations on mouth and face
- Plastic repair of lip and mouth
-- Other plastic repair of mouth 27.59
27.59 Other plastic repair of mouth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.6', 'Other operations on mouth and face
- Palatoplasty 27.6
27.6 Palatoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.61', 'Other operations on mouth and face
- Palatoplasty
-- Suture of laceration of palate 27.61
27.61 Suture of laceration of palate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.62', 'Other operations on mouth and face
- Palatoplasty
-- Correction of cleft palate 27.62
27.62 Correction of cleft palate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.63', 'Other operations on mouth and face
- Palatoplasty
-- Revision of cleft palate repair 27.63
27.63 Revision of cleft palate repair', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.64', 'Other operations on mouth and face
- Palatoplasty
-- Insertion of palatal implant 27.64
27.64 Insertion of palatal implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.69', 'Other operations on mouth and face
- Palatoplasty
-- Other plastic repair of palate 27.69
27.69 Other plastic repair of palate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.7', 'Other operations on mouth and face
- Operations on uvula 27.7
27.7 Operations on uvula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.71', 'Other operations on mouth and face
- Operations on uvula
-- Incision of uvula 27.71
27.71 Incision of uvula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.72', 'Other operations on mouth and face
- Operations on uvula
-- Excision of uvula 27.72
27.72 Excision of uvula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.73', 'Other operations on mouth and face
- Operations on uvula
-- Repair of uvula 27.73
27.73 Repair of uvula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.79', 'Other operations on mouth and face
- Operations on uvula
-- Other operations on uvula 27.79
27.79 Other operations on uvula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.9', 'Other operations on mouth and face
- Other operations on mouth and face 27.9
27.9 Other operations on mouth and face', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.91', 'Other operations on mouth and face
- Other operations on mouth and face
-- Labial frenotomy 27.91
27.91 Labial frenotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.92', 'Other operations on mouth and face
- Other operations on mouth and face
-- Incision of mouth, unspecified structure 27.92
27.92 Incision of mouth, unspecified structure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.99', 'Other operations on mouth and face
- Other operations on mouth and face
-- Other operations on oral cavity 27.99
27.99 Other operations on oral cavity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28', 'Operations on tonsils and adenoids
28 Operations on tonsils and adenoids', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.0', 'Operations on tonsils and adenoids
- Incision and drainage of tonsil and peritonsillar structures 28.0
28.0 Incision and drainage of tonsil and peritonsillar structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.1', 'Operations on tonsils and adenoids
- Diagnostic procedures on tonsils and adenoids 28.1
28.1 Diagnostic procedures on tonsils and adenoids', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.11', 'Operations on tonsils and adenoids
- Diagnostic procedures on tonsils and adenoids
-- Biopsy of tonsils and adenoids 28.11
28.11 Biopsy of tonsils and adenoids', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.19', 'Operations on tonsils and adenoids
- Diagnostic procedures on tonsils and adenoids
-- Other diagnostic procedures on tonsils and adenoids 28.19
28.19 Other diagnostic procedures on tonsils and adenoids', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.2', 'Operations on tonsils and adenoids
- Tonsillectomy without adenoidectomy 28.2
28.2 Tonsillectomy without adenoidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.3', 'Operations on tonsils and adenoids
- Tonsillectomy with adenoidectomy 28.3
28.3 Tonsillectomy with adenoidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.4', 'Operations on tonsils and adenoids
- Excision of tonsil tag 28.4
28.4 Excision of tonsil tag', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.5', 'Operations on tonsils and adenoids
- Excision of lingual tonsil 28.5
28.5 Excision of lingual tonsil', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.6', 'Operations on tonsils and adenoids
- Adenoidectomy without tonsillectomy 28.6
28.6 Adenoidectomy without tonsillectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.7', 'Operations on tonsils and adenoids
- Control of hemorrhage after tonsillectomy and adenoidectomy 28.7
28.7 Control of hemorrhage after tonsillectomy and adenoidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.9', 'Operations on tonsils and adenoids
- Other operations on tonsils and adenoids 28.9
28.9 Other operations on tonsils and adenoids', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.91', 'Operations on tonsils and adenoids
- Other operations on tonsils and adenoids
-- Removal of foreign body from tonsil and adenoid by incision 28.91
28.91 Removal of foreign body from tonsil and adenoid by incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.92', 'Operations on tonsils and adenoids
- Other operations on tonsils and adenoids
-- Excision of lesion of tonsil and adenoid 28.92
28.92 Excision of lesion of tonsil and adenoid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.99', 'Operations on tonsils and adenoids
- Other operations on tonsils and adenoids
-- Other 28.99
28.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29', 'Operations on pharynx
29 Operations on pharynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.0', 'Operations on pharynx
- Pharyngotomy 29.0
29.0 Pharyngotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.1', 'Operations on pharynx
- Diagnostic procedures on pharynx 29.1
29.1 Diagnostic procedures on pharynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.11', 'Operations on pharynx
- Diagnostic procedures on pharynx
-- Pharyngoscopy 29.11
29.11 Pharyngoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.12', 'Operations on pharynx
- Diagnostic procedures on pharynx
-- Pharyngeal biopsy 29.12
29.12 Pharyngeal biopsy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.19', 'Operations on pharynx
- Diagnostic procedures on pharynx
-- Other diagnostic procedures on pharynx 29.19
29.19 Other diagnostic procedures on pharynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.2', 'Operations on pharynx
- Excision of branchial cleft cyst or vestige 29.2
29.2 Excision of branchial cleft cyst or vestige', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.3', 'Operations on pharynx
- Excision or destruction of lesion or tissue of pharynx 29.3
29.3 Excision or destruction of lesion or tissue of pharynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.31', 'Operations on pharynx
- Excision or destruction of lesion or tissue of pharynx
-- Cricopharyngeal myotomy 29.31
29.31 Cricopharyngeal myotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.32', 'Operations on pharynx
- Excision or destruction of lesion or tissue of pharynx
-- Pharyngeal diverticulectomy 29.32
29.32 Pharyngeal diverticulectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.33', 'Operations on pharynx
- Excision or destruction of lesion or tissue of pharynx
-- Pharyngectomy (partial) 29.33
29.33 Pharyngectomy (partial)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.39', 'Operations on pharynx
- Excision or destruction of lesion or tissue of pharynx
-- Other excision or destruction of lesion or tissue of pharynx 29.39
29.39 Other excision or destruction of lesion or tissue of pharynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.4', 'Operations on pharynx
- Plastic operation on pharynx 29.4
29.4 Plastic operation on pharynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.5', 'Operations on pharynx
- Other repair of pharynx 29.5
29.5 Other repair of pharynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.51', 'Operations on pharynx
- Other repair of pharynx
-- Suture of laceration of pharynx 29.51
29.51 Suture of laceration of pharynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.52', 'Operations on pharynx
- Other repair of pharynx
-- Closure of branchial cleft fistula 29.52
29.52 Closure of branchial cleft fistula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.53', 'Operations on pharynx
- Other repair of pharynx
-- Closure of other fistula of pharynx 29.53
29.53 Closure of other fistula of pharynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.54', 'Operations on pharynx
- Other repair of pharynx
-- Lysis of pharyngeal adhesions 29.54
29.54 Lysis of pharyngeal adhesions', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.59', 'Operations on pharynx
- Other repair of pharynx
-- Other 29.59
29.59 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.9', 'Operations on pharynx
- Other operations on pharynx 29.9
29.9 Other operations on pharynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.91', 'Operations on pharynx
- Other operations on pharynx
-- Dilation of pharynx 29.91
29.91 Dilation of pharynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.92', 'Operations on pharynx
- Other operations on pharynx
-- Division of glossopharyngeal nerve 29.92
29.92 Division of glossopharyngeal nerve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.99', 'Operations on pharynx
- Other operations on pharynx
-- Other 29.99
29.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('30', 'Excision of larynx
30 Excision of larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('30.0', 'Excision of larynx
- Excision or destruction of lesion or tissue of larynx 30.0
30.0 Excision or destruction of lesion or tissue of larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('30.01', 'Excision of larynx
- Excision or destruction of lesion or tissue of larynx
-- Marsupialization of laryngeal cyst 30.01
30.01 Marsupialization of laryngeal cyst', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('30.09', 'Excision of larynx
- Excision or destruction of lesion or tissue of larynx
-- Other excision or destruction of lesion or tissue of larynx 30.09
30.09 Other excision or destruction of lesion or tissue of larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('30.1', 'Excision of larynx
- Hemilaryngectomy 30.1
30.1 Hemilaryngectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('30.2', 'Excision of larynx
- Other partial laryngectomy 30.2
30.2 Other partial laryngectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('30.21', 'Excision of larynx
- Other partial laryngectomy
-- Epiglottidectomy 30.21
30.21 Epiglottidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('30.22', 'Excision of larynx
- Other partial laryngectomy
-- Vocal cordectomy 30.22
30.22 Vocal cordectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('30.29', 'Excision of larynx
- Other partial laryngectomy
-- Other partial laryngectomy 30.29
30.29 Other partial laryngectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('30.3', 'Excision of larynx
- Complete laryngectomy 30.3
30.3 Complete laryngectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('30.4', 'Excision of larynx
- Radical laryngectomy 30.4
30.4 Radical laryngectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31', 'Other operations on larynx and trachea
31 Other operations on larynx and trachea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.0', 'Other operations on larynx and trachea
- Injection of larynx 31.0
31.0 Injection of larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.1', 'Other operations on larynx and trachea
- Temporary tracheostomy 31.1
31.1 Temporary tracheostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.2', 'Other operations on larynx and trachea
- Permanent tracheostomy 31.2
31.2 Permanent tracheostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.21', 'Other operations on larynx and trachea
- Permanent tracheostomy
-- Mediastinal tracheostomy 31.21
31.21 Mediastinal tracheostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.29', 'Other operations on larynx and trachea
- Permanent tracheostomy
-- Other permanent tracheostomy 31.29
31.29 Other permanent tracheostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.3', 'Other operations on larynx and trachea
- Other incision of larynx or trachea 31.3
31.3 Other incision of larynx or trachea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.4', 'Other operations on larynx and trachea
- Diagnostic procedures on larynx and trachea 31.4
31.4 Diagnostic procedures on larynx and trachea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.41', 'Other operations on larynx and trachea
- Diagnostic procedures on larynx and trachea
-- Tracheoscopy through artificial stoma 31.41
31.41 Tracheoscopy through artificial stoma', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.42', 'Other operations on larynx and trachea
- Diagnostic procedures on larynx and trachea
-- Laryngoscopy and other tracheoscopy 31.42
31.42 Laryngoscopy and other tracheoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.43', 'Other operations on larynx and trachea
- Diagnostic procedures on larynx and trachea
-- Closed [endoscopic] biopsy of larynx 31.43
31.43 Closed [endoscopic] biopsy of larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.44', 'Other operations on larynx and trachea
- Diagnostic procedures on larynx and trachea
-- Closed [endoscopic] biopsy of trachea 31.44
31.44 Closed [endoscopic] biopsy of trachea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.45', 'Other operations on larynx and trachea
- Diagnostic procedures on larynx and trachea
-- Open biopsy of larynx or trachea 31.45
31.45 Open biopsy of larynx or trachea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.48', 'Other operations on larynx and trachea
- Diagnostic procedures on larynx and trachea
-- Other diagnostic procedures on larynx 31.48
31.48 Other diagnostic procedures on larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.49', 'Other operations on larynx and trachea
- Diagnostic procedures on larynx and trachea
-- Other diagnostic procedures on trachea 31.49
31.49 Other diagnostic procedures on trachea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.5', 'Other operations on larynx and trachea
- Local excision or destruction of lesion or tissue of trachea 31.5
31.5 Local excision or destruction of lesion or tissue of trachea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.6', 'Other operations on larynx and trachea
- Repair of larynx 31.6
31.6 Repair of larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.61', 'Other operations on larynx and trachea
- Repair of larynx
-- Suture of laceration of larynx 31.61
31.61 Suture of laceration of larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.62', 'Other operations on larynx and trachea
- Repair of larynx
-- Closure of fistula of larynx 31.62
31.62 Closure of fistula of larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.63', 'Other operations on larynx and trachea
- Repair of larynx
-- Revision of laryngostomy 31.63
31.63 Revision of laryngostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.64', 'Other operations on larynx and trachea
- Repair of larynx
-- Repair of laryngeal fracture 31.64
31.64 Repair of laryngeal fracture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.69', 'Other operations on larynx and trachea
- Repair of larynx
-- Other repair of larynx 31.69
31.69 Other repair of larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.7', 'Other operations on larynx and trachea
- Repair and plastic operations on trachea 31.7
31.7 Repair and plastic operations on trachea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.71', 'Other operations on larynx and trachea
- Repair and plastic operations on trachea
-- Suture of laceration of trachea 31.71
31.71 Suture of laceration of trachea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.72', 'Other operations on larynx and trachea
- Repair and plastic operations on trachea
-- Closure of external fistula of trachea 31.72
31.72 Closure of external fistula of trachea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.73', 'Other operations on larynx and trachea
- Repair and plastic operations on trachea
-- Closure of other fistula of trachea 31.73
31.73 Closure of other fistula of trachea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.74', 'Other operations on larynx and trachea
- Repair and plastic operations on trachea
-- Revision of tracheostomy 31.74
31.74 Revision of tracheostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.75', 'Other operations on larynx and trachea
- Repair and plastic operations on trachea
-- Reconstruction of trachea and construction of artificial larynx 31.75
31.75 Reconstruction of trachea and construction of artificial larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.79', 'Other operations on larynx and trachea
- Repair and plastic operations on trachea
-- Other repair and plastic operations on trachea 31.79
31.79 Other repair and plastic operations on trachea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.9', 'Other operations on larynx and trachea
- Other operations on larynx and trachea 31.9
31.9 Other operations on larynx and trachea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.91', 'Other operations on larynx and trachea
- Other operations on larynx and trachea
-- Division of laryngeal nerve 31.91
31.91 Division of laryngeal nerve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.92', 'Other operations on larynx and trachea
- Other operations on larynx and trachea
-- Lysis of adhesions of trachea or larynx 31.92
31.92 Lysis of adhesions of trachea or larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.93', 'Other operations on larynx and trachea
- Other operations on larynx and trachea
-- Replacement of laryngeal or tracheal stent 31.93
31.93 Replacement of laryngeal or tracheal stent', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.94', 'Other operations on larynx and trachea
- Other operations on larynx and trachea
-- Injection of locally-acting therapeutic substance into trachea 31.94
31.94 Injection of locally-acting therapeutic substance into trachea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.95', 'Other operations on larynx and trachea
- Other operations on larynx and trachea
-- Tracheoesophageal fistulization 31.95
31.95 Tracheoesophageal fistulization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.98', 'Other operations on larynx and trachea
- Other operations on larynx and trachea
-- Other operations on larynx 31.98
31.98 Other operations on larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.99', 'Other operations on larynx and trachea
- Other operations on larynx and trachea
-- Other operations on trachea 31.99
31.99 Other operations on trachea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32', 'Excision of lung and bronchus
32 Excision of lung and bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.0', 'Excision of lung and bronchus
- Local excision or destruction of lesion or tissue of bronchus 32.0
32.0 Local excision or destruction of lesion or tissue of bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.01', 'Excision of lung and bronchus
- Local excision or destruction of lesion or tissue of bronchus
-- Endoscopic excision or destruction of lesion or tissue of bronchus 32.01
32.01 Endoscopic excision or destruction of lesion or tissue of bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.09', 'Excision of lung and bronchus
- Local excision or destruction of lesion or tissue of bronchus
-- Other local excision or destruction of lesion or tissue of bronchus 32.09
32.09 Other local excision or destruction of lesion or tissue of bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.1', 'Excision of lung and bronchus
- Other excision of bronchus 32.1
32.1 Other excision of bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.2', 'Excision of lung and bronchus
- Local excision or destruction of lesion or tissue of lung 32.2
32.2 Local excision or destruction of lesion or tissue of lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.20', 'Excision of lung and bronchus
- Local excision or destruction of lesion or tissue of lung
-- Thoracoscopic excision of lesion or tissue of lung  32.20
32.20 Thoracoscopic excision of lesion or tissue of lung ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.21', 'Excision of lung and bronchus
- Local excision or destruction of lesion or tissue of lung
-- Plication of emphysematous bleb 32.21
32.21 Plication of emphysematous bleb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.22', 'Excision of lung and bronchus
- Local excision or destruction of lesion or tissue of lung
-- Lung volume reduction surgery 32.22
32.22 Lung volume reduction surgery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.23', 'Excision of lung and bronchus
- Local excision or destruction of lesion or tissue of lung
-- Open ablation of lung lesion or tissue 32.23
32.23 Open ablation of lung lesion or tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.24', 'Excision of lung and bronchus
- Local excision or destruction of lesion or tissue of lung
-- Percutaneous ablation of lung lesion or tissue 32.24
32.24 Percutaneous ablation of lung lesion or tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.25', 'Excision of lung and bronchus
- Local excision or destruction of lesion or tissue of lung
-- Thoracoscopic ablation of lung lesion or tissue 32.25
32.25 Thoracoscopic ablation of lung lesion or tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.26', 'Excision of lung and bronchus
- Local excision or destruction of lesion or tissue of lung
-- Other and unspecified ablation of lung lesion or tissue 32.26
32.26 Other and unspecified ablation of lung lesion or tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.28', 'Excision of lung and bronchus
- Local excision or destruction of lesion or tissue of lung
-- Endoscopic excision or destruction of lesion or tissue of lung 32.28
32.28 Endoscopic excision or destruction of lesion or tissue of lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.29', 'Excision of lung and bronchus
- Local excision or destruction of lesion or tissue of lung
-- Other local excision or destruction of lesion or tissue of lung 32.29
32.29 Other local excision or destruction of lesion or tissue of lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.3', 'Excision of lung and bronchus
- Segmental resection of lung 32.3
32.3 Segmental resection of lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.30', 'Excision of lung and bronchus
- Segmental resection of lung
-- Thoracoscopic segmental resection of lung  32.30
32.30 Thoracoscopic segmental resection of lung ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.39', 'Excision of lung and bronchus
- Segmental resection of lung
-- Other and unspecified segmental resection of lung  32.39
32.39 Other and unspecified segmental resection of lung ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.4', 'Excision of lung and bronchus
- Lobectomy of lung 32.4
32.4 Lobectomy of lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.41', 'Excision of lung and bronchus
- Lobectomy of lung
-- Thoracoscopic lobectomy of lung  32.41
32.41 Thoracoscopic lobectomy of lung ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.49', 'Excision of lung and bronchus
- Lobectomy of lung
-- Other lobectomy of lung  32.49
32.49 Other lobectomy of lung ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.5', 'Excision of lung and bronchus
- Pneumonectomy 32.5
32.5 Pneumonectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.50', 'Excision of lung and bronchus
- Pneumonectomy
-- Thoracoscopic pneumonectomy  32.50
32.50 Thoracoscopic pneumonectomy ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.59', 'Excision of lung and bronchus
- Pneumonectomy
-- Other and unspecified pneumonectomy  32.59
32.59 Other and unspecified pneumonectomy ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.6', 'Excision of lung and bronchus
- Radical dissection of thoracic structures 32.6
32.6 Radical dissection of thoracic structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.9', 'Excision of lung and bronchus
- Other excision of lung 32.9
32.9 Other excision of lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33', 'Other operations on lung and bronchus
33 Other operations on lung and bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.0', 'Other operations on lung and bronchus
- Incision of bronchus 33.0
33.0 Incision of bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.1', 'Other operations on lung and bronchus
- Incision of lung 33.1
33.1 Incision of lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.2', 'Other operations on lung and bronchus
- Diagnostic procedures on lung and bronchus 33.2
33.2 Diagnostic procedures on lung and bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.20', 'Other operations on lung and bronchus
- Diagnostic procedures on lung and bronchus
-- Thoracoscopic lung biopsy  33.20
33.20 Thoracoscopic lung biopsy ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.21', 'Other operations on lung and bronchus
- Diagnostic procedures on lung and bronchus
-- Bronchoscopy through artificial stoma 33.21
33.21 Bronchoscopy through artificial stoma', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.22', 'Other operations on lung and bronchus
- Diagnostic procedures on lung and bronchus
-- Fiber-optic bronchoscopy 33.22
33.22 Fiber-optic bronchoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.23', 'Other operations on lung and bronchus
- Diagnostic procedures on lung and bronchus
-- Other bronchoscopy 33.23
33.23 Other bronchoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.24', 'Other operations on lung and bronchus
- Diagnostic procedures on lung and bronchus
-- Closed [endoscopic] biopsy of bronchus 33.24
33.24 Closed [endoscopic] biopsy of bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.25', 'Other operations on lung and bronchus
- Diagnostic procedures on lung and bronchus
-- Open biopsy of bronchus 33.25
33.25 Open biopsy of bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.26', 'Other operations on lung and bronchus
- Diagnostic procedures on lung and bronchus
-- Closed [percutaneous] [needle] biopsy of lung 33.26
33.26 Closed [percutaneous] [needle] biopsy of lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.27', 'Other operations on lung and bronchus
- Diagnostic procedures on lung and bronchus
-- Closed endoscopic biopsy of lung 33.27
33.27 Closed endoscopic biopsy of lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.28', 'Other operations on lung and bronchus
- Diagnostic procedures on lung and bronchus
-- Open biopsy of lung 33.28
33.28 Open biopsy of lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.29', 'Other operations on lung and bronchus
- Diagnostic procedures on lung and bronchus
-- Other diagnostic procedures on lung and bronchus 33.29
33.29 Other diagnostic procedures on lung and bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.3', 'Other operations on lung and bronchus
- Surgical collapse of lung 33.3
33.3 Surgical collapse of lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.31', 'Other operations on lung and bronchus
- Surgical collapse of lung
-- Destruction of phrenic nerve for collapse of lung 33.31
33.31 Destruction of phrenic nerve for collapse of lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.32', 'Other operations on lung and bronchus
- Surgical collapse of lung
-- Artificial pneumothorax for collapse of lung 33.32
33.32 Artificial pneumothorax for collapse of lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.33', 'Other operations on lung and bronchus
- Surgical collapse of lung
-- Pneumoperitoneum for collapse of lung 33.33
33.33 Pneumoperitoneum for collapse of lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.34', 'Other operations on lung and bronchus
- Surgical collapse of lung
-- Thoracoplasty 33.34
33.34 Thoracoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.39', 'Other operations on lung and bronchus
- Surgical collapse of lung
-- Other surgical collapse of lung 33.39
33.39 Other surgical collapse of lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.4', 'Other operations on lung and bronchus
- Repair and plastic operation on lung and bronchus 33.4
33.4 Repair and plastic operation on lung and bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.41', 'Other operations on lung and bronchus
- Repair and plastic operation on lung and bronchus
-- Suture of laceration of bronchus 33.41
33.41 Suture of laceration of bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.42', 'Other operations on lung and bronchus
- Repair and plastic operation on lung and bronchus
-- Closure of bronchial fistula 33.42
33.42 Closure of bronchial fistula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.43', 'Other operations on lung and bronchus
- Repair and plastic operation on lung and bronchus
-- Closure of laceration of lung 33.43
33.43 Closure of laceration of lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.48', 'Other operations on lung and bronchus
- Repair and plastic operation on lung and bronchus
-- Other repair and plastic operations on bronchus 33.48
33.48 Other repair and plastic operations on bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.49', 'Other operations on lung and bronchus
- Repair and plastic operation on lung and bronchus
-- Other repair and plastic operations on lung 33.49
33.49 Other repair and plastic operations on lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.5', 'Other operations on lung and bronchus
- Lung transplant 33.5
33.5 Lung transplant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.50', 'Other operations on lung and bronchus
- Lung transplant
-- Lung transplantation, not otherwise specified 33.50
33.50 Lung transplantation, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.51', 'Other operations on lung and bronchus
- Lung transplant
-- Unilateral lung transplantation 33.51
33.51 Unilateral lung transplantation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.52', 'Other operations on lung and bronchus
- Lung transplant
-- Bilateral lung transplantation 33.52
33.52 Bilateral lung transplantation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.6', 'Other operations on lung and bronchus
- Combined heart-lung transplantation 33.6
33.6 Combined heart-lung transplantation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.7', 'Other operations on lung and bronchus
- Other endoscopic procedures in bronchus or lung 33.7
33.7 Other endoscopic procedures in bronchus or lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.71', 'Other operations on lung and bronchus
- Other endoscopic procedures in bronchus or lung
-- Endoscopic insertion or replacement of bronchial valve(s), 33.71
33.71 Endoscopic insertion or replacement of bronchial valve(s),', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.72', 'Other operations on lung and bronchus
- Other endoscopic procedures in bronchus or lung
-- Endoscopic pulmonary airway flow measurement  33.72
33.72 Endoscopic pulmonary airway flow measurement ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.73', 'Other operations on lung and bronchus
- Other endoscopic procedures in bronchus or lung
-- Endoscopic insertion or replacement of bronchial valve(s), 33.73
33.73 Endoscopic insertion or replacement of bronchial valve(s),', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.78', 'Other operations on lung and bronchus
- Other endoscopic procedures in bronchus or lung
-- Endoscopic removal of bronchial device(s) or substances 33.78
33.78 Endoscopic removal of bronchial device(s) or substances', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.79', 'Other operations on lung and bronchus
- Other endoscopic procedures in bronchus or lung
-- Endoscopic insertion of other bronchial device or substances 33.79
33.79 Endoscopic insertion of other bronchial device or substances', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.9', 'Other operations on lung and bronchus
- Other operations on lung and bronchus 33.9
33.9 Other operations on lung and bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.91', 'Other operations on lung and bronchus
- Other operations on lung and bronchus
-- Bronchial dilation 33.91
33.91 Bronchial dilation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.92', 'Other operations on lung and bronchus
- Other operations on lung and bronchus
-- Ligation of bronchus 33.92
33.92 Ligation of bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.93', 'Other operations on lung and bronchus
- Other operations on lung and bronchus
-- Puncture of lung 33.93
33.93 Puncture of lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.98', 'Other operations on lung and bronchus
- Other operations on lung and bronchus
-- Other operations on bronchus 33.98
33.98 Other operations on bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.99', 'Other operations on lung and bronchus
- Other operations on lung and bronchus
-- Other operations on lung 33.99
33.99 Other operations on lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34', 'Operations on chest wall, pleura, mediastinum, and
34 Operations on chest wall, pleura, mediastinum, and', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.0', 'Operations on chest wall, pleura, mediastinum, and
- Incision of chest wall and pleura 34.0
34.0 Incision of chest wall and pleura', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.01', 'Operations on chest wall, pleura, mediastinum, and
- Incision of chest wall and pleura
-- Incision of chest wall 34.01
34.01 Incision of chest wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.02', 'Operations on chest wall, pleura, mediastinum, and
- Incision of chest wall and pleura
-- Exploratory thoracotomy 34.02
34.02 Exploratory thoracotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.03', 'Operations on chest wall, pleura, mediastinum, and
- Incision of chest wall and pleura
-- Reopening of recent thoracotomy site 34.03
34.03 Reopening of recent thoracotomy site', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.04', 'Operations on chest wall, pleura, mediastinum, and
- Incision of chest wall and pleura
-- Insertion of intercostal catheter for drainage 34.04
34.04 Insertion of intercostal catheter for drainage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.05', 'Operations on chest wall, pleura, mediastinum, and
- Incision of chest wall and pleura
-- Creation of pleuroperitoneal shunt 34.05
34.05 Creation of pleuroperitoneal shunt', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.06', 'Operations on chest wall, pleura, mediastinum, and
- Incision of chest wall and pleura
-- Thoracoscopic drainage of pleural cavity  34.06
34.06 Thoracoscopic drainage of pleural cavity ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.09', 'Operations on chest wall, pleura, mediastinum, and
- Incision of chest wall and pleura
-- Other incision of pleura 34.09
34.09 Other incision of pleura', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.1', 'Operations on chest wall, pleura, mediastinum, and
- Incision of mediastinum 34.1
34.1 Incision of mediastinum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.2', 'Operations on chest wall, pleura, mediastinum, and
- Diagnostic procedures on chest wall, pleura, mediastinum, and 34.2
34.2 Diagnostic procedures on chest wall, pleura, mediastinum, and', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.20', 'Operations on chest wall, pleura, mediastinum, and
- Diagnostic procedures on chest wall, pleura, mediastinum, and
-- Thoracoscopic pleural biopsy  34.20
34.20 Thoracoscopic pleural biopsy ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.21', 'Operations on chest wall, pleura, mediastinum, and
- Diagnostic procedures on chest wall, pleura, mediastinum, and
-- Transpleural thoracoscopy 34.21
34.21 Transpleural thoracoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.22', 'Operations on chest wall, pleura, mediastinum, and
- Diagnostic procedures on chest wall, pleura, mediastinum, and
-- Mediastinoscopy 34.22
34.22 Mediastinoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.23', 'Operations on chest wall, pleura, mediastinum, and
- Diagnostic procedures on chest wall, pleura, mediastinum, and
-- Biopsy of chest wall 34.23
34.23 Biopsy of chest wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.24', 'Operations on chest wall, pleura, mediastinum, and
- Diagnostic procedures on chest wall, pleura, mediastinum, and
-- Other pleural biopsy 34.24
34.24 Other pleural biopsy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.25', 'Operations on chest wall, pleura, mediastinum, and
- Diagnostic procedures on chest wall, pleura, mediastinum, and
-- Closed [percutaneous] [needle] biopsy of mediastinum 34.25
34.25 Closed [percutaneous] [needle] biopsy of mediastinum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.26', 'Operations on chest wall, pleura, mediastinum, and
- Diagnostic procedures on chest wall, pleura, mediastinum, and
-- Open mediastinal biopsy 34.26
34.26 Open mediastinal biopsy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.27', 'Operations on chest wall, pleura, mediastinum, and
- Diagnostic procedures on chest wall, pleura, mediastinum, and
-- Biopsy of diaphragm 34.27
34.27 Biopsy of diaphragm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.28', 'Operations on chest wall, pleura, mediastinum, and
- Diagnostic procedures on chest wall, pleura, mediastinum, and
-- Other diagnostic procedures on chest wall, pleura, and diaphragm 34.28
34.28 Other diagnostic procedures on chest wall, pleura, and diaphragm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.29', 'Operations on chest wall, pleura, mediastinum, and
- Diagnostic procedures on chest wall, pleura, mediastinum, and
-- Other diagnostic procedures on mediastinum 34.29
34.29 Other diagnostic procedures on mediastinum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.3', 'Operations on chest wall, pleura, mediastinum, and
- Excision or destruction of lesion or tissue of mediastinum 34.3
34.3 Excision or destruction of lesion or tissue of mediastinum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.4', 'Operations on chest wall, pleura, mediastinum, and
- Excision or destruction of lesion of chest wall 34.4
34.4 Excision or destruction of lesion of chest wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.5', 'Operations on chest wall, pleura, mediastinum, and
- Pleurectomy 34.5
34.5 Pleurectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.51', 'Operations on chest wall, pleura, mediastinum, and
- Pleurectomy
-- Decortication of lung 34.51
34.51 Decortication of lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.52', 'Operations on chest wall, pleura, mediastinum, and
- Pleurectomy
-- Thoracoscopic decortication of lung  34.52
34.52 Thoracoscopic decortication of lung ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.59', 'Operations on chest wall, pleura, mediastinum, and
- Pleurectomy
-- Other excision of pleura 34.59
34.59 Other excision of pleura', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.6', 'Operations on chest wall, pleura, mediastinum, and
- Scarification of pleura 34.6
34.6 Scarification of pleura', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.7', 'Operations on chest wall, pleura, mediastinum, and
- Repair of chest wall 34.7
34.7 Repair of chest wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.71', 'Operations on chest wall, pleura, mediastinum, and
- Repair of chest wall
-- Suture of laceration of chest wall 34.71
34.71 Suture of laceration of chest wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.72', 'Operations on chest wall, pleura, mediastinum, and
- Repair of chest wall
-- Closure of thoracostomy 34.72
34.72 Closure of thoracostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.73', 'Operations on chest wall, pleura, mediastinum, and
- Repair of chest wall
-- Closure of other fistula of thorax 34.73
34.73 Closure of other fistula of thorax', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.74', 'Operations on chest wall, pleura, mediastinum, and
- Repair of chest wall
-- Repair of pectus deformity 34.74
34.74 Repair of pectus deformity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.79', 'Operations on chest wall, pleura, mediastinum, and
- Repair of chest wall
-- Other repair of chest wall 34.79
34.79 Other repair of chest wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.8', 'Operations on chest wall, pleura, mediastinum, and
- Operations on diaphragm 34.8
34.8 Operations on diaphragm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.81', 'Operations on chest wall, pleura, mediastinum, and
- Operations on diaphragm
-- Excision of lesion or tissue of diaphragm 34.81
34.81 Excision of lesion or tissue of diaphragm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.82', 'Operations on chest wall, pleura, mediastinum, and
- Operations on diaphragm
-- Suture of laceration of diaphragm 34.82
34.82 Suture of laceration of diaphragm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.83', 'Operations on chest wall, pleura, mediastinum, and
- Operations on diaphragm
-- Closure of fistula of diaphragm 34.83
34.83 Closure of fistula of diaphragm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.84', 'Operations on chest wall, pleura, mediastinum, and
- Operations on diaphragm
-- Other repair of diaphragm 34.84
34.84 Other repair of diaphragm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.85', 'Operations on chest wall, pleura, mediastinum, and
- Operations on diaphragm
-- Implantation of diaphragmatic pacemaker 34.85
34.85 Implantation of diaphragmatic pacemaker', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.89', 'Operations on chest wall, pleura, mediastinum, and
- Operations on diaphragm
-- Other operations on diaphragm 34.89
34.89 Other operations on diaphragm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.9', 'Operations on chest wall, pleura, mediastinum, and
- Other operations on thorax 34.9
34.9 Other operations on thorax', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.91', 'Operations on chest wall, pleura, mediastinum, and
- Other operations on thorax
-- Thoracentesis 34.91
34.91 Thoracentesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.92', 'Operations on chest wall, pleura, mediastinum, and
- Other operations on thorax
-- Injection into thoracic cavity 34.92
34.92 Injection into thoracic cavity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.93', 'Operations on chest wall, pleura, mediastinum, and
- Other operations on thorax
-- Repair of pleura 34.93
34.93 Repair of pleura', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.99', 'Operations on chest wall, pleura, mediastinum, and
- Other operations on thorax
-- Other 34.99
34.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35', 'Operations on valves and septa of heart
35 Operations on valves and septa of heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.0', 'Operations on valves and septa of heart
- Closed heart valvotomy 35.0
35.0 Closed heart valvotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.00', 'Operations on valves and septa of heart
- Closed heart valvotomy
-- Closed heart valvotomy, unspecified valve 35.00
35.00 Closed heart valvotomy, unspecified valve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.01', 'Operations on valves and septa of heart
- Closed heart valvotomy
-- Closed heart valvotomy, aortic valve 35.01
35.01 Closed heart valvotomy, aortic valve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.02', 'Operations on valves and septa of heart
- Closed heart valvotomy
-- Closed heart valvotomy, mitral valve 35.02
35.02 Closed heart valvotomy, mitral valve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.03', 'Operations on valves and septa of heart
- Closed heart valvotomy
-- Closed heart valvotomy, pulmonary valve 35.03
35.03 Closed heart valvotomy, pulmonary valve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.04', 'Operations on valves and septa of heart
- Closed heart valvotomy
-- Closed heart valvotomy, tricuspid valve 35.04
35.04 Closed heart valvotomy, tricuspid valve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.1', 'Operations on valves and septa of heart
- Open heart valvuloplasty without replacement 35.1
35.1 Open heart valvuloplasty without replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.10', 'Operations on valves and septa of heart
- Open heart valvuloplasty without replacement
-- Open heart valvuloplasty without replacement, unspecified valve 35.10
35.10 Open heart valvuloplasty without replacement, unspecified valve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.11', 'Operations on valves and septa of heart
- Open heart valvuloplasty without replacement
-- Open heart valvuloplasty of aortic valve without replacement 35.11
35.11 Open heart valvuloplasty of aortic valve without replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.12', 'Operations on valves and septa of heart
- Open heart valvuloplasty without replacement
-- Open heart valvuloplasty of mitral valve without replacement 35.12
35.12 Open heart valvuloplasty of mitral valve without replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.13', 'Operations on valves and septa of heart
- Open heart valvuloplasty without replacement
-- Open heart valvuloplasty of pulmonary valve without replacement 35.13
35.13 Open heart valvuloplasty of pulmonary valve without replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.14', 'Operations on valves and septa of heart
- Open heart valvuloplasty without replacement
-- Open heart valvuloplasty of tricuspid valve without replacement 35.14
35.14 Open heart valvuloplasty of tricuspid valve without replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.2', 'Operations on valves and septa of heart
- Replacement of heart valve 35.2
35.2 Replacement of heart valve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.20', 'Operations on valves and septa of heart
- Replacement of heart valve
-- Replacement of unspecified heart valve 35.20
35.20 Replacement of unspecified heart valve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.21', 'Operations on valves and septa of heart
- Replacement of heart valve
-- Replacement of aortic valve with tissue graft 35.21
35.21 Replacement of aortic valve with tissue graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.22', 'Operations on valves and septa of heart
- Replacement of heart valve
-- Other replacement of aortic valve 35.22
35.22 Other replacement of aortic valve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.23', 'Operations on valves and septa of heart
- Replacement of heart valve
-- Replacement of mitral valve with tissue graft 35.23
35.23 Replacement of mitral valve with tissue graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.24', 'Operations on valves and septa of heart
- Replacement of heart valve
-- Other replacement of mitral valve 35.24
35.24 Other replacement of mitral valve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.25', 'Operations on valves and septa of heart
- Replacement of heart valve
-- Replacement of pulmonary valve with tissue graft 35.25
35.25 Replacement of pulmonary valve with tissue graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.26', 'Operations on valves and septa of heart
- Replacement of heart valve
-- Other replacement of pulmonary valve 35.26
35.26 Other replacement of pulmonary valve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.27', 'Operations on valves and septa of heart
- Replacement of heart valve
-- Replacement of tricuspid valve with tissue graft 35.27
35.27 Replacement of tricuspid valve with tissue graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.28', 'Operations on valves and septa of heart
- Replacement of heart valve
-- Other replacement of tricuspid valve 35.28
35.28 Other replacement of tricuspid valve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.3', 'Operations on valves and septa of heart
- Operations on structures adjacent to heart valves 35.3
35.3 Operations on structures adjacent to heart valves', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.31', 'Operations on valves and septa of heart
- Operations on structures adjacent to heart valves
-- Operations on papillary muscle 35.31
35.31 Operations on papillary muscle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.32', 'Operations on valves and septa of heart
- Operations on structures adjacent to heart valves
-- Operations on chordae tendineae 35.32
35.32 Operations on chordae tendineae', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.33', 'Operations on valves and septa of heart
- Operations on structures adjacent to heart valves
-- Annuloplasty 35.33
35.33 Annuloplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.34', 'Operations on valves and septa of heart
- Operations on structures adjacent to heart valves
-- Infundibulectomy 35.34
35.34 Infundibulectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.35', 'Operations on valves and septa of heart
- Operations on structures adjacent to heart valves
-- Operations on trabeculae carneae cordis 35.35
35.35 Operations on trabeculae carneae cordis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.39', 'Operations on valves and septa of heart
- Operations on structures adjacent to heart valves
-- Operations on other structures adjacent to valves of heart 35.39
35.39 Operations on other structures adjacent to valves of heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.4', 'Operations on valves and septa of heart
- Production of septal defect in heart 35.4
35.4 Production of septal defect in heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.41', 'Operations on valves and septa of heart
- Production of septal defect in heart
-- Enlargement of existing atrial septal defect 35.41
35.41 Enlargement of existing atrial septal defect', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.42', 'Operations on valves and septa of heart
- Production of septal defect in heart
-- Creation of septal defect in heart 35.42
35.42 Creation of septal defect in heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.5', 'Operations on valves and septa of heart
- Repair of atrial and ventricular septa with prosthesis 35.5
35.5 Repair of atrial and ventricular septa with prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.50', 'Operations on valves and septa of heart
- Repair of atrial and ventricular septa with prosthesis
-- Repair of unspecified septal defect of heart with prosthesis 35.50
35.50 Repair of unspecified septal defect of heart with prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.51', 'Operations on valves and septa of heart
- Repair of atrial and ventricular septa with prosthesis
-- Repair of atrial septal defect with prosthesis, open technique 35.51
35.51 Repair of atrial septal defect with prosthesis, open technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.52', 'Operations on valves and septa of heart
- Repair of atrial and ventricular septa with prosthesis
-- Repair of atrial septal defect with prosthesis, closed technique 35.52
35.52 Repair of atrial septal defect with prosthesis, closed technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.53', 'Operations on valves and septa of heart
- Repair of atrial and ventricular septa with prosthesis
-- Repair of ventricular septal defect with prosthesis, open 35.53
35.53 Repair of ventricular septal defect with prosthesis, open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.54', 'Operations on valves and septa of heart
- Repair of atrial and ventricular septa with prosthesis
-- Repair of endocardial cushion defect with prosthesis 35.54
35.54 Repair of endocardial cushion defect with prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.55', 'Operations on valves and septa of heart
- Repair of atrial and ventricular septa with prosthesis
-- Repair of ventricular septal defect with prosthesis, closed 35.55
35.55 Repair of ventricular septal defect with prosthesis, closed', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.6', 'Operations on valves and septa of heart
- Repair of atrial and ventricular septa with tissue graft 35.6
35.6 Repair of atrial and ventricular septa with tissue graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.60', 'Operations on valves and septa of heart
- Repair of atrial and ventricular septa with tissue graft
-- Repair of unspecified septal defect of heart with tissue graft 35.60
35.60 Repair of unspecified septal defect of heart with tissue graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.61', 'Operations on valves and septa of heart
- Repair of atrial and ventricular septa with tissue graft
-- Repair of atrial septal defect with tissue graft 35.61
35.61 Repair of atrial septal defect with tissue graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.62', 'Operations on valves and septa of heart
- Repair of atrial and ventricular septa with tissue graft
-- Repair of ventricular septal defect with tissue graft 35.62
35.62 Repair of ventricular septal defect with tissue graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.63', 'Operations on valves and septa of heart
- Repair of atrial and ventricular septa with tissue graft
-- Repair of endocardial cushion defect with tissue graft 35.63
35.63 Repair of endocardial cushion defect with tissue graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.7', 'Operations on valves and septa of heart
- Other and unspecified repair of atrial and ventricular septa 35.7
35.7 Other and unspecified repair of atrial and ventricular septa', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.70', 'Operations on valves and septa of heart
- Other and unspecified repair of atrial and ventricular septa
-- Other and unspecified repair of unspecified septal defect of heart 35.70
35.70 Other and unspecified repair of unspecified septal defect of heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.71', 'Operations on valves and septa of heart
- Other and unspecified repair of atrial and ventricular septa
-- Other and unspecified repair of atrial septal defect 35.71
35.71 Other and unspecified repair of atrial septal defect', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.72', 'Operations on valves and septa of heart
- Other and unspecified repair of atrial and ventricular septa
-- Other and unspecified repair of ventricular septal defect 35.72
35.72 Other and unspecified repair of ventricular septal defect', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.73', 'Operations on valves and septa of heart
- Other and unspecified repair of atrial and ventricular septa
-- Other and unspecified repair of endocardial cushion defect 35.73
35.73 Other and unspecified repair of endocardial cushion defect', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.8', 'Operations on valves and septa of heart
- Total repair of certain congenital cardiac anomalies 35.8
35.8 Total repair of certain congenital cardiac anomalies', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.81', 'Operations on valves and septa of heart
- Total repair of certain congenital cardiac anomalies
-- Total repair of tetralogy of Fallot 35.81
35.81 Total repair of tetralogy of Fallot', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.82', 'Operations on valves and septa of heart
- Total repair of certain congenital cardiac anomalies
-- Total repair of total anomalous pulmonary venous connection 35.82
35.82 Total repair of total anomalous pulmonary venous connection', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.83', 'Operations on valves and septa of heart
- Total repair of certain congenital cardiac anomalies
-- Total repair of truncus arteriosus 35.83
35.83 Total repair of truncus arteriosus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.84', 'Operations on valves and septa of heart
- Total repair of certain congenital cardiac anomalies
-- Total correction of transposition of great vessels, not elsewhere 35.84
35.84 Total correction of transposition of great vessels, not elsewhere', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.9', 'Operations on valves and septa of heart
- Other operations on valves and septa of heart 35.9
35.9 Other operations on valves and septa of heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.91', 'Operations on valves and septa of heart
- Other operations on valves and septa of heart
-- Interatrial transposition of venous return 35.91
35.91 Interatrial transposition of venous return', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.92', 'Operations on valves and septa of heart
- Other operations on valves and septa of heart
-- Creation of conduit between right ventricle and pulmonary artery 35.92
35.92 Creation of conduit between right ventricle and pulmonary artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.93', 'Operations on valves and septa of heart
- Other operations on valves and septa of heart
-- Creation of conduit between left ventricle and aorta 35.93
35.93 Creation of conduit between left ventricle and aorta', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.94', 'Operations on valves and septa of heart
- Other operations on valves and septa of heart
-- Creation of conduit between atrium and pulmonary artery 35.94
35.94 Creation of conduit between atrium and pulmonary artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.95', 'Operations on valves and septa of heart
- Other operations on valves and septa of heart
-- Revision of corrective procedure on heart 35.95
35.95 Revision of corrective procedure on heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.96', 'Operations on valves and septa of heart
- Other operations on valves and septa of heart
-- Percutaneous valvuloplasty 35.96
35.96 Percutaneous valvuloplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.98', 'Operations on valves and septa of heart
- Other operations on valves and septa of heart
-- Other operations on septa of heart 35.98
35.98 Other operations on septa of heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.99', 'Operations on valves and septa of heart
- Other operations on valves and septa of heart
-- Other operations on valves of heart 35.99
35.99 Other operations on valves of heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36', 'Operations on vessels of heart
36 Operations on vessels of heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.0', 'Operations on vessels of heart
- Removal of coronary artery obstruction and insertion of stent(s) 36.0
36.0 Removal of coronary artery obstruction and insertion of stent(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.03', 'Operations on vessels of heart
- Removal of coronary artery obstruction and insertion of stent(s)
-- Open chest coronary artery angioplasty 36.03
36.03 Open chest coronary artery angioplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.04', 'Operations on vessels of heart
- Removal of coronary artery obstruction and insertion of stent(s)
-- Intracoronary artery thrombolytic infusion 36.04
36.04 Intracoronary artery thrombolytic infusion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.06', 'Operations on vessels of heart
- Removal of coronary artery obstruction and insertion of stent(s)
-- Insertion of non-drug-eluting coronary artery stent(s) 36.06
36.06 Insertion of non-drug-eluting coronary artery stent(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.07', 'Operations on vessels of heart
- Removal of coronary artery obstruction and insertion of stent(s)
-- Insertion of drug-eluting coronary artery stent(s) 36.07
36.07 Insertion of drug-eluting coronary artery stent(s)', '[{"type":"includes","text":"Drug-eluting coronary artery stent"},{"type":"note","text":"Code also any open chest coronary artery angioplasty (36.03)"}]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.09', 'Operations on vessels of heart
- Removal of coronary artery obstruction and insertion of stent(s)
-- Other removal of coronary artery obstruction 36.09
36.09 Other removal of coronary artery obstruction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.1', 'Operations on vessels of heart
- Bypass anastomosis for heart revascularization 36.1
36.1 Bypass anastomosis for heart revascularization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.10', 'Operations on vessels of heart
- Bypass anastomosis for heart revascularization
-- Aortocoronary bypass for heart revascularization, not otherwise 36.10
36.10 Aortocoronary bypass for heart revascularization, not otherwise', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.11', 'Operations on vessels of heart
- Bypass anastomosis for heart revascularization
-- (Aorto)coronary bypass of one coronary artery 36.11
36.11 (Aorto)coronary bypass of one coronary artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.12', 'Operations on vessels of heart
- Bypass anastomosis for heart revascularization
-- (Aorto)coronary bypass of two coronary arteries 36.12
36.12 (Aorto)coronary bypass of two coronary arteries', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.13', 'Operations on vessels of heart
- Bypass anastomosis for heart revascularization
-- (Aorto)coronary bypass of three coronary arteries 36.13
36.13 (Aorto)coronary bypass of three coronary arteries', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.14', 'Operations on vessels of heart
- Bypass anastomosis for heart revascularization
-- (Aorto)coronary bypass of four or more coronary arteries 36.14
36.14 (Aorto)coronary bypass of four or more coronary arteries', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.15', 'Operations on vessels of heart
- Bypass anastomosis for heart revascularization
-- Single internal mammary-coronary artery bypass 36.15
36.15 Single internal mammary-coronary artery bypass', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.16', 'Operations on vessels of heart
- Bypass anastomosis for heart revascularization
-- Double internal mammary-coronary artery bypass 36.16
36.16 Double internal mammary-coronary artery bypass', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.17', 'Operations on vessels of heart
- Bypass anastomosis for heart revascularization
-- Abdominal - coronary artery bypass 36.17
36.17 Abdominal - coronary artery bypass', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.19', 'Operations on vessels of heart
- Bypass anastomosis for heart revascularization
-- Other bypass anastomosis for heart revascularization 36.19
36.19 Other bypass anastomosis for heart revascularization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.2', 'Operations on vessels of heart
- Heart revascularization by arterial implant 36.2
36.2 Heart revascularization by arterial implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.3', 'Operations on vessels of heart
- Other heart revascularization 36.3
36.3 Other heart revascularization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.31', 'Operations on vessels of heart
- Other heart revascularization
-- Open chest transmyocardial revascularization 36.31
36.31 Open chest transmyocardial revascularization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.32', 'Operations on vessels of heart
- Other heart revascularization
-- Other transmyocardial revascularization 36.32
36.32 Other transmyocardial revascularization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.33', 'Operations on vessels of heart
- Other heart revascularization
-- Endoscopic transmyocardial revascularization 36.33
36.33 Endoscopic transmyocardial revascularization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.34', 'Operations on vessels of heart
- Other heart revascularization
-- Percutaneous transmyocardial revascularization 36.34
36.34 Percutaneous transmyocardial revascularization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.39', 'Operations on vessels of heart
- Other heart revascularization
-- Other heart revascularization 36.39
36.39 Other heart revascularization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.9', 'Operations on vessels of heart
- Other operations on vessels of heart 36.9
36.9 Other operations on vessels of heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.91', 'Operations on vessels of heart
- Other operations on vessels of heart
-- Repair of aneurysm of coronary vessel 36.91
36.91 Repair of aneurysm of coronary vessel', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.99', 'Operations on vessels of heart
- Other operations on vessels of heart
-- Other operations on vessels of heart 36.99
36.99 Other operations on vessels of heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37', 'Other operations on heart and pericardium
37 Other operations on heart and pericardium', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.0', 'Other operations on heart and pericardium
- Pericardiocentesis 37.0
37.0 Pericardiocentesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.1', 'Other operations on heart and pericardium
- Cardiotomy and pericardiotomy 37.1
37.1 Cardiotomy and pericardiotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.10', 'Other operations on heart and pericardium
- Cardiotomy and pericardiotomy
-- Incision of heart, not otherwise specified 37.10
37.10 Incision of heart, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.11', 'Other operations on heart and pericardium
- Cardiotomy and pericardiotomy
-- Cardiotomy 37.11
37.11 Cardiotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.12', 'Other operations on heart and pericardium
- Cardiotomy and pericardiotomy
-- Pericardiotomy 37.12
37.12 Pericardiotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.2', 'Other operations on heart and pericardium
- Diagnostic procedures on heart and pericardium 37.2
37.2 Diagnostic procedures on heart and pericardium', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.20', 'Other operations on heart and pericardium
- Diagnostic procedures on heart and pericardium
-- Noninvasive programmed electrical stimulation (NIPS) 37.20
37.20 Noninvasive programmed electrical stimulation (NIPS)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.21', 'Other operations on heart and pericardium
- Diagnostic procedures on heart and pericardium
-- Right heart cardiac catheterization 37.21
37.21 Right heart cardiac catheterization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.22', 'Other operations on heart and pericardium
- Diagnostic procedures on heart and pericardium
-- Left heart cardiac catheterization 37.22
37.22 Left heart cardiac catheterization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.23', 'Other operations on heart and pericardium
- Diagnostic procedures on heart and pericardium
-- Combined right and left heart cardiac catheterization 37.23
37.23 Combined right and left heart cardiac catheterization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.24', 'Other operations on heart and pericardium
- Diagnostic procedures on heart and pericardium
-- Biopsy of pericardium 37.24
37.24 Biopsy of pericardium', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.25', 'Other operations on heart and pericardium
- Diagnostic procedures on heart and pericardium
-- Biopsy of heart 37.25
37.25 Biopsy of heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.26', 'Other operations on heart and pericardium
- Diagnostic procedures on heart and pericardium
-- Catheter based invasive electrophysiologic testing 37.26
37.26 Catheter based invasive electrophysiologic testing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.27', 'Other operations on heart and pericardium
- Diagnostic procedures on heart and pericardium
-- Cardiac mapping 37.27
37.27 Cardiac mapping', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.28', 'Other operations on heart and pericardium
- Diagnostic procedures on heart and pericardium
-- Intracardiac echocardiography 37.28
37.28 Intracardiac echocardiography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.29', 'Other operations on heart and pericardium
- Diagnostic procedures on heart and pericardium
-- Other diagnostic procedures on heart and pericardium 37.29
37.29 Other diagnostic procedures on heart and pericardium', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.3', 'Other operations on heart and pericardium
- Pericardiectomy and excision of lesion of heart 37.3
37.3 Pericardiectomy and excision of lesion of heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.31', 'Other operations on heart and pericardium
- Pericardiectomy and excision of lesion of heart
-- Pericardiectomy 37.31
37.31 Pericardiectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.32', 'Other operations on heart and pericardium
- Pericardiectomy and excision of lesion of heart
-- Excision of aneurysm of heart 37.32
37.32 Excision of aneurysm of heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.33', 'Other operations on heart and pericardium
- Pericardiectomy and excision of lesion of heart
-- Excision or destruction of other lesion or tissue of heart,open 37.33
37.33 Excision or destruction of other lesion or tissue of heart,open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.34', 'Other operations on heart and pericardium
- Pericardiectomy and excision of lesion of heart
-- Excision or destruction of other lesion or tissue of heart,other 37.34
37.34 Excision or destruction of other lesion or tissue of heart,other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.35', 'Other operations on heart and pericardium
- Pericardiectomy and excision of lesion of heart
-- Partial ventriculectomy 37.35
37.35 Partial ventriculectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.36', 'Other operations on heart and pericardium
- Pericardiectomy and excision of lesion of heart
-- Excision or destruction of left atrial appendage (LAA)  37.36
37.36 Excision or destruction of left atrial appendage (LAA) ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.4', 'Other operations on heart and pericardium
- Repair of heart and pericardium 37.4
37.4 Repair of heart and pericardium', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.41', 'Other operations on heart and pericardium
- Repair of heart and pericardium
-- Implantation of prosthetic cardiac support device around the heart 37.41
37.41 Implantation of prosthetic cardiac support device around the heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.49', 'Other operations on heart and pericardium
- Repair of heart and pericardium
-- Other repair of heart and pericardium 37.49
37.49 Other repair of heart and pericardium', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.5', 'Other operations on heart and pericardium
- Heart replacement procedures 37.5
37.5 Heart replacement procedures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.51', 'Other operations on heart and pericardium
- Heart replacement procedures
-- Heart transplantation 37.51
37.51 Heart transplantation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.52', 'Other operations on heart and pericardium
- Heart replacement procedures
-- Implantation of total internal biventricular heart replacement 37.52
37.52 Implantation of total internal biventricular heart replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.53', 'Other operations on heart and pericardium
- Heart replacement procedures
-- Replacement or repair of thoracic unit of (total) replacement heart 37.53
37.53 Replacement or repair of thoracic unit of (total) replacement heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.54', 'Other operations on heart and pericardium
- Heart replacement procedures
-- Replacement or repair of other implantable component of (total) 37.54
37.54 Replacement or repair of other implantable component of (total)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.55', 'Other operations on heart and pericardium
- Heart replacement procedures
-- Removal of internal biventricular heart replacement system  37.55
37.55 Removal of internal biventricular heart replacement system ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.6', 'Other operations on heart and pericardium
- Implantation of heart and circulatory assist system(s) 37.6
37.6 Implantation of heart and circulatory assist system(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.60', 'Other operations on heart and pericardium
- Implantation of heart and circulatory assist system(s)
-- Implantation or insertion of biventricular external heart assist 37.60
37.60 Implantation or insertion of biventricular external heart assist', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.61', 'Other operations on heart and pericardium
- Implantation of heart and circulatory assist system(s)
-- Implant of pulsation balloon 37.61
37.61 Implant of pulsation balloon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.62', 'Other operations on heart and pericardium
- Implantation of heart and circulatory assist system(s)
-- Insertion of temporary non-implantable extracorporeal circulatory 37.62
37.62 Insertion of temporary non-implantable extracorporeal circulatory', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.63', 'Other operations on heart and pericardium
- Implantation of heart and circulatory assist system(s)
-- Repair of heart assist system 37.63
37.63 Repair of heart assist system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.64', 'Other operations on heart and pericardium
- Implantation of heart and circulatory assist system(s)
-- Removal of heart assist system(s) or device(s) 37.64
37.64 Removal of heart assist system(s) or device(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.65', 'Other operations on heart and pericardium
- Implantation of heart and circulatory assist system(s)
-- Implant of single ventricular (extracorporeal) external heart assist 37.65
37.65 Implant of single ventricular (extracorporeal) external heart assist', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.66', 'Other operations on heart and pericardium
- Implantation of heart and circulatory assist system(s)
-- Insertion of implantable heart assist system 37.66
37.66 Insertion of implantable heart assist system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.67', 'Other operations on heart and pericardium
- Implantation of heart and circulatory assist system(s)
-- Implantation of cardiomyostimulation system 37.67
37.67 Implantation of cardiomyostimulation system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.68', 'Other operations on heart and pericardium
- Implantation of heart and circulatory assist system(s)
-- Insertion of percutaneous external heart assist device 37.68
37.68 Insertion of percutaneous external heart assist device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.7', 'Other operations on heart and pericardium
- Insertion, revision, replacement, and removal of leads; insertion 37.7
37.7 Insertion, revision, replacement, and removal of leads; insertion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.70', 'Other operations on heart and pericardium
- Insertion, revision, replacement, and removal of leads; insertion
-- Initial insertion of lead [electrode], not otherwise specified 37.70
37.70 Initial insertion of lead [electrode], not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.71', 'Other operations on heart and pericardium
- Insertion, revision, replacement, and removal of leads; insertion
-- Initial insertion of transvenous lead [electrode] into ventricle 37.71
37.71 Initial insertion of transvenous lead [electrode] into ventricle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.72', 'Other operations on heart and pericardium
- Insertion, revision, replacement, and removal of leads; insertion
-- Initial insertion of transvenous leads [electrodes] into atrium and 37.72
37.72 Initial insertion of transvenous leads [electrodes] into atrium and', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.73', 'Other operations on heart and pericardium
- Insertion, revision, replacement, and removal of leads; insertion
-- Initial insertion of transvenous lead [electrode] into atrium 37.73
37.73 Initial insertion of transvenous lead [electrode] into atrium', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.74', 'Other operations on heart and pericardium
- Insertion, revision, replacement, and removal of leads; insertion
-- Insertion or replacement of epicardial lead [electrode] into 37.74
37.74 Insertion or replacement of epicardial lead [electrode] into', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.75', 'Other operations on heart and pericardium
- Insertion, revision, replacement, and removal of leads; insertion
-- Revision of lead [electrode] 37.75
37.75 Revision of lead [electrode]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.76', 'Other operations on heart and pericardium
- Insertion, revision, replacement, and removal of leads; insertion
-- Replacement of transvenous atrial and/or ventricular lead(s) 37.76
37.76 Replacement of transvenous atrial and/or ventricular lead(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.77', 'Other operations on heart and pericardium
- Insertion, revision, replacement, and removal of leads; insertion
-- Removal of lead(s) [electrode] without replacement 37.77
37.77 Removal of lead(s) [electrode] without replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.78', 'Other operations on heart and pericardium
- Insertion, revision, replacement, and removal of leads; insertion
-- Insertion of temporary transvenous pacemaker system 37.78
37.78 Insertion of temporary transvenous pacemaker system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.79', 'Other operations on heart and pericardium
- Insertion, revision, replacement, and removal of leads; insertion
-- Revision or relocation of pacemaker pocket 37.79
37.79 Revision or relocation of pacemaker pocket', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.8', 'Other operations on heart and pericardium
- Insertion, replacement, removal, and revision of pacemaker 37.8
37.8 Insertion, replacement, removal, and revision of pacemaker', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.80', 'Other operations on heart and pericardium
- Insertion, replacement, removal, and revision of pacemaker
-- Insertion of permanent pacemaker, initial or replacement, type of 37.80
37.80 Insertion of permanent pacemaker, initial or replacement, type of', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.81', 'Other operations on heart and pericardium
- Insertion, replacement, removal, and revision of pacemaker
-- Initial insertion of single-chamber device, not specified as rate 37.81
37.81 Initial insertion of single-chamber device, not specified as rate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.82', 'Other operations on heart and pericardium
- Insertion, replacement, removal, and revision of pacemaker
-- Initial insertion of single-chamber device, rate responsive 37.82
37.82 Initial insertion of single-chamber device, rate responsive', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.83', 'Other operations on heart and pericardium
- Insertion, replacement, removal, and revision of pacemaker
-- Initial insertion of dual-chamber device 37.83
37.83 Initial insertion of dual-chamber device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.85', 'Other operations on heart and pericardium
- Insertion, replacement, removal, and revision of pacemaker
-- Replacement of any type pacemaker device with single-chamber 37.85
37.85 Replacement of any type pacemaker device with single-chamber', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.86', 'Other operations on heart and pericardium
- Insertion, replacement, removal, and revision of pacemaker
-- Replacement of any type of pacemaker device with single-chamber 37.86
37.86 Replacement of any type of pacemaker device with single-chamber', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.87', 'Other operations on heart and pericardium
- Insertion, replacement, removal, and revision of pacemaker
-- Replacement of any type pacemaker device with dual-chamber device 37.87
37.87 Replacement of any type pacemaker device with dual-chamber device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.89', 'Other operations on heart and pericardium
- Insertion, replacement, removal, and revision of pacemaker
-- Revision or removal of pacemaker device 37.89
37.89 Revision or removal of pacemaker device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.9', 'Other operations on heart and pericardium
- Other operations on heart and pericardium 37.9
37.9 Other operations on heart and pericardium', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.90', 'Other operations on heart and pericardium
- Other operations on heart and pericardium
-- Insertion of left atrial appendage device 37.90
37.90 Insertion of left atrial appendage device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.91', 'Other operations on heart and pericardium
- Other operations on heart and pericardium
-- Open chest cardiac massage 37.91
37.91 Open chest cardiac massage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.92', 'Other operations on heart and pericardium
- Other operations on heart and pericardium
-- Injection of therapeutic substance into heart 37.92
37.92 Injection of therapeutic substance into heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.93', 'Other operations on heart and pericardium
- Other operations on heart and pericardium
-- Injection of therapeutic substance into pericardium 37.93
37.93 Injection of therapeutic substance into pericardium', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.94', 'Other operations on heart and pericardium
- Other operations on heart and pericardium
-- Implantation or replacement of automatic cardioverter/ 37.94
37.94 Implantation or replacement of automatic cardioverter/', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.95', 'Other operations on heart and pericardium
- Other operations on heart and pericardium
-- Implantation of automatic cardioverter/defibrillator lead(s) only 37.95
37.95 Implantation of automatic cardioverter/defibrillator lead(s) only', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.96', 'Other operations on heart and pericardium
- Other operations on heart and pericardium
-- Implantation of automatic cardioverter/defibrillator pulse 37.96
37.96 Implantation of automatic cardioverter/defibrillator pulse', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.97', 'Other operations on heart and pericardium
- Other operations on heart and pericardium
-- Replacement of automatic cardioverter/defibrillator lead(s) only 37.97
37.97 Replacement of automatic cardioverter/defibrillator lead(s) only', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.98', 'Other operations on heart and pericardium
- Other operations on heart and pericardium
-- Replacement of automatic cardioverter/defibrillator pulse 37.98
37.98 Replacement of automatic cardioverter/defibrillator pulse', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.99', 'Other operations on heart and pericardium
- Other operations on heart and pericardium
-- Other 37.99
37.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38', 'Incision, excision, and occlusion of vessels
38 Incision, excision, and occlusion of vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.0', 'Incision, excision, and occlusion of vessels
- Incision of vessel  38.0
38.0 Incision of vessel ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.1', 'Incision, excision, and occlusion of vessels
- Endarterectomy  38.1
38.1 Endarterectomy ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.2', 'Incision, excision, and occlusion of vessels
- Diagnostic procedures on blood vessels 38.2
38.2 Diagnostic procedures on blood vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.21', 'Incision, excision, and occlusion of vessels
- Diagnostic procedures on blood vessels
-- Biopsy of blood vessel 38.21
38.21 Biopsy of blood vessel', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.22', 'Incision, excision, and occlusion of vessels
- Diagnostic procedures on blood vessels
-- Percutaneous angioscopy 38.22
38.22 Percutaneous angioscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.23', 'Incision, excision, and occlusion of vessels
- Diagnostic procedures on blood vessels
-- Intravascular spectroscopy  38.23
38.23 Intravascular spectroscopy ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.24', 'Incision, excision, and occlusion of vessels
- Diagnostic procedures on blood vessels
-- Intravascular imaging of coronary vessel(s) by optical coherence 38.24
38.24 Intravascular imaging of coronary vessel(s) by optical coherence', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.25', 'Incision, excision, and occlusion of vessels
- Diagnostic procedures on blood vessels
-- Intravascular imaging of non-coronary vessel(s) by optical 38.25
38.25 Intravascular imaging of non-coronary vessel(s) by optical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.29', 'Incision, excision, and occlusion of vessels
- Diagnostic procedures on blood vessels
-- Other diagnostic procedures on blood vessels 38.29
38.29 Other diagnostic procedures on blood vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.3', 'Incision, excision, and occlusion of vessels
- Resection of vessel with anastomosis  38.3
38.3 Resection of vessel with anastomosis ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.4', 'Incision, excision, and occlusion of vessels
- Resection of vessel with replacement  38.4
38.4 Resection of vessel with replacement ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.5', 'Incision, excision, and occlusion of vessels
- Ligation and stripping of varicose veins  38.5
38.5 Ligation and stripping of varicose veins ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.6', 'Incision, excision, and occlusion of vessels
- Other excision of vessel  38.6
38.6 Other excision of vessel ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.7', 'Incision, excision, and occlusion of vessels
- Interruption of the vena cava 38.7
38.7 Interruption of the vena cava', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.8', 'Incision, excision, and occlusion of vessels
- Other surgical occlusion of vessels  38.8
38.8 Other surgical occlusion of vessels ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.9', 'Incision, excision, and occlusion of vessels
- Puncture of vessel 38.9
38.9 Puncture of vessel', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.91', 'Incision, excision, and occlusion of vessels
- Puncture of vessel
-- Arterial catheterization 38.91
38.91 Arterial catheterization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.92', 'Incision, excision, and occlusion of vessels
- Puncture of vessel
-- Umbilical vein catheterization 38.92
38.92 Umbilical vein catheterization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.93', 'Incision, excision, and occlusion of vessels
- Puncture of vessel
-- Venous catheterization, not elsewhere classified 38.93
38.93 Venous catheterization, not elsewhere classified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.94', 'Incision, excision, and occlusion of vessels
- Puncture of vessel
-- Venous cutdown 38.94
38.94 Venous cutdown', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.95', 'Incision, excision, and occlusion of vessels
- Puncture of vessel
-- Venous catheterization for renal dialysis 38.95
38.95 Venous catheterization for renal dialysis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.98', 'Incision, excision, and occlusion of vessels
- Puncture of vessel
-- Other puncture of artery 38.98
38.98 Other puncture of artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.99', 'Incision, excision, and occlusion of vessels
- Puncture of vessel
-- Other puncture of vein 38.99
38.99 Other puncture of vein', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39', 'Other operations on vessels
39 Other operations on vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.0', 'Other operations on vessels
- Systemic to pulmonary artery shunt 39.0
39.0 Systemic to pulmonary artery shunt', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.1', 'Other operations on vessels
- Intra-abdominal venous shunt 39.1
39.1 Intra-abdominal venous shunt', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.2', 'Other operations on vessels
- Other shunt or vascular bypass 39.2
39.2 Other shunt or vascular bypass', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.21', 'Other operations on vessels
- Other shunt or vascular bypass
-- Caval-pulmonary artery anastomosis 39.21
39.21 Caval-pulmonary artery anastomosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.22', 'Other operations on vessels
- Other shunt or vascular bypass
-- Aorta-subclavian-carotid bypass 39.22
39.22 Aorta-subclavian-carotid bypass', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.23', 'Other operations on vessels
- Other shunt or vascular bypass
-- Other intrathoracic vascular shunt or bypass 39.23
39.23 Other intrathoracic vascular shunt or bypass', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.24', 'Other operations on vessels
- Other shunt or vascular bypass
-- Aorta-renal bypass 39.24
39.24 Aorta-renal bypass', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.25', 'Other operations on vessels
- Other shunt or vascular bypass
-- Aorta-iliac-femoral bypass 39.25
39.25 Aorta-iliac-femoral bypass', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.26', 'Other operations on vessels
- Other shunt or vascular bypass
-- Other intra-abdominal vascular shunt or bypass 39.26
39.26 Other intra-abdominal vascular shunt or bypass', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.27', 'Other operations on vessels
- Other shunt or vascular bypass
-- Arteriovenostomy for renal dialysis 39.27
39.27 Arteriovenostomy for renal dialysis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.28', 'Other operations on vessels
- Other shunt or vascular bypass
-- Extracranial-intracranial (EC-IC) vascular bypass 39.28
39.28 Extracranial-intracranial (EC-IC) vascular bypass', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.29', 'Other operations on vessels
- Other shunt or vascular bypass
-- Other (peripheral) vascular shunt or bypass 39.29
39.29 Other (peripheral) vascular shunt or bypass', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.3', 'Other operations on vessels
- Suture of vessel 39.3
39.3 Suture of vessel', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.30', 'Other operations on vessels
- Suture of vessel
-- Suture of unspecified blood vessel 39.30
39.30 Suture of unspecified blood vessel', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.31', 'Other operations on vessels
- Suture of vessel
-- Suture of artery 39.31
39.31 Suture of artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.32', 'Other operations on vessels
- Suture of vessel
-- Suture of vein 39.32
39.32 Suture of vein', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.4', 'Other operations on vessels
- Revision of vascular procedure 39.4
39.4 Revision of vascular procedure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.41', 'Other operations on vessels
- Revision of vascular procedure
-- Control of hemorrhage following vascular surgery 39.41
39.41 Control of hemorrhage following vascular surgery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.42', 'Other operations on vessels
- Revision of vascular procedure
-- Revision of arteriovenous shunt for renal dialysis 39.42
39.42 Revision of arteriovenous shunt for renal dialysis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.43', 'Other operations on vessels
- Revision of vascular procedure
-- Removal of arteriovenous shunt for renal dialysis 39.43
39.43 Removal of arteriovenous shunt for renal dialysis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.49', 'Other operations on vessels
- Revision of vascular procedure
-- Other revision of vascular procedure 39.49
39.49 Other revision of vascular procedure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.5', 'Other operations on vessels
- Other repair of vessels 39.5
39.5 Other repair of vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.50', 'Other operations on vessels
- Other repair of vessels
-- Angioplasty or atherectomy of other non-coronary vessel(s) 39.50
39.50 Angioplasty or atherectomy of other non-coronary vessel(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.51', 'Other operations on vessels
- Other repair of vessels
-- Clipping of aneurysm 39.51
39.51 Clipping of aneurysm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.52', 'Other operations on vessels
- Other repair of vessels
-- Other repair of aneurysm 39.52
39.52 Other repair of aneurysm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.53', 'Other operations on vessels
- Other repair of vessels
-- Repair of arteriovenous fistula 39.53
39.53 Repair of arteriovenous fistula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.54', 'Other operations on vessels
- Other repair of vessels
-- Re-entry operation (aorta) 39.54
39.54 Re-entry operation (aorta)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.55', 'Other operations on vessels
- Other repair of vessels
-- Reimplantation of aberrant renal vessel 39.55
39.55 Reimplantation of aberrant renal vessel', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.56', 'Other operations on vessels
- Other repair of vessels
-- Repair of blood vessel with tissue patch graft 39.56
39.56 Repair of blood vessel with tissue patch graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.57', 'Other operations on vessels
- Other repair of vessels
-- Repair of blood vessel with synthetic patch graft 39.57
39.57 Repair of blood vessel with synthetic patch graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.58', 'Other operations on vessels
- Other repair of vessels
-- Repair of blood vessel with unspecified type of patch graft 39.58
39.58 Repair of blood vessel with unspecified type of patch graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.59', 'Other operations on vessels
- Other repair of vessels
-- Other repair of vessel 39.59
39.59 Other repair of vessel', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.6', 'Other operations on vessels
- Extracorporeal circulation and procedures auxiliary to heart 39.6
39.6 Extracorporeal circulation and procedures auxiliary to heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.61', 'Other operations on vessels
- Extracorporeal circulation and procedures auxiliary to heart
-- Extracorporeal circulation auxiliary to open heart surgery 39.61
39.61 Extracorporeal circulation auxiliary to open heart surgery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.62', 'Other operations on vessels
- Extracorporeal circulation and procedures auxiliary to heart
-- Hypothermia (systemic) incidental to open heart surgery 39.62
39.62 Hypothermia (systemic) incidental to open heart surgery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.63', 'Other operations on vessels
- Extracorporeal circulation and procedures auxiliary to heart
-- Cardioplegia 39.63
39.63 Cardioplegia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.64', 'Other operations on vessels
- Extracorporeal circulation and procedures auxiliary to heart
-- Intraoperative cardiac pacemaker 39.64
39.64 Intraoperative cardiac pacemaker', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.65', 'Other operations on vessels
- Extracorporeal circulation and procedures auxiliary to heart
-- Extracorporeal membrane oxygenation [ECMO] 39.65
39.65 Extracorporeal membrane oxygenation [ECMO]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.66', 'Other operations on vessels
- Extracorporeal circulation and procedures auxiliary to heart
-- Percutaneous cardiopulmonary bypass 39.66
39.66 Percutaneous cardiopulmonary bypass', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.7', 'Other operations on vessels
- Endovascular procedures on vessel (s) 39.7
39.7 Endovascular procedures on vessel (s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.71', 'Other operations on vessels
- Endovascular procedures on vessel (s)
-- Endovascular implantation of graft in abdominal aorta 39.71
39.71 Endovascular implantation of graft in abdominal aorta', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.72', 'Other operations on vessels
- Endovascular procedures on vessel (s)
-- Endovascular embolization or occlusion of head and neck vessels 39.72
39.72 Endovascular embolization or occlusion of head and neck vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.73', 'Other operations on vessels
- Endovascular procedures on vessel (s)
-- Endovascular implantation of graft in thoracic aorta 39.73
39.73 Endovascular implantation of graft in thoracic aorta', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.74', 'Other operations on vessels
- Endovascular procedures on vessel (s)
-- Endovascular removal of obstruction from head and neck vessel(s) 39.74
39.74 Endovascular removal of obstruction from head and neck vessel(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.75', 'Other operations on vessels
- Endovascular procedures on vessel (s)
-- Endovascular embolization or occlusion of vessel(s) of head or 39.75
39.75 Endovascular embolization or occlusion of vessel(s) of head or', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.76', 'Other operations on vessels
- Endovascular procedures on vessel (s)
-- Endovascular embolization or occlusion of vessel(s) of head or 39.76
39.76 Endovascular embolization or occlusion of vessel(s) of head or', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.79', 'Other operations on vessels
- Endovascular procedures on vessel (s)
-- Other endovascular procedures on other vessels 39.79
39.79 Other endovascular procedures on other vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.8', 'Other operations on vessels
- Operations on carotid body, carotid sinus and other vascular 39.8
39.8 Operations on carotid body, carotid sinus and other vascular', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.9', 'Other operations on vessels
- Other operations on vessels 39.9
39.9 Other operations on vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.90', 'Other operations on vessels
- Other operations on vessels
-- Insertion of non-drug-eluting peripheral vessel (non-coronary) 39.90
39.90 Insertion of non-drug-eluting peripheral vessel (non-coronary)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.91', 'Other operations on vessels
- Other operations on vessels
-- Freeing of vessel 39.91
39.91 Freeing of vessel', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.92', 'Other operations on vessels
- Other operations on vessels
-- Injection of sclerosing agent into vein 39.92
39.92 Injection of sclerosing agent into vein', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.93', 'Other operations on vessels
- Other operations on vessels
-- Insertion of vessel-to-vessel cannula 39.93
39.93 Insertion of vessel-to-vessel cannula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.94', 'Other operations on vessels
- Other operations on vessels
-- Replacement of vessel-to-vessel cannula 39.94
39.94 Replacement of vessel-to-vessel cannula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.95', 'Other operations on vessels
- Other operations on vessels
-- Hemodialysis 39.95
39.95 Hemodialysis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.96', 'Other operations on vessels
- Other operations on vessels
-- Total body perfusion 39.96
39.96 Total body perfusion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.97', 'Other operations on vessels
- Other operations on vessels
-- Other perfusion 39.97
39.97 Other perfusion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.98', 'Other operations on vessels
- Other operations on vessels
-- Control of hemorrhage, not otherwise specified 39.98
39.98 Control of hemorrhage, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.99', 'Other operations on vessels
- Other operations on vessels
-- Other operations on vessels 39.99
39.99 Other operations on vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40', 'Operations on lymphatic system
40 Operations on lymphatic system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.0', 'Operations on lymphatic system
- Incision of lymphatic structures 40.0
40.0 Incision of lymphatic structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.1', 'Operations on lymphatic system
- Diagnostic procedures on lymphatic structures 40.1
40.1 Diagnostic procedures on lymphatic structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.11', 'Operations on lymphatic system
- Diagnostic procedures on lymphatic structures
-- Biopsy of lymphatic structure 40.11
40.11 Biopsy of lymphatic structure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.19', 'Operations on lymphatic system
- Diagnostic procedures on lymphatic structures
-- Other diagnostic procedures on lymphatic structures 40.19
40.19 Other diagnostic procedures on lymphatic structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.2', 'Operations on lymphatic system
- Simple excision of lymphatic structure 40.2
40.2 Simple excision of lymphatic structure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.21', 'Operations on lymphatic system
- Simple excision of lymphatic structure
-- Excision of deep cervical lymph node 40.21
40.21 Excision of deep cervical lymph node', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.22', 'Operations on lymphatic system
- Simple excision of lymphatic structure
-- Excision of internal mammary lymph node 40.22
40.22 Excision of internal mammary lymph node', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.23', 'Operations on lymphatic system
- Simple excision of lymphatic structure
-- Excision of axillary lymph node 40.23
40.23 Excision of axillary lymph node', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.24', 'Operations on lymphatic system
- Simple excision of lymphatic structure
-- Excision of inguinal lymph node 40.24
40.24 Excision of inguinal lymph node', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.29', 'Operations on lymphatic system
- Simple excision of lymphatic structure
-- Simple excision of other lymphatic structure 40.29
40.29 Simple excision of other lymphatic structure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.3', 'Operations on lymphatic system
- Regional lymph node excision 40.3
40.3 Regional lymph node excision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.4', 'Operations on lymphatic system
- Radical excision of cervical lymph nodes 40.4
40.4 Radical excision of cervical lymph nodes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.40', 'Operations on lymphatic system
- Radical excision of cervical lymph nodes
-- Radical neck dissection, not otherwise specified 40.40
40.40 Radical neck dissection, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.41', 'Operations on lymphatic system
- Radical excision of cervical lymph nodes
-- Radical neck dissection, unilateral 40.41
40.41 Radical neck dissection, unilateral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.42', 'Operations on lymphatic system
- Radical excision of cervical lymph nodes
-- Radical neck dissection, bilateral 40.42
40.42 Radical neck dissection, bilateral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.5', 'Operations on lymphatic system
- Radical excision of other lymph nodes 40.5
40.5 Radical excision of other lymph nodes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.50', 'Operations on lymphatic system
- Radical excision of other lymph nodes
-- Radical excision of lymph nodes, not otherwise specified 40.50
40.50 Radical excision of lymph nodes, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.51', 'Operations on lymphatic system
- Radical excision of other lymph nodes
-- Radical excision of axillary lymph nodes 40.51
40.51 Radical excision of axillary lymph nodes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.52', 'Operations on lymphatic system
- Radical excision of other lymph nodes
-- Radical excision of periaortic lymph nodes 40.52
40.52 Radical excision of periaortic lymph nodes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.53', 'Operations on lymphatic system
- Radical excision of other lymph nodes
-- Radical excision of iliac lymph nodes 40.53
40.53 Radical excision of iliac lymph nodes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.54', 'Operations on lymphatic system
- Radical excision of other lymph nodes
-- Radical groin dissection 40.54
40.54 Radical groin dissection', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.59', 'Operations on lymphatic system
- Radical excision of other lymph nodes
-- Radical excision of other lymph nodes 40.59
40.59 Radical excision of other lymph nodes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.6', 'Operations on lymphatic system
- Operations on thoracic duct 40.6
40.6 Operations on thoracic duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.61', 'Operations on lymphatic system
- Operations on thoracic duct
-- Cannulation of thoracic duct 40.61
40.61 Cannulation of thoracic duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.62', 'Operations on lymphatic system
- Operations on thoracic duct
-- Fistulization of thoracic duct 40.62
40.62 Fistulization of thoracic duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.63', 'Operations on lymphatic system
- Operations on thoracic duct
-- Closure of fistula of thoracic duct 40.63
40.63 Closure of fistula of thoracic duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.64', 'Operations on lymphatic system
- Operations on thoracic duct
-- Ligation of thoracic duct 40.64
40.64 Ligation of thoracic duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.69', 'Operations on lymphatic system
- Operations on thoracic duct
-- Other operations on thoracic duct 40.69
40.69 Other operations on thoracic duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.9', 'Operations on lymphatic system
- Other operations on lymphatic structures 40.9
40.9 Other operations on lymphatic structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41', 'Operations on bone marrow and spleen
41 Operations on bone marrow and spleen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.0', 'Operations on bone marrow and spleen
- Bone marrow or hematopoietic stem cell transplant 41.0
41.0 Bone marrow or hematopoietic stem cell transplant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.00', 'Operations on bone marrow and spleen
- Bone marrow or hematopoietic stem cell transplant
-- Bone marrow transplant, not otherwise specified 41.00
41.00 Bone marrow transplant, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.01', 'Operations on bone marrow and spleen
- Bone marrow or hematopoietic stem cell transplant
-- Autologous bone marrow transplant without purging 41.01
41.01 Autologous bone marrow transplant without purging', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.02', 'Operations on bone marrow and spleen
- Bone marrow or hematopoietic stem cell transplant
-- Allogeneic bone marrow transplant with purging 41.02
41.02 Allogeneic bone marrow transplant with purging', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.03', 'Operations on bone marrow and spleen
- Bone marrow or hematopoietic stem cell transplant
-- Allogeneic bone marrow transplant without purging 41.03
41.03 Allogeneic bone marrow transplant without purging', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.04', 'Operations on bone marrow and spleen
- Bone marrow or hematopoietic stem cell transplant
-- Autologous hematopoietic stem cell transplant without purging 41.04
41.04 Autologous hematopoietic stem cell transplant without purging', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.05', 'Operations on bone marrow and spleen
- Bone marrow or hematopoietic stem cell transplant
-- Allogeneic hematopoietic stem cell transplant without purging 41.05
41.05 Allogeneic hematopoietic stem cell transplant without purging', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.06', 'Operations on bone marrow and spleen
- Bone marrow or hematopoietic stem cell transplant
-- Cord blood stem cell transplant 41.06
41.06 Cord blood stem cell transplant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.07', 'Operations on bone marrow and spleen
- Bone marrow or hematopoietic stem cell transplant
-- Autologous hematopoietic stem cell transplant with purging 41.07
41.07 Autologous hematopoietic stem cell transplant with purging', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.08', 'Operations on bone marrow and spleen
- Bone marrow or hematopoietic stem cell transplant
-- Allogeneic hematopoietic stem cell transplant 41.08
41.08 Allogeneic hematopoietic stem cell transplant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.09', 'Operations on bone marrow and spleen
- Bone marrow or hematopoietic stem cell transplant
-- Autologous bone marrow transplant with purging 41.09
41.09 Autologous bone marrow transplant with purging', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.1', 'Operations on bone marrow and spleen
- Puncture of spleen 41.1
41.1 Puncture of spleen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.2', 'Operations on bone marrow and spleen
- Splenotomy 41.2
41.2 Splenotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.3', 'Operations on bone marrow and spleen
- Diagnostic procedures on bone marrow and spleen 41.3
41.3 Diagnostic procedures on bone marrow and spleen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.31', 'Operations on bone marrow and spleen
- Diagnostic procedures on bone marrow and spleen
-- Biopsy of bone marrow 41.31
41.31 Biopsy of bone marrow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.32', 'Operations on bone marrow and spleen
- Diagnostic procedures on bone marrow and spleen
-- Closed [aspiration] [percutaneous] biopsy of spleen 41.32
41.32 Closed [aspiration] [percutaneous] biopsy of spleen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.33', 'Operations on bone marrow and spleen
- Diagnostic procedures on bone marrow and spleen
-- Open biopsy of spleen 41.33
41.33 Open biopsy of spleen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.38', 'Operations on bone marrow and spleen
- Diagnostic procedures on bone marrow and spleen
-- Other diagnostic procedures on bone marrow 41.38
41.38 Other diagnostic procedures on bone marrow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.39', 'Operations on bone marrow and spleen
- Diagnostic procedures on bone marrow and spleen
-- Other diagnostic procedures on spleen 41.39
41.39 Other diagnostic procedures on spleen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.4', 'Operations on bone marrow and spleen
- Excision or destruction of lesion or tissue of spleen 41.4
41.4 Excision or destruction of lesion or tissue of spleen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.41', 'Operations on bone marrow and spleen
- Excision or destruction of lesion or tissue of spleen
-- Marsupialization of splenic cyst 41.41
41.41 Marsupialization of splenic cyst', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.42', 'Operations on bone marrow and spleen
- Excision or destruction of lesion or tissue of spleen
-- Excision of lesion or tissue of spleen 41.42
41.42 Excision of lesion or tissue of spleen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.43', 'Operations on bone marrow and spleen
- Excision or destruction of lesion or tissue of spleen
-- Partial splenectomy 41.43
41.43 Partial splenectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.5', 'Operations on bone marrow and spleen
- Total splenectomy 41.5
41.5 Total splenectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.9', 'Operations on bone marrow and spleen
- Other operations on spleen and bone marrow 41.9
41.9 Other operations on spleen and bone marrow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.91', 'Operations on bone marrow and spleen
- Other operations on spleen and bone marrow
-- Aspiration of bone marrow from donor for transplant 41.91
41.91 Aspiration of bone marrow from donor for transplant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.92', 'Operations on bone marrow and spleen
- Other operations on spleen and bone marrow
-- Injection into bone marrow 41.92
41.92 Injection into bone marrow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.93', 'Operations on bone marrow and spleen
- Other operations on spleen and bone marrow
-- Excision of accessory spleen 41.93
41.93 Excision of accessory spleen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.94', 'Operations on bone marrow and spleen
- Other operations on spleen and bone marrow
-- Transplantation of spleen 41.94
41.94 Transplantation of spleen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.95', 'Operations on bone marrow and spleen
- Other operations on spleen and bone marrow
-- Repair and plastic operations on spleen 41.95
41.95 Repair and plastic operations on spleen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.98', 'Operations on bone marrow and spleen
- Other operations on spleen and bone marrow
-- Other operations on bone marrow 41.98
41.98 Other operations on bone marrow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.99', 'Operations on bone marrow and spleen
- Other operations on spleen and bone marrow
-- Other operations on spleen 41.99
41.99 Other operations on spleen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42', 'Operations on esophagus
42 Operations on esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.0', 'Operations on esophagus
- Esophagotomy 42.0
42.0 Esophagotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.01', 'Operations on esophagus
- Esophagotomy
-- Incision of esophageal web 42.01
42.01 Incision of esophageal web', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.09', 'Operations on esophagus
- Esophagotomy
-- Other incision of esophagus 42.09
42.09 Other incision of esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.1', 'Operations on esophagus
- Esophagostomy 42.1
42.1 Esophagostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.10', 'Operations on esophagus
- Esophagostomy
-- Esophagostomy, not otherwise specified 42.10
42.10 Esophagostomy, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.11', 'Operations on esophagus
- Esophagostomy
-- Cervical esophagostomy 42.11
42.11 Cervical esophagostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.12', 'Operations on esophagus
- Esophagostomy
-- Exteriorization of esophageal pouch 42.12
42.12 Exteriorization of esophageal pouch', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.19', 'Operations on esophagus
- Esophagostomy
-- Other external fistulization of esophagus 42.19
42.19 Other external fistulization of esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.2', 'Operations on esophagus
- Diagnostic procedures on esophagus 42.2
42.2 Diagnostic procedures on esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.21', 'Operations on esophagus
- Diagnostic procedures on esophagus
-- Operative esophagoscopy by incision 42.21
42.21 Operative esophagoscopy by incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.22', 'Operations on esophagus
- Diagnostic procedures on esophagus
-- Esophagoscopy through artificial stoma 42.22
42.22 Esophagoscopy through artificial stoma', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.23', 'Operations on esophagus
- Diagnostic procedures on esophagus
-- Other esophagoscopy 42.23
42.23 Other esophagoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.24', 'Operations on esophagus
- Diagnostic procedures on esophagus
-- Closed [endoscopic] biopsy of esophagus 42.24
42.24 Closed [endoscopic] biopsy of esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.25', 'Operations on esophagus
- Diagnostic procedures on esophagus
-- Open biopsy of esophagus 42.25
42.25 Open biopsy of esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.29', 'Operations on esophagus
- Diagnostic procedures on esophagus
-- Other diagnostic procedures on esophagus 42.29
42.29 Other diagnostic procedures on esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.3', 'Operations on esophagus
- Local excision or destruction of lesion or tissue of esophagus 42.3
42.3 Local excision or destruction of lesion or tissue of esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.31', 'Operations on esophagus
- Local excision or destruction of lesion or tissue of esophagus
-- Local excision of esophageal diverticulum 42.31
42.31 Local excision of esophageal diverticulum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.32', 'Operations on esophagus
- Local excision or destruction of lesion or tissue of esophagus
-- Local excision of other lesion or tissue of esophagus 42.32
42.32 Local excision of other lesion or tissue of esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.33', 'Operations on esophagus
- Local excision or destruction of lesion or tissue of esophagus
-- Endoscopic excision or destruction of lesion or tissue of 42.33
42.33 Endoscopic excision or destruction of lesion or tissue of', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.39', 'Operations on esophagus
- Local excision or destruction of lesion or tissue of esophagus
-- Other destruction of lesion or tissue of esophagus 42.39
42.39 Other destruction of lesion or tissue of esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.4', 'Operations on esophagus
- Excision of esophagus 42.4
42.4 Excision of esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.40', 'Operations on esophagus
- Excision of esophagus
-- Esophagectomy, not otherwise specified 42.40
42.40 Esophagectomy, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.41', 'Operations on esophagus
- Excision of esophagus
-- Partial esophagectomy 42.41
42.41 Partial esophagectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.42', 'Operations on esophagus
- Excision of esophagus
-- Total esophagectomy 42.42
42.42 Total esophagectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.5', 'Operations on esophagus
- Intrathoracic anastomosis of esophagus 42.5
42.5 Intrathoracic anastomosis of esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.51', 'Operations on esophagus
- Intrathoracic anastomosis of esophagus
-- Intrathoracic esophagoesophagostomy 42.51
42.51 Intrathoracic esophagoesophagostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.52', 'Operations on esophagus
- Intrathoracic anastomosis of esophagus
-- Intrathoracic esophagogastrostomy 42.52
42.52 Intrathoracic esophagogastrostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.53', 'Operations on esophagus
- Intrathoracic anastomosis of esophagus
-- Intrathoracic esophageal anastomosis with interposition of small 42.53
42.53 Intrathoracic esophageal anastomosis with interposition of small', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.54', 'Operations on esophagus
- Intrathoracic anastomosis of esophagus
-- Other intrathoracic esophagoenterostomy 42.54
42.54 Other intrathoracic esophagoenterostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.55', 'Operations on esophagus
- Intrathoracic anastomosis of esophagus
-- Intrathoracic esophageal anastomosis with interposition of colon 42.55
42.55 Intrathoracic esophageal anastomosis with interposition of colon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.56', 'Operations on esophagus
- Intrathoracic anastomosis of esophagus
-- Other intrathoracic esophagocolostomy 42.56
42.56 Other intrathoracic esophagocolostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.58', 'Operations on esophagus
- Intrathoracic anastomosis of esophagus
-- Intrathoracic esophageal anastomosis with other interposition 42.58
42.58 Intrathoracic esophageal anastomosis with other interposition', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.59', 'Operations on esophagus
- Intrathoracic anastomosis of esophagus
-- Other intrathoracic anastomosis of esophagus 42.59
42.59 Other intrathoracic anastomosis of esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.6', 'Operations on esophagus
- Antesternal anastomosis of esophagus 42.6
42.6 Antesternal anastomosis of esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.61', 'Operations on esophagus
- Antesternal anastomosis of esophagus
-- Antesternal esophagoesophagostomy 42.61
42.61 Antesternal esophagoesophagostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.62', 'Operations on esophagus
- Antesternal anastomosis of esophagus
-- Antesternal esophagogastrostomy 42.62
42.62 Antesternal esophagogastrostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.63', 'Operations on esophagus
- Antesternal anastomosis of esophagus
-- Antesternal esophageal anastomosis with interposition of small 42.63
42.63 Antesternal esophageal anastomosis with interposition of small', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.64', 'Operations on esophagus
- Antesternal anastomosis of esophagus
-- Other antesternal esophagoenterostomy 42.64
42.64 Other antesternal esophagoenterostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.65', 'Operations on esophagus
- Antesternal anastomosis of esophagus
-- Antesternal esophageal anastomosis with interposition of colon 42.65
42.65 Antesternal esophageal anastomosis with interposition of colon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.66', 'Operations on esophagus
- Antesternal anastomosis of esophagus
-- Other antesternal esophagocolostomy 42.66
42.66 Other antesternal esophagocolostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.68', 'Operations on esophagus
- Antesternal anastomosis of esophagus
-- Other antesternal esophageal anastomosis with interposition 42.68
42.68 Other antesternal esophageal anastomosis with interposition', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.69', 'Operations on esophagus
- Antesternal anastomosis of esophagus
-- Other antesternal anastomosis of esophagus 42.69
42.69 Other antesternal anastomosis of esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.7', 'Operations on esophagus
- Esophagomyotomy 42.7
42.7 Esophagomyotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.8', 'Operations on esophagus
- Other repair of esophagus 42.8
42.8 Other repair of esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.81', 'Operations on esophagus
- Other repair of esophagus
-- Insertion of permanent tube into esophagus 42.81
42.81 Insertion of permanent tube into esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.82', 'Operations on esophagus
- Other repair of esophagus
-- Suture of laceration of esophagus 42.82
42.82 Suture of laceration of esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.83', 'Operations on esophagus
- Other repair of esophagus
-- Closure of esophagostomy 42.83
42.83 Closure of esophagostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.84', 'Operations on esophagus
- Other repair of esophagus
-- Repair of esophageal fistula, not elsewhere classified 42.84
42.84 Repair of esophageal fistula, not elsewhere classified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.85', 'Operations on esophagus
- Other repair of esophagus
-- Repair of esophageal stricture 42.85
42.85 Repair of esophageal stricture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.86', 'Operations on esophagus
- Other repair of esophagus
-- Production of subcutaneous tunnel without esophageal 42.86
42.86 Production of subcutaneous tunnel without esophageal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.87', 'Operations on esophagus
- Other repair of esophagus
-- Other graft of esophagus 42.87
42.87 Other graft of esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.89', 'Operations on esophagus
- Other repair of esophagus
-- Other repair of esophagus 42.89
42.89 Other repair of esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.9', 'Operations on esophagus
- Other operations on esophagus 42.9
42.9 Other operations on esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.91', 'Operations on esophagus
- Other operations on esophagus
-- Ligation of esophageal varices 42.91
42.91 Ligation of esophageal varices', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.92', 'Operations on esophagus
- Other operations on esophagus
-- Dilation of esophagus 42.92
42.92 Dilation of esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.99', 'Operations on esophagus
- Other operations on esophagus
-- Other 42.99
42.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43', 'Incision and excision of stomach
43 Incision and excision of stomach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.0', 'Incision and excision of stomach
- Gastrotomy 43.0
43.0 Gastrotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.1', 'Incision and excision of stomach
- Gastrostomy 43.1
43.1 Gastrostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.11', 'Incision and excision of stomach
- Gastrostomy
-- Percutaneous [endoscopic] gastrostomy [PEG] 43.11
43.11 Percutaneous [endoscopic] gastrostomy [PEG]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.19', 'Incision and excision of stomach
- Gastrostomy
-- Other gastrostomy 43.19
43.19 Other gastrostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.3', 'Incision and excision of stomach
- Pyloromyotomy 43.3
43.3 Pyloromyotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.4', 'Incision and excision of stomach
- Local excision or destruction of lesion or tissue of stomach 43.4
43.4 Local excision or destruction of lesion or tissue of stomach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.41', 'Incision and excision of stomach
- Local excision or destruction of lesion or tissue of stomach
-- Endoscopic excision or destruction of lesion or tissue of stomach 43.41
43.41 Endoscopic excision or destruction of lesion or tissue of stomach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.42', 'Incision and excision of stomach
- Local excision or destruction of lesion or tissue of stomach
-- Local excision of other lesion or tissue of stomach 43.42
43.42 Local excision of other lesion or tissue of stomach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.49', 'Incision and excision of stomach
- Local excision or destruction of lesion or tissue of stomach
-- Other destruction of lesion or tissue of stomach 43.49
43.49 Other destruction of lesion or tissue of stomach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.5', 'Incision and excision of stomach
- Partial gastrectomy with anastomosis to esophagus 43.5
43.5 Partial gastrectomy with anastomosis to esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.6', 'Incision and excision of stomach
- Partial gastrectomy with anastomosis to duodenum 43.6
43.6 Partial gastrectomy with anastomosis to duodenum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.7', 'Incision and excision of stomach
- Partial gastrectomy with anastomosis to jejunum 43.7
43.7 Partial gastrectomy with anastomosis to jejunum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.8', 'Incision and excision of stomach
- Other partial gastrectomy 43.8
43.8 Other partial gastrectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.81', 'Incision and excision of stomach
- Other partial gastrectomy
-- Partial gastrectomy with jejunal transposition 43.81
43.81 Partial gastrectomy with jejunal transposition', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.89', 'Incision and excision of stomach
- Other partial gastrectomy
-- Other 43.89
43.89 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.9', 'Incision and excision of stomach
- Total gastrectomy 43.9
43.9 Total gastrectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.91', 'Incision and excision of stomach
- Total gastrectomy
-- Total gastrectomy with intestinal interposition 43.91
43.91 Total gastrectomy with intestinal interposition', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.99', 'Incision and excision of stomach
- Total gastrectomy
-- Other total gastrectomy 43.99
43.99 Other total gastrectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44', 'Other operations on stomach
44 Other operations on stomach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.0', 'Other operations on stomach
- Vagotomy 44.0
44.0 Vagotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.00', 'Other operations on stomach
- Vagotomy
-- Vagotomy, not otherwise specified 44.00
44.00 Vagotomy, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.01', 'Other operations on stomach
- Vagotomy
-- Truncal vagotomy 44.01
44.01 Truncal vagotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.02', 'Other operations on stomach
- Vagotomy
-- Highly selective vagotomy 44.02
44.02 Highly selective vagotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.03', 'Other operations on stomach
- Vagotomy
-- Other selective vagotomy 44.03
44.03 Other selective vagotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.1', 'Other operations on stomach
- Diagnostic procedures on stomach 44.1
44.1 Diagnostic procedures on stomach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.11', 'Other operations on stomach
- Diagnostic procedures on stomach
-- Transabdominal gastroscopy 44.11
44.11 Transabdominal gastroscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.12', 'Other operations on stomach
- Diagnostic procedures on stomach
-- Gastroscopy through artificial stoma 44.12
44.12 Gastroscopy through artificial stoma', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.13', 'Other operations on stomach
- Diagnostic procedures on stomach
-- Other gastroscopy 44.13
44.13 Other gastroscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.14', 'Other operations on stomach
- Diagnostic procedures on stomach
-- Closed [endoscopic] biopsy of stomach 44.14
44.14 Closed [endoscopic] biopsy of stomach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.15', 'Other operations on stomach
- Diagnostic procedures on stomach
-- Open biopsy of stomach 44.15
44.15 Open biopsy of stomach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.19', 'Other operations on stomach
- Diagnostic procedures on stomach
-- Other diagnostic procedures on stomach 44.19
44.19 Other diagnostic procedures on stomach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.2', 'Other operations on stomach
- Pyloroplasty 44.2
44.2 Pyloroplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.21', 'Other operations on stomach
- Pyloroplasty
-- Dilation of pylorus by incision 44.21
44.21 Dilation of pylorus by incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.22', 'Other operations on stomach
- Pyloroplasty
-- Endoscopic dilation of pylorus 44.22
44.22 Endoscopic dilation of pylorus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.29', 'Other operations on stomach
- Pyloroplasty
-- Other pyloroplasty 44.29
44.29 Other pyloroplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.3', 'Other operations on stomach
- Gastroenterostomy without gastrectomy 44.3
44.3 Gastroenterostomy without gastrectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.31', 'Other operations on stomach
- Gastroenterostomy without gastrectomy
-- High gastric bypass 44.31
44.31 High gastric bypass', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.32', 'Other operations on stomach
- Gastroenterostomy without gastrectomy
-- Percutaneous [endoscopic] gastrojejunostomy 44.32
44.32 Percutaneous [endoscopic] gastrojejunostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.38', 'Other operations on stomach
- Gastroenterostomy without gastrectomy
-- Laparoscopic gastroenterostomy 44.38
44.38 Laparoscopic gastroenterostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.39', 'Other operations on stomach
- Gastroenterostomy without gastrectomy
-- Other gastroenterostomy 44.39
44.39 Other gastroenterostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.4', 'Other operations on stomach
- Control of hemorrhage and suture of ulcer of stomach or 44.4
44.4 Control of hemorrhage and suture of ulcer of stomach or', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.40', 'Other operations on stomach
- Control of hemorrhage and suture of ulcer of stomach or
-- Suture of peptic ulcer, not otherwise specified 44.40
44.40 Suture of peptic ulcer, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.41', 'Other operations on stomach
- Control of hemorrhage and suture of ulcer of stomach or
-- Suture of gastric ulcer site 44.41
44.41 Suture of gastric ulcer site', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.42', 'Other operations on stomach
- Control of hemorrhage and suture of ulcer of stomach or
-- Suture of duodenal ulcer site 44.42
44.42 Suture of duodenal ulcer site', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.43', 'Other operations on stomach
- Control of hemorrhage and suture of ulcer of stomach or
-- Endoscopic control of gastric or duodenal bleeding 44.43
44.43 Endoscopic control of gastric or duodenal bleeding', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.44', 'Other operations on stomach
- Control of hemorrhage and suture of ulcer of stomach or
-- Transcatheter embolization for gastric or duodenal bleeding 44.44
44.44 Transcatheter embolization for gastric or duodenal bleeding', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.49', 'Other operations on stomach
- Control of hemorrhage and suture of ulcer of stomach or
-- Other control of hemorrhage of stomach or duodenum 44.49
44.49 Other control of hemorrhage of stomach or duodenum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.5', 'Other operations on stomach
- Revision of gastric anastomosis 44.5
44.5 Revision of gastric anastomosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.6', 'Other operations on stomach
- Other repair of stomach 44.6
44.6 Other repair of stomach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.61', 'Other operations on stomach
- Other repair of stomach
-- Suture of laceration of stomach 44.61
44.61 Suture of laceration of stomach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.62', 'Other operations on stomach
- Other repair of stomach
-- Closure of gastrostomy 44.62
44.62 Closure of gastrostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.63', 'Other operations on stomach
- Other repair of stomach
-- Closure of other gastric fistula 44.63
44.63 Closure of other gastric fistula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.64', 'Other operations on stomach
- Other repair of stomach
-- Gastropexy 44.64
44.64 Gastropexy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.65', 'Other operations on stomach
- Other repair of stomach
-- Esophagogastroplasty 44.65
44.65 Esophagogastroplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.66', 'Other operations on stomach
- Other repair of stomach
-- Other procedures for creation of esophagogastric sphincteric 44.66
44.66 Other procedures for creation of esophagogastric sphincteric', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.67', 'Other operations on stomach
- Other repair of stomach
-- Laparoscopic procedures for creation of esophagogastric 44.67
44.67 Laparoscopic procedures for creation of esophagogastric', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.68', 'Other operations on stomach
- Other repair of stomach
-- Laparoscopic gastroplasty 44.68
44.68 Laparoscopic gastroplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.69', 'Other operations on stomach
- Other repair of stomach
-- Other 44.69
44.69 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.9', 'Other operations on stomach
- Other operations on stomach 44.9
44.9 Other operations on stomach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.91', 'Other operations on stomach
- Other operations on stomach
-- Ligation of gastric varices 44.91
44.91 Ligation of gastric varices', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.92', 'Other operations on stomach
- Other operations on stomach
-- Intraoperative manipulation of stomach 44.92
44.92 Intraoperative manipulation of stomach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.93', 'Other operations on stomach
- Other operations on stomach
-- Insertion of gastric bubble (balloon) 44.93
44.93 Insertion of gastric bubble (balloon)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.94', 'Other operations on stomach
- Other operations on stomach
-- Removal of gastric bubble (balloon) 44.94
44.94 Removal of gastric bubble (balloon)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.95', 'Other operations on stomach
- Other operations on stomach
-- Laparoscopic gastric restrictive procedure 44.95
44.95 Laparoscopic gastric restrictive procedure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.96', 'Other operations on stomach
- Other operations on stomach
-- Laparoscopic revision of gastric restrictive procedure 44.96
44.96 Laparoscopic revision of gastric restrictive procedure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.97', 'Other operations on stomach
- Other operations on stomach
-- Laparoscopic removal of gastric restrictive device(s) 44.97
44.97 Laparoscopic removal of gastric restrictive device(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.98', 'Other operations on stomach
- Other operations on stomach
-- (Laparoscopic) adjustment of size of adjustable gastric restrictive 44.98
44.98 (Laparoscopic) adjustment of size of adjustable gastric restrictive', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.99', 'Other operations on stomach
- Other operations on stomach
-- Other 44.99
44.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45', 'Incision, excision, and anastomosis of intestine
45 Incision, excision, and anastomosis of intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.0', 'Incision, excision, and anastomosis of intestine
- Enterotomy 45.0
45.0 Enterotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.00', 'Incision, excision, and anastomosis of intestine
- Enterotomy
-- Incision of intestine, not otherwise specified 45.00
45.00 Incision of intestine, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.01', 'Incision, excision, and anastomosis of intestine
- Enterotomy
-- Incision of duodenum 45.01
45.01 Incision of duodenum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.02', 'Incision, excision, and anastomosis of intestine
- Enterotomy
-- Other incision of small intestine 45.02
45.02 Other incision of small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.03', 'Incision, excision, and anastomosis of intestine
- Enterotomy
-- Incision of large intestine 45.03
45.03 Incision of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.1', 'Incision, excision, and anastomosis of intestine
- Diagnostic procedures on small intestine 45.1
45.1 Diagnostic procedures on small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.11', 'Incision, excision, and anastomosis of intestine
- Diagnostic procedures on small intestine
-- Transabdominal endoscopy of small intestine 45.11
45.11 Transabdominal endoscopy of small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.12', 'Incision, excision, and anastomosis of intestine
- Diagnostic procedures on small intestine
-- Endoscopy of small intestine through artificial stoma 45.12
45.12 Endoscopy of small intestine through artificial stoma', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.13', 'Incision, excision, and anastomosis of intestine
- Diagnostic procedures on small intestine
-- Other endoscopy of small intestine 45.13
45.13 Other endoscopy of small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.14', 'Incision, excision, and anastomosis of intestine
- Diagnostic procedures on small intestine
-- Closed [endoscopic] biopsy of small intestine 45.14
45.14 Closed [endoscopic] biopsy of small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.15', 'Incision, excision, and anastomosis of intestine
- Diagnostic procedures on small intestine
-- Open biopsy of small intestine 45.15
45.15 Open biopsy of small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.16', 'Incision, excision, and anastomosis of intestine
- Diagnostic procedures on small intestine
-- Esophagogastroduodenoscopy [EGD] with closed biopsy 45.16
45.16 Esophagogastroduodenoscopy [EGD] with closed biopsy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.19', 'Incision, excision, and anastomosis of intestine
- Diagnostic procedures on small intestine
-- Other diagnostic procedures on small intestine 45.19
45.19 Other diagnostic procedures on small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.2', 'Incision, excision, and anastomosis of intestine
- Diagnostic procedures on large intestine 45.2
45.2 Diagnostic procedures on large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.21', 'Incision, excision, and anastomosis of intestine
- Diagnostic procedures on large intestine
-- Transabdominal endoscopy of large intestine 45.21
45.21 Transabdominal endoscopy of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.22', 'Incision, excision, and anastomosis of intestine
- Diagnostic procedures on large intestine
-- Endoscopy of large intestine through artificial stoma 45.22
45.22 Endoscopy of large intestine through artificial stoma', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.23', 'Incision, excision, and anastomosis of intestine
- Diagnostic procedures on large intestine
-- Colonoscopy 45.23
45.23 Colonoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.24', 'Incision, excision, and anastomosis of intestine
- Diagnostic procedures on large intestine
-- Flexible sigmoidoscopy 45.24
45.24 Flexible sigmoidoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.25', 'Incision, excision, and anastomosis of intestine
- Diagnostic procedures on large intestine
-- Closed [endoscopic] biopsy of large intestine 45.25
45.25 Closed [endoscopic] biopsy of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.26', 'Incision, excision, and anastomosis of intestine
- Diagnostic procedures on large intestine
-- Open biopsy of large intestine 45.26
45.26 Open biopsy of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.27', 'Incision, excision, and anastomosis of intestine
- Diagnostic procedures on large intestine
-- Intestinal biopsy, site unspecified 45.27
45.27 Intestinal biopsy, site unspecified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.28', 'Incision, excision, and anastomosis of intestine
- Diagnostic procedures on large intestine
-- Other diagnostic procedures on large intestine 45.28
45.28 Other diagnostic procedures on large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.29', 'Incision, excision, and anastomosis of intestine
- Diagnostic procedures on large intestine
-- Other diagnostic procedures on intestine, site unspecified 45.29
45.29 Other diagnostic procedures on intestine, site unspecified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.3', 'Incision, excision, and anastomosis of intestine
- Local excision or destruction of lesion or tissue of small intestine 45.3
45.3 Local excision or destruction of lesion or tissue of small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.30', 'Incision, excision, and anastomosis of intestine
- Local excision or destruction of lesion or tissue of small intestine
-- Endoscopic excision or destruction of lesion of duodenum 45.30
45.30 Endoscopic excision or destruction of lesion of duodenum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.31', 'Incision, excision, and anastomosis of intestine
- Local excision or destruction of lesion or tissue of small intestine
-- Other local excision of lesion of duodenum 45.31
45.31 Other local excision of lesion of duodenum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.32', 'Incision, excision, and anastomosis of intestine
- Local excision or destruction of lesion or tissue of small intestine
-- Other destruction of lesion of duodenum 45.32
45.32 Other destruction of lesion of duodenum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.33', 'Incision, excision, and anastomosis of intestine
- Local excision or destruction of lesion or tissue of small intestine
-- Local excision of lesion or tissue of small intestine, except 45.33
45.33 Local excision of lesion or tissue of small intestine, except', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.34', 'Incision, excision, and anastomosis of intestine
- Local excision or destruction of lesion or tissue of small intestine
-- Other destruction of lesion of small intestine, except duodenum 45.34
45.34 Other destruction of lesion of small intestine, except duodenum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.4', 'Incision, excision, and anastomosis of intestine
- Local excision or destruction of lesion or tissue of large intestine 45.4
45.4 Local excision or destruction of lesion or tissue of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.41', 'Incision, excision, and anastomosis of intestine
- Local excision or destruction of lesion or tissue of large intestine
-- Excision of lesion or tissue of large intestine 45.41
45.41 Excision of lesion or tissue of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.42', 'Incision, excision, and anastomosis of intestine
- Local excision or destruction of lesion or tissue of large intestine
-- Endoscopic polypectomy of large intestine 45.42
45.42 Endoscopic polypectomy of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.43', 'Incision, excision, and anastomosis of intestine
- Local excision or destruction of lesion or tissue of large intestine
-- Endoscopic destruction of other lesion or tissue of large intestine 45.43
45.43 Endoscopic destruction of other lesion or tissue of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.49', 'Incision, excision, and anastomosis of intestine
- Local excision or destruction of lesion or tissue of large intestine
-- Other destruction of lesion of large intestine 45.49
45.49 Other destruction of lesion of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.5', 'Incision, excision, and anastomosis of intestine
- Isolation of intestinal segment 45.5
45.5 Isolation of intestinal segment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.50', 'Incision, excision, and anastomosis of intestine
- Isolation of intestinal segment
-- Isolation of intestinal segment, not otherwise specified 45.50
45.50 Isolation of intestinal segment, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.51', 'Incision, excision, and anastomosis of intestine
- Isolation of intestinal segment
-- Isolation of segment of small intestine 45.51
45.51 Isolation of segment of small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.52', 'Incision, excision, and anastomosis of intestine
- Isolation of intestinal segment
-- Isolation of segment of large intestine 45.52
45.52 Isolation of segment of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.6', 'Incision, excision, and anastomosis of intestine
- Other excision of small intestine 45.6
45.6 Other excision of small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.61', 'Incision, excision, and anastomosis of intestine
- Other excision of small intestine
-- Multiple segmental resection of small intestine 45.61
45.61 Multiple segmental resection of small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.62', 'Incision, excision, and anastomosis of intestine
- Other excision of small intestine
-- Other partial resection of small intestine 45.62
45.62 Other partial resection of small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.63', 'Incision, excision, and anastomosis of intestine
- Other excision of small intestine
-- Total removal of small intestine 45.63
45.63 Total removal of small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.7', 'Incision, excision, and anastomosis of intestine
- Open and other partial excision of large intestine 45.7
45.7 Open and other partial excision of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.71', 'Incision, excision, and anastomosis of intestine
- Open and other partial excision of large intestine
-- Open and other multiple segmental resection of large intestine 45.71
45.71 Open and other multiple segmental resection of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.72', 'Incision, excision, and anastomosis of intestine
- Open and other partial excision of large intestine
-- Open and other cecectomy 45.72
45.72 Open and other cecectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.73', 'Incision, excision, and anastomosis of intestine
- Open and other partial excision of large intestine
-- Open and other right hemicolectomy 45.73
45.73 Open and other right hemicolectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.74', 'Incision, excision, and anastomosis of intestine
- Open and other partial excision of large intestine
-- Open and other resection of transverse colon 45.74
45.74 Open and other resection of transverse colon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.75', 'Incision, excision, and anastomosis of intestine
- Open and other partial excision of large intestine
-- Open and other left hemicolectomy 45.75
45.75 Open and other left hemicolectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.76', 'Incision, excision, and anastomosis of intestine
- Open and other partial excision of large intestine
-- Open and other sigmoidectomy 45.76
45.76 Open and other sigmoidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.79', 'Incision, excision, and anastomosis of intestine
- Open and other partial excision of large intestine
-- Other and unspecified partial excision of large intestine 45.79
45.79 Other and unspecified partial excision of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.8', 'Incision, excision, and anastomosis of intestine
- Total intra-abdominal colectomy 45.8
45.8 Total intra-abdominal colectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.81', 'Incision, excision, and anastomosis of intestine
- Total intra-abdominal colectomy
-- Laparoscopic total intra-abdominal colectomy  45.81
45.81 Laparoscopic total intra-abdominal colectomy ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.82', 'Incision, excision, and anastomosis of intestine
- Total intra-abdominal colectomy
-- Open total intra-abdominal colectomy  45.82
45.82 Open total intra-abdominal colectomy ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.83', 'Incision, excision, and anastomosis of intestine
- Total intra-abdominal colectomy
-- Other and unspecified total intra-abdominal colectomy  45.83
45.83 Other and unspecified total intra-abdominal colectomy ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.9', 'Incision, excision, and anastomosis of intestine
- Intestinal anastomosis 45.9
45.9 Intestinal anastomosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.90', 'Incision, excision, and anastomosis of intestine
- Intestinal anastomosis
-- Intestinal anastomosis, not otherwise specified 45.90
45.90 Intestinal anastomosis, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.91', 'Incision, excision, and anastomosis of intestine
- Intestinal anastomosis
-- Small-to-small intestinal anastomosis 45.91
45.91 Small-to-small intestinal anastomosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.92', 'Incision, excision, and anastomosis of intestine
- Intestinal anastomosis
-- Anastomosis of small intestine to rectal stump 45.92
45.92 Anastomosis of small intestine to rectal stump', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.93', 'Incision, excision, and anastomosis of intestine
- Intestinal anastomosis
-- Other small-to-large intestinal anastomosis 45.93
45.93 Other small-to-large intestinal anastomosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.94', 'Incision, excision, and anastomosis of intestine
- Intestinal anastomosis
-- Large-to-large intestinal anastomosis 45.94
45.94 Large-to-large intestinal anastomosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.95', 'Incision, excision, and anastomosis of intestine
- Intestinal anastomosis
-- Anastomosis to anus 45.95
45.95 Anastomosis to anus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46', 'Other operations on intestine
46 Other operations on intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.0', 'Other operations on intestine
- Exteriorization of intestine 46.0
46.0 Exteriorization of intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.01', 'Other operations on intestine
- Exteriorization of intestine
-- Exteriorization of small intestine 46.01
46.01 Exteriorization of small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.02', 'Other operations on intestine
- Exteriorization of intestine
-- Resection of exteriorized segment of small intestine 46.02
46.02 Resection of exteriorized segment of small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.03', 'Other operations on intestine
- Exteriorization of intestine
-- Exteriorization of large intestine 46.03
46.03 Exteriorization of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.04', 'Other operations on intestine
- Exteriorization of intestine
-- Resection of exteriorized segment of large intestine 46.04
46.04 Resection of exteriorized segment of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.1', 'Other operations on intestine
- Colostomy 46.1
46.1 Colostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.10', 'Other operations on intestine
- Colostomy
-- Colostomy, not otherwise specified 46.10
46.10 Colostomy, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.11', 'Other operations on intestine
- Colostomy
-- Temporary colostomy 46.11
46.11 Temporary colostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.13', 'Other operations on intestine
- Colostomy
-- Permanent colostomy 46.13
46.13 Permanent colostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.14', 'Other operations on intestine
- Colostomy
-- Delayed opening of colostomy 46.14
46.14 Delayed opening of colostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.2', 'Other operations on intestine
- Ileostomy 46.2
46.2 Ileostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.20', 'Other operations on intestine
- Ileostomy
-- Ileostomy, not otherwise specified 46.20
46.20 Ileostomy, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.21', 'Other operations on intestine
- Ileostomy
-- Temporary ileostomy 46.21
46.21 Temporary ileostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.22', 'Other operations on intestine
- Ileostomy
-- Continent ileostomy 46.22
46.22 Continent ileostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.23', 'Other operations on intestine
- Ileostomy
-- Other permanent ileostomy 46.23
46.23 Other permanent ileostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.24', 'Other operations on intestine
- Ileostomy
-- Delayed opening of ileostomy 46.24
46.24 Delayed opening of ileostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.3', 'Other operations on intestine
- Other enterostomy 46.3
46.3 Other enterostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.31', 'Other operations on intestine
- Other enterostomy
-- Delayed opening of other enterostomy 46.31
46.31 Delayed opening of other enterostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.32', 'Other operations on intestine
- Other enterostomy
-- Percutaneous (endoscopic) jejunostomy [PEJ] 46.32
46.32 Percutaneous (endoscopic) jejunostomy [PEJ]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.39', 'Other operations on intestine
- Other enterostomy
-- Other 46.39
46.39 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.4', 'Other operations on intestine
- Revision of intestinal stoma 46.4
46.4 Revision of intestinal stoma', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.40', 'Other operations on intestine
- Revision of intestinal stoma
-- Revision of intestinal stoma, not otherwise specified 46.40
46.40 Revision of intestinal stoma, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.41', 'Other operations on intestine
- Revision of intestinal stoma
-- Revision of stoma of small intestine 46.41
46.41 Revision of stoma of small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.42', 'Other operations on intestine
- Revision of intestinal stoma
-- Repair of pericolostomy hernia 46.42
46.42 Repair of pericolostomy hernia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.43', 'Other operations on intestine
- Revision of intestinal stoma
-- Other revision of stoma of large intestine 46.43
46.43 Other revision of stoma of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.5', 'Other operations on intestine
- Closure of intestinal stoma 46.5
46.5 Closure of intestinal stoma', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.50', 'Other operations on intestine
- Closure of intestinal stoma
-- Closure of intestinal stoma, not otherwise specified 46.50
46.50 Closure of intestinal stoma, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.51', 'Other operations on intestine
- Closure of intestinal stoma
-- Closure of stoma of small intestine 46.51
46.51 Closure of stoma of small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.52', 'Other operations on intestine
- Closure of intestinal stoma
-- Closure of stoma of large intestine 46.52
46.52 Closure of stoma of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.6', 'Other operations on intestine
- Fixation of intestine 46.6
46.6 Fixation of intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.60', 'Other operations on intestine
- Fixation of intestine
-- Fixation of intestine, not otherwise specified 46.60
46.60 Fixation of intestine, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.61', 'Other operations on intestine
- Fixation of intestine
-- Fixation of small intestine to abdominal wall 46.61
46.61 Fixation of small intestine to abdominal wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.62', 'Other operations on intestine
- Fixation of intestine
-- Other fixation of small intestine 46.62
46.62 Other fixation of small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.63', 'Other operations on intestine
- Fixation of intestine
-- Fixation of large intestine to abdominal wall 46.63
46.63 Fixation of large intestine to abdominal wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.64', 'Other operations on intestine
- Fixation of intestine
-- Other fixation of large intestine 46.64
46.64 Other fixation of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.7', 'Other operations on intestine
- Other repair of intestine 46.7
46.7 Other repair of intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.71', 'Other operations on intestine
- Other repair of intestine
-- Suture of laceration of duodenum 46.71
46.71 Suture of laceration of duodenum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.72', 'Other operations on intestine
- Other repair of intestine
-- Closure of fistula of duodenum 46.72
46.72 Closure of fistula of duodenum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.73', 'Other operations on intestine
- Other repair of intestine
-- Suture of laceration of small intestine, except duodenum 46.73
46.73 Suture of laceration of small intestine, except duodenum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.74', 'Other operations on intestine
- Other repair of intestine
-- Closure of fistula of small intestine, except duodenum 46.74
46.74 Closure of fistula of small intestine, except duodenum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.75', 'Other operations on intestine
- Other repair of intestine
-- Suture of laceration of large intestine 46.75
46.75 Suture of laceration of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.76', 'Other operations on intestine
- Other repair of intestine
-- Closure of fistula of large intestine 46.76
46.76 Closure of fistula of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.79', 'Other operations on intestine
- Other repair of intestine
-- Other repair of intestine 46.79
46.79 Other repair of intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.8', 'Other operations on intestine
- Dilation and manipulation of intestine 46.8
46.8 Dilation and manipulation of intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.80', 'Other operations on intestine
- Dilation and manipulation of intestine
-- Intra-abdominal manipulation of intestine, not otherwise specified 46.80
46.80 Intra-abdominal manipulation of intestine, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.81', 'Other operations on intestine
- Dilation and manipulation of intestine
-- Intra-abdominal manipulation of small intestine 46.81
46.81 Intra-abdominal manipulation of small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.82', 'Other operations on intestine
- Dilation and manipulation of intestine
-- Intra-abdominal manipulation of large intestine 46.82
46.82 Intra-abdominal manipulation of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.85', 'Other operations on intestine
- Dilation and manipulation of intestine
-- Dilation of intestine 46.85
46.85 Dilation of intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.86', 'Other operations on intestine
- Dilation and manipulation of intestine
-- Endoscopic insertion of colonic stent(s)  46.86
46.86 Endoscopic insertion of colonic stent(s) ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.87', 'Other operations on intestine
- Dilation and manipulation of intestine
-- Other insertion of colonic stent(s)  46.87
46.87 Other insertion of colonic stent(s) ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.9', 'Other operations on intestine
- Other operations on intestines 46.9
46.9 Other operations on intestines', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.91', 'Other operations on intestine
- Other operations on intestines
-- Myotomy of sigmoid colon 46.91
46.91 Myotomy of sigmoid colon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.92', 'Other operations on intestine
- Other operations on intestines
-- Myotomy of other parts of colon 46.92
46.92 Myotomy of other parts of colon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.93', 'Other operations on intestine
- Other operations on intestines
-- Revision of anastomosis of small intestine 46.93
46.93 Revision of anastomosis of small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.94', 'Other operations on intestine
- Other operations on intestines
-- Revision of anastomosis of large intestine 46.94
46.94 Revision of anastomosis of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.95', 'Other operations on intestine
- Other operations on intestines
-- Local perfusion of small intestine 46.95
46.95 Local perfusion of small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.96', 'Other operations on intestine
- Other operations on intestines
-- Local perfusion of large intestine 46.96
46.96 Local perfusion of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.97', 'Other operations on intestine
- Other operations on intestines
-- Transplant of intestine 46.97
46.97 Transplant of intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.99', 'Other operations on intestine
- Other operations on intestines
-- Other 46.99
46.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('47', 'Operations on appendix
47 Operations on appendix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('47.0', 'Operations on appendix
- Appendectomy 47.0
47.0 Appendectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('47.01', 'Operations on appendix
- Appendectomy
-- Laparoscopic appendectomy 47.01
47.01 Laparoscopic appendectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('47.09', 'Operations on appendix
- Appendectomy
-- Other appendectomy 47.09
47.09 Other appendectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('47.1', 'Operations on appendix
- Incidental appendectomy 47.1
47.1 Incidental appendectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('47.11', 'Operations on appendix
- Incidental appendectomy
-- Laparoscopic incidental appendectomy 47.11
47.11 Laparoscopic incidental appendectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('47.19', 'Operations on appendix
- Incidental appendectomy
-- Other incidental appendectomy 47.19
47.19 Other incidental appendectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('47.2', 'Operations on appendix
- Drainage of appendiceal abscess 47.2
47.2 Drainage of appendiceal abscess', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('47.9', 'Operations on appendix
- Other operations on appendix 47.9
47.9 Other operations on appendix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('47.91', 'Operations on appendix
- Other operations on appendix
-- Appendicostomy 47.91
47.91 Appendicostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('47.92', 'Operations on appendix
- Other operations on appendix
-- Closure of appendiceal fistula 47.92
47.92 Closure of appendiceal fistula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('47.99', 'Operations on appendix
- Other operations on appendix
-- Other 47.99
47.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48', 'Operations on rectum, rectosigmoid and perirectal tissue
48 Operations on rectum, rectosigmoid and perirectal tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.0', 'Operations on rectum, rectosigmoid and perirectal tissue
- Proctotomy 48.0
48.0 Proctotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.1', 'Operations on rectum, rectosigmoid and perirectal tissue
- Proctostomy 48.1
48.1 Proctostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.2', 'Operations on rectum, rectosigmoid and perirectal tissue
- Diagnostic procedures on rectum, rectosigmoid and perirectal 48.2
48.2 Diagnostic procedures on rectum, rectosigmoid and perirectal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.21', 'Operations on rectum, rectosigmoid and perirectal tissue
- Diagnostic procedures on rectum, rectosigmoid and perirectal
-- Transabdominal proctosigmoidoscopy 48.21
48.21 Transabdominal proctosigmoidoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.22', 'Operations on rectum, rectosigmoid and perirectal tissue
- Diagnostic procedures on rectum, rectosigmoid and perirectal
-- Proctosigmoidoscopy through artificial stoma 48.22
48.22 Proctosigmoidoscopy through artificial stoma', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.23', 'Operations on rectum, rectosigmoid and perirectal tissue
- Diagnostic procedures on rectum, rectosigmoid and perirectal
-- Rigid proctosigmoidoscopy 48.23
48.23 Rigid proctosigmoidoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.24', 'Operations on rectum, rectosigmoid and perirectal tissue
- Diagnostic procedures on rectum, rectosigmoid and perirectal
-- Closed [endoscopic] biopsy of rectum 48.24
48.24 Closed [endoscopic] biopsy of rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.25', 'Operations on rectum, rectosigmoid and perirectal tissue
- Diagnostic procedures on rectum, rectosigmoid and perirectal
-- Open biopsy of rectum 48.25
48.25 Open biopsy of rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.26', 'Operations on rectum, rectosigmoid and perirectal tissue
- Diagnostic procedures on rectum, rectosigmoid and perirectal
-- Biopsy of perirectal tissue 48.26
48.26 Biopsy of perirectal tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.29', 'Operations on rectum, rectosigmoid and perirectal tissue
- Diagnostic procedures on rectum, rectosigmoid and perirectal
-- Other diagnostic procedures on rectum, rectosigmoid and 48.29
48.29 Other diagnostic procedures on rectum, rectosigmoid and', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.3', 'Operations on rectum, rectosigmoid and perirectal tissue
- Local excision or destruction of lesion or tissue of rectum 48.3
48.3 Local excision or destruction of lesion or tissue of rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.31', 'Operations on rectum, rectosigmoid and perirectal tissue
- Local excision or destruction of lesion or tissue of rectum
-- Radical electrocoagulation of rectal lesion or tissue 48.31
48.31 Radical electrocoagulation of rectal lesion or tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.32', 'Operations on rectum, rectosigmoid and perirectal tissue
- Local excision or destruction of lesion or tissue of rectum
-- Other electrocoagulation of rectal lesion or tissue 48.32
48.32 Other electrocoagulation of rectal lesion or tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.33', 'Operations on rectum, rectosigmoid and perirectal tissue
- Local excision or destruction of lesion or tissue of rectum
-- Destruction of rectal lesion or tissue by laser 48.33
48.33 Destruction of rectal lesion or tissue by laser', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.34', 'Operations on rectum, rectosigmoid and perirectal tissue
- Local excision or destruction of lesion or tissue of rectum
-- Destruction of rectal lesion or tissue by cryosurgery 48.34
48.34 Destruction of rectal lesion or tissue by cryosurgery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.35', 'Operations on rectum, rectosigmoid and perirectal tissue
- Local excision or destruction of lesion or tissue of rectum
-- Local excision of rectal lesion or tissue 48.35
48.35 Local excision of rectal lesion or tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.36', 'Operations on rectum, rectosigmoid and perirectal tissue
- Local excision or destruction of lesion or tissue of rectum
-- [Endoscopic] polypectomy of rectum 48.36
48.36 [Endoscopic] polypectomy of rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.4', 'Operations on rectum, rectosigmoid and perirectal tissue
- Pull-through resection of rectum 48.4
48.4 Pull-through resection of rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.40', 'Operations on rectum, rectosigmoid and perirectal tissue
- Pull-through resection of rectum
-- Pull-through resection of rectum, not otherwise specified  48.40
48.40 Pull-through resection of rectum, not otherwise specified ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.41', 'Operations on rectum, rectosigmoid and perirectal tissue
- Pull-through resection of rectum
-- Soave submucosal resection of rectum 48.41
48.41 Soave submucosal resection of rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.42', 'Operations on rectum, rectosigmoid and perirectal tissue
- Pull-through resection of rectum
-- Laparoscopic pull-through resection of rectum  48.42
48.42 Laparoscopic pull-through resection of rectum ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.43', 'Operations on rectum, rectosigmoid and perirectal tissue
- Pull-through resection of rectum
-- Open pull-through resection of rectum  48.43
48.43 Open pull-through resection of rectum ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.49', 'Operations on rectum, rectosigmoid and perirectal tissue
- Pull-through resection of rectum
-- Other pull-through resection of rectum 48.49
48.49 Other pull-through resection of rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.5', 'Operations on rectum, rectosigmoid and perirectal tissue
- Abdominoperineal resection of rectum 48.5
48.5 Abdominoperineal resection of rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.50', 'Operations on rectum, rectosigmoid and perirectal tissue
- Abdominoperineal resection of rectum
-- Abdominoperineal resection of the rectum, not otherwise specified 48.50
48.50 Abdominoperineal resection of the rectum, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.51', 'Operations on rectum, rectosigmoid and perirectal tissue
- Abdominoperineal resection of rectum
-- Laparoscopic abdominoperineal resection of the rectum 48.51
48.51 Laparoscopic abdominoperineal resection of the rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.52', 'Operations on rectum, rectosigmoid and perirectal tissue
- Abdominoperineal resection of rectum
-- Open abdominoperineal resection of the rectum  48.52
48.52 Open abdominoperineal resection of the rectum ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.59', 'Operations on rectum, rectosigmoid and perirectal tissue
- Abdominoperineal resection of rectum
-- Other abdominoperineal resection of the rectum  48.59
48.59 Other abdominoperineal resection of the rectum ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.6', 'Operations on rectum, rectosigmoid and perirectal tissue
- Other resection of rectum 48.6
48.6 Other resection of rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.61', 'Operations on rectum, rectosigmoid and perirectal tissue
- Other resection of rectum
-- Transsacral rectosigmoidectomy 48.61
48.61 Transsacral rectosigmoidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.62', 'Operations on rectum, rectosigmoid and perirectal tissue
- Other resection of rectum
-- Anterior resection of rectum with synchronous colostomy 48.62
48.62 Anterior resection of rectum with synchronous colostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.63', 'Operations on rectum, rectosigmoid and perirectal tissue
- Other resection of rectum
-- Other anterior resection of rectum 48.63
48.63 Other anterior resection of rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.64', 'Operations on rectum, rectosigmoid and perirectal tissue
- Other resection of rectum
-- Posterior resection of rectum 48.64
48.64 Posterior resection of rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.65', 'Operations on rectum, rectosigmoid and perirectal tissue
- Other resection of rectum
-- Duhamel resection of rectum 48.65
48.65 Duhamel resection of rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.69', 'Operations on rectum, rectosigmoid and perirectal tissue
- Other resection of rectum
-- Other 48.69
48.69 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.7', 'Operations on rectum, rectosigmoid and perirectal tissue
- Repair of rectum 48.7
48.7 Repair of rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.71', 'Operations on rectum, rectosigmoid and perirectal tissue
- Repair of rectum
-- Suture of laceration of rectum 48.71
48.71 Suture of laceration of rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.72', 'Operations on rectum, rectosigmoid and perirectal tissue
- Repair of rectum
-- Closure of proctostomy 48.72
48.72 Closure of proctostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.73', 'Operations on rectum, rectosigmoid and perirectal tissue
- Repair of rectum
-- Closure of other rectal fistula 48.73
48.73 Closure of other rectal fistula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.74', 'Operations on rectum, rectosigmoid and perirectal tissue
- Repair of rectum
-- Rectorectostomy 48.74
48.74 Rectorectostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.75', 'Operations on rectum, rectosigmoid and perirectal tissue
- Repair of rectum
-- Abdominal proctopexy 48.75
48.75 Abdominal proctopexy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.76', 'Operations on rectum, rectosigmoid and perirectal tissue
- Repair of rectum
-- Other proctopexy 48.76
48.76 Other proctopexy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.79', 'Operations on rectum, rectosigmoid and perirectal tissue
- Repair of rectum
-- Other repair of rectum 48.79
48.79 Other repair of rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.8', 'Operations on rectum, rectosigmoid and perirectal tissue
- Incision or excision of perirectal tissue or lesion 48.8
48.8 Incision or excision of perirectal tissue or lesion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.81', 'Operations on rectum, rectosigmoid and perirectal tissue
- Incision or excision of perirectal tissue or lesion
-- Incision of perirectal tissue 48.81
48.81 Incision of perirectal tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.82', 'Operations on rectum, rectosigmoid and perirectal tissue
- Incision or excision of perirectal tissue or lesion
-- Excision of perirectal tissue 48.82
48.82 Excision of perirectal tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.9', 'Operations on rectum, rectosigmoid and perirectal tissue
- Other operations on rectum and perirectal tissue 48.9
48.9 Other operations on rectum and perirectal tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.91', 'Operations on rectum, rectosigmoid and perirectal tissue
- Other operations on rectum and perirectal tissue
-- Incision of rectal stricture 48.91
48.91 Incision of rectal stricture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.92', 'Operations on rectum, rectosigmoid and perirectal tissue
- Other operations on rectum and perirectal tissue
-- Anorectal myectomy 48.92
48.92 Anorectal myectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.93', 'Operations on rectum, rectosigmoid and perirectal tissue
- Other operations on rectum and perirectal tissue
-- Repair of perirectal fistula 48.93
48.93 Repair of perirectal fistula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.99', 'Operations on rectum, rectosigmoid and perirectal tissue
- Other operations on rectum and perirectal tissue
-- Other 48.99
48.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49', 'Operations on anus
49 Operations on anus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.0', 'Operations on anus
- Incision or excision of perianal tissue 49.0
49.0 Incision or excision of perianal tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.01', 'Operations on anus
- Incision or excision of perianal tissue
-- Incision of perianal abscess 49.01
49.01 Incision of perianal abscess', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.02', 'Operations on anus
- Incision or excision of perianal tissue
-- Other incision of perianal tissue 49.02
49.02 Other incision of perianal tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.03', 'Operations on anus
- Incision or excision of perianal tissue
-- Excision of perianal skin tags 49.03
49.03 Excision of perianal skin tags', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.04', 'Operations on anus
- Incision or excision of perianal tissue
-- Other excision of perianal tissue 49.04
49.04 Other excision of perianal tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.1', 'Operations on anus
- Incision or excision of anal fistula 49.1
49.1 Incision or excision of anal fistula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.11', 'Operations on anus
- Incision or excision of anal fistula
-- Anal fistulotomy 49.11
49.11 Anal fistulotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.12', 'Operations on anus
- Incision or excision of anal fistula
-- Anal fistulectomy 49.12
49.12 Anal fistulectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.2', 'Operations on anus
- Diagnostic procedures on anus and perianal tissue 49.2
49.2 Diagnostic procedures on anus and perianal tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.21', 'Operations on anus
- Diagnostic procedures on anus and perianal tissue
-- Anoscopy 49.21
49.21 Anoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.22', 'Operations on anus
- Diagnostic procedures on anus and perianal tissue
-- Biopsy of perianal tissue 49.22
49.22 Biopsy of perianal tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.23', 'Operations on anus
- Diagnostic procedures on anus and perianal tissue
-- Biopsy of anus 49.23
49.23 Biopsy of anus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.29', 'Operations on anus
- Diagnostic procedures on anus and perianal tissue
-- Other diagnostic procedures on anus and perianal tissue 49.29
49.29 Other diagnostic procedures on anus and perianal tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.3', 'Operations on anus
- Local excision or destruction of other lesion or tissue of anus 49.3
49.3 Local excision or destruction of other lesion or tissue of anus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.31', 'Operations on anus
- Local excision or destruction of other lesion or tissue of anus
-- Endoscopic excision or destruction of lesion or tissue of anus 49.31
49.31 Endoscopic excision or destruction of lesion or tissue of anus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.39', 'Operations on anus
- Local excision or destruction of other lesion or tissue of anus
-- Other local excision or destruction of lesion or tissue of anus 49.39
49.39 Other local excision or destruction of lesion or tissue of anus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.4', 'Operations on anus
- Procedures on hemorrhoids 49.4
49.4 Procedures on hemorrhoids', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.41', 'Operations on anus
- Procedures on hemorrhoids
-- Reduction of hemorrhoids 49.41
49.41 Reduction of hemorrhoids', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.42', 'Operations on anus
- Procedures on hemorrhoids
-- Injection of hemorrhoids 49.42
49.42 Injection of hemorrhoids', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.43', 'Operations on anus
- Procedures on hemorrhoids
-- Cauterization of hemorrhoids 49.43
49.43 Cauterization of hemorrhoids', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.44', 'Operations on anus
- Procedures on hemorrhoids
-- Destruction of hemorrhoids by cryotherapy 49.44
49.44 Destruction of hemorrhoids by cryotherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.45', 'Operations on anus
- Procedures on hemorrhoids
-- Ligation of hemorrhoids 49.45
49.45 Ligation of hemorrhoids', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.46', 'Operations on anus
- Procedures on hemorrhoids
-- Excision of hemorrhoids 49.46
49.46 Excision of hemorrhoids', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.47', 'Operations on anus
- Procedures on hemorrhoids
-- Evacuation of thrombosed hemorrhoids 49.47
49.47 Evacuation of thrombosed hemorrhoids', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.49', 'Operations on anus
- Procedures on hemorrhoids
-- Other procedures on hemorrhoids 49.49
49.49 Other procedures on hemorrhoids', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.5', 'Operations on anus
- Division of anal sphincter 49.5
49.5 Division of anal sphincter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.51', 'Operations on anus
- Division of anal sphincter
-- Left lateral anal sphincterotomy 49.51
49.51 Left lateral anal sphincterotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.52', 'Operations on anus
- Division of anal sphincter
-- Posterior anal sphincterotomy 49.52
49.52 Posterior anal sphincterotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.59', 'Operations on anus
- Division of anal sphincter
-- Other anal sphincterotomy 49.59
49.59 Other anal sphincterotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.6', 'Operations on anus
- Excision of anus 49.6
49.6 Excision of anus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.7', 'Operations on anus
- Repair of anus 49.7
49.7 Repair of anus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.71', 'Operations on anus
- Repair of anus
-- Suture of laceration of anus 49.71
49.71 Suture of laceration of anus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.72', 'Operations on anus
- Repair of anus
-- Anal cerclage 49.72
49.72 Anal cerclage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.73', 'Operations on anus
- Repair of anus
-- Closure of anal fistula 49.73
49.73 Closure of anal fistula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.74', 'Operations on anus
- Repair of anus
-- Gracilis muscle transplant for anal incontinence 49.74
49.74 Gracilis muscle transplant for anal incontinence', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.75', 'Operations on anus
- Repair of anus
-- Implantation or revision of artificial anal sphincter 49.75
49.75 Implantation or revision of artificial anal sphincter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.76', 'Operations on anus
- Repair of anus
-- Removal of artificial anal sphincter 49.76
49.76 Removal of artificial anal sphincter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.79', 'Operations on anus
- Repair of anus
-- Other repair of anal sphincter 49.79
49.79 Other repair of anal sphincter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.9', 'Operations on anus
- Other operations on anus 49.9
49.9 Other operations on anus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.91', 'Operations on anus
- Other operations on anus
-- Incision of anal septum 49.91
49.91 Incision of anal septum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.92', 'Operations on anus
- Other operations on anus
-- Insertion of subcutaneous electrical anal stimulator 49.92
49.92 Insertion of subcutaneous electrical anal stimulator', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.93', 'Operations on anus
- Other operations on anus
-- Other incision of anus 49.93
49.93 Other incision of anus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.94', 'Operations on anus
- Other operations on anus
-- Reduction of anal prolapse 49.94
49.94 Reduction of anal prolapse', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.95', 'Operations on anus
- Other operations on anus
-- Control of (postoperative) hemorrhage of anus 49.95
49.95 Control of (postoperative) hemorrhage of anus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.99', 'Operations on anus
- Other operations on anus
-- Other 49.99
49.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50', 'Operations on liver
50 Operations on liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.0', 'Operations on liver
- Hepatotomy 50.0
50.0 Hepatotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.1', 'Operations on liver
- Diagnostic procedures on liver 50.1
50.1 Diagnostic procedures on liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.11', 'Operations on liver
- Diagnostic procedures on liver
-- Closed (percutaneous) [needle] biopsy of liver 50.11
50.11 Closed (percutaneous) [needle] biopsy of liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.12', 'Operations on liver
- Diagnostic procedures on liver
-- Open biopsy of liver 50.12
50.12 Open biopsy of liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.13', 'Operations on liver
- Diagnostic procedures on liver
-- Transjugular liver biopsy 50.13
50.13 Transjugular liver biopsy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.14', 'Operations on liver
- Diagnostic procedures on liver
-- Laparoscopic liver biopsy 50.14
50.14 Laparoscopic liver biopsy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.19', 'Operations on liver
- Diagnostic procedures on liver
-- Other diagnostic procedures on liver 50.19
50.19 Other diagnostic procedures on liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.2', 'Operations on liver
- Local excision or destruction of liver tissue or lesion 50.2
50.2 Local excision or destruction of liver tissue or lesion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.21', 'Operations on liver
- Local excision or destruction of liver tissue or lesion
-- Marsupialization of lesion of liver 50.21
50.21 Marsupialization of lesion of liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.22', 'Operations on liver
- Local excision or destruction of liver tissue or lesion
-- Partial hepatectomy 50.22
50.22 Partial hepatectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.23', 'Operations on liver
- Local excision or destruction of liver tissue or lesion
-- Open ablation of liver lesion or tissue 50.23
50.23 Open ablation of liver lesion or tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.24', 'Operations on liver
- Local excision or destruction of liver tissue or lesion
-- Percutaneous ablation of liver lesion or tissue 50.24
50.24 Percutaneous ablation of liver lesion or tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.25', 'Operations on liver
- Local excision or destruction of liver tissue or lesion
-- Laparoscopic ablation of liver lesion or tissue 50.25
50.25 Laparoscopic ablation of liver lesion or tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.26', 'Operations on liver
- Local excision or destruction of liver tissue or lesion
-- Other and unspecified ablation of liver lesion or tissue 50.26
50.26 Other and unspecified ablation of liver lesion or tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.29', 'Operations on liver
- Local excision or destruction of liver tissue or lesion
-- Other destruction of lesion of liver 50.29
50.29 Other destruction of lesion of liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.3', 'Operations on liver
- Lobectomy of liver 50.3
50.3 Lobectomy of liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.4', 'Operations on liver
- Total hepatectomy 50.4
50.4 Total hepatectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.5', 'Operations on liver
- Liver transplant 50.5
50.5 Liver transplant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.51', 'Operations on liver
- Liver transplant
-- Auxiliary liver transplant 50.51
50.51 Auxiliary liver transplant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.59', 'Operations on liver
- Liver transplant
-- Other transplant of liver 50.59
50.59 Other transplant of liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.6', 'Operations on liver
- Repair of liver 50.6
50.6 Repair of liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.61', 'Operations on liver
- Repair of liver
-- Closure of laceration of liver 50.61
50.61 Closure of laceration of liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.69', 'Operations on liver
- Repair of liver
-- Other repair of liver 50.69
50.69 Other repair of liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.9', 'Operations on liver
- Other operations on liver 50.9
50.9 Other operations on liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.91', 'Operations on liver
- Other operations on liver
-- Percutaneous aspiration of liver 50.91
50.91 Percutaneous aspiration of liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.92', 'Operations on liver
- Other operations on liver
-- Extracorporeal hepatic assistance 50.92
50.92 Extracorporeal hepatic assistance', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.93', 'Operations on liver
- Other operations on liver
-- Localized perfusion of liver 50.93
50.93 Localized perfusion of liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.94', 'Operations on liver
- Other operations on liver
-- Other injection of therapeutic substance into liver 50.94
50.94 Other injection of therapeutic substance into liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.99', 'Operations on liver
- Other operations on liver
-- Other 50.99
50.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51', 'Operations on gallbladder and biliary tract
51 Operations on gallbladder and biliary tract', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.0', 'Operations on gallbladder and biliary tract
- Cholecystotomy and cholecystostomy 51.0
51.0 Cholecystotomy and cholecystostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.01', 'Operations on gallbladder and biliary tract
- Cholecystotomy and cholecystostomy
-- Percutaneous aspiration of gallbladder 51.01
51.01 Percutaneous aspiration of gallbladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.02', 'Operations on gallbladder and biliary tract
- Cholecystotomy and cholecystostomy
-- Trocar cholecystostomy 51.02
51.02 Trocar cholecystostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.03', 'Operations on gallbladder and biliary tract
- Cholecystotomy and cholecystostomy
-- Other cholecystostomy 51.03
51.03 Other cholecystostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.04', 'Operations on gallbladder and biliary tract
- Cholecystotomy and cholecystostomy
-- Other cholecystotomy 51.04
51.04 Other cholecystotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.1', 'Operations on gallbladder and biliary tract
- Diagnostic procedures on biliary tract 51.1
51.1 Diagnostic procedures on biliary tract', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.10', 'Operations on gallbladder and biliary tract
- Diagnostic procedures on biliary tract
-- Endoscopic retrograde cholangiopancreatography [ERCP] 51.10
51.10 Endoscopic retrograde cholangiopancreatography [ERCP]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.11', 'Operations on gallbladder and biliary tract
- Diagnostic procedures on biliary tract
-- Endoscopic retrograde cholangiography [ERC] 51.11
51.11 Endoscopic retrograde cholangiography [ERC]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.12', 'Operations on gallbladder and biliary tract
- Diagnostic procedures on biliary tract
-- Percutaneous biopsy of gallbladder or bile ducts 51.12
51.12 Percutaneous biopsy of gallbladder or bile ducts', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.13', 'Operations on gallbladder and biliary tract
- Diagnostic procedures on biliary tract
-- Open biopsy of gallbladder or bile ducts 51.13
51.13 Open biopsy of gallbladder or bile ducts', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.14', 'Operations on gallbladder and biliary tract
- Diagnostic procedures on biliary tract
-- Other closed [endoscopic] biopsy of biliary duct or sphincter of Oddi 51.14
51.14 Other closed [endoscopic] biopsy of biliary duct or sphincter of Oddi', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.15', 'Operations on gallbladder and biliary tract
- Diagnostic procedures on biliary tract
-- Pressure measurement of sphincter of Oddi 51.15
51.15 Pressure measurement of sphincter of Oddi', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.19', 'Operations on gallbladder and biliary tract
- Diagnostic procedures on biliary tract
-- Other diagnostic procedures on biliary tract 51.19
51.19 Other diagnostic procedures on biliary tract', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.2', 'Operations on gallbladder and biliary tract
- Cholecystectomy 51.2
51.2 Cholecystectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.21', 'Operations on gallbladder and biliary tract
- Cholecystectomy
-- Other partial cholecystectomy 51.21
51.21 Other partial cholecystectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.22', 'Operations on gallbladder and biliary tract
- Cholecystectomy
-- Cholecystectomy 51.22
51.22 Cholecystectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.23', 'Operations on gallbladder and biliary tract
- Cholecystectomy
-- Laparoscopic cholecystectomy 51.23
51.23 Laparoscopic cholecystectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.24', 'Operations on gallbladder and biliary tract
- Cholecystectomy
-- Laparoscopic partial cholecystectomy 51.24
51.24 Laparoscopic partial cholecystectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.3', 'Operations on gallbladder and biliary tract
- Anastomosis of gallbladder or bile duct 51.3
51.3 Anastomosis of gallbladder or bile duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.35', 'Operations on gallbladder and biliary tract
- Anastomosis of gallbladder or bile duct
-- Other gallbladder anastomosis 51.35
51.35 Other gallbladder anastomosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.36', 'Operations on gallbladder and biliary tract
- Anastomosis of gallbladder or bile duct
-- Choledochoenterostomy 51.36
51.36 Choledochoenterostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.37', 'Operations on gallbladder and biliary tract
- Anastomosis of gallbladder or bile duct
-- Anastomosis of hepatic duct to gastrointestinal tract 51.37
51.37 Anastomosis of hepatic duct to gastrointestinal tract', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.39', 'Operations on gallbladder and biliary tract
- Anastomosis of gallbladder or bile duct
-- Other bile duct anastomosis 51.39
51.39 Other bile duct anastomosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.4', 'Operations on gallbladder and biliary tract
- Incision of bile duct for relief of obstruction 51.4
51.4 Incision of bile duct for relief of obstruction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.41', 'Operations on gallbladder and biliary tract
- Incision of bile duct for relief of obstruction
-- Common duct exploration for removal of calculus 51.41
51.41 Common duct exploration for removal of calculus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.42', 'Operations on gallbladder and biliary tract
- Incision of bile duct for relief of obstruction
-- Common duct exploration for relief of other obstruction 51.42
51.42 Common duct exploration for relief of other obstruction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.43', 'Operations on gallbladder and biliary tract
- Incision of bile duct for relief of obstruction
-- Insertion of choledochohepatic tube for decompression 51.43
51.43 Insertion of choledochohepatic tube for decompression', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.49', 'Operations on gallbladder and biliary tract
- Incision of bile duct for relief of obstruction
-- Incision of other bile ducts for relief of obstruction 51.49
51.49 Incision of other bile ducts for relief of obstruction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.5', 'Operations on gallbladder and biliary tract
- Other incision of bile duct 51.5
51.5 Other incision of bile duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.51', 'Operations on gallbladder and biliary tract
- Other incision of bile duct
-- Exploration of common duct 51.51
51.51 Exploration of common duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.59', 'Operations on gallbladder and biliary tract
- Other incision of bile duct
-- Incision of other bile duct 51.59
51.59 Incision of other bile duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.6', 'Operations on gallbladder and biliary tract
- Local excision or destruction of lesion or tissue of biliary ducts 51.6
51.6 Local excision or destruction of lesion or tissue of biliary ducts', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.61', 'Operations on gallbladder and biliary tract
- Local excision or destruction of lesion or tissue of biliary ducts
-- Excision of cystic duct remnant 51.61
51.61 Excision of cystic duct remnant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.62', 'Operations on gallbladder and biliary tract
- Local excision or destruction of lesion or tissue of biliary ducts
-- Excision of ampulla of Vater (with reimplantation of common duct) 51.62
51.62 Excision of ampulla of Vater (with reimplantation of common duct)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.63', 'Operations on gallbladder and biliary tract
- Local excision or destruction of lesion or tissue of biliary ducts
-- Other excision of common duct 51.63
51.63 Other excision of common duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.64', 'Operations on gallbladder and biliary tract
- Local excision or destruction of lesion or tissue of biliary ducts
-- Endoscopic excision or destruction of lesion of biliary ducts or 51.64
51.64 Endoscopic excision or destruction of lesion of biliary ducts or', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.69', 'Operations on gallbladder and biliary tract
- Local excision or destruction of lesion or tissue of biliary ducts
-- Excision of other bile duct 51.69
51.69 Excision of other bile duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.7', 'Operations on gallbladder and biliary tract
- Repair of bile ducts 51.7
51.7 Repair of bile ducts', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.71', 'Operations on gallbladder and biliary tract
- Repair of bile ducts
-- Simple suture of common bile duct 51.71
51.71 Simple suture of common bile duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.72', 'Operations on gallbladder and biliary tract
- Repair of bile ducts
-- Choledochoplasty 51.72
51.72 Choledochoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.79', 'Operations on gallbladder and biliary tract
- Repair of bile ducts
-- Repair of other bile ducts 51.79
51.79 Repair of other bile ducts', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.8', 'Operations on gallbladder and biliary tract
- Other operations on biliary ducts and sphincter of Oddi 51.8
51.8 Other operations on biliary ducts and sphincter of Oddi', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.81', 'Operations on gallbladder and biliary tract
- Other operations on biliary ducts and sphincter of Oddi
-- Dilation of sphincter of Oddi 51.81
51.81 Dilation of sphincter of Oddi', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.82', 'Operations on gallbladder and biliary tract
- Other operations on biliary ducts and sphincter of Oddi
-- Pancreatic sphincterotomy 51.82
51.82 Pancreatic sphincterotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.83', 'Operations on gallbladder and biliary tract
- Other operations on biliary ducts and sphincter of Oddi
-- Pancreatic sphincteroplasty 51.83
51.83 Pancreatic sphincteroplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.84', 'Operations on gallbladder and biliary tract
- Other operations on biliary ducts and sphincter of Oddi
-- Endoscopic dilation of ampulla and biliary duct 51.84
51.84 Endoscopic dilation of ampulla and biliary duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.85', 'Operations on gallbladder and biliary tract
- Other operations on biliary ducts and sphincter of Oddi
-- Endoscopic sphincterotomy and papillotomy 51.85
51.85 Endoscopic sphincterotomy and papillotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.86', 'Operations on gallbladder and biliary tract
- Other operations on biliary ducts and sphincter of Oddi
-- Endoscopic insertion of nasobiliary drainage tube 51.86
51.86 Endoscopic insertion of nasobiliary drainage tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.87', 'Operations on gallbladder and biliary tract
- Other operations on biliary ducts and sphincter of Oddi
-- Endoscopic insertion of stent (tube) into bile duct 51.87
51.87 Endoscopic insertion of stent (tube) into bile duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.88', 'Operations on gallbladder and biliary tract
- Other operations on biliary ducts and sphincter of Oddi
-- Endoscopic removal of stone(s) from biliary tract 51.88
51.88 Endoscopic removal of stone(s) from biliary tract', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.89', 'Operations on gallbladder and biliary tract
- Other operations on biliary ducts and sphincter of Oddi
-- Other operations on sphincter of Oddi 51.89
51.89 Other operations on sphincter of Oddi', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.9', 'Operations on gallbladder and biliary tract
- Other operations on biliary tract 51.9
51.9 Other operations on biliary tract', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.91', 'Operations on gallbladder and biliary tract
- Other operations on biliary tract
-- Repair of laceration of gallbladder 51.91
51.91 Repair of laceration of gallbladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.92', 'Operations on gallbladder and biliary tract
- Other operations on biliary tract
-- Closure of cholecystostomy 51.92
51.92 Closure of cholecystostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.93', 'Operations on gallbladder and biliary tract
- Other operations on biliary tract
-- Closure of other biliary fistula 51.93
51.93 Closure of other biliary fistula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.94', 'Operations on gallbladder and biliary tract
- Other operations on biliary tract
-- Revision of anastomosis of biliary tract 51.94
51.94 Revision of anastomosis of biliary tract', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.95', 'Operations on gallbladder and biliary tract
- Other operations on biliary tract
-- Removal of prosthetic device from bile duct 51.95
51.95 Removal of prosthetic device from bile duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.96', 'Operations on gallbladder and biliary tract
- Other operations on biliary tract
-- Percutaneous extraction of common duct stones 51.96
51.96 Percutaneous extraction of common duct stones', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.98', 'Operations on gallbladder and biliary tract
- Other operations on biliary tract
-- Other percutaneous procedures on biliary tract 51.98
51.98 Other percutaneous procedures on biliary tract', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.99', 'Operations on gallbladder and biliary tract
- Other operations on biliary tract
-- Other 51.99
51.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52', 'Operations on pancreas
52 Operations on pancreas', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.0', 'Operations on pancreas
- Pancreatotomy 52.0
52.0 Pancreatotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.01', 'Operations on pancreas
- Pancreatotomy
-- Drainage of pancreatic cyst by catheter 52.01
52.01 Drainage of pancreatic cyst by catheter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.09', 'Operations on pancreas
- Pancreatotomy
-- Other pancreatotomy 52.09
52.09 Other pancreatotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.1', 'Operations on pancreas
- Diagnostic procedures on pancreas 52.1
52.1 Diagnostic procedures on pancreas', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.11', 'Operations on pancreas
- Diagnostic procedures on pancreas
-- Closed [aspiration] [needle] [percutaneous] biopsy of pancreas 52.11
52.11 Closed [aspiration] [needle] [percutaneous] biopsy of pancreas', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.12', 'Operations on pancreas
- Diagnostic procedures on pancreas
-- Open biopsy of pancreas 52.12
52.12 Open biopsy of pancreas', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.13', 'Operations on pancreas
- Diagnostic procedures on pancreas
-- Endoscopic retrograde pancreatography [ERP] 52.13
52.13 Endoscopic retrograde pancreatography [ERP]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.14', 'Operations on pancreas
- Diagnostic procedures on pancreas
-- Closed [endoscopic] biopsy of pancreatic duct 52.14
52.14 Closed [endoscopic] biopsy of pancreatic duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.19', 'Operations on pancreas
- Diagnostic procedures on pancreas
-- Other diagnostic procedures on pancreas 52.19
52.19 Other diagnostic procedures on pancreas', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.2', 'Operations on pancreas
- Local excision or destruction of pancreas and pancreatic duct 52.2
52.2 Local excision or destruction of pancreas and pancreatic duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.21', 'Operations on pancreas
- Local excision or destruction of pancreas and pancreatic duct
-- Endoscopic excision or destruction of lesion or tissue of pancreatic 52.21
52.21 Endoscopic excision or destruction of lesion or tissue of pancreatic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.22', 'Operations on pancreas
- Local excision or destruction of pancreas and pancreatic duct
-- Other excision or destruction of lesion or tissue of pancreas or 52.22
52.22 Other excision or destruction of lesion or tissue of pancreas or', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.3', 'Operations on pancreas
- Marsupialization of pancreatic cyst 52.3
52.3 Marsupialization of pancreatic cyst', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.4', 'Operations on pancreas
- Internal drainage of pancreatic cyst 52.4
52.4 Internal drainage of pancreatic cyst', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.5', 'Operations on pancreas
- Partial pancreatectomy 52.5
52.5 Partial pancreatectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.51', 'Operations on pancreas
- Partial pancreatectomy
-- Proximal pancreatectomy 52.51
52.51 Proximal pancreatectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.52', 'Operations on pancreas
- Partial pancreatectomy
-- Distal pancreatectomy 52.52
52.52 Distal pancreatectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.53', 'Operations on pancreas
- Partial pancreatectomy
-- Radical subtotal pancreatectomy 52.53
52.53 Radical subtotal pancreatectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.59', 'Operations on pancreas
- Partial pancreatectomy
-- Other partial pancreatectomy 52.59
52.59 Other partial pancreatectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.6', 'Operations on pancreas
- Total pancreatectomy 52.6
52.6 Total pancreatectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.7', 'Operations on pancreas
- Radical pancreaticoduodenectomy 52.7
52.7 Radical pancreaticoduodenectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.8', 'Operations on pancreas
- Transplant of pancreas 52.8
52.8 Transplant of pancreas', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.80', 'Operations on pancreas
- Transplant of pancreas
-- Pancreatic transplant, not otherwise specified 52.80
52.80 Pancreatic transplant, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.81', 'Operations on pancreas
- Transplant of pancreas
-- Reimplantation of pancreatic tissue 52.81
52.81 Reimplantation of pancreatic tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.82', 'Operations on pancreas
- Transplant of pancreas
-- Homotransplant of pancreas 52.82
52.82 Homotransplant of pancreas', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.83', 'Operations on pancreas
- Transplant of pancreas
-- Heterotransplant of pancreas 52.83
52.83 Heterotransplant of pancreas', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.84', 'Operations on pancreas
- Transplant of pancreas
-- Autotransplantation of cells of Islets of Langerhans 52.84
52.84 Autotransplantation of cells of Islets of Langerhans', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.85', 'Operations on pancreas
- Transplant of pancreas
-- Allotransplantation of cells of Islets of Langerhans 52.85
52.85 Allotransplantation of cells of Islets of Langerhans', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.86', 'Operations on pancreas
- Transplant of pancreas
-- Transplantation of cells of Islets of Langerhans, not otherwise 52.86
52.86 Transplantation of cells of Islets of Langerhans, not otherwise', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.9', 'Operations on pancreas
- Other operations on pancreas 52.9
52.9 Other operations on pancreas', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.92', 'Operations on pancreas
- Other operations on pancreas
-- Cannulation of pancreatic duct 52.92
52.92 Cannulation of pancreatic duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.93', 'Operations on pancreas
- Other operations on pancreas
-- Endoscopic insertion of stent (tube) into pancreatic duct 52.93
52.93 Endoscopic insertion of stent (tube) into pancreatic duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.94', 'Operations on pancreas
- Other operations on pancreas
-- Endoscopic removal of stone(s) from pancreatic duct 52.94
52.94 Endoscopic removal of stone(s) from pancreatic duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.95', 'Operations on pancreas
- Other operations on pancreas
-- Other repair of pancreas 52.95
52.95 Other repair of pancreas', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.96', 'Operations on pancreas
- Other operations on pancreas
-- Anastomosis of pancreas 52.96
52.96 Anastomosis of pancreas', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.97', 'Operations on pancreas
- Other operations on pancreas
-- Endoscopic insertion of nasopancreatic drainage tube 52.97
52.97 Endoscopic insertion of nasopancreatic drainage tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.98', 'Operations on pancreas
- Other operations on pancreas
-- Endoscopic dilation of pancreatic duct 52.98
52.98 Endoscopic dilation of pancreatic duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.99', 'Operations on pancreas
- Other operations on pancreas
-- Other 52.99
52.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53', 'Repair of hernia
53 Repair of hernia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.0', 'Repair of hernia
- Other unilateral repair of inguinal hernia 53.0
53.0 Other unilateral repair of inguinal hernia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.00', 'Repair of hernia
- Other unilateral repair of inguinal hernia
-- Unilateral repair of inguinal hernia, not otherwise specified 53.00
53.00 Unilateral repair of inguinal hernia, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.01', 'Repair of hernia
- Other unilateral repair of inguinal hernia
-- Other and open repair of direct inguinal hernia 53.01
53.01 Other and open repair of direct inguinal hernia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.02', 'Repair of hernia
- Other unilateral repair of inguinal hernia
-- Other and open repair of indirect inguinal hernia 53.02
53.02 Other and open repair of indirect inguinal hernia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.03', 'Repair of hernia
- Other unilateral repair of inguinal hernia
-- Other and open repair of direct inguinal hernia with graft or 53.03
53.03 Other and open repair of direct inguinal hernia with graft or', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.04', 'Repair of hernia
- Other unilateral repair of inguinal hernia
-- Other and open repair of indirect inguinal hernia with graft or 53.04
53.04 Other and open repair of indirect inguinal hernia with graft or', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.05', 'Repair of hernia
- Other unilateral repair of inguinal hernia
-- Repair of inguinal hernia with graft or prosthesis, not otherwise 53.05
53.05 Repair of inguinal hernia with graft or prosthesis, not otherwise', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.1', 'Repair of hernia
- Other bilateral repair of inguinal hernia 53.1
53.1 Other bilateral repair of inguinal hernia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.10', 'Repair of hernia
- Other bilateral repair of inguinal hernia
-- Bilateral repair of inguinal hernia, not otherwise specified 53.10
53.10 Bilateral repair of inguinal hernia, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.11', 'Repair of hernia
- Other bilateral repair of inguinal hernia
-- Other and open bilateral repair of direct inguinal hernia 53.11
53.11 Other and open bilateral repair of direct inguinal hernia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.12', 'Repair of hernia
- Other bilateral repair of inguinal hernia
-- Other and open bilateral repair of indirect inguinal hernia 53.12
53.12 Other and open bilateral repair of indirect inguinal hernia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.13', 'Repair of hernia
- Other bilateral repair of inguinal hernia
-- Other and open bilateral repair of inguinal hernia, one direct and 53.13
53.13 Other and open bilateral repair of inguinal hernia, one direct and', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.14', 'Repair of hernia
- Other bilateral repair of inguinal hernia
-- Other and open bilateral repair of direct inguinal hernia with graft 53.14
53.14 Other and open bilateral repair of direct inguinal hernia with graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.15', 'Repair of hernia
- Other bilateral repair of inguinal hernia
-- Other and open bilateral repair of indirect inguinal hernia with 53.15
53.15 Other and open bilateral repair of indirect inguinal hernia with', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.16', 'Repair of hernia
- Other bilateral repair of inguinal hernia
-- Other and open bilateral repair of inguinal hernia, one direct and 53.16
53.16 Other and open bilateral repair of inguinal hernia, one direct and', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.17', 'Repair of hernia
- Other bilateral repair of inguinal hernia
-- Bilateral inguinal hernia repair with graft or prosthesis, not 53.17
53.17 Bilateral inguinal hernia repair with graft or prosthesis, not', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.2', 'Repair of hernia
- Unilateral repair of femoral hernia 53.2
53.2 Unilateral repair of femoral hernia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.21', 'Repair of hernia
- Unilateral repair of femoral hernia
-- Unilateral repair of femoral hernia with graft or prosthesis 53.21
53.21 Unilateral repair of femoral hernia with graft or prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.29', 'Repair of hernia
- Unilateral repair of femoral hernia
-- Other unilateral femoral herniorrhaphy 53.29
53.29 Other unilateral femoral herniorrhaphy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.3', 'Repair of hernia
- Bilateral repair of femoral hernia 53.3
53.3 Bilateral repair of femoral hernia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.31', 'Repair of hernia
- Bilateral repair of femoral hernia
-- Bilateral repair of femoral hernia with graft or prosthesis 53.31
53.31 Bilateral repair of femoral hernia with graft or prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.39', 'Repair of hernia
- Bilateral repair of femoral hernia
-- Other bilateral femoral herniorrhaphy 53.39
53.39 Other bilateral femoral herniorrhaphy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.4', 'Repair of hernia
- Repair of umbilical hernia 53.4
53.4 Repair of umbilical hernia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.41', 'Repair of hernia
- Repair of umbilical hernia
-- Other and open repair of umbilical hernia with graft or prosthesis 53.41
53.41 Other and open repair of umbilical hernia with graft or prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.42', 'Repair of hernia
- Repair of umbilical hernia
-- Laparoscopic repair of umbilical hernia with graft or prosthesis  53.42
53.42 Laparoscopic repair of umbilical hernia with graft or prosthesis ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.43', 'Repair of hernia
- Repair of umbilical hernia
-- Other laparoscopic umbilical herniorrhaphy  53.43
53.43 Other laparoscopic umbilical herniorrhaphy ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.49', 'Repair of hernia
- Repair of umbilical hernia
-- Other open umbilical herniorrhaphy 53.49
53.49 Other open umbilical herniorrhaphy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.5', 'Repair of hernia
- Repair of other hernia of anterior abdominal wall (without graft or 53.5
53.5 Repair of other hernia of anterior abdominal wall (without graft or', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.51', 'Repair of hernia
- Repair of other hernia of anterior abdominal wall (without graft or
-- Incisional hernia repair 53.51
53.51 Incisional hernia repair', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.59', 'Repair of hernia
- Repair of other hernia of anterior abdominal wall (without graft or
-- Repair of other hernia of anterior abdominal wall 53.59
53.59 Repair of other hernia of anterior abdominal wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.6', 'Repair of hernia
- Repair of other hernia of anterior abdominal wall with graft or 53.6
53.6 Repair of other hernia of anterior abdominal wall with graft or', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.61', 'Repair of hernia
- Repair of other hernia of anterior abdominal wall with graft or
-- Other open incisional hernia repair with graft or prosthesis 53.61
53.61 Other open incisional hernia repair with graft or prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.62', 'Repair of hernia
- Repair of other hernia of anterior abdominal wall with graft or
-- Laparoscopic incisional hernia repair with graft or prosthesis  53.62
53.62 Laparoscopic incisional hernia repair with graft or prosthesis ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.63', 'Repair of hernia
- Repair of other hernia of anterior abdominal wall with graft or
-- Other laparoscopic repair of other hernia of anterior abdominal 53.63
53.63 Other laparoscopic repair of other hernia of anterior abdominal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.69', 'Repair of hernia
- Repair of other hernia of anterior abdominal wall with graft or
-- Other and open repair of other hernia of anterior abdominal wall 53.69
53.69 Other and open repair of other hernia of anterior abdominal wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.7', 'Repair of hernia
- Repair of diaphragmatic hernia, abdominal approach 53.7
53.7 Repair of diaphragmatic hernia, abdominal approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.71', 'Repair of hernia
- Repair of diaphragmatic hernia, abdominal approach
-- Laparoscopic repair of diaphragmatic hernia, abdominal approach  53.71
53.71 Laparoscopic repair of diaphragmatic hernia, abdominal approach ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.72', 'Repair of hernia
- Repair of diaphragmatic hernia, abdominal approach
-- Other and open repair of diaphragmatic hernia, abdominal 53.72
53.72 Other and open repair of diaphragmatic hernia, abdominal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.75', 'Repair of hernia
- Repair of diaphragmatic hernia, abdominal approach
-- Repair of diaphragmatic hernia, abdominal approach, not 53.75
53.75 Repair of diaphragmatic hernia, abdominal approach, not', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.8', 'Repair of hernia
- Repair of diaphragmatic hernia, thoracic approach 53.8
53.8 Repair of diaphragmatic hernia, thoracic approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.80', 'Repair of hernia
- Repair of diaphragmatic hernia, thoracic approach
-- Repair of diaphragmatic hernia with thoracic approach, not 53.80
53.80 Repair of diaphragmatic hernia with thoracic approach, not', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.81', 'Repair of hernia
- Repair of diaphragmatic hernia, thoracic approach
-- Plication of the diaphragm 53.81
53.81 Plication of the diaphragm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.82', 'Repair of hernia
- Repair of diaphragmatic hernia, thoracic approach
-- Repair of parasternal hernia 53.82
53.82 Repair of parasternal hernia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.83', 'Repair of hernia
- Repair of diaphragmatic hernia, thoracic approach
-- Laparoscopic repair of diaphragmatic hernia, with thoracic 53.83
53.83 Laparoscopic repair of diaphragmatic hernia, with thoracic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.84', 'Repair of hernia
- Repair of diaphragmatic hernia, thoracic approach
-- Other and open repair of diaphragmatic hernia, with thoracic 53.84
53.84 Other and open repair of diaphragmatic hernia, with thoracic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.9', 'Repair of hernia
- Other hernia repair 53.9
53.9 Other hernia repair', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54', 'Other operations on abdominal region
54 Other operations on abdominal region', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.0', 'Other operations on abdominal region
- Incision of abdominal wall 54.0
54.0 Incision of abdominal wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.1', 'Other operations on abdominal region
- Laparotomy 54.1
54.1 Laparotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.11', 'Other operations on abdominal region
- Laparotomy
-- Exploratory laparotomy 54.11
54.11 Exploratory laparotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.12', 'Other operations on abdominal region
- Laparotomy
-- Reopening of recent laparotomy site 54.12
54.12 Reopening of recent laparotomy site', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.19', 'Other operations on abdominal region
- Laparotomy
-- Other laparotomy 54.19
54.19 Other laparotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.2', 'Other operations on abdominal region
- Diagnostic procedures of abdominal region 54.2
54.2 Diagnostic procedures of abdominal region', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.21', 'Other operations on abdominal region
- Diagnostic procedures of abdominal region
-- Laparoscopy 54.21
54.21 Laparoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.22', 'Other operations on abdominal region
- Diagnostic procedures of abdominal region
-- Biopsy of abdominal wall or umbilicus 54.22
54.22 Biopsy of abdominal wall or umbilicus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.23', 'Other operations on abdominal region
- Diagnostic procedures of abdominal region
-- Biopsy of peritoneum 54.23
54.23 Biopsy of peritoneum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.24', 'Other operations on abdominal region
- Diagnostic procedures of abdominal region
-- Closed [percutaneous] [needle] biopsy of intra-abdominal mass 54.24
54.24 Closed [percutaneous] [needle] biopsy of intra-abdominal mass', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.25', 'Other operations on abdominal region
- Diagnostic procedures of abdominal region
-- Peritoneal lavage 54.25
54.25 Peritoneal lavage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.29', 'Other operations on abdominal region
- Diagnostic procedures of abdominal region
-- Other diagnostic procedures on abdominal region 54.29
54.29 Other diagnostic procedures on abdominal region', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.3', 'Other operations on abdominal region
- Excision or destruction of lesion or tissue of abdominal wall or 54.3
54.3 Excision or destruction of lesion or tissue of abdominal wall or', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.4', 'Other operations on abdominal region
- Excision or destruction of peritoneal tissue 54.4
54.4 Excision or destruction of peritoneal tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.5', 'Other operations on abdominal region
- Lysis of peritoneal adhesions 54.5
54.5 Lysis of peritoneal adhesions', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.51', 'Other operations on abdominal region
- Lysis of peritoneal adhesions
-- Laparoscopic lysis of peritoneal adhesions 54.51
54.51 Laparoscopic lysis of peritoneal adhesions', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.59', 'Other operations on abdominal region
- Lysis of peritoneal adhesions
-- Other lysis of peritoneal adhesions 54.59
54.59 Other lysis of peritoneal adhesions', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.6', 'Other operations on abdominal region
- Suture of abdominal wall and peritoneum 54.6
54.6 Suture of abdominal wall and peritoneum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.61', 'Other operations on abdominal region
- Suture of abdominal wall and peritoneum
-- Reclosure of postoperative disruption of abdominal wall 54.61
54.61 Reclosure of postoperative disruption of abdominal wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.62', 'Other operations on abdominal region
- Suture of abdominal wall and peritoneum
-- Delayed closure of granulating abdominal wound 54.62
54.62 Delayed closure of granulating abdominal wound', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.63', 'Other operations on abdominal region
- Suture of abdominal wall and peritoneum
-- Other suture of abdominal wall 54.63
54.63 Other suture of abdominal wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.64', 'Other operations on abdominal region
- Suture of abdominal wall and peritoneum
-- Suture of peritoneum 54.64
54.64 Suture of peritoneum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.7', 'Other operations on abdominal region
- Other repair of abdominal wall and peritoneum 54.7
54.7 Other repair of abdominal wall and peritoneum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.71', 'Other operations on abdominal region
- Other repair of abdominal wall and peritoneum
-- Repair of gastroschisis 54.71
54.71 Repair of gastroschisis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.72', 'Other operations on abdominal region
- Other repair of abdominal wall and peritoneum
-- Other repair of abdominal wall 54.72
54.72 Other repair of abdominal wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.73', 'Other operations on abdominal region
- Other repair of abdominal wall and peritoneum
-- Other repair of peritoneum 54.73
54.73 Other repair of peritoneum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.74', 'Other operations on abdominal region
- Other repair of abdominal wall and peritoneum
-- Other repair of omentum 54.74
54.74 Other repair of omentum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.75', 'Other operations on abdominal region
- Other repair of abdominal wall and peritoneum
-- Other repair of mesentery 54.75
54.75 Other repair of mesentery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.9', 'Other operations on abdominal region
- Other operations of abdominal region 54.9
54.9 Other operations of abdominal region', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.91', 'Other operations on abdominal region
- Other operations of abdominal region
-- Percutaneous abdominal drainage 54.91
54.91 Percutaneous abdominal drainage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.92', 'Other operations on abdominal region
- Other operations of abdominal region
-- Removal of foreign body from peritoneal cavity 54.92
54.92 Removal of foreign body from peritoneal cavity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.93', 'Other operations on abdominal region
- Other operations of abdominal region
-- Creation of cutaneoperitoneal fistula 54.93
54.93 Creation of cutaneoperitoneal fistula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.94', 'Other operations on abdominal region
- Other operations of abdominal region
-- Creation of peritoneovascular shunt 54.94
54.94 Creation of peritoneovascular shunt', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.95', 'Other operations on abdominal region
- Other operations of abdominal region
-- Incision of peritoneum 54.95
54.95 Incision of peritoneum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.96', 'Other operations on abdominal region
- Other operations of abdominal region
-- Injection of air into peritoneal cavity 54.96
54.96 Injection of air into peritoneal cavity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.97', 'Other operations on abdominal region
- Other operations of abdominal region
-- Injection of locally-acting therapeutic substance into peritoneal 54.97
54.97 Injection of locally-acting therapeutic substance into peritoneal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.98', 'Other operations on abdominal region
- Other operations of abdominal region
-- Peritoneal dialysis 54.98
54.98 Peritoneal dialysis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.99', 'Other operations on abdominal region
- Other operations of abdominal region
-- Other 54.99
54.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55', 'Operations on kidney
55 Operations on kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.0', 'Operations on kidney
- Nephrotomy and nephrostomy 55.0
55.0 Nephrotomy and nephrostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.01', 'Operations on kidney
- Nephrotomy and nephrostomy
-- Nephrotomy 55.01
55.01 Nephrotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.02', 'Operations on kidney
- Nephrotomy and nephrostomy
-- Nephrostomy 55.02
55.02 Nephrostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.03', 'Operations on kidney
- Nephrotomy and nephrostomy
-- Percutaneous nephrostomy without fragmentation 55.03
55.03 Percutaneous nephrostomy without fragmentation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.04', 'Operations on kidney
- Nephrotomy and nephrostomy
-- Percutaneous nephrostomy with fragmentation 55.04
55.04 Percutaneous nephrostomy with fragmentation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.1', 'Operations on kidney
- Pyelotomy and pyelostomy 55.1
55.1 Pyelotomy and pyelostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.11', 'Operations on kidney
- Pyelotomy and pyelostomy
-- Pyelotomy 55.11
55.11 Pyelotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.12', 'Operations on kidney
- Pyelotomy and pyelostomy
-- Pyelostomy 55.12
55.12 Pyelostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.2', 'Operations on kidney
- Diagnostic procedures on kidney 55.2
55.2 Diagnostic procedures on kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.21', 'Operations on kidney
- Diagnostic procedures on kidney
-- Nephroscopy 55.21
55.21 Nephroscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.22', 'Operations on kidney
- Diagnostic procedures on kidney
-- Pyeloscopy 55.22
55.22 Pyeloscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.23', 'Operations on kidney
- Diagnostic procedures on kidney
-- Closed [percutaneous] [needle] biopsy of kidney 55.23
55.23 Closed [percutaneous] [needle] biopsy of kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.24', 'Operations on kidney
- Diagnostic procedures on kidney
-- Open biopsy of kidney 55.24
55.24 Open biopsy of kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.29', 'Operations on kidney
- Diagnostic procedures on kidney
-- Other diagnostic procedures on kidney 55.29
55.29 Other diagnostic procedures on kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.3', 'Operations on kidney
- Local excision or destruction of lesion or tissue of kidney 55.3
55.3 Local excision or destruction of lesion or tissue of kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.31', 'Operations on kidney
- Local excision or destruction of lesion or tissue of kidney
-- Marsupialization of kidney lesion 55.31
55.31 Marsupialization of kidney lesion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.32', 'Operations on kidney
- Local excision or destruction of lesion or tissue of kidney
-- Open ablation of renal lesion or tissue 55.32
55.32 Open ablation of renal lesion or tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.33', 'Operations on kidney
- Local excision or destruction of lesion or tissue of kidney
-- Percutaneous ablation of renal lesion or tissue 55.33
55.33 Percutaneous ablation of renal lesion or tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.34', 'Operations on kidney
- Local excision or destruction of lesion or tissue of kidney
-- Laparoscopic ablation of renal lesion or tissue 55.34
55.34 Laparoscopic ablation of renal lesion or tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.35', 'Operations on kidney
- Local excision or destruction of lesion or tissue of kidney
-- Other and unspecified ablation of renal lesion or tissue 55.35
55.35 Other and unspecified ablation of renal lesion or tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.39', 'Operations on kidney
- Local excision or destruction of lesion or tissue of kidney
-- Other local destruction or excision of renal lesion or tissue 55.39
55.39 Other local destruction or excision of renal lesion or tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.4', 'Operations on kidney
- Partial nephrectomy 55.4
55.4 Partial nephrectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.5', 'Operations on kidney
- Complete nephrectomy 55.5
55.5 Complete nephrectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.51', 'Operations on kidney
- Complete nephrectomy
-- Nephroureterectomy 55.51
55.51 Nephroureterectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.52', 'Operations on kidney
- Complete nephrectomy
-- Nephrectomy of remaining kidney 55.52
55.52 Nephrectomy of remaining kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.53', 'Operations on kidney
- Complete nephrectomy
-- Removal of transplanted or rejected kidney 55.53
55.53 Removal of transplanted or rejected kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.54', 'Operations on kidney
- Complete nephrectomy
-- Bilateral nephrectomy 55.54
55.54 Bilateral nephrectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.6', 'Operations on kidney
- Transplant of kidney 55.6
55.6 Transplant of kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.61', 'Operations on kidney
- Transplant of kidney
-- Renal autotransplantation 55.61
55.61 Renal autotransplantation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.69', 'Operations on kidney
- Transplant of kidney
-- Other kidney transplantation 55.69
55.69 Other kidney transplantation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.7', 'Operations on kidney
- Nephropexy 55.7
55.7 Nephropexy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.8', 'Operations on kidney
- Other repair of kidney 55.8
55.8 Other repair of kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.81', 'Operations on kidney
- Other repair of kidney
-- Suture of laceration of kidney 55.81
55.81 Suture of laceration of kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.82', 'Operations on kidney
- Other repair of kidney
-- Closure of nephrostomy and pyelostomy 55.82
55.82 Closure of nephrostomy and pyelostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.83', 'Operations on kidney
- Other repair of kidney
-- Closure of other fistula of kidney 55.83
55.83 Closure of other fistula of kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.84', 'Operations on kidney
- Other repair of kidney
-- Reduction of torsion of renal pedicle 55.84
55.84 Reduction of torsion of renal pedicle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.85', 'Operations on kidney
- Other repair of kidney
-- Symphysiotomy for horseshoe kidney 55.85
55.85 Symphysiotomy for horseshoe kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.86', 'Operations on kidney
- Other repair of kidney
-- Anastomosis of kidney 55.86
55.86 Anastomosis of kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.87', 'Operations on kidney
- Other repair of kidney
-- Correction of ureteropelvic junction 55.87
55.87 Correction of ureteropelvic junction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.89', 'Operations on kidney
- Other repair of kidney
-- Other 55.89
55.89 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.9', 'Operations on kidney
- Other operations on kidney 55.9
55.9 Other operations on kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.91', 'Operations on kidney
- Other operations on kidney
-- Decapsulation of kidney 55.91
55.91 Decapsulation of kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.92', 'Operations on kidney
- Other operations on kidney
-- Percutaneous aspiration of kidney (pelvis) 55.92
55.92 Percutaneous aspiration of kidney (pelvis)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.93', 'Operations on kidney
- Other operations on kidney
-- Replacement of nephrostomy tube 55.93
55.93 Replacement of nephrostomy tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.94', 'Operations on kidney
- Other operations on kidney
-- Replacement of pyelostomy tube 55.94
55.94 Replacement of pyelostomy tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.95', 'Operations on kidney
- Other operations on kidney
-- Local perfusion of kidney 55.95
55.95 Local perfusion of kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.96', 'Operations on kidney
- Other operations on kidney
-- Other injection of therapeutic substance into kidney 55.96
55.96 Other injection of therapeutic substance into kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.97', 'Operations on kidney
- Other operations on kidney
-- Implantation or replacement of mechanical kidney 55.97
55.97 Implantation or replacement of mechanical kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.98', 'Operations on kidney
- Other operations on kidney
-- Removal of mechanical kidney 55.98
55.98 Removal of mechanical kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.99', 'Operations on kidney
- Other operations on kidney
-- Other 55.99
55.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56', 'Operations on ureter
56 Operations on ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.0', 'Operations on ureter
- Transurethral removal of obstruction from ureter and renal 56.0
56.0 Transurethral removal of obstruction from ureter and renal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.1', 'Operations on ureter
- Ureteral meatotomy 56.1
56.1 Ureteral meatotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.2', 'Operations on ureter
- Ureterotomy 56.2
56.2 Ureterotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.3', 'Operations on ureter
- Diagnostic procedures on ureter 56.3
56.3 Diagnostic procedures on ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.31', 'Operations on ureter
- Diagnostic procedures on ureter
-- Ureteroscopy 56.31
56.31 Ureteroscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.32', 'Operations on ureter
- Diagnostic procedures on ureter
-- Closed percutaneous biopsy of ureter 56.32
56.32 Closed percutaneous biopsy of ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.33', 'Operations on ureter
- Diagnostic procedures on ureter
-- Closed endoscopic biopsy of ureter 56.33
56.33 Closed endoscopic biopsy of ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.34', 'Operations on ureter
- Diagnostic procedures on ureter
-- Open biopsy of ureter 56.34
56.34 Open biopsy of ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.35', 'Operations on ureter
- Diagnostic procedures on ureter
-- Endoscopy (cystoscopy) (looposcopy)of ileal conduit 56.35
56.35 Endoscopy (cystoscopy) (looposcopy)of ileal conduit', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.39', 'Operations on ureter
- Diagnostic procedures on ureter
-- Other diagnostic procedures on ureter 56.39
56.39 Other diagnostic procedures on ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.4', 'Operations on ureter
- Ureterectomy 56.4
56.4 Ureterectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.40', 'Operations on ureter
- Ureterectomy
-- Ureterectomy, not otherwise specified 56.40
56.40 Ureterectomy, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.41', 'Operations on ureter
- Ureterectomy
-- Partial ureterectomy 56.41
56.41 Partial ureterectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.42', 'Operations on ureter
- Ureterectomy
-- Total ureterectomy 56.42
56.42 Total ureterectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.5', 'Operations on ureter
- Cutaneous uretero-ileostomy 56.5
56.5 Cutaneous uretero-ileostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.51', 'Operations on ureter
- Cutaneous uretero-ileostomy
-- Formation of cutaneous uretero-ileostomy 56.51
56.51 Formation of cutaneous uretero-ileostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.52', 'Operations on ureter
- Cutaneous uretero-ileostomy
-- Revision of cutaneous uretero-ileostomy 56.52
56.52 Revision of cutaneous uretero-ileostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.6', 'Operations on ureter
- Other external urinary diversion 56.6
56.6 Other external urinary diversion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.61', 'Operations on ureter
- Other external urinary diversion
-- Formation of other cutaneous ureterostomy 56.61
56.61 Formation of other cutaneous ureterostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.62', 'Operations on ureter
- Other external urinary diversion
-- Revision of other cutaneous ureterostomy 56.62
56.62 Revision of other cutaneous ureterostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.7', 'Operations on ureter
- Other anastomosis or bypass of ureter 56.7
56.7 Other anastomosis or bypass of ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.71', 'Operations on ureter
- Other anastomosis or bypass of ureter
-- Urinary diversion to intestine 56.71
56.71 Urinary diversion to intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.72', 'Operations on ureter
- Other anastomosis or bypass of ureter
-- Revision of ureterointestinal anastomosis 56.72
56.72 Revision of ureterointestinal anastomosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.73', 'Operations on ureter
- Other anastomosis or bypass of ureter
-- Nephrocystanastomosis, not otherwise specified 56.73
56.73 Nephrocystanastomosis, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.74', 'Operations on ureter
- Other anastomosis or bypass of ureter
-- Ureteroneocystostomy 56.74
56.74 Ureteroneocystostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.75', 'Operations on ureter
- Other anastomosis or bypass of ureter
-- Transureteroureterostomy 56.75
56.75 Transureteroureterostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.79', 'Operations on ureter
- Other anastomosis or bypass of ureter
-- Other 56.79
56.79 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.8', 'Operations on ureter
- Repair of ureter 56.8
56.8 Repair of ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.81', 'Operations on ureter
- Repair of ureter
-- Lysis of intraluminal adhesions of ureter 56.81
56.81 Lysis of intraluminal adhesions of ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.82', 'Operations on ureter
- Repair of ureter
-- Suture of laceration of ureter 56.82
56.82 Suture of laceration of ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.83', 'Operations on ureter
- Repair of ureter
-- Closure of ureterostomy 56.83
56.83 Closure of ureterostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.84', 'Operations on ureter
- Repair of ureter
-- Closure of other fistula of ureter 56.84
56.84 Closure of other fistula of ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.85', 'Operations on ureter
- Repair of ureter
-- Ureteropexy 56.85
56.85 Ureteropexy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.86', 'Operations on ureter
- Repair of ureter
-- Removal of ligature from ureter 56.86
56.86 Removal of ligature from ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.89', 'Operations on ureter
- Repair of ureter
-- Other repair of ureter 56.89
56.89 Other repair of ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.9', 'Operations on ureter
- Other operations on ureter 56.9
56.9 Other operations on ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.91', 'Operations on ureter
- Other operations on ureter
-- Dilation of ureteral meatus 56.91
56.91 Dilation of ureteral meatus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.92', 'Operations on ureter
- Other operations on ureter
-- Implantation of electronic ureteral stimulator 56.92
56.92 Implantation of electronic ureteral stimulator', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.93', 'Operations on ureter
- Other operations on ureter
-- Replacement of electronic ureteral stimulator 56.93
56.93 Replacement of electronic ureteral stimulator', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.94', 'Operations on ureter
- Other operations on ureter
-- Removal of electronic ureteral stimulator 56.94
56.94 Removal of electronic ureteral stimulator', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.95', 'Operations on ureter
- Other operations on ureter
-- Ligation of ureter 56.95
56.95 Ligation of ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.99', 'Operations on ureter
- Other operations on ureter
-- Other 56.99
56.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57', 'Operations on urinary bladder
57 Operations on urinary bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.0', 'Operations on urinary bladder
- Transurethral clearance of bladder 57.0
57.0 Transurethral clearance of bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.1', 'Operations on urinary bladder
- Cystotomy and cystostomy 57.1
57.1 Cystotomy and cystostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.11', 'Operations on urinary bladder
- Cystotomy and cystostomy
-- Percutaneous aspiration of bladder 57.11
57.11 Percutaneous aspiration of bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.12', 'Operations on urinary bladder
- Cystotomy and cystostomy
-- Lysis of intraluminal adhesions with incision into bladder 57.12
57.12 Lysis of intraluminal adhesions with incision into bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.17', 'Operations on urinary bladder
- Cystotomy and cystostomy
-- Percutaneous cystostomy 57.17
57.17 Percutaneous cystostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.18', 'Operations on urinary bladder
- Cystotomy and cystostomy
-- Other suprapubic cystostomy 57.18
57.18 Other suprapubic cystostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.19', 'Operations on urinary bladder
- Cystotomy and cystostomy
-- Other cystotomy 57.19
57.19 Other cystotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.2', 'Operations on urinary bladder
- Vesicostomy 57.2
57.2 Vesicostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.21', 'Operations on urinary bladder
- Vesicostomy
-- Vesicostomy 57.21
57.21 Vesicostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.22', 'Operations on urinary bladder
- Vesicostomy
-- Revision or closure of vesicostomy 57.22
57.22 Revision or closure of vesicostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.3', 'Operations on urinary bladder
- Diagnostic procedures on bladder 57.3
57.3 Diagnostic procedures on bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.31', 'Operations on urinary bladder
- Diagnostic procedures on bladder
-- Cystoscopy through artificial stoma 57.31
57.31 Cystoscopy through artificial stoma', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.32', 'Operations on urinary bladder
- Diagnostic procedures on bladder
-- Other cystoscopy 57.32
57.32 Other cystoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.33', 'Operations on urinary bladder
- Diagnostic procedures on bladder
-- Closed [transurethral] biopsy of bladder 57.33
57.33 Closed [transurethral] biopsy of bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.34', 'Operations on urinary bladder
- Diagnostic procedures on bladder
-- Open biopsy of bladder 57.34
57.34 Open biopsy of bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.39', 'Operations on urinary bladder
- Diagnostic procedures on bladder
-- Other diagnostic procedures on bladder 57.39
57.39 Other diagnostic procedures on bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.4', 'Operations on urinary bladder
- Transurethral excision or destruction of bladder tissue 57.4
57.4 Transurethral excision or destruction of bladder tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.41', 'Operations on urinary bladder
- Transurethral excision or destruction of bladder tissue
-- Transurethral lysis of intraluminal adhesions 57.41
57.41 Transurethral lysis of intraluminal adhesions', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.49', 'Operations on urinary bladder
- Transurethral excision or destruction of bladder tissue
-- Other transurethral excision or destruction of lesion or tissue 57.49
57.49 Other transurethral excision or destruction of lesion or tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.5', 'Operations on urinary bladder
- Other excision or destruction of bladder tissue 57.5
57.5 Other excision or destruction of bladder tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.51', 'Operations on urinary bladder
- Other excision or destruction of bladder tissue
-- Excision of urachus 57.51
57.51 Excision of urachus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.59', 'Operations on urinary bladder
- Other excision or destruction of bladder tissue
-- Open excision or destruction of other lesion or tissue of bladder 57.59
57.59 Open excision or destruction of other lesion or tissue of bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.6', 'Operations on urinary bladder
- Partial cystectomy 57.6
57.6 Partial cystectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.7', 'Operations on urinary bladder
- Total cystectomy 57.7
57.7 Total cystectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.71', 'Operations on urinary bladder
- Total cystectomy
-- Radical cystectomy 57.71
57.71 Radical cystectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.79', 'Operations on urinary bladder
- Total cystectomy
-- Other total cystectomy 57.79
57.79 Other total cystectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.8', 'Operations on urinary bladder
- Other repair of urinary bladder 57.8
57.8 Other repair of urinary bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.81', 'Operations on urinary bladder
- Other repair of urinary bladder
-- Suture of laceration of bladder 57.81
57.81 Suture of laceration of bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.82', 'Operations on urinary bladder
- Other repair of urinary bladder
-- Closure of cystostomy 57.82
57.82 Closure of cystostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.83', 'Operations on urinary bladder
- Other repair of urinary bladder
-- Repair of fistula involving bladder and intestine 57.83
57.83 Repair of fistula involving bladder and intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.84', 'Operations on urinary bladder
- Other repair of urinary bladder
-- Repair of other fistula of bladder 57.84
57.84 Repair of other fistula of bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.85', 'Operations on urinary bladder
- Other repair of urinary bladder
-- Cystourethroplasty and plastic repair of bladder neck 57.85
57.85 Cystourethroplasty and plastic repair of bladder neck', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.86', 'Operations on urinary bladder
- Other repair of urinary bladder
-- Repair of bladder exstrophy 57.86
57.86 Repair of bladder exstrophy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.87', 'Operations on urinary bladder
- Other repair of urinary bladder
-- Reconstruction of urinary bladder 57.87
57.87 Reconstruction of urinary bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.88', 'Operations on urinary bladder
- Other repair of urinary bladder
-- Other anastomosis of bladder 57.88
57.88 Other anastomosis of bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.89', 'Operations on urinary bladder
- Other repair of urinary bladder
-- Other repair of bladder 57.89
57.89 Other repair of bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.9', 'Operations on urinary bladder
- Other operations on bladder 57.9
57.9 Other operations on bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.91', 'Operations on urinary bladder
- Other operations on bladder
-- Sphincterotomy of bladder 57.91
57.91 Sphincterotomy of bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.92', 'Operations on urinary bladder
- Other operations on bladder
-- Dilation of bladder neck 57.92
57.92 Dilation of bladder neck', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.93', 'Operations on urinary bladder
- Other operations on bladder
-- Control of (postoperative) hemorrhage of bladder 57.93
57.93 Control of (postoperative) hemorrhage of bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.94', 'Operations on urinary bladder
- Other operations on bladder
-- Insertion of indwelling urinary catheter 57.94
57.94 Insertion of indwelling urinary catheter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.95', 'Operations on urinary bladder
- Other operations on bladder
-- Replacement of indwelling urinary catheter 57.95
57.95 Replacement of indwelling urinary catheter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.96', 'Operations on urinary bladder
- Other operations on bladder
-- Implantation of electronic bladder stimulator 57.96
57.96 Implantation of electronic bladder stimulator', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.97', 'Operations on urinary bladder
- Other operations on bladder
-- Replacement of electronic bladder stimulator 57.97
57.97 Replacement of electronic bladder stimulator', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.98', 'Operations on urinary bladder
- Other operations on bladder
-- Removal of electronic bladder stimulator 57.98
57.98 Removal of electronic bladder stimulator', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.99', 'Operations on urinary bladder
- Other operations on bladder
-- Other 57.99
57.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58', 'Operations on urethra
58 Operations on urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.0', 'Operations on urethra
- Urethrotomy 58.0
58.0 Urethrotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.1', 'Operations on urethra
- Urethral meatotomy 58.1
58.1 Urethral meatotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.2', 'Operations on urethra
- Diagnostic procedures on urethra 58.2
58.2 Diagnostic procedures on urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.21', 'Operations on urethra
- Diagnostic procedures on urethra
-- Perineal urethroscopy 58.21
58.21 Perineal urethroscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.22', 'Operations on urethra
- Diagnostic procedures on urethra
-- Other urethroscopy 58.22
58.22 Other urethroscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.23', 'Operations on urethra
- Diagnostic procedures on urethra
-- Biopsy of urethra 58.23
58.23 Biopsy of urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.24', 'Operations on urethra
- Diagnostic procedures on urethra
-- Biopsy of periurethral tissue 58.24
58.24 Biopsy of periurethral tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.29', 'Operations on urethra
- Diagnostic procedures on urethra
-- Other diagnostic procedures on urethra and periurethral tissue 58.29
58.29 Other diagnostic procedures on urethra and periurethral tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.3', 'Operations on urethra
- Excision or destruction of lesion or tissue of urethra 58.3
58.3 Excision or destruction of lesion or tissue of urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.31', 'Operations on urethra
- Excision or destruction of lesion or tissue of urethra
-- Endoscopic excision or destruction of lesion or tissue of urethra 58.31
58.31 Endoscopic excision or destruction of lesion or tissue of urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.39', 'Operations on urethra
- Excision or destruction of lesion or tissue of urethra
-- Other local excision or destruction of lesion or tissue of urethra 58.39
58.39 Other local excision or destruction of lesion or tissue of urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.4', 'Operations on urethra
- Repair of urethra 58.4
58.4 Repair of urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.41', 'Operations on urethra
- Repair of urethra
-- Suture of laceration of urethra 58.41
58.41 Suture of laceration of urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.42', 'Operations on urethra
- Repair of urethra
-- Closure of urethrostomy 58.42
58.42 Closure of urethrostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.43', 'Operations on urethra
- Repair of urethra
-- Closure of other fistula of urethra 58.43
58.43 Closure of other fistula of urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.44', 'Operations on urethra
- Repair of urethra
-- Reanastomosis of urethra 58.44
58.44 Reanastomosis of urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.45', 'Operations on urethra
- Repair of urethra
-- Repair of hypospadias or epispadias 58.45
58.45 Repair of hypospadias or epispadias', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.46', 'Operations on urethra
- Repair of urethra
-- Other reconstruction of urethra 58.46
58.46 Other reconstruction of urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.47', 'Operations on urethra
- Repair of urethra
-- Urethral meatoplasty 58.47
58.47 Urethral meatoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.49', 'Operations on urethra
- Repair of urethra
-- Other repair of urethra 58.49
58.49 Other repair of urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.5', 'Operations on urethra
- Release of urethral stricture 58.5
58.5 Release of urethral stricture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.6', 'Operations on urethra
- Dilation of urethra 58.6
58.6 Dilation of urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.9', 'Operations on urethra
- Other operations on urethra and periurethral tissue 58.9
58.9 Other operations on urethra and periurethral tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.91', 'Operations on urethra
- Other operations on urethra and periurethral tissue
-- Incision of periurethral tissue 58.91
58.91 Incision of periurethral tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.92', 'Operations on urethra
- Other operations on urethra and periurethral tissue
-- Excision of periurethral tissue 58.92
58.92 Excision of periurethral tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.93', 'Operations on urethra
- Other operations on urethra and periurethral tissue
-- Implantation of artificial urinary sphincter [AUS] 58.93
58.93 Implantation of artificial urinary sphincter [AUS]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.99', 'Operations on urethra
- Other operations on urethra and periurethral tissue
-- Other 58.99
58.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59', 'Other operations on urinary tract
59 Other operations on urinary tract', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.0', 'Other operations on urinary tract
- Dissection of retroperitoneal tissue 59.0
59.0 Dissection of retroperitoneal tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.00', 'Other operations on urinary tract
- Dissection of retroperitoneal tissue
-- Retroperitoneal dissection, not otherwise specified 59.00
59.00 Retroperitoneal dissection, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.02', 'Other operations on urinary tract
- Dissection of retroperitoneal tissue
-- Other lysis of perirenal or periureteral adhesions 59.02
59.02 Other lysis of perirenal or periureteral adhesions', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.03', 'Other operations on urinary tract
- Dissection of retroperitoneal tissue
-- Laparoscopic lysis of perirenal or periureteral adhesions 59.03
59.03 Laparoscopic lysis of perirenal or periureteral adhesions', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.09', 'Other operations on urinary tract
- Dissection of retroperitoneal tissue
-- Other incision of perirenal or periureteral tissue 59.09
59.09 Other incision of perirenal or periureteral tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.1', 'Other operations on urinary tract
- Incision of perivesical tissue 59.1
59.1 Incision of perivesical tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.11', 'Other operations on urinary tract
- Incision of perivesical tissue
-- Other lysis of perivesical adhesions 59.11
59.11 Other lysis of perivesical adhesions', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.12', 'Other operations on urinary tract
- Incision of perivesical tissue
-- Laparoscopic lysis of perivesical adhesions 59.12
59.12 Laparoscopic lysis of perivesical adhesions', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.19', 'Other operations on urinary tract
- Incision of perivesical tissue
-- Other incision of perivesical tissue 59.19
59.19 Other incision of perivesical tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.2', 'Other operations on urinary tract
- Diagnostic procedures on perirenal and perivesical tissue 59.2
59.2 Diagnostic procedures on perirenal and perivesical tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.21', 'Other operations on urinary tract
- Diagnostic procedures on perirenal and perivesical tissue
-- Biopsy of perirenal or perivesical tissue 59.21
59.21 Biopsy of perirenal or perivesical tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.29', 'Other operations on urinary tract
- Diagnostic procedures on perirenal and perivesical tissue
-- Other diagnostic procedures on perirenal tissue, perivesical tissue, 59.29
59.29 Other diagnostic procedures on perirenal tissue, perivesical tissue,', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.3', 'Other operations on urinary tract
- Plication of urethrovesical junction 59.3
59.3 Plication of urethrovesical junction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.4', 'Other operations on urinary tract
- Suprapubic sling operation 59.4
59.4 Suprapubic sling operation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.5', 'Other operations on urinary tract
- Retropubic urethral suspension 59.5
59.5 Retropubic urethral suspension', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.6', 'Other operations on urinary tract
- Paraurethral suspension 59.6
59.6 Paraurethral suspension', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.7', 'Other operations on urinary tract
- Other repair of urinary stress incontinence 59.7
59.7 Other repair of urinary stress incontinence', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.71', 'Other operations on urinary tract
- Other repair of urinary stress incontinence
-- Levator muscle operation for urethrovesical suspension 59.71
59.71 Levator muscle operation for urethrovesical suspension', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.72', 'Other operations on urinary tract
- Other repair of urinary stress incontinence
-- Injection of implant into urethra and/or bladder neck 59.72
59.72 Injection of implant into urethra and/or bladder neck', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.79', 'Other operations on urinary tract
- Other repair of urinary stress incontinence
-- Other 59.79
59.79 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.8', 'Other operations on urinary tract
- Ureteral catheterization 59.8
59.8 Ureteral catheterization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.9', 'Other operations on urinary tract
- Other operations on urinary system 59.9
59.9 Other operations on urinary system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.91', 'Other operations on urinary tract
- Other operations on urinary system
-- Excision of perirenal or perivesical tissue 59.91
59.91 Excision of perirenal or perivesical tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.92', 'Other operations on urinary tract
- Other operations on urinary system
-- Other operations on perirenal or perivesical tissue 59.92
59.92 Other operations on perirenal or perivesical tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.93', 'Other operations on urinary tract
- Other operations on urinary system
-- Replacement of ureterostomy tube 59.93
59.93 Replacement of ureterostomy tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.94', 'Other operations on urinary tract
- Other operations on urinary system
-- Replacement of cystostomy tube 59.94
59.94 Replacement of cystostomy tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.95', 'Other operations on urinary tract
- Other operations on urinary system
-- Ultrasonic fragmentation of urinary stones 59.95
59.95 Ultrasonic fragmentation of urinary stones', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.99', 'Other operations on urinary tract
- Other operations on urinary system
-- Other 59.99
59.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60', 'Operations on prostate and seminal vesicles
60 Operations on prostate and seminal vesicles', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.0', 'Operations on prostate and seminal vesicles
- Incision of prostate 60.0
60.0 Incision of prostate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.1', 'Operations on prostate and seminal vesicles
- Diagnostic procedures on prostate and seminal vesicles 60.1
60.1 Diagnostic procedures on prostate and seminal vesicles', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.11', 'Operations on prostate and seminal vesicles
- Diagnostic procedures on prostate and seminal vesicles
-- Closed [percutaneous] [needle] biopsy of prostate 60.11
60.11 Closed [percutaneous] [needle] biopsy of prostate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.12', 'Operations on prostate and seminal vesicles
- Diagnostic procedures on prostate and seminal vesicles
-- Open biopsy of prostate 60.12
60.12 Open biopsy of prostate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.13', 'Operations on prostate and seminal vesicles
- Diagnostic procedures on prostate and seminal vesicles
-- Closed [percutaneous] biopsy of seminal vesicles 60.13
60.13 Closed [percutaneous] biopsy of seminal vesicles', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.14', 'Operations on prostate and seminal vesicles
- Diagnostic procedures on prostate and seminal vesicles
-- Open biopsy of seminal vesicles 60.14
60.14 Open biopsy of seminal vesicles', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.15', 'Operations on prostate and seminal vesicles
- Diagnostic procedures on prostate and seminal vesicles
-- Biopsy of periprostatic tissue 60.15
60.15 Biopsy of periprostatic tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.18', 'Operations on prostate and seminal vesicles
- Diagnostic procedures on prostate and seminal vesicles
-- Other diagnostic procedures on prostate and periprostatic tissue 60.18
60.18 Other diagnostic procedures on prostate and periprostatic tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.19', 'Operations on prostate and seminal vesicles
- Diagnostic procedures on prostate and seminal vesicles
-- Other diagnostic procedures on seminal vesicles 60.19
60.19 Other diagnostic procedures on seminal vesicles', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.2', 'Operations on prostate and seminal vesicles
- Transurethral prostatectomy 60.2
60.2 Transurethral prostatectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.21', 'Operations on prostate and seminal vesicles
- Transurethral prostatectomy
-- Transurethral (ultrasound) guided laser induced prostatectomy 60.21
60.21 Transurethral (ultrasound) guided laser induced prostatectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.29', 'Operations on prostate and seminal vesicles
- Transurethral prostatectomy
-- Other transurethral prostatectomy 60.29
60.29 Other transurethral prostatectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.3', 'Operations on prostate and seminal vesicles
- Suprapubic prostatectomy 60.3
60.3 Suprapubic prostatectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.4', 'Operations on prostate and seminal vesicles
- Retropubic prostatectomy 60.4
60.4 Retropubic prostatectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.5', 'Operations on prostate and seminal vesicles
- Radical prostatectomy 60.5
60.5 Radical prostatectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.6', 'Operations on prostate and seminal vesicles
- Other prostatectomy 60.6
60.6 Other prostatectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.61', 'Operations on prostate and seminal vesicles
- Other prostatectomy
-- Local excision of lesion of prostate 60.61
60.61 Local excision of lesion of prostate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.62', 'Operations on prostate and seminal vesicles
- Other prostatectomy
-- Perineal prostatectomy 60.62
60.62 Perineal prostatectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.69', 'Operations on prostate and seminal vesicles
- Other prostatectomy
-- Other 60.69
60.69 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.7', 'Operations on prostate and seminal vesicles
- Operations on seminal vesicles 60.7
60.7 Operations on seminal vesicles', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.71', 'Operations on prostate and seminal vesicles
- Operations on seminal vesicles
-- Percutaneous aspiration of seminal vesicle 60.71
60.71 Percutaneous aspiration of seminal vesicle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.72', 'Operations on prostate and seminal vesicles
- Operations on seminal vesicles
-- Incision of seminal vesicle 60.72
60.72 Incision of seminal vesicle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.73', 'Operations on prostate and seminal vesicles
- Operations on seminal vesicles
-- Excision of seminal vesicle 60.73
60.73 Excision of seminal vesicle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.79', 'Operations on prostate and seminal vesicles
- Operations on seminal vesicles
-- Other operations on seminal vesicles 60.79
60.79 Other operations on seminal vesicles', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.8', 'Operations on prostate and seminal vesicles
- Incision or excision of periprostatic tissue 60.8
60.8 Incision or excision of periprostatic tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.81', 'Operations on prostate and seminal vesicles
- Incision or excision of periprostatic tissue
-- Incision of periprostatic tissue 60.81
60.81 Incision of periprostatic tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.82', 'Operations on prostate and seminal vesicles
- Incision or excision of periprostatic tissue
-- Excision of periprostatic tissue 60.82
60.82 Excision of periprostatic tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.9', 'Operations on prostate and seminal vesicles
- Other operations on prostate 60.9
60.9 Other operations on prostate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.91', 'Operations on prostate and seminal vesicles
- Other operations on prostate
-- Percutaneous aspiration of prostate 60.91
60.91 Percutaneous aspiration of prostate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.92', 'Operations on prostate and seminal vesicles
- Other operations on prostate
-- Injection into prostate test link 60.92
60.92 Injection into prostate test link', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.93', 'Operations on prostate and seminal vesicles
- Other operations on prostate
-- Repair of prostate 60.93
60.93 Repair of prostate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.94', 'Operations on prostate and seminal vesicles
- Other operations on prostate
-- Control of (postoperative) hemorrhage of prostate 60.94
60.94 Control of (postoperative) hemorrhage of prostate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.95', 'Operations on prostate and seminal vesicles
- Other operations on prostate
-- Transurethral balloon dilation of the prostatic urethra 60.95
60.95 Transurethral balloon dilation of the prostatic urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.96', 'Operations on prostate and seminal vesicles
- Other operations on prostate
-- Transurethral destruction of prostate tissue by microwave 60.96
60.96 Transurethral destruction of prostate tissue by microwave', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.97', 'Operations on prostate and seminal vesicles
- Other operations on prostate
-- Other transurethral destruction of prostate tissue by other 60.97
60.97 Other transurethral destruction of prostate tissue by other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.99', 'Operations on prostate and seminal vesicles
- Other operations on prostate
-- Other 60.99
60.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61', 'Operations on scrotum and tunica vaginalis
61 Operations on scrotum and tunica vaginalis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.0', 'Operations on scrotum and tunica vaginalis
- Incision and drainage of scrotum and tunica vaginalis 61.0
61.0 Incision and drainage of scrotum and tunica vaginalis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.1', 'Operations on scrotum and tunica vaginalis
- Diagnostic procedures on scrotum and tunica vaginalis 61.1
61.1 Diagnostic procedures on scrotum and tunica vaginalis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.11', 'Operations on scrotum and tunica vaginalis
- Diagnostic procedures on scrotum and tunica vaginalis
-- Biopsy of scrotum or tunica vaginalis 61.11
61.11 Biopsy of scrotum or tunica vaginalis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.19', 'Operations on scrotum and tunica vaginalis
- Diagnostic procedures on scrotum and tunica vaginalis
-- Other diagnostic procedures on scrotum and tunica vaginalis 61.19
61.19 Other diagnostic procedures on scrotum and tunica vaginalis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.2', 'Operations on scrotum and tunica vaginalis
- Excision of hydrocele (of tunica vaginalis) 61.2
61.2 Excision of hydrocele (of tunica vaginalis)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.3', 'Operations on scrotum and tunica vaginalis
- Excision or destruction of lesion or tissue of scrotum 61.3
61.3 Excision or destruction of lesion or tissue of scrotum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.4', 'Operations on scrotum and tunica vaginalis
- Repair of scrotum and tunica vaginalis 61.4
61.4 Repair of scrotum and tunica vaginalis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.41', 'Operations on scrotum and tunica vaginalis
- Repair of scrotum and tunica vaginalis
-- Suture of laceration of scrotum and tunica vaginalis 61.41
61.41 Suture of laceration of scrotum and tunica vaginalis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.42', 'Operations on scrotum and tunica vaginalis
- Repair of scrotum and tunica vaginalis
-- Repair of scrotal fistula 61.42
61.42 Repair of scrotal fistula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.49', 'Operations on scrotum and tunica vaginalis
- Repair of scrotum and tunica vaginalis
-- Other repair of scrotum and tunica vaginalis 61.49
61.49 Other repair of scrotum and tunica vaginalis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.9', 'Operations on scrotum and tunica vaginalis
- Other operations on scrotum and tunica vaginalis 61.9
61.9 Other operations on scrotum and tunica vaginalis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.91', 'Operations on scrotum and tunica vaginalis
- Other operations on scrotum and tunica vaginalis
-- Percutaneous aspiration of tunica vaginalis 61.91
61.91 Percutaneous aspiration of tunica vaginalis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.92', 'Operations on scrotum and tunica vaginalis
- Other operations on scrotum and tunica vaginalis
-- Excision of lesion of tunica vaginalis other than hydrocele 61.92
61.92 Excision of lesion of tunica vaginalis other than hydrocele', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.99', 'Operations on scrotum and tunica vaginalis
- Other operations on scrotum and tunica vaginalis
-- Other 61.99
61.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62', 'Operations on testes
62 Operations on testes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.0', 'Operations on testes
- Incision of testis 62.0
62.0 Incision of testis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.1', 'Operations on testes
- Diagnostic procedures on testes 62.1
62.1 Diagnostic procedures on testes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.11', 'Operations on testes
- Diagnostic procedures on testes
-- Closed [percutaneous] [needle] biopsy of testis 62.11
62.11 Closed [percutaneous] [needle] biopsy of testis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.12', 'Operations on testes
- Diagnostic procedures on testes
-- Open biopsy of testis 62.12
62.12 Open biopsy of testis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.19', 'Operations on testes
- Diagnostic procedures on testes
-- Other diagnostic procedures on testes 62.19
62.19 Other diagnostic procedures on testes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.2', 'Operations on testes
- Excision or destruction of testicular lesion 62.2
62.2 Excision or destruction of testicular lesion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.3', 'Operations on testes
- Unilateral orchiectomy 62.3
62.3 Unilateral orchiectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.4', 'Operations on testes
- Bilateral orchiectomy 62.4
62.4 Bilateral orchiectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.41', 'Operations on testes
- Bilateral orchiectomy
-- Removal of both testes at same operative episode 62.41
62.41 Removal of both testes at same operative episode', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.42', 'Operations on testes
- Bilateral orchiectomy
-- Removal of remaining testis 62.42
62.42 Removal of remaining testis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.5', 'Operations on testes
- Orchiopexy 62.5
62.5 Orchiopexy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.6', 'Operations on testes
- Repair of testes 62.6
62.6 Repair of testes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.61', 'Operations on testes
- Repair of testes
-- Suture of laceration of testis 62.61
62.61 Suture of laceration of testis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.69', 'Operations on testes
- Repair of testes
-- Other repair of testis 62.69
62.69 Other repair of testis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.7', 'Operations on testes
- Insertion of testicular prosthesis 62.7
62.7 Insertion of testicular prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.9', 'Operations on testes
- Other operations on testes 62.9
62.9 Other operations on testes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.91', 'Operations on testes
- Other operations on testes
-- Aspiration of testis 62.91
62.91 Aspiration of testis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.92', 'Operations on testes
- Other operations on testes
-- Injection of therapeutic substance into testis 62.92
62.92 Injection of therapeutic substance into testis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.99', 'Operations on testes
- Other operations on testes
-- Other 62.99
62.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63', 'Operations on spermatic cord, epididymis, and vas deferens
63 Operations on spermatic cord, epididymis, and vas deferens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.0', 'Operations on spermatic cord, epididymis, and vas deferens
- Diagnostic procedures on spermatic cord, epididymis, and vas 63.0
63.0 Diagnostic procedures on spermatic cord, epididymis, and vas', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.01', 'Operations on spermatic cord, epididymis, and vas deferens
- Diagnostic procedures on spermatic cord, epididymis, and vas
-- Biopsy of spermatic cord, epididymis, or vas deferens 63.01
63.01 Biopsy of spermatic cord, epididymis, or vas deferens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.09', 'Operations on spermatic cord, epididymis, and vas deferens
- Diagnostic procedures on spermatic cord, epididymis, and vas
-- Other diagnostic procedures on spermatic cord, epididymis, and 63.09
63.09 Other diagnostic procedures on spermatic cord, epididymis, and', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.1', 'Operations on spermatic cord, epididymis, and vas deferens
- Excision of varicocele and hydrocele of spermatic cord 63.1
63.1 Excision of varicocele and hydrocele of spermatic cord', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.2', 'Operations on spermatic cord, epididymis, and vas deferens
- Excision of cyst of epididymis 63.2
63.2 Excision of cyst of epididymis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.3', 'Operations on spermatic cord, epididymis, and vas deferens
- Excision of other lesion or tissue of spermatic cord and 63.3
63.3 Excision of other lesion or tissue of spermatic cord and', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.4', 'Operations on spermatic cord, epididymis, and vas deferens
- Epididymectomy 63.4
63.4 Epididymectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.5', 'Operations on spermatic cord, epididymis, and vas deferens
- Repair of spermatic cord and epididymis 63.5
63.5 Repair of spermatic cord and epididymis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.51', 'Operations on spermatic cord, epididymis, and vas deferens
- Repair of spermatic cord and epididymis
-- Suture of laceration of spermatic cord and epididymis 63.51
63.51 Suture of laceration of spermatic cord and epididymis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.52', 'Operations on spermatic cord, epididymis, and vas deferens
- Repair of spermatic cord and epididymis
-- Reduction of torsion of testis or spermatic cord 63.52
63.52 Reduction of torsion of testis or spermatic cord', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.53', 'Operations on spermatic cord, epididymis, and vas deferens
- Repair of spermatic cord and epididymis
-- Transplantation of spermatic cord 63.53
63.53 Transplantation of spermatic cord', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.59', 'Operations on spermatic cord, epididymis, and vas deferens
- Repair of spermatic cord and epididymis
-- Other repair of spermatic cord and epididymis 63.59
63.59 Other repair of spermatic cord and epididymis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.6', 'Operations on spermatic cord, epididymis, and vas deferens
- Vasotomy 63.6
63.6 Vasotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.7', 'Operations on spermatic cord, epididymis, and vas deferens
- Vasectomy and ligation of vas deferens 63.7
63.7 Vasectomy and ligation of vas deferens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.70', 'Operations on spermatic cord, epididymis, and vas deferens
- Vasectomy and ligation of vas deferens
-- Male sterilization procedure, not otherwise specified 63.70
63.70 Male sterilization procedure, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.71', 'Operations on spermatic cord, epididymis, and vas deferens
- Vasectomy and ligation of vas deferens
-- Ligation of vas deferens 63.71
63.71 Ligation of vas deferens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.72', 'Operations on spermatic cord, epididymis, and vas deferens
- Vasectomy and ligation of vas deferens
-- Ligation of spermatic cord 63.72
63.72 Ligation of spermatic cord', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.73', 'Operations on spermatic cord, epididymis, and vas deferens
- Vasectomy and ligation of vas deferens
-- Vasectomy 63.73
63.73 Vasectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.8', 'Operations on spermatic cord, epididymis, and vas deferens
- Repair of vas deferens and epididymis 63.8
63.8 Repair of vas deferens and epididymis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.81', 'Operations on spermatic cord, epididymis, and vas deferens
- Repair of vas deferens and epididymis
-- Suture of laceration of vas deferens and epididymis 63.81
63.81 Suture of laceration of vas deferens and epididymis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.82', 'Operations on spermatic cord, epididymis, and vas deferens
- Repair of vas deferens and epididymis
-- Reconstruction of surgically divided vas deferens 63.82
63.82 Reconstruction of surgically divided vas deferens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.83', 'Operations on spermatic cord, epididymis, and vas deferens
- Repair of vas deferens and epididymis
-- Epididymovasostomy 63.83
63.83 Epididymovasostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.84', 'Operations on spermatic cord, epididymis, and vas deferens
- Repair of vas deferens and epididymis
-- Removal of ligature from vas deferens 63.84
63.84 Removal of ligature from vas deferens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.85', 'Operations on spermatic cord, epididymis, and vas deferens
- Repair of vas deferens and epididymis
-- Removal of valve from vas deferens 63.85
63.85 Removal of valve from vas deferens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.89', 'Operations on spermatic cord, epididymis, and vas deferens
- Repair of vas deferens and epididymis
-- Other repair of vas deferens and epididymis 63.89
63.89 Other repair of vas deferens and epididymis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.9', 'Operations on spermatic cord, epididymis, and vas deferens
- Other operations on spermatic cord, epididymis, and vas 63.9
63.9 Other operations on spermatic cord, epididymis, and vas', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.91', 'Operations on spermatic cord, epididymis, and vas deferens
- Other operations on spermatic cord, epididymis, and vas
-- Aspiration of spermatocele 63.91
63.91 Aspiration of spermatocele', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.92', 'Operations on spermatic cord, epididymis, and vas deferens
- Other operations on spermatic cord, epididymis, and vas
-- Epididymotomy 63.92
63.92 Epididymotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.93', 'Operations on spermatic cord, epididymis, and vas deferens
- Other operations on spermatic cord, epididymis, and vas
-- Incision of spermatic cord 63.93
63.93 Incision of spermatic cord', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.94', 'Operations on spermatic cord, epididymis, and vas deferens
- Other operations on spermatic cord, epididymis, and vas
-- Lysis of adhesions of spermatic cord 63.94
63.94 Lysis of adhesions of spermatic cord', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.95', 'Operations on spermatic cord, epididymis, and vas deferens
- Other operations on spermatic cord, epididymis, and vas
-- Insertion of valve in vas deferens 63.95
63.95 Insertion of valve in vas deferens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.99', 'Operations on spermatic cord, epididymis, and vas deferens
- Other operations on spermatic cord, epididymis, and vas
-- Other 63.99
63.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64', 'Operations on penis
64 Operations on penis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.0', 'Operations on penis
- Circumcision 64.0
64.0 Circumcision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.1', 'Operations on penis
- Diagnostic procedures on the penis 64.1
64.1 Diagnostic procedures on the penis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.11', 'Operations on penis
- Diagnostic procedures on the penis
-- Biopsy of penis 64.11
64.11 Biopsy of penis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.19', 'Operations on penis
- Diagnostic procedures on the penis
-- Other diagnostic procedures on penis 64.19
64.19 Other diagnostic procedures on penis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.2', 'Operations on penis
- Local excision or destruction of lesion of penis 64.2
64.2 Local excision or destruction of lesion of penis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.3', 'Operations on penis
- Amputation of penis 64.3
64.3 Amputation of penis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.4', 'Operations on penis
- Repair and plastic operation on penis 64.4
64.4 Repair and plastic operation on penis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.41', 'Operations on penis
- Repair and plastic operation on penis
-- Suture of laceration of penis 64.41
64.41 Suture of laceration of penis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.42', 'Operations on penis
- Repair and plastic operation on penis
-- Release of chordee 64.42
64.42 Release of chordee', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.43', 'Operations on penis
- Repair and plastic operation on penis
-- Construction of penis 64.43
64.43 Construction of penis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.44', 'Operations on penis
- Repair and plastic operation on penis
-- Reconstruction of penis 64.44
64.44 Reconstruction of penis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.45', 'Operations on penis
- Repair and plastic operation on penis
-- Replantation of penis 64.45
64.45 Replantation of penis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.49', 'Operations on penis
- Repair and plastic operation on penis
-- Other repair of penis 64.49
64.49 Other repair of penis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.5', 'Operations on penis
- Operations for sex transformation, not elsewhere classified 64.5
64.5 Operations for sex transformation, not elsewhere classified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.9', 'Operations on penis
- Other operations on male genital organs 64.9
64.9 Other operations on male genital organs', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.91', 'Operations on penis
- Other operations on male genital organs
-- Dorsal or lateral slit of prepuce 64.91
64.91 Dorsal or lateral slit of prepuce', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.92', 'Operations on penis
- Other operations on male genital organs
-- Incision of penis 64.92
64.92 Incision of penis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.93', 'Operations on penis
- Other operations on male genital organs
-- Division of penile adhesions 64.93
64.93 Division of penile adhesions', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.94', 'Operations on penis
- Other operations on male genital organs
-- Fitting of external prosthesis of penis 64.94
64.94 Fitting of external prosthesis of penis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.95', 'Operations on penis
- Other operations on male genital organs
-- Insertion or replacement of non-inflatable penile prosthesis 64.95
64.95 Insertion or replacement of non-inflatable penile prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.96', 'Operations on penis
- Other operations on male genital organs
-- Removal of internal prosthesis of penis 64.96
64.96 Removal of internal prosthesis of penis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.97', 'Operations on penis
- Other operations on male genital organs
-- Insertion or replacement of inflatable penile prosthesis 64.97
64.97 Insertion or replacement of inflatable penile prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.98', 'Operations on penis
- Other operations on male genital organs
-- Other operations on penis 64.98
64.98 Other operations on penis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.99', 'Operations on penis
- Other operations on male genital organs
-- Other 64.99
64.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65', 'Operations on ovary
65 Operations on ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.0', 'Operations on ovary
- Oophorotomy 65.0
65.0 Oophorotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.01', 'Operations on ovary
- Oophorotomy
-- Laparoscopic oophorotomy 65.01
65.01 Laparoscopic oophorotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.09', 'Operations on ovary
- Oophorotomy
-- Other oophorotomy 65.09
65.09 Other oophorotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.1', 'Operations on ovary
- Diagnostic procedures on ovaries 65.1
65.1 Diagnostic procedures on ovaries', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.11', 'Operations on ovary
- Diagnostic procedures on ovaries
-- Aspiration biopsy of ovary 65.11
65.11 Aspiration biopsy of ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.12', 'Operations on ovary
- Diagnostic procedures on ovaries
-- Other biopsy of ovary 65.12
65.12 Other biopsy of ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.13', 'Operations on ovary
- Diagnostic procedures on ovaries
-- Laparoscopic biopsy of ovary 65.13
65.13 Laparoscopic biopsy of ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.14', 'Operations on ovary
- Diagnostic procedures on ovaries
-- Other laparoscopic diagnostic procedures on ovaries 65.14
65.14 Other laparoscopic diagnostic procedures on ovaries', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.19', 'Operations on ovary
- Diagnostic procedures on ovaries
-- Other diagnostic procedures on ovaries 65.19
65.19 Other diagnostic procedures on ovaries', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.2', 'Operations on ovary
- Local excision or destruction of ovarian lesion or tissue 65.2
65.2 Local excision or destruction of ovarian lesion or tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.21', 'Operations on ovary
- Local excision or destruction of ovarian lesion or tissue
-- Marsupialization of ovarian cyst 65.21
65.21 Marsupialization of ovarian cyst', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.22', 'Operations on ovary
- Local excision or destruction of ovarian lesion or tissue
-- Wedge resection of ovary 65.22
65.22 Wedge resection of ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.23', 'Operations on ovary
- Local excision or destruction of ovarian lesion or tissue
-- Laparoscopic marsupialization of ovarian cyst 65.23
65.23 Laparoscopic marsupialization of ovarian cyst', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.24', 'Operations on ovary
- Local excision or destruction of ovarian lesion or tissue
-- Laparoscopic wedge resection of ovary 65.24
65.24 Laparoscopic wedge resection of ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.25', 'Operations on ovary
- Local excision or destruction of ovarian lesion or tissue
-- Other laparoscopic local excision or destruction of ovary 65.25
65.25 Other laparoscopic local excision or destruction of ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.29', 'Excision
- ovary
-- local
--- other 65.29
65.29 Other local excision or destruction of ovary', '[{"type":"includes","text":"Wedge resection of ovary"},{"type":"excludes","text":"biopsy of ovary (65.11-65.13)"}]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.3', 'Operations on ovary
- Unilateral oophorectomy 65.3
65.3 Unilateral oophorectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.31', 'Operations on ovary
- Unilateral oophorectomy
-- Laparoscopic unilateral oophorectomy 65.31
65.31 Laparoscopic unilateral oophorectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.39', 'Operations on ovary
- Unilateral oophorectomy
-- Other unilateral oophorectomy 65.39
65.39 Other unilateral oophorectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.4', 'Operations on ovary
- Unilateral salpingo-oophorectomy 65.4
65.4 Unilateral salpingo-oophorectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.41', 'Operations on ovary
- Unilateral salpingo-oophorectomy
-- Laparoscopic unilateral salpingo-oophorectomy 65.41
65.41 Laparoscopic unilateral salpingo-oophorectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.49', 'Operations on ovary
- Unilateral salpingo-oophorectomy
-- Other unilateral salpingo-oophorectomy 65.49
65.49 Other unilateral salpingo-oophorectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.5', 'Operations on ovary
- Bilateral oophorectomy 65.5
65.5 Bilateral oophorectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.51', 'Operations on ovary
- Bilateral oophorectomy
-- Other removal of both ovaries at same operative episode 65.51
65.51 Other removal of both ovaries at same operative episode', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.52', 'Operations on ovary
- Bilateral oophorectomy
-- Other removal of remaining ovary 65.52
65.52 Other removal of remaining ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.53', 'Operations on ovary
- Bilateral oophorectomy
-- Laparoscopic removal of both ovaries at same operative episode 65.53
65.53 Laparoscopic removal of both ovaries at same operative episode', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.54', 'Operations on ovary
- Bilateral oophorectomy
-- Laparoscopic removal of remaining ovary 65.54
65.54 Laparoscopic removal of remaining ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.6', 'Operations on ovary
- Bilateral salpingo-oophorectomy 65.6
65.6 Bilateral salpingo-oophorectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.61', 'Operations on ovary
- Bilateral salpingo-oophorectomy
-- Other removal of both ovaries and tubes at same operative 65.61
65.61 Other removal of both ovaries and tubes at same operative', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.62', 'Operations on ovary
- Bilateral salpingo-oophorectomy
-- Other removal of remaining ovary and tube 65.62
65.62 Other removal of remaining ovary and tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.63', 'Operations on ovary
- Bilateral salpingo-oophorectomy
-- Laparoscopic removal of both ovaries and tubes at same operative 65.63
65.63 Laparoscopic removal of both ovaries and tubes at same operative', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.64', 'Operations on ovary
- Bilateral salpingo-oophorectomy
-- Laparoscopic removal of remaining ovary and tube 65.64
65.64 Laparoscopic removal of remaining ovary and tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.7', 'Operations on ovary
- Repair of ovary 65.7
65.7 Repair of ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.71', 'Operations on ovary
- Repair of ovary
-- Other simple suture of ovary 65.71
65.71 Other simple suture of ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.72', 'Operations on ovary
- Repair of ovary
-- Other reimplantation of ovary 65.72
65.72 Other reimplantation of ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.73', 'Operations on ovary
- Repair of ovary
-- Other salpingo-oophoroplasty 65.73
65.73 Other salpingo-oophoroplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.74', 'Operations on ovary
- Repair of ovary
-- Laparoscopic simple suture of ovary 65.74
65.74 Laparoscopic simple suture of ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.75', 'Operations on ovary
- Repair of ovary
-- Laparoscopic reimplantation of ovary 65.75
65.75 Laparoscopic reimplantation of ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.76', 'Operations on ovary
- Repair of ovary
-- Laparoscopic salpingo-oophoroplasty 65.76
65.76 Laparoscopic salpingo-oophoroplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.79', 'Operations on ovary
- Repair of ovary
-- Other repair of ovary 65.79
65.79 Other repair of ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.8', 'Operations on ovary
- Lysis of adhesions of ovary and fallopian tube 65.8
65.8 Lysis of adhesions of ovary and fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.81', 'Operations on ovary
- Lysis of adhesions of ovary and fallopian tube
-- Laparoscopic lysis of adhesions of ovary and fallopian tube 65.81
65.81 Laparoscopic lysis of adhesions of ovary and fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.89', 'Operations on ovary
- Lysis of adhesions of ovary and fallopian tube
-- Other lysis of adhesions of ovary and fallopian tube 65.89
65.89 Other lysis of adhesions of ovary and fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.9', 'Operations on ovary
- Other operations on ovary 65.9
65.9 Other operations on ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.91', 'Operations on ovary
- Other operations on ovary
-- Aspiration of ovary 65.91
65.91 Aspiration of ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.92', 'Operations on ovary
- Other operations on ovary
-- Transplantation of ovary 65.92
65.92 Transplantation of ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.93', 'Operations on ovary
- Other operations on ovary
-- Manual rupture of ovarian cyst 65.93
65.93 Manual rupture of ovarian cyst', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.94', 'Operations on ovary
- Other operations on ovary
-- Ovarian denervation 65.94
65.94 Ovarian denervation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.95', 'Operations on ovary
- Other operations on ovary
-- Release of torsion of ovary 65.95
65.95 Release of torsion of ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.99', 'Operations on ovary
- Other operations on ovary
-- Other 65.99
65.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66', 'Operations on fallopian tubes
66 Operations on fallopian tubes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.0', 'Operations on fallopian tubes
- Salpingotomy and salpingostomy 66.0
66.0 Salpingotomy and salpingostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.01', 'Operations on fallopian tubes
- Salpingotomy and salpingostomy
-- Salpingotomy 66.01
66.01 Salpingotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.02', 'Operations on fallopian tubes
- Salpingotomy and salpingostomy
-- Salpingostomy 66.02
66.02 Salpingostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.1', 'Operations on fallopian tubes
- Diagnostic procedures on fallopian tubes 66.1
66.1 Diagnostic procedures on fallopian tubes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.11', 'Operations on fallopian tubes
- Diagnostic procedures on fallopian tubes
-- Biopsy of fallopian tube 66.11
66.11 Biopsy of fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.19', 'Operations on fallopian tubes
- Diagnostic procedures on fallopian tubes
-- Other diagnostic procedures on fallopian tubes 66.19
66.19 Other diagnostic procedures on fallopian tubes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.2', 'Operations on fallopian tubes
- Bilateral endoscopic destruction or occlusion of fallopian tubes 66.2
66.2 Bilateral endoscopic destruction or occlusion of fallopian tubes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.21', 'Operations on fallopian tubes
- Bilateral endoscopic destruction or occlusion of fallopian tubes
-- Bilateral endoscopic ligation and crushing of fallopian tubes 66.21
66.21 Bilateral endoscopic ligation and crushing of fallopian tubes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.22', 'Operations on fallopian tubes
- Bilateral endoscopic destruction or occlusion of fallopian tubes
-- Bilateral endoscopic ligation and division of fallopian tubes 66.22
66.22 Bilateral endoscopic ligation and division of fallopian tubes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.29', 'Operations on fallopian tubes
- Bilateral endoscopic destruction or occlusion of fallopian tubes
-- Other bilateral endoscopic destruction or occlusion of fallopian 66.29
66.29 Other bilateral endoscopic destruction or occlusion of fallopian', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.3', 'Operations on fallopian tubes
- Other bilateral destruction or occlusion of fallopian tubes 66.3
66.3 Other bilateral destruction or occlusion of fallopian tubes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.31', 'Operations on fallopian tubes
- Other bilateral destruction or occlusion of fallopian tubes
-- Other bilateral ligation and crushing of fallopian tubes 66.31
66.31 Other bilateral ligation and crushing of fallopian tubes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.32', 'Operations on fallopian tubes
- Other bilateral destruction or occlusion of fallopian tubes
-- Other bilateral ligation and division of fallopian tubes 66.32
66.32 Other bilateral ligation and division of fallopian tubes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.39', 'Operations on fallopian tubes
- Other bilateral destruction or occlusion of fallopian tubes
-- Other bilateral destruction or occlusion of fallopian tubes 66.39
66.39 Other bilateral destruction or occlusion of fallopian tubes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.4', 'Operations on fallopian tubes
- Total unilateral salpingectomy 66.4
66.4 Total unilateral salpingectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.5', 'Operations on fallopian tubes
- Total bilateral salpingectomy 66.5
66.5 Total bilateral salpingectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.51', 'Operations on fallopian tubes
- Total bilateral salpingectomy
-- Removal of both fallopian tubes at same operative episode 66.51
66.51 Removal of both fallopian tubes at same operative episode', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.52', 'Operations on fallopian tubes
- Total bilateral salpingectomy
-- Removal of remaining fallopian tube 66.52
66.52 Removal of remaining fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.6', 'Operations on fallopian tubes
- Other salpingectomy 66.6
66.6 Other salpingectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.61', 'Operations on fallopian tubes
- Other salpingectomy
-- Excision or destruction of lesion of fallopian tube 66.61
66.61 Excision or destruction of lesion of fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.62', 'Operations on fallopian tubes
- Other salpingectomy
-- Salpingectomy with removal of tubal pregnancy 66.62
66.62 Salpingectomy with removal of tubal pregnancy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.63', 'Operations on fallopian tubes
- Other salpingectomy
-- Bilateral partial salpingectomy, not otherwise specified 66.63
66.63 Bilateral partial salpingectomy, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.69', 'Operations on fallopian tubes
- Other salpingectomy
-- Other partial salpingectomy 66.69
66.69 Other partial salpingectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.7', 'Operations on fallopian tubes
- Repair of fallopian tube 66.7
66.7 Repair of fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.71', 'Operations on fallopian tubes
- Repair of fallopian tube
-- Simple suture of fallopian tube 66.71
66.71 Simple suture of fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.72', 'Operations on fallopian tubes
- Repair of fallopian tube
-- Salpingo-oophorostomy 66.72
66.72 Salpingo-oophorostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.73', 'Operations on fallopian tubes
- Repair of fallopian tube
-- Salpingo-salpingostomy 66.73
66.73 Salpingo-salpingostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.74', 'Operations on fallopian tubes
- Repair of fallopian tube
-- Salpingo-uterostomy 66.74
66.74 Salpingo-uterostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.79', 'Operations on fallopian tubes
- Repair of fallopian tube
-- Other repair of fallopian tube 66.79
66.79 Other repair of fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.8', 'Operations on fallopian tubes
- Insufflation of fallopian tube 66.8
66.8 Insufflation of fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.9', 'Operations on fallopian tubes
- Other operations on fallopian tubes 66.9
66.9 Other operations on fallopian tubes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.91', 'Operations on fallopian tubes
- Other operations on fallopian tubes
-- Aspiration of fallopian tube 66.91
66.91 Aspiration of fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.92', 'Operations on fallopian tubes
- Other operations on fallopian tubes
-- Unilateral destruction or occlusion of fallopian tube 66.92
66.92 Unilateral destruction or occlusion of fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.93', 'Operations on fallopian tubes
- Other operations on fallopian tubes
-- Implantation or replacement of prosthesis of fallopian tube 66.93
66.93 Implantation or replacement of prosthesis of fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.94', 'Operations on fallopian tubes
- Other operations on fallopian tubes
-- Removal of prosthesis of fallopian tube 66.94
66.94 Removal of prosthesis of fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.95', 'Operations on fallopian tubes
- Other operations on fallopian tubes
-- Insufflation of therapeutic agent into fallopian tubes 66.95
66.95 Insufflation of therapeutic agent into fallopian tubes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.96', 'Operations on fallopian tubes
- Other operations on fallopian tubes
-- Dilation of fallopian tube 66.96
66.96 Dilation of fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.97', 'Operations on fallopian tubes
- Other operations on fallopian tubes
-- Burying of fimbriae in uterine wall 66.97
66.97 Burying of fimbriae in uterine wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.99', 'Operations on fallopian tubes
- Other operations on fallopian tubes
-- Other 66.99
66.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67', 'Operations on cervix
67 Operations on cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.0', 'Operations on cervix
- Dilation of cervical canal 67.0
67.0 Dilation of cervical canal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.1', 'Operations on cervix
- Diagnostic procedures on cervix 67.1
67.1 Diagnostic procedures on cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.11', 'Operations on cervix
- Diagnostic procedures on cervix
-- Endocervical biopsy 67.11
67.11 Endocervical biopsy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.12', 'Operations on cervix
- Diagnostic procedures on cervix
-- Other cervical biopsy 67.12
67.12 Other cervical biopsy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.19', 'Operations on cervix
- Diagnostic procedures on cervix
-- Other diagnostic procedures on cervix 67.19
67.19 Other diagnostic procedures on cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.2', 'Operations on cervix
- Conization of cervix 67.2
67.2 Conization of cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.3', 'Operations on cervix
- Other excision or destruction of lesion or tissue of cervix 67.3
67.3 Other excision or destruction of lesion or tissue of cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.31', 'Operations on cervix
- Other excision or destruction of lesion or tissue of cervix
-- Marsupialization of cervical cyst 67.31
67.31 Marsupialization of cervical cyst', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.32', 'Operations on cervix
- Other excision or destruction of lesion or tissue of cervix
-- Destruction of lesion of cervix by cauterization 67.32
67.32 Destruction of lesion of cervix by cauterization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.33', 'Operations on cervix
- Other excision or destruction of lesion or tissue of cervix
-- Destruction of lesion of cervix by cryosurgery 67.33
67.33 Destruction of lesion of cervix by cryosurgery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.39', 'Operations on cervix
- Other excision or destruction of lesion or tissue of cervix
-- Other excision or destruction of lesion or tissue of cervix 67.39
67.39 Other excision or destruction of lesion or tissue of cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.4', 'Operations on cervix
- Amputation of cervix 67.4
67.4 Amputation of cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.5', 'Operations on cervix
- Repair of internal cervical os 67.5
67.5 Repair of internal cervical os', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.51', 'Operations on cervix
- Repair of internal cervical os
-- Transabdominal cerclage of cervix 67.51
67.51 Transabdominal cerclage of cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.59', 'Operations on cervix
- Repair of internal cervical os
-- Other repair of internal cervical os 67.59
67.59 Other repair of internal cervical os', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.6', 'Operations on cervix
- Other repair of cervix 67.6
67.6 Other repair of cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.61', 'Operations on cervix
- Other repair of cervix
-- Suture of laceration of cervix 67.61
67.61 Suture of laceration of cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.62', 'Operations on cervix
- Other repair of cervix
-- Repair of fistula of cervix 67.62
67.62 Repair of fistula of cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.69', 'Operations on cervix
- Other repair of cervix
-- Other repair of cervix 67.69
67.69 Other repair of cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68', 'Other incision and excision of uterus
68 Other incision and excision of uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.0', 'Other incision and excision of uterus
- Hysterotomy 68.0
68.0 Hysterotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.1', 'Other incision and excision of uterus
- Diagnostic procedures on uterus and supporting structures 68.1
68.1 Diagnostic procedures on uterus and supporting structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.11', 'Other incision and excision of uterus
- Diagnostic procedures on uterus and supporting structures
-- Digital examination of uterus 68.11
68.11 Digital examination of uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.12', 'Other incision and excision of uterus
- Diagnostic procedures on uterus and supporting structures
-- Hysteroscopy 68.12
68.12 Hysteroscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.13', 'Other incision and excision of uterus
- Diagnostic procedures on uterus and supporting structures
-- Open biopsy of uterus 68.13
68.13 Open biopsy of uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.14', 'Other incision and excision of uterus
- Diagnostic procedures on uterus and supporting structures
-- Open biopsy of uterine ligaments 68.14
68.14 Open biopsy of uterine ligaments', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.15', 'Other incision and excision of uterus
- Diagnostic procedures on uterus and supporting structures
-- Closed biopsy of uterine ligaments 68.15
68.15 Closed biopsy of uterine ligaments', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.16', 'Other incision and excision of uterus
- Diagnostic procedures on uterus and supporting structures
-- Closed biopsy of uterus 68.16
68.16 Closed biopsy of uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.19', 'Other incision and excision of uterus
- Diagnostic procedures on uterus and supporting structures
-- Other diagnostic procedures on uterus and supporting structures 68.19
68.19 Other diagnostic procedures on uterus and supporting structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.2', 'Other incision and excision of uterus
- Excision or destruction of lesion or tissue of uterus 68.2
68.2 Excision or destruction of lesion or tissue of uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.21', 'Other incision and excision of uterus
- Excision or destruction of lesion or tissue of uterus
-- Division of endometrial synechiae 68.21
68.21 Division of endometrial synechiae', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.22', 'Other incision and excision of uterus
- Excision or destruction of lesion or tissue of uterus
-- Incision or excision of congenital septum of uterus 68.22
68.22 Incision or excision of congenital septum of uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.23', 'Other incision and excision of uterus
- Excision or destruction of lesion or tissue of uterus
-- Endometrial ablation 68.23
68.23 Endometrial ablation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.29', 'Other incision and excision of uterus
- Excision or destruction of lesion or tissue of uterus
-- Other excision or destruction of lesion of uterus 68.29
68.29 Other excision or destruction of lesion of uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.3', 'Other incision and excision of uterus
- Subtotal abdominal hysterectomy 68.3
68.3 Subtotal abdominal hysterectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.31', 'Other incision and excision of uterus
- Subtotal abdominal hysterectomy
-- Laparoscopic supracervical hysterectomy [LSH] 68.31
68.31 Laparoscopic supracervical hysterectomy [LSH]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.39', 'Other incision and excision of uterus
- Subtotal abdominal hysterectomy
-- Other and unspecified subtotal abdominal hysterectomy, NOS 68.39
68.39 Other and unspecified subtotal abdominal hysterectomy, NOS', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.4', 'Other incision and excision of uterus
- Total abdominal hysterectomy 68.4
68.4 Total abdominal hysterectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.41', 'Other incision and excision of uterus
- Total abdominal hysterectomy
-- Laparoscopic total abdominal hysterectomy 68.41
68.41 Laparoscopic total abdominal hysterectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.49', 'Other incision and excision of uterus
- Total abdominal hysterectomy
-- Other and unspecified total abdominal hysterectomy 68.49
68.49 Other and unspecified total abdominal hysterectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.5', 'Other incision and excision of uterus
- Vaginal hysterectomy 68.5
68.5 Vaginal hysterectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.51', 'Other incision and excision of uterus
- Vaginal hysterectomy
-- Laparoscopically assisted vaginal hysterectomy (LAVH) 68.51
68.51 Laparoscopically assisted vaginal hysterectomy (LAVH)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.59', 'Other incision and excision of uterus
- Vaginal hysterectomy
-- Other and unspecified vaginal hysterectomy 68.59
68.59 Other and unspecified vaginal hysterectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.6', 'Other incision and excision of uterus
- Radical abdominal hysterectomy 68.6
68.6 Radical abdominal hysterectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.61', 'Other incision and excision of uterus
- Radical abdominal hysterectomy
-- Laparoscopic radical abdominal hysterectomy 68.61
68.61 Laparoscopic radical abdominal hysterectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.69', 'Other incision and excision of uterus
- Radical abdominal hysterectomy
-- Other and unspecified radical abdominal hysterectomy 68.69
68.69 Other and unspecified radical abdominal hysterectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.7', 'Other incision and excision of uterus
- Radical vaginal hysterectomy 68.7
68.7 Radical vaginal hysterectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.71', 'Other incision and excision of uterus
- Radical vaginal hysterectomy
-- Laparoscopic radical vaginal hysterectomy [LRVH] 68.71
68.71 Laparoscopic radical vaginal hysterectomy [LRVH]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.79', 'Other incision and excision of uterus
- Radical vaginal hysterectomy
-- Other and unspecified radical vaginal hysterectomy 68.79
68.79 Other and unspecified radical vaginal hysterectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.8', 'Other incision and excision of uterus
- Pelvic evisceration 68.8
68.8 Pelvic evisceration', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.9', 'Other incision and excision of uterus
- Other and unspecified hysterectomy 68.9
68.9 Other and unspecified hysterectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69', 'Other operations on uterus and supporting structures
69 Other operations on uterus and supporting structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.0', 'Other operations on uterus and supporting structures
- Dilation and curettage of uterus 69.0
69.0 Dilation and curettage of uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.01', 'Other operations on uterus and supporting structures
- Dilation and curettage of uterus
-- Dilation and curettage for termination of pregnancy 69.01
69.01 Dilation and curettage for termination of pregnancy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.02', 'Other operations on uterus and supporting structures
- Dilation and curettage of uterus
-- Dilation and curettage following delivery or abortion 69.02
69.02 Dilation and curettage following delivery or abortion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.09', 'Other operations on uterus and supporting structures
- Dilation and curettage of uterus
-- Other dilation and curettage 69.09
69.09 Other dilation and curettage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.1', 'Other operations on uterus and supporting structures
- Excision or destruction of lesion or tissue of uterus and 69.1
69.1 Excision or destruction of lesion or tissue of uterus and', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.19', 'Other operations on uterus and supporting structures
- Excision or destruction of lesion or tissue of uterus and
-- Other excision or destruction of uterus and supporting structures 69.19
69.19 Other excision or destruction of uterus and supporting structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.2', 'Other operations on uterus and supporting structures
- Repair of uterine supporting structures 69.2
69.2 Repair of uterine supporting structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.21', 'Other operations on uterus and supporting structures
- Repair of uterine supporting structures
-- Interposition operation 69.21
69.21 Interposition operation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.22', 'Other operations on uterus and supporting structures
- Repair of uterine supporting structures
-- Other uterine suspension 69.22
69.22 Other uterine suspension', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.23', 'Other operations on uterus and supporting structures
- Repair of uterine supporting structures
-- Vaginal repair of chronic inversion of uterus 69.23
69.23 Vaginal repair of chronic inversion of uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.29', 'Other operations on uterus and supporting structures
- Repair of uterine supporting structures
-- Other repair of uterus and supporting structures 69.29
69.29 Other repair of uterus and supporting structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.3', 'Other operations on uterus and supporting structures
- Paracervical uterine denervation 69.3
69.3 Paracervical uterine denervation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.4', 'Other operations on uterus and supporting structures
- Uterine repair 69.4
69.4 Uterine repair', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.41', 'Other operations on uterus and supporting structures
- Uterine repair
-- Suture of laceration of uterus 69.41
69.41 Suture of laceration of uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.42', 'Other operations on uterus and supporting structures
- Uterine repair
-- Closure of fistula of uterus 69.42
69.42 Closure of fistula of uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.49', 'Other operations on uterus and supporting structures
- Uterine repair
-- Other repair of uterus 69.49
69.49 Other repair of uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.5', 'Other operations on uterus and supporting structures
- Aspiration curettage of uterus 69.5
69.5 Aspiration curettage of uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.51', 'Other operations on uterus and supporting structures
- Aspiration curettage of uterus
-- Aspiration curettage of uterus for termination of pregnancy 69.51
69.51 Aspiration curettage of uterus for termination of pregnancy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.52', 'Other operations on uterus and supporting structures
- Aspiration curettage of uterus
-- Aspiration curettage following delivery or abortion 69.52
69.52 Aspiration curettage following delivery or abortion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.59', 'Other operations on uterus and supporting structures
- Aspiration curettage of uterus
-- Other aspiration curettage of uterus 69.59
69.59 Other aspiration curettage of uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.6', 'Other operations on uterus and supporting structures
- Menstrual extraction or regulation 69.6
69.6 Menstrual extraction or regulation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.7', 'Other operations on uterus and supporting structures
- Insertion of intrauterine contraceptive device 69.7
69.7 Insertion of intrauterine contraceptive device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.9', 'Other operations on uterus and supporting structures
- Other operations on uterus, cervix, and supporting structures 69.9
69.9 Other operations on uterus, cervix, and supporting structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.91', 'Other operations on uterus and supporting structures
- Other operations on uterus, cervix, and supporting structures
-- Insertion of therapeutic device into uterus 69.91
69.91 Insertion of therapeutic device into uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.92', 'Other operations on uterus and supporting structures
- Other operations on uterus, cervix, and supporting structures
-- Artificial insemination 69.92
69.92 Artificial insemination', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.93', 'Other operations on uterus and supporting structures
- Other operations on uterus, cervix, and supporting structures
-- Insertion of laminaria 69.93
69.93 Insertion of laminaria', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.94', 'Other operations on uterus and supporting structures
- Other operations on uterus, cervix, and supporting structures
-- Manual replacement of inverted uterus 69.94
69.94 Manual replacement of inverted uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.95', 'Other operations on uterus and supporting structures
- Other operations on uterus, cervix, and supporting structures
-- Incision of cervix 69.95
69.95 Incision of cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.96', 'Other operations on uterus and supporting structures
- Other operations on uterus, cervix, and supporting structures
-- Removal of cerclage material from cervix 69.96
69.96 Removal of cerclage material from cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.97', 'Other operations on uterus and supporting structures
- Other operations on uterus, cervix, and supporting structures
-- Removal of other penetrating foreign body from cervix 69.97
69.97 Removal of other penetrating foreign body from cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.98', 'Other operations on uterus and supporting structures
- Other operations on uterus, cervix, and supporting structures
-- Other operations on supporting structures of uterus 69.98
69.98 Other operations on supporting structures of uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.99', 'Other operations on uterus and supporting structures
- Other operations on uterus, cervix, and supporting structures
-- Other operations on cervix and uterus 69.99
69.99 Other operations on cervix and uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70', 'Operations on vagina and cul-de-sac
70 Operations on vagina and cul-de-sac', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.0', 'Operations on vagina and cul-de-sac
- Culdocentesis 70.0
70.0 Culdocentesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.1', 'Operations on vagina and cul-de-sac
- Incision of vagina and cul-de-sac 70.1
70.1 Incision of vagina and cul-de-sac', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.11', 'Operations on vagina and cul-de-sac
- Incision of vagina and cul-de-sac
-- Hymenotomy 70.11
70.11 Hymenotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.12', 'Operations on vagina and cul-de-sac
- Incision of vagina and cul-de-sac
-- Culdotomy 70.12
70.12 Culdotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.13', 'Operations on vagina and cul-de-sac
- Incision of vagina and cul-de-sac
-- Lysis of intraluminal adhesions of vagina 70.13
70.13 Lysis of intraluminal adhesions of vagina', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.14', 'Operations on vagina and cul-de-sac
- Incision of vagina and cul-de-sac
-- Other vaginotomy 70.14
70.14 Other vaginotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.2', 'Operations on vagina and cul-de-sac
- Diagnostic procedures on vagina and cul-de-sac 70.2
70.2 Diagnostic procedures on vagina and cul-de-sac', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.21', 'Operations on vagina and cul-de-sac
- Diagnostic procedures on vagina and cul-de-sac
-- Vaginoscopy 70.21
70.21 Vaginoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.22', 'Operations on vagina and cul-de-sac
- Diagnostic procedures on vagina and cul-de-sac
-- Culdoscopy 70.22
70.22 Culdoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.23', 'Operations on vagina and cul-de-sac
- Diagnostic procedures on vagina and cul-de-sac
-- Biopsy of cul-de-sac 70.23
70.23 Biopsy of cul-de-sac', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.24', 'Operations on vagina and cul-de-sac
- Diagnostic procedures on vagina and cul-de-sac
-- Vaginal biopsy 70.24
70.24 Vaginal biopsy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.29', 'Operations on vagina and cul-de-sac
- Diagnostic procedures on vagina and cul-de-sac
-- Other diagnostic procedures on vagina and cul- de-sac 70.29
70.29 Other diagnostic procedures on vagina and cul- de-sac', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.3', 'Operations on vagina and cul-de-sac
- Local excision or destruction of vagina and cul-de-sac 70.3
70.3 Local excision or destruction of vagina and cul-de-sac', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.31', 'Operations on vagina and cul-de-sac
- Local excision or destruction of vagina and cul-de-sac
-- Hymenectomy 70.31
70.31 Hymenectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.32', 'Operations on vagina and cul-de-sac
- Local excision or destruction of vagina and cul-de-sac
-- Excision or destruction of lesion of cul-de- sac 70.32
70.32 Excision or destruction of lesion of cul-de- sac', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.33', 'Operations on vagina and cul-de-sac
- Local excision or destruction of vagina and cul-de-sac
-- Excision or destruction of lesion of vagina 70.33
70.33 Excision or destruction of lesion of vagina', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.4', 'Operations on vagina and cul-de-sac
- Obliteration and total excision of vagina 70.4
70.4 Obliteration and total excision of vagina', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.5', 'Operations on vagina and cul-de-sac
- Repair of cystocele and rectocele 70.5
70.5 Repair of cystocele and rectocele', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.50', 'Operations on vagina and cul-de-sac
- Repair of cystocele and rectocele
-- Repair of cystocele and rectocele 70.50
70.50 Repair of cystocele and rectocele', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.51', 'Operations on vagina and cul-de-sac
- Repair of cystocele and rectocele
-- Repair of cystocele 70.51
70.51 Repair of cystocele', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.52', 'Operations on vagina and cul-de-sac
- Repair of cystocele and rectocele
-- Repair of rectocele 70.52
70.52 Repair of rectocele', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.53', 'Operations on vagina and cul-de-sac
- Repair of cystocele and rectocele
-- Repair of cystocele and rectocele with graft or prosthesis  70.53
70.53 Repair of cystocele and rectocele with graft or prosthesis ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.54', 'Operations on vagina and cul-de-sac
- Repair of cystocele and rectocele
-- Repair of cystocele with graft or prosthesis  70.54
70.54 Repair of cystocele with graft or prosthesis ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.55', 'Operations on vagina and cul-de-sac
- Repair of cystocele and rectocele
-- Repair of rectocele with graft or prosthesis  70.55
70.55 Repair of rectocele with graft or prosthesis ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.6', 'Operations on vagina and cul-de-sac
- Vaginal construction and reconstruction 70.6
70.6 Vaginal construction and reconstruction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.61', 'Operations on vagina and cul-de-sac
- Vaginal construction and reconstruction
-- Vaginal construction 70.61
70.61 Vaginal construction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.62', 'Operations on vagina and cul-de-sac
- Vaginal construction and reconstruction
-- Vaginal reconstruction 70.62
70.62 Vaginal reconstruction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.63', 'Operations on vagina and cul-de-sac
- Vaginal construction and reconstruction
-- Vaginal construction with graft or prosthesis  70.63
70.63 Vaginal construction with graft or prosthesis ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.64', 'Operations on vagina and cul-de-sac
- Vaginal construction and reconstruction
-- Vaginal reconstruction with graft or prosthesis  70.64
70.64 Vaginal reconstruction with graft or prosthesis ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.7', 'Operations on vagina and cul-de-sac
- Other repair of vagina 70.7
70.7 Other repair of vagina', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.71', 'Operations on vagina and cul-de-sac
- Other repair of vagina
-- Suture of laceration of vagina 70.71
70.71 Suture of laceration of vagina', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.72', 'Operations on vagina and cul-de-sac
- Other repair of vagina
-- Repair of colovaginal fistula 70.72
70.72 Repair of colovaginal fistula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.73', 'Operations on vagina and cul-de-sac
- Other repair of vagina
-- Repair of rectovaginal fistula 70.73
70.73 Repair of rectovaginal fistula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.74', 'Operations on vagina and cul-de-sac
- Other repair of vagina
-- Repair of other vaginoenteric fistula 70.74
70.74 Repair of other vaginoenteric fistula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.75', 'Operations on vagina and cul-de-sac
- Other repair of vagina
-- Repair of other fistula of vagina 70.75
70.75 Repair of other fistula of vagina', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.76', 'Operations on vagina and cul-de-sac
- Other repair of vagina
-- Hymenorrhaphy 70.76
70.76 Hymenorrhaphy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.77', 'Operations on vagina and cul-de-sac
- Other repair of vagina
-- Vaginal suspension and fixation 70.77
70.77 Vaginal suspension and fixation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.78', 'Operations on vagina and cul-de-sac
- Other repair of vagina
-- Vaginal suspension and fixation with graft or prosthesis  70.78
70.78 Vaginal suspension and fixation with graft or prosthesis ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.79', 'Operations on vagina and cul-de-sac
- Other repair of vagina
-- Other repair of vagina 70.79
70.79 Other repair of vagina', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.8', 'Operations on vagina and cul-de-sac
- Obliteration of vaginal vault 70.8
70.8 Obliteration of vaginal vault', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.9', 'Operations on vagina and cul-de-sac
- Other operations on vagina and cul-de-sac 70.9
70.9 Other operations on vagina and cul-de-sac', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.91', 'Operations on vagina and cul-de-sac
- Other operations on vagina and cul-de-sac
-- Other operations on vagina 70.91
70.91 Other operations on vagina', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.92', 'Operations on vagina and cul-de-sac
- Other operations on vagina and cul-de-sac
-- Other operations on cul-de-sac 70.92
70.92 Other operations on cul-de-sac', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.93', 'Operations on vagina and cul-de-sac
- Other operations on vagina and cul-de-sac
-- Other operations on cul-de-sac with graft or prosthesis  70.93
70.93 Other operations on cul-de-sac with graft or prosthesis ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.94', 'Operations on vagina and cul-de-sac
- Other operations on vagina and cul-de-sac
-- Insertion of biological graft  70.94
70.94 Insertion of biological graft ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.95', 'Operations on vagina and cul-de-sac
- Other operations on vagina and cul-de-sac
-- Insertion of synthetic graft or prosthesis  70.95
70.95 Insertion of synthetic graft or prosthesis ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71', 'Operations on vulva and perineum
71 Operations on vulva and perineum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.0', 'Operations on vulva and perineum
- Incision of vulva and perineum 71.0
71.0 Incision of vulva and perineum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.01', 'Operations on vulva and perineum
- Incision of vulva and perineum
-- Lysis of vulvar adhesions 71.01
71.01 Lysis of vulvar adhesions', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.09', 'Operations on vulva and perineum
- Incision of vulva and perineum
-- Other incision of vulva and perineum 71.09
71.09 Other incision of vulva and perineum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.1', 'Operations on vulva and perineum
- Diagnostic procedures on vulva 71.1
71.1 Diagnostic procedures on vulva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.11', 'Operations on vulva and perineum
- Diagnostic procedures on vulva
-- Biopsy of vulva 71.11
71.11 Biopsy of vulva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.19', 'Operations on vulva and perineum
- Diagnostic procedures on vulva
-- Other diagnostic procedures on vulva 71.19
71.19 Other diagnostic procedures on vulva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.2', 'Operations on vulva and perineum
- Operations on Bartholin''s gland 71.2
71.2 Operations on Bartholin''s gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.21', 'Operations on vulva and perineum
- Operations on Bartholin''s gland
-- Percutaneous aspiration of Bartholin''s gland (cyst) 71.21
71.21 Percutaneous aspiration of Bartholin''s gland (cyst)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.22', 'Operations on vulva and perineum
- Operations on Bartholin''s gland
-- Incision of Bartholin''s gland (cyst) 71.22
71.22 Incision of Bartholin''s gland (cyst)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.23', 'Operations on vulva and perineum
- Operations on Bartholin''s gland
-- Marsupialization of Bartholin''s gland (cyst) 71.23
71.23 Marsupialization of Bartholin''s gland (cyst)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.24', 'Operations on vulva and perineum
- Operations on Bartholin''s gland
-- Excision or other destruction of Bartholin''s gland (cyst) 71.24
71.24 Excision or other destruction of Bartholin''s gland (cyst)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.29', 'Operations on vulva and perineum
- Operations on Bartholin''s gland
-- Other operations on Bartholin''s gland 71.29
71.29 Other operations on Bartholin''s gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.3', 'Operations on vulva and perineum
- Other local excision or destruction of vulva and perineum 71.3
71.3 Other local excision or destruction of vulva and perineum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.4', 'Operations on vulva and perineum
- Operations on clitoris 71.4
71.4 Operations on clitoris', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.5', 'Operations on vulva and perineum
- Radical vulvectomy 71.5
71.5 Radical vulvectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.6', 'Operations on vulva and perineum
- Other vulvectomy 71.6
71.6 Other vulvectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.61', 'Operations on vulva and perineum
- Other vulvectomy
-- Unilateral vulvectomy 71.61
71.61 Unilateral vulvectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.62', 'Operations on vulva and perineum
- Other vulvectomy
-- Bilateral vulvectomy 71.62
71.62 Bilateral vulvectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.7', 'Operations on vulva and perineum
- Repair of vulva and perineum 71.7
71.7 Repair of vulva and perineum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.71', 'Operations on vulva and perineum
- Repair of vulva and perineum
-- Suture of laceration of vulva or perineum 71.71
71.71 Suture of laceration of vulva or perineum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.72', 'Operations on vulva and perineum
- Repair of vulva and perineum
-- Repair of fistula of vulva or perineum 71.72
71.72 Repair of fistula of vulva or perineum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.79', 'Operations on vulva and perineum
- Repair of vulva and perineum
-- Other repair of vulva and perineum 71.79
71.79 Other repair of vulva and perineum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.8', 'Operations on vulva and perineum
- Other operations on vulva 71.8
71.8 Other operations on vulva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.9', 'Operations on vulva and perineum
- Other operations on female genital organs 71.9
71.9 Other operations on female genital organs', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72', 'Forceps, vacuum, and breech delivery
72 Forceps, vacuum, and breech delivery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.0', 'Forceps, vacuum, and breech delivery
- Low forceps operation 72.0
72.0 Low forceps operation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.1', 'Forceps, vacuum, and breech delivery
- Low forceps operation with episiotomy 72.1
72.1 Low forceps operation with episiotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.2', 'Forceps, vacuum, and breech delivery
- Mid forceps operation 72.2
72.2 Mid forceps operation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.21', 'Forceps, vacuum, and breech delivery
- Mid forceps operation
-- Mid forceps operation with episiotomy 72.21
72.21 Mid forceps operation with episiotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.29', 'Forceps, vacuum, and breech delivery
- Mid forceps operation
-- Other mid forceps operation 72.29
72.29 Other mid forceps operation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.3', 'Forceps, vacuum, and breech delivery
- High forceps operation 72.3
72.3 High forceps operation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.31', 'Forceps, vacuum, and breech delivery
- High forceps operation
-- High forceps operation with episiotomy 72.31
72.31 High forceps operation with episiotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.39', 'Forceps, vacuum, and breech delivery
- High forceps operation
-- Other high forceps operation 72.39
72.39 Other high forceps operation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.4', 'Forceps, vacuum, and breech delivery
- Forceps rotation of fetal head 72.4
72.4 Forceps rotation of fetal head', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.5', 'Forceps, vacuum, and breech delivery
- Breech extraction 72.5
72.5 Breech extraction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.51', 'Forceps, vacuum, and breech delivery
- Breech extraction
-- Partial breech extraction with forceps to aftercoming head 72.51
72.51 Partial breech extraction with forceps to aftercoming head', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.52', 'Forceps, vacuum, and breech delivery
- Breech extraction
-- Other partial breech extraction 72.52
72.52 Other partial breech extraction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.53', 'Forceps, vacuum, and breech delivery
- Breech extraction
-- Total breech extraction with forceps to aftercoming head 72.53
72.53 Total breech extraction with forceps to aftercoming head', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.54', 'Forceps, vacuum, and breech delivery
- Breech extraction
-- Other total breech extraction 72.54
72.54 Other total breech extraction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.6', 'Forceps, vacuum, and breech delivery
- Forceps application to aftercoming head 72.6
72.6 Forceps application to aftercoming head', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.7', 'Forceps, vacuum, and breech delivery
- Vacuum extraction 72.7
72.7 Vacuum extraction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.71', 'Forceps, vacuum, and breech delivery
- Vacuum extraction
-- Vacuum extraction with episiotomy 72.71
72.71 Vacuum extraction with episiotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.79', 'Forceps, vacuum, and breech delivery
- Vacuum extraction
-- Other vacuum extraction 72.79
72.79 Other vacuum extraction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.8', 'Forceps, vacuum, and breech delivery
- Other specified instrumental delivery 72.8
72.8 Other specified instrumental delivery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.9', 'Forceps, vacuum, and breech delivery
- Unspecified instrumental delivery 72.9
72.9 Unspecified instrumental delivery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73', 'Other procedures inducing or assisting delivery
73 Other procedures inducing or assisting delivery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.0', 'Other procedures inducing or assisting delivery
- Artificial rupture of membranes 73.0
73.0 Artificial rupture of membranes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.01', 'Other procedures inducing or assisting delivery
- Artificial rupture of membranes
-- Induction of labor by artificial rupture of membranes 73.01
73.01 Induction of labor by artificial rupture of membranes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.09', 'Other procedures inducing or assisting delivery
- Artificial rupture of membranes
-- Other artificial rupture of membranes 73.09
73.09 Other artificial rupture of membranes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.1', 'Other procedures inducing or assisting delivery
- Other surgical induction of labor 73.1
73.1 Other surgical induction of labor', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.2', 'Other procedures inducing or assisting delivery
- Internal and combined version and extraction 73.2
73.2 Internal and combined version and extraction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.21', 'Other procedures inducing or assisting delivery
- Internal and combined version and extraction
-- Internal and combined version without extraction 73.21
73.21 Internal and combined version without extraction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.22', 'Other procedures inducing or assisting delivery
- Internal and combined version and extraction
-- Internal and combined version with extraction 73.22
73.22 Internal and combined version with extraction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.3', 'Other procedures inducing or assisting delivery
- Failed forceps 73.3
73.3 Failed forceps', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.4', 'Other procedures inducing or assisting delivery
- Medical induction of labor 73.4
73.4 Medical induction of labor', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.5', 'Other procedures inducing or assisting delivery
- Manually assisted delivery 73.5
73.5 Manually assisted delivery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.51', 'Other procedures inducing or assisting delivery
- Manually assisted delivery
-- Manual rotation of fetal head 73.51
73.51 Manual rotation of fetal head', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.59', 'Other procedures inducing or assisting delivery
- Manually assisted delivery
-- Other manually assisted delivery 73.59
73.59 Other manually assisted delivery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.6', 'Other procedures inducing or assisting delivery
- Episiotomy 73.6
73.6 Episiotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.8', 'Other procedures inducing or assisting delivery
- Operations on fetus to facilitate delivery 73.8
73.8 Operations on fetus to facilitate delivery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.9', 'Other procedures inducing or assisting delivery
- Other operations assisting delivery 73.9
73.9 Other operations assisting delivery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.91', 'Other procedures inducing or assisting delivery
- Other operations assisting delivery
-- External version 73.91
73.91 External version', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.92', 'Other procedures inducing or assisting delivery
- Other operations assisting delivery
-- Replacement of prolapsed umbilical cord 73.92
73.92 Replacement of prolapsed umbilical cord', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.93', 'Other procedures inducing or assisting delivery
- Other operations assisting delivery
-- Incision of cervix to assist delivery 73.93
73.93 Incision of cervix to assist delivery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.94', 'Other procedures inducing or assisting delivery
- Other operations assisting delivery
-- Pubiotomy to assist delivery 73.94
73.94 Pubiotomy to assist delivery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.99', 'Other procedures inducing or assisting delivery
- Other operations assisting delivery
-- Other 73.99
73.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('74', 'Cesarean section and removal of fetus
74 Cesarean section and removal of fetus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('74.0', 'Cesarean section and removal of fetus
- Classical cesarean section 74.0
74.0 Classical cesarean section', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('74.1', 'Caesarean section
- low cervical 74.1
74.1 Low cervical caesarean section', '[{"type":"includes","text":"Classical caesarean section"},{"type":"includes","text":"Low cervical caesarean section"}]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('74.2', 'Cesarean section and removal of fetus
- Extraperitoneal cesarean section 74.2
74.2 Extraperitoneal cesarean section', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('74.3', 'Cesarean section and removal of fetus
- Removal of extratubal ectopic pregnancy 74.3
74.3 Removal of extratubal ectopic pregnancy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('74.4', 'Cesarean section and removal of fetus
- Cesarean section of other specified type 74.4
74.4 Cesarean section of other specified type', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('74.9', 'Cesarean section and removal of fetus
- Cesarean section of unspecified type 74.9
74.9 Cesarean section of unspecified type', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('74.91', 'Cesarean section and removal of fetus
- Cesarean section of unspecified type
-- Hysterotomy to terminate pregnancy 74.91
74.91 Hysterotomy to terminate pregnancy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('74.99', 'Cesarean section and removal of fetus
- Cesarean section of unspecified type
-- Other cesarean section of unspecified type 74.99
74.99 Other cesarean section of unspecified type', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75', 'Other obstetric operations
75 Other obstetric operations', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.0', 'Other obstetric operations
- Intra-amniotic injection for abortion 75.0
75.0 Intra-amniotic injection for abortion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.1', 'Other obstetric operations
- Diagnostic amniocentesis 75.1
75.1 Diagnostic amniocentesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.2', 'Other obstetric operations
- Intrauterine transfusion 75.2
75.2 Intrauterine transfusion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.3', 'Other obstetric operations
- Other intrauterine operations on fetus and amnion 75.3
75.3 Other intrauterine operations on fetus and amnion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.31', 'Other obstetric operations
- Other intrauterine operations on fetus and amnion
-- Amnioscopy 75.31
75.31 Amnioscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.32', 'Other obstetric operations
- Other intrauterine operations on fetus and amnion
-- Fetal EKG (scalp) 75.32
75.32 Fetal EKG (scalp)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.33', 'Other obstetric operations
- Other intrauterine operations on fetus and amnion
-- Fetal blood sampling and biopsy 75.33
75.33 Fetal blood sampling and biopsy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.34', 'Other obstetric operations
- Other intrauterine operations on fetus and amnion
-- Other fetal monitoring 75.34
75.34 Other fetal monitoring', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.35', 'Other obstetric operations
- Other intrauterine operations on fetus and amnion
-- Other diagnostic procedures on fetus and amnion 75.35
75.35 Other diagnostic procedures on fetus and amnion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.36', 'Other obstetric operations
- Other intrauterine operations on fetus and amnion
-- Correction of fetal defect 75.36
75.36 Correction of fetal defect', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.37', 'Other obstetric operations
- Other intrauterine operations on fetus and amnion
-- Amnioinfusion 75.37
75.37 Amnioinfusion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.38', 'Other obstetric operations
- Other intrauterine operations on fetus and amnion
-- Fetal pulse oximetry 75.38
75.38 Fetal pulse oximetry', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.4', 'Other obstetric operations
- Manual removal of retained placenta 75.4
75.4 Manual removal of retained placenta', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.5', 'Other obstetric operations
- Repair of current obstetric laceration of uterus 75.5
75.5 Repair of current obstetric laceration of uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.50', 'Other obstetric operations
- Repair of current obstetric laceration of uterus
-- Repair of current obstetric laceration of uterus, not otherwise 75.50
75.50 Repair of current obstetric laceration of uterus, not otherwise', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.51', 'Other obstetric operations
- Repair of current obstetric laceration of uterus
-- Repair of current obstetric laceration of cervix 75.51
75.51 Repair of current obstetric laceration of cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.52', 'Other obstetric operations
- Repair of current obstetric laceration of uterus
-- Repair of current obstetric laceration of corpus uteri 75.52
75.52 Repair of current obstetric laceration of corpus uteri', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.6', 'Other obstetric operations
- Repair of other current obstetric laceration 75.6
75.6 Repair of other current obstetric laceration', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.61', 'Other obstetric operations
- Repair of other current obstetric laceration
-- Repair of current obstetric laceration of bladder and urethra 75.61
75.61 Repair of current obstetric laceration of bladder and urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.62', 'Other obstetric operations
- Repair of other current obstetric laceration
-- Repair of current obstetric laceration of rectum and sphincter ani 75.62
75.62 Repair of current obstetric laceration of rectum and sphincter ani', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.69', 'Other obstetric operations
- Repair of other current obstetric laceration
-- Repair of other current obstetric laceration 75.69
75.69 Repair of other current obstetric laceration', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.7', 'Other obstetric operations
- Manual exploration of uterine cavity, postpartum 75.7
75.7 Manual exploration of uterine cavity, postpartum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.8', 'Other obstetric operations
- Obstetric tamponade of uterus or vagina 75.8
75.8 Obstetric tamponade of uterus or vagina', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.9', 'Other obstetric operations
- Other obstetric operations 75.9
75.9 Other obstetric operations', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.91', 'Other obstetric operations
- Other obstetric operations
-- Evacuation of obstetrical incisional hematoma of perineum 75.91
75.91 Evacuation of obstetrical incisional hematoma of perineum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.92', 'Other obstetric operations
- Other obstetric operations
-- Evacuation of other hematoma of vulva or vagina 75.92
75.92 Evacuation of other hematoma of vulva or vagina', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.93', 'Other obstetric operations
- Other obstetric operations
-- Surgical correction of inverted uterus 75.93
75.93 Surgical correction of inverted uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.94', 'Other obstetric operations
- Other obstetric operations
-- Manual replacement of inverted uterus 75.94
75.94 Manual replacement of inverted uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.99', 'Other obstetric operations
- Other obstetric operations
-- Other 75.99
75.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76', 'Operations on facial bones and joints
76 Operations on facial bones and joints', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.0', 'Operations on facial bones and joints
- Incision of facial bone without division 76.0
76.0 Incision of facial bone without division', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.01', 'Operations on facial bones and joints
- Incision of facial bone without division
-- Sequestrectomy of facial bone 76.01
76.01 Sequestrectomy of facial bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.09', 'Operations on facial bones and joints
- Incision of facial bone without division
-- Other incision of facial bone 76.09
76.09 Other incision of facial bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.1', 'Operations on facial bones and joints
- Diagnostic procedures on facial bones and joints 76.1
76.1 Diagnostic procedures on facial bones and joints', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.11', 'Operations on facial bones and joints
- Diagnostic procedures on facial bones and joints
-- Biopsy of facial bone 76.11
76.11 Biopsy of facial bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.19', 'Operations on facial bones and joints
- Diagnostic procedures on facial bones and joints
-- Other diagnostic procedures on facial bones and joints 76.19
76.19 Other diagnostic procedures on facial bones and joints', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.2', 'Operations on facial bones and joints
- Local excision or destruction of lesion of facial bone 76.2
76.2 Local excision or destruction of lesion of facial bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.3', 'Operations on facial bones and joints
- Partial ostectomy of facial bone 76.3
76.3 Partial ostectomy of facial bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.31', 'Operations on facial bones and joints
- Partial ostectomy of facial bone
-- Partial mandibulectomy 76.31
76.31 Partial mandibulectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.39', 'Operations on facial bones and joints
- Partial ostectomy of facial bone
-- Partial ostectomy of other facial bone 76.39
76.39 Partial ostectomy of other facial bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.4', 'Operations on facial bones and joints
- Excision and reconstruction of facial bones 76.4
76.4 Excision and reconstruction of facial bones', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.41', 'Operations on facial bones and joints
- Excision and reconstruction of facial bones
-- Total mandibulectomy with synchronous reconstruction 76.41
76.41 Total mandibulectomy with synchronous reconstruction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.42', 'Operations on facial bones and joints
- Excision and reconstruction of facial bones
-- Other total mandibulectomy 76.42
76.42 Other total mandibulectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.43', 'Operations on facial bones and joints
- Excision and reconstruction of facial bones
-- Other reconstruction of mandible 76.43
76.43 Other reconstruction of mandible', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.44', 'Operations on facial bones and joints
- Excision and reconstruction of facial bones
-- Total ostectomy of other facial bone with synchronous 76.44
76.44 Total ostectomy of other facial bone with synchronous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.45', 'Operations on facial bones and joints
- Excision and reconstruction of facial bones
-- Other total ostectomy of other facial bone 76.45
76.45 Other total ostectomy of other facial bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.46', 'Operations on facial bones and joints
- Excision and reconstruction of facial bones
-- Other reconstruction of other facial bone 76.46
76.46 Other reconstruction of other facial bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.5', 'Operations on facial bones and joints
- Temporomandibular arthroplasty 76.5
76.5 Temporomandibular arthroplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.6', 'Operations on facial bones and joints
- Other facial bone repair and orthognathic surgery 76.6
76.6 Other facial bone repair and orthognathic surgery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.61', 'Operations on facial bones and joints
- Other facial bone repair and orthognathic surgery
-- Closed osteoplasty [osteotomy] of mandibular ramus 76.61
76.61 Closed osteoplasty [osteotomy] of mandibular ramus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.62', 'Operations on facial bones and joints
- Other facial bone repair and orthognathic surgery
-- Open osteoplasty [osteotomy] of mandibular ramus 76.62
76.62 Open osteoplasty [osteotomy] of mandibular ramus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.63', 'Operations on facial bones and joints
- Other facial bone repair and orthognathic surgery
-- Osteoplasty [osteotomy] of body of mandible 76.63
76.63 Osteoplasty [osteotomy] of body of mandible', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.64', 'Operations on facial bones and joints
- Other facial bone repair and orthognathic surgery
-- Other orthognathic surgery on mandible 76.64
76.64 Other orthognathic surgery on mandible', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.65', 'Operations on facial bones and joints
- Other facial bone repair and orthognathic surgery
-- Segmental osteoplasty [osteotomy] of maxilla 76.65
76.65 Segmental osteoplasty [osteotomy] of maxilla', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.66', 'Operations on facial bones and joints
- Other facial bone repair and orthognathic surgery
-- Total osteoplasty [osteotomy] of maxilla 76.66
76.66 Total osteoplasty [osteotomy] of maxilla', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.67', 'Operations on facial bones and joints
- Other facial bone repair and orthognathic surgery
-- Reduction genioplasty 76.67
76.67 Reduction genioplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.68', 'Operations on facial bones and joints
- Other facial bone repair and orthognathic surgery
-- Augmentation genioplasty 76.68
76.68 Augmentation genioplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.69', 'Operations on facial bones and joints
- Other facial bone repair and orthognathic surgery
-- Other facial bone repair 76.69
76.69 Other facial bone repair', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.7', 'Operations on facial bones and joints
- Reduction of facial fracture 76.7
76.7 Reduction of facial fracture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.70', 'Operations on facial bones and joints
- Reduction of facial fracture
-- Reduction of facial fracture, not otherwise specified 76.70
76.70 Reduction of facial fracture, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.71', 'Operations on facial bones and joints
- Reduction of facial fracture
-- Closed reduction of malar and zygomatic fracture 76.71
76.71 Closed reduction of malar and zygomatic fracture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.72', 'Operations on facial bones and joints
- Reduction of facial fracture
-- Open reduction of malar and zygomatic fracture 76.72
76.72 Open reduction of malar and zygomatic fracture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.73', 'Operations on facial bones and joints
- Reduction of facial fracture
-- Closed reduction of maxillary fracture 76.73
76.73 Closed reduction of maxillary fracture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.74', 'Operations on facial bones and joints
- Reduction of facial fracture
-- Open reduction of maxillary fracture 76.74
76.74 Open reduction of maxillary fracture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.75', 'Operations on facial bones and joints
- Reduction of facial fracture
-- Closed reduction of mandibular fracture 76.75
76.75 Closed reduction of mandibular fracture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.76', 'Operations on facial bones and joints
- Reduction of facial fracture
-- Open reduction of mandibular fracture 76.76
76.76 Open reduction of mandibular fracture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.77', 'Operations on facial bones and joints
- Reduction of facial fracture
-- Open reduction of alveolar fracture 76.77
76.77 Open reduction of alveolar fracture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.78', 'Operations on facial bones and joints
- Reduction of facial fracture
-- Other closed reduction of facial fracture 76.78
76.78 Other closed reduction of facial fracture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.79', 'Operations on facial bones and joints
- Reduction of facial fracture
-- Other open reduction of facial fracture 76.79
76.79 Other open reduction of facial fracture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.9', 'Operations on facial bones and joints
- Other operations on facial bones and joints 76.9
76.9 Other operations on facial bones and joints', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.91', 'Operations on facial bones and joints
- Other operations on facial bones and joints
-- Bone graft to facial bone 76.91
76.91 Bone graft to facial bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.92', 'Operations on facial bones and joints
- Other operations on facial bones and joints
-- Insertion of synthetic implant in facial bone 76.92
76.92 Insertion of synthetic implant in facial bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.93', 'Operations on facial bones and joints
- Other operations on facial bones and joints
-- Closed reduction of temporomandibular dislocation 76.93
76.93 Closed reduction of temporomandibular dislocation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.94', 'Operations on facial bones and joints
- Other operations on facial bones and joints
-- Open reduction of temporomandibular dislocation 76.94
76.94 Open reduction of temporomandibular dislocation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.95', 'Operations on facial bones and joints
- Other operations on facial bones and joints
-- Other manipulation of temporomandibular joint 76.95
76.95 Other manipulation of temporomandibular joint', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.96', 'Operations on facial bones and joints
- Other operations on facial bones and joints
-- Injection of therapeutic substance into temporomandibular joint 76.96
76.96 Injection of therapeutic substance into temporomandibular joint', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.97', 'Operations on facial bones and joints
- Other operations on facial bones and joints
-- Removal of internal fixation device from facial bone 76.97
76.97 Removal of internal fixation device from facial bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.99', 'Operations on facial bones and joints
- Other operations on facial bones and joints
-- Other 76.99
76.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77', 'Incision, excision, and division of other bones
77 Incision, excision, and division of other bones', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.0', 'Incision, excision, and division of other bones
- Sequestrectomy  77.0
77.0 Sequestrectomy ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.1', 'Incision, excision, and division of other bones
- Other incision of bone without division  77.1
77.1 Other incision of bone without division ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.2', 'Incision, excision, and division of other bones
- Wedge osteotomy  77.2
77.2 Wedge osteotomy ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.3', 'Incision, excision, and division of other bones
- Other division of bone  77.3
77.3 Other division of bone ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.4', 'Incision, excision, and division of other bones
- Biopsy of bone  77.4
77.4 Biopsy of bone ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.5', 'Incision, excision, and division of other bones
- Excision and repair of bunion and other toe deformities 77.5
77.5 Excision and repair of bunion and other toe deformities', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.51', 'Incision, excision, and division of other bones
- Excision and repair of bunion and other toe deformities
-- Bunionectomy with soft tissue correction and osteotomy of the 77.51
77.51 Bunionectomy with soft tissue correction and osteotomy of the', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.52', 'Incision, excision, and division of other bones
- Excision and repair of bunion and other toe deformities
-- Bunionectomy with soft tissue correction and arthrodesis 77.52
77.52 Bunionectomy with soft tissue correction and arthrodesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.53', 'Incision, excision, and division of other bones
- Excision and repair of bunion and other toe deformities
-- Other bunionectomy with soft tissue correction 77.53
77.53 Other bunionectomy with soft tissue correction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.54', 'Incision, excision, and division of other bones
- Excision and repair of bunion and other toe deformities
-- Excision or correction of bunionette 77.54
77.54 Excision or correction of bunionette', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.56', 'Incision, excision, and division of other bones
- Excision and repair of bunion and other toe deformities
-- Repair of hammer toe 77.56
77.56 Repair of hammer toe', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.57', 'Incision, excision, and division of other bones
- Excision and repair of bunion and other toe deformities
-- Repair of claw toe 77.57
77.57 Repair of claw toe', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.58', 'Incision, excision, and division of other bones
- Excision and repair of bunion and other toe deformities
-- Other excision, fusion and repair of toes 77.58
77.58 Other excision, fusion and repair of toes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.59', 'Incision, excision, and division of other bones
- Excision and repair of bunion and other toe deformities
-- Other bunionectomy 77.59
77.59 Other bunionectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.6', 'Incision, excision, and division of other bones
- Local excision of lesion or tissue of bone  77.6
77.6 Local excision of lesion or tissue of bone ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.7', 'Incision, excision, and division of other bones
- Excision of bone for graft  77.7
77.7 Excision of bone for graft ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.8', 'Incision, excision, and division of other bones
- Other partial ostectomy  77.8
77.8 Other partial ostectomy ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.9', 'Incision, excision, and division of other bones
- Total ostectomy  77.9
77.9 Total ostectomy ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78', 'Other operations on bones, except facial bones
78 Other operations on bones, except facial bones', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.0', 'Other operations on bones, except facial bones
- Bone graft  78.0
78.0 Bone graft ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.1', 'Other operations on bones, except facial bones
- Application of external fixator device  78.1
78.1 Application of external fixator device ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.2', 'Other operations on bones, except facial bones
- Limb shortening procedures  78.2
78.2 Limb shortening procedures ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.3', 'Other operations on bones, except facial bones
- Limb lengthening procedures  78.3
78.3 Limb lengthening procedures ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.4', 'Other operations on bones, except facial bones
- Other repair or plastic operations on bone  78.4
78.4 Other repair or plastic operations on bone ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.5', 'Other operations on bones, except facial bones
- Internal fixation of bone without fracture reduction  78.5
78.5 Internal fixation of bone without fracture reduction ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.6', 'Other operations on bones, except facial bones
- Removal of implanted devices from bone  78.6
78.6 Removal of implanted devices from bone ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.7', 'Other operations on bones, except facial bones
- Osteoclasis  78.7
78.7 Osteoclasis ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.8', 'Other operations on bones, except facial bones
- Diagnostic procedures on bone, not elsewhere classified  78.8
78.8 Diagnostic procedures on bone, not elsewhere classified ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.9', 'Other operations on bones, except facial bones
- Insertion of bone growth stimulator  78.9
78.9 Insertion of bone growth stimulator ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79', 'Reduction of fracture and dislocation
79 Reduction of fracture and dislocation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.0', 'Reduction of fracture and dislocation
- Closed reduction of fracture without internal fixation  79.0
79.0 Closed reduction of fracture without internal fixation ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.1', 'Reduction of fracture and dislocation
- Closed reduction of fracture with internal fixation  79.1
79.1 Closed reduction of fracture with internal fixation ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.2', 'Reduction of fracture and dislocation
- Open reduction of fracture without internal fixation  79.2
79.2 Open reduction of fracture without internal fixation ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.3', 'Reduction of fracture and dislocation
- Open reduction of fracture with internal fixation  79.3
79.3 Open reduction of fracture with internal fixation ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.4', 'Reduction of fracture and dislocation
- Closed reduction of separated epiphysis  79.4
79.4 Closed reduction of separated epiphysis ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.5', 'Reduction of fracture and dislocation
- Open reduction of separated epiphysis  79.5
79.5 Open reduction of separated epiphysis ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.6', 'Reduction of fracture and dislocation
- Debridement of open fracture site  79.6
79.6 Debridement of open fracture site ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.7', 'Reduction of fracture and dislocation
- Closed reduction of dislocation 79.7
79.7 Closed reduction of dislocation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.70', 'Reduction of fracture and dislocation
- Closed reduction of dislocation
-- Closed reduction of dislocation of unspecified site 79.70
79.70 Closed reduction of dislocation of unspecified site', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.71', 'Reduction of fracture and dislocation
- Closed reduction of dislocation
-- Closed reduction of dislocation of shoulder 79.71
79.71 Closed reduction of dislocation of shoulder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.72', 'Reduction of fracture and dislocation
- Closed reduction of dislocation
-- Closed reduction of dislocation of elbow 79.72
79.72 Closed reduction of dislocation of elbow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.73', 'Reduction of fracture and dislocation
- Closed reduction of dislocation
-- Closed reduction of dislocation of wrist 79.73
79.73 Closed reduction of dislocation of wrist', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.74', 'Reduction of fracture and dislocation
- Closed reduction of dislocation
-- Closed reduction of dislocation of hand and finger 79.74
79.74 Closed reduction of dislocation of hand and finger', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.75', 'Reduction of fracture and dislocation
- Closed reduction of dislocation
-- Closed reduction of dislocation of hip 79.75
79.75 Closed reduction of dislocation of hip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.76', 'Reduction of fracture and dislocation
- Closed reduction of dislocation
-- Closed reduction of dislocation of knee 79.76
79.76 Closed reduction of dislocation of knee', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.77', 'Reduction of fracture and dislocation
- Closed reduction of dislocation
-- Closed reduction of dislocation of ankle 79.77
79.77 Closed reduction of dislocation of ankle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.78', 'Reduction of fracture and dislocation
- Closed reduction of dislocation
-- Closed reduction of dislocation of foot and toe 79.78
79.78 Closed reduction of dislocation of foot and toe', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.79', 'Reduction of fracture and dislocation
- Closed reduction of dislocation
-- Closed reduction of dislocation of other specified sites 79.79
79.79 Closed reduction of dislocation of other specified sites', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.8', 'Reduction of fracture and dislocation
- Open reduction of dislocation 79.8
79.8 Open reduction of dislocation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.80', 'Reduction of fracture and dislocation
- Open reduction of dislocation
-- Open reduction of dislocation of unspecified site 79.80
79.80 Open reduction of dislocation of unspecified site', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.81', 'Reduction of fracture and dislocation
- Open reduction of dislocation
-- Open reduction of dislocation of shoulder 79.81
79.81 Open reduction of dislocation of shoulder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.82', 'Reduction of fracture and dislocation
- Open reduction of dislocation
-- Open reduction of dislocation of elbow 79.82
79.82 Open reduction of dislocation of elbow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.83', 'Reduction of fracture and dislocation
- Open reduction of dislocation
-- Open reduction of dislocation of wrist 79.83
79.83 Open reduction of dislocation of wrist', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.84', 'Reduction of fracture and dislocation
- Open reduction of dislocation
-- Open reduction of dislocation of hand and finger 79.84
79.84 Open reduction of dislocation of hand and finger', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.85', 'Reduction of fracture and dislocation
- Open reduction of dislocation
-- Open reduction of dislocation of hip 79.85
79.85 Open reduction of dislocation of hip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.86', 'Reduction of fracture and dislocation
- Open reduction of dislocation
-- Open reduction of dislocation of knee 79.86
79.86 Open reduction of dislocation of knee', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.87', 'Reduction of fracture and dislocation
- Open reduction of dislocation
-- Open reduction of dislocation of ankle 79.87
79.87 Open reduction of dislocation of ankle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.88', 'Reduction of fracture and dislocation
- Open reduction of dislocation
-- Open reduction of dislocation of foot and toe 79.88
79.88 Open reduction of dislocation of foot and toe', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.89', 'Reduction of fracture and dislocation
- Open reduction of dislocation
-- Open reduction of dislocation of other specified sites 79.89
79.89 Open reduction of dislocation of other specified sites', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.9', 'Reduction of fracture and dislocation
- Unspecified operation on bone injury  79.9
79.9 Unspecified operation on bone injury ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80', 'Incision and excision of joint structures
80 Incision and excision of joint structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.0', 'Incision and excision of joint structures
- Arthrotomy for removal of prosthesis without replacement  80.0
80.0 Arthrotomy for removal of prosthesis without replacement ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.1', 'Incision and excision of joint structures
- Other arthrotomy  80.1
80.1 Other arthrotomy ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.2', 'Incision and excision of joint structures
- Arthroscopy  80.2
80.2 Arthroscopy ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.3', 'Incision and excision of joint structures
- Biopsy of joint structure  80.3
80.3 Biopsy of joint structure ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.4', 'Incision and excision of joint structures
- Division of joint capsule, ligament, or cartilage  80.4
80.4 Division of joint capsule, ligament, or cartilage ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.5', 'Incision and excision of joint structures
- Excision, destruction and other repair of intervertebral disc 80.5
80.5 Excision, destruction and other repair of intervertebral disc', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.50', 'Incision and excision of joint structures
- Excision, destruction and other repair of intervertebral disc
-- Excision or destruction of intervertebral disc, unspecified 80.50
80.50 Excision or destruction of intervertebral disc, unspecified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.51', 'Incision and excision of joint structures
- Excision, destruction and other repair of intervertebral disc
-- Excision of intervertebral disc 80.51
80.51 Excision of intervertebral disc', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.52', 'Incision and excision of joint structures
- Excision, destruction and other repair of intervertebral disc
-- Intervertebral chemonucleolysis 80.52
80.52 Intervertebral chemonucleolysis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.53', 'Incision and excision of joint structures
- Excision, destruction and other repair of intervertebral disc
-- Repair of the anulus fibrosus with graft or prosthesis  80.53
80.53 Repair of the anulus fibrosus with graft or prosthesis ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.54', 'Incision and excision of joint structures
- Excision, destruction and other repair of intervertebral disc
-- Other and unspecified repair of the anulus fibrosus  80.54
80.54 Other and unspecified repair of the anulus fibrosus ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.59', 'Incision and excision of joint structures
- Excision, destruction and other repair of intervertebral disc
-- Other destruction of intervertebral disc 80.59
80.59 Other destruction of intervertebral disc', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.6', 'Incision and excision of joint structures
- Excision of semilunar cartilage of knee 80.6
80.6 Excision of semilunar cartilage of knee', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.7', 'Incision and excision of joint structures
- Synovectomy  80.7
80.7 Synovectomy ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.8', 'Incision and excision of joint structures
- Other local excision or destruction of lesion of joint  80.8
80.8 Other local excision or destruction of lesion of joint ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.9', 'Incision and excision of joint structures
- Other excision of joint  80.9
80.9 Other excision of joint ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81', 'Repair and plastic operations on joint structures
81 Repair and plastic operations on joint structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.0', 'Repair and plastic operations on joint structures
- Spinal fusion 81.0
81.0 Spinal fusion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.00', 'Repair and plastic operations on joint structures
- Spinal fusion
-- Spinal fusion, not otherwise specified 81.00
81.00 Spinal fusion, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.01', 'Repair and plastic operations on joint structures
- Spinal fusion
-- Atlas-axis spinal fusion 81.01
81.01 Atlas-axis spinal fusion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.02', 'Repair and plastic operations on joint structures
- Spinal fusion
-- Other cervical fusion, anterior technique 81.02
81.02 Other cervical fusion, anterior technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.03', 'Repair and plastic operations on joint structures
- Spinal fusion
-- Other cervical fusion, posterior technique 81.03
81.03 Other cervical fusion, posterior technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.04', 'Repair and plastic operations on joint structures
- Spinal fusion
-- Dorsal and dorsolumbar fusion, anterior technique 81.04
81.04 Dorsal and dorsolumbar fusion, anterior technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.05', 'Repair and plastic operations on joint structures
- Spinal fusion
-- Dorsal and dorsolumbar fusion, posterior technique 81.05
81.05 Dorsal and dorsolumbar fusion, posterior technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.06', 'Repair and plastic operations on joint structures
- Spinal fusion
-- Lumbar and lumbosacral fusion, anterior technique 81.06
81.06 Lumbar and lumbosacral fusion, anterior technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.07', 'Repair and plastic operations on joint structures
- Spinal fusion
-- Lumbar and lumbosacral fusion, lateral transverse process technique 81.07
81.07 Lumbar and lumbosacral fusion, lateral transverse process technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.08', 'Repair and plastic operations on joint structures
- Spinal fusion
-- Lumbar and lumbosacral fusion, posterior technique 81.08
81.08 Lumbar and lumbosacral fusion, posterior technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.1', 'Repair and plastic operations on joint structures
- Arthrodesis and arthroereisis of foot and ankle 81.1
81.1 Arthrodesis and arthroereisis of foot and ankle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.11', 'Repair and plastic operations on joint structures
- Arthrodesis and arthroereisis of foot and ankle
-- Ankle fusion 81.11
81.11 Ankle fusion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.12', 'Repair and plastic operations on joint structures
- Arthrodesis and arthroereisis of foot and ankle
-- Triple arthrodesis 81.12
81.12 Triple arthrodesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.13', 'Repair and plastic operations on joint structures
- Arthrodesis and arthroereisis of foot and ankle
-- Subtalar fusion 81.13
81.13 Subtalar fusion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.14', 'Repair and plastic operations on joint structures
- Arthrodesis and arthroereisis of foot and ankle
-- Midtarsal fusion 81.14
81.14 Midtarsal fusion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.15', 'Repair and plastic operations on joint structures
- Arthrodesis and arthroereisis of foot and ankle
-- Tarsometatarsal fusion 81.15
81.15 Tarsometatarsal fusion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.16', 'Repair and plastic operations on joint structures
- Arthrodesis and arthroereisis of foot and ankle
-- Metatarsophalangeal fusion 81.16
81.16 Metatarsophalangeal fusion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.17', 'Repair and plastic operations on joint structures
- Arthrodesis and arthroereisis of foot and ankle
-- Other fusion of foot 81.17
81.17 Other fusion of foot', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.18', 'Repair and plastic operations on joint structures
- Arthrodesis and arthroereisis of foot and ankle
-- Subtalar joint arthroereisis 81.18
81.18 Subtalar joint arthroereisis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.2', 'Repair and plastic operations on joint structures
- Arthrodesis of other joint 81.2
81.2 Arthrodesis of other joint', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.20', 'Repair and plastic operations on joint structures
- Arthrodesis of other joint
-- Arthrodesis of unspecified joint 81.20
81.20 Arthrodesis of unspecified joint', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.21', 'Repair and plastic operations on joint structures
- Arthrodesis of other joint
-- Arthrodesis of hip 81.21
81.21 Arthrodesis of hip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.22', 'Repair and plastic operations on joint structures
- Arthrodesis of other joint
-- Arthrodesis of knee 81.22
81.22 Arthrodesis of knee', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.23', 'Repair and plastic operations on joint structures
- Arthrodesis of other joint
-- Arthrodesis of shoulder 81.23
81.23 Arthrodesis of shoulder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.24', 'Repair and plastic operations on joint structures
- Arthrodesis of other joint
-- Arthrodesis of elbow 81.24
81.24 Arthrodesis of elbow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.25', 'Repair and plastic operations on joint structures
- Arthrodesis of other joint
-- Carporadial fusion 81.25
81.25 Carporadial fusion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.26', 'Repair and plastic operations on joint structures
- Arthrodesis of other joint
-- Metacarpocarpal fusion 81.26
81.26 Metacarpocarpal fusion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.27', 'Repair and plastic operations on joint structures
- Arthrodesis of other joint
-- Metacarpophalangeal fusion 81.27
81.27 Metacarpophalangeal fusion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.28', 'Repair and plastic operations on joint structures
- Arthrodesis of other joint
-- Interphalangeal fusion 81.28
81.28 Interphalangeal fusion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.29', 'Repair and plastic operations on joint structures
- Arthrodesis of other joint
-- Arthrodesis of other specified joints 81.29
81.29 Arthrodesis of other specified joints', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.3', 'Repair and plastic operations on joint structures
- Refusion of spine 81.3
81.3 Refusion of spine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.30', 'Repair and plastic operations on joint structures
- Refusion of spine
-- Refusion of spine, not otherwise specified 81.30
81.30 Refusion of spine, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.31', 'Repair and plastic operations on joint structures
- Refusion of spine
-- Refusion of atlas-axis spine 81.31
81.31 Refusion of atlas-axis spine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.32', 'Repair and plastic operations on joint structures
- Refusion of spine
-- Refusion of other cervical spine, anterior technique 81.32
81.32 Refusion of other cervical spine, anterior technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.33', 'Repair and plastic operations on joint structures
- Refusion of spine
-- Refusion of other cervical spine, posterior technique 81.33
81.33 Refusion of other cervical spine, posterior technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.34', 'Repair and plastic operations on joint structures
- Refusion of spine
-- Refusion of dorsal and dorsolumbar spine, anterior technique 81.34
81.34 Refusion of dorsal and dorsolumbar spine, anterior technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.35', 'Repair and plastic operations on joint structures
- Refusion of spine
-- Refusion of dorsal and dorsolumbar spine, posterior technique 81.35
81.35 Refusion of dorsal and dorsolumbar spine, posterior technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.36', 'Repair and plastic operations on joint structures
- Refusion of spine
-- Refusion of lumbar and lumbosacral spine, anterior technique 81.36
81.36 Refusion of lumbar and lumbosacral spine, anterior technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.37', 'Repair and plastic operations on joint structures
- Refusion of spine
-- Refusion of lumbar and lumbosacral spine, lateral transverse 81.37
81.37 Refusion of lumbar and lumbosacral spine, lateral transverse', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.38', 'Repair and plastic operations on joint structures
- Refusion of spine
-- Refusion of lumbar and lumbosacral spine, posterior technique 81.38
81.38 Refusion of lumbar and lumbosacral spine, posterior technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.39', 'Repair and plastic operations on joint structures
- Refusion of spine
-- Refusion of spine, not elsewhere classified 81.39
81.39 Refusion of spine, not elsewhere classified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.4', 'Repair and plastic operations on joint structures
- Other repair of joint of lower extremity 81.4
81.4 Other repair of joint of lower extremity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.40', 'Repair and plastic operations on joint structures
- Other repair of joint of lower extremity
-- Repair of hip, not elsewhere classified 81.40
81.40 Repair of hip, not elsewhere classified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.42', 'Repair and plastic operations on joint structures
- Other repair of joint of lower extremity
-- Five-in-one repair of knee 81.42
81.42 Five-in-one repair of knee', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.43', 'Repair and plastic operations on joint structures
- Other repair of joint of lower extremity
-- Triad knee repair 81.43
81.43 Triad knee repair', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.44', 'Repair and plastic operations on joint structures
- Other repair of joint of lower extremity
-- Patellar stabilization 81.44
81.44 Patellar stabilization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.45', 'Repair and plastic operations on joint structures
- Other repair of joint of lower extremity
-- Other repair of the cruciate ligaments 81.45
81.45 Other repair of the cruciate ligaments', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.46', 'Repair and plastic operations on joint structures
- Other repair of joint of lower extremity
-- Other repair of the collateral ligaments 81.46
81.46 Other repair of the collateral ligaments', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.47', 'Repair and plastic operations on joint structures
- Other repair of joint of lower extremity
-- Other repair of knee 81.47
81.47 Other repair of knee', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.49', 'Repair and plastic operations on joint structures
- Other repair of joint of lower extremity
-- Other repair of ankle 81.49
81.49 Other repair of ankle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.5', 'Repair and plastic operations on joint structures
- Joint replacement of lower extremity 81.5
81.5 Joint replacement of lower extremity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.51', 'Repair and plastic operations on joint structures
- Joint replacement of lower extremity
-- Total hip replacement 81.51
81.51 Total hip replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.52', 'Repair and plastic operations on joint structures
- Joint replacement of lower extremity
-- Partial hip replacement 81.52
81.52 Partial hip replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.53', 'Repair and plastic operations on joint structures
- Joint replacement of lower extremity
-- Revision of hip replacement, not otherwise specified 81.53
81.53 Revision of hip replacement, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.54', 'Repair and plastic operations on joint structures
- Joint replacement of lower extremity
-- Total knee replacement 81.54
81.54 Total knee replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.55', 'Repair and plastic operations on joint structures
- Joint replacement of lower extremity
-- Revision of knee replacement,not otherwise specified 81.55
81.55 Revision of knee replacement,not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.56', 'Repair and plastic operations on joint structures
- Joint replacement of lower extremity
-- Total ankle replacement 81.56
81.56 Total ankle replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.57', 'Repair and plastic operations on joint structures
- Joint replacement of lower extremity
-- Replacement of joint of foot and toe 81.57
81.57 Replacement of joint of foot and toe', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.59', 'Repair and plastic operations on joint structures
- Joint replacement of lower extremity
-- Revision of joint replacement of lower extremity, not elsewhere 81.59
81.59 Revision of joint replacement of lower extremity, not elsewhere', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.6', 'Repair and plastic operations on joint structures
- Other procedures on spine 81.6
81.6 Other procedures on spine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.64', 'Repair and plastic operations on joint structures
- Other procedures on spine
-- Fusion or refusion of 9 or more vertebrae 81.64
81.64 Fusion or refusion of 9 or more vertebrae', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.62', 'Repair and plastic operations on joint structures
- Other procedures on spine
-- Fusion or refusion of 2-3 vertebrae 81.62
81.62 Fusion or refusion of 2-3 vertebrae', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.63', 'Repair and plastic operations on joint structures
- Other procedures on spine
-- Fusion or refusion of 4- 8 vertebrae 81.63
81.63 Fusion or refusion of 4- 8 vertebrae', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.65', 'Repair and plastic operations on joint structures
- Other procedures on spine
-- Percutaneous vertebroplasty 81.65
81.65 Percutaneous vertebroplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.66', 'Repair and plastic operations on joint structures
- Other procedures on spine
-- Percutaneous vertebral augmentation 81.66
81.66 Percutaneous vertebral augmentation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.7', 'Repair and plastic operations on joint structures
- Arthroplasty and repair of hand, fingers and wrist 81.7
81.7 Arthroplasty and repair of hand, fingers and wrist', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.71', 'Repair and plastic operations on joint structures
- Arthroplasty and repair of hand, fingers and wrist
-- Arthroplasty of metacarpophalangeal and interphalangeal joint 81.71
81.71 Arthroplasty of metacarpophalangeal and interphalangeal joint', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.72', 'Repair and plastic operations on joint structures
- Arthroplasty and repair of hand, fingers and wrist
-- Arthroplasty of metacarpophalangeal and interphalangeal joint 81.72
81.72 Arthroplasty of metacarpophalangeal and interphalangeal joint', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.73', 'Repair and plastic operations on joint structures
- Arthroplasty and repair of hand, fingers and wrist
-- Total wrist replacement 81.73
81.73 Total wrist replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.74', 'Repair and plastic operations on joint structures
- Arthroplasty and repair of hand, fingers and wrist
-- Arthroplasty of carpocarpal or carpometacarpal joint with implant 81.74
81.74 Arthroplasty of carpocarpal or carpometacarpal joint with implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.75', 'Repair and plastic operations on joint structures
- Arthroplasty and repair of hand, fingers and wrist
-- Arthroplasty of carpocarpal or carpometacarpal joint without 81.75
81.75 Arthroplasty of carpocarpal or carpometacarpal joint without', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.79', 'Repair and plastic operations on joint structures
- Arthroplasty and repair of hand, fingers and wrist
-- Other repair of hand, fingers and wrist 81.79
81.79 Other repair of hand, fingers and wrist', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.8', 'Repair and plastic operations on joint structures
- Arthroplasty and repair of shoulder and elbow 81.8
81.8 Arthroplasty and repair of shoulder and elbow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.80', 'Repair and plastic operations on joint structures
- Arthroplasty and repair of shoulder and elbow
-- Total shoulder replacement 81.80
81.80 Total shoulder replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.81', 'Repair and plastic operations on joint structures
- Arthroplasty and repair of shoulder and elbow
-- Partial shoulder replacement 81.81
81.81 Partial shoulder replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.82', 'Repair and plastic operations on joint structures
- Arthroplasty and repair of shoulder and elbow
-- Repair of recurrent dislocation of shoulder 81.82
81.82 Repair of recurrent dislocation of shoulder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.83', 'Repair and plastic operations on joint structures
- Arthroplasty and repair of shoulder and elbow
-- Other repair of shoulder 81.83
81.83 Other repair of shoulder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.84', 'Repair and plastic operations on joint structures
- Arthroplasty and repair of shoulder and elbow
-- Total elbow replacement 81.84
81.84 Total elbow replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.85', 'Repair and plastic operations on joint structures
- Arthroplasty and repair of shoulder and elbow
-- Other repair of elbow 81.85
81.85 Other repair of elbow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.9', 'Repair and plastic operations on joint structures
- Other operations on joint structures 81.9
81.9 Other operations on joint structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.91', 'Repair and plastic operations on joint structures
- Other operations on joint structures
-- Arthrocentesis 81.91
81.91 Arthrocentesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.92', 'Repair and plastic operations on joint structures
- Other operations on joint structures
-- Injection of therapeutic substance into joint or ligament 81.92
81.92 Injection of therapeutic substance into joint or ligament', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.93', 'Repair and plastic operations on joint structures
- Other operations on joint structures
-- Suture of capsule or ligament of upper extremity 81.93
81.93 Suture of capsule or ligament of upper extremity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.94', 'Repair and plastic operations on joint structures
- Other operations on joint structures
-- Suture of capsule or ligament of ankle and foot 81.94
81.94 Suture of capsule or ligament of ankle and foot', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.95', 'Repair and plastic operations on joint structures
- Other operations on joint structures
-- Suture of capsule or ligament of other lower extremity 81.95
81.95 Suture of capsule or ligament of other lower extremity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.96', 'Repair and plastic operations on joint structures
- Other operations on joint structures
-- Other repair of joint 81.96
81.96 Other repair of joint', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.97', 'Repair and plastic operations on joint structures
- Other operations on joint structures
-- Revision of joint replacement of upper extremity 81.97
81.97 Revision of joint replacement of upper extremity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.98', 'Repair and plastic operations on joint structures
- Other operations on joint structures
-- Other diagnostic procedures on joint structures 81.98
81.98 Other diagnostic procedures on joint structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.99', 'Repair and plastic operations on joint structures
- Other operations on joint structures
-- Other 81.99
81.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82', 'Operations on muscle, tendon, and fascia of hand
82 Operations on muscle, tendon, and fascia of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.0', 'Operations on muscle, tendon, and fascia of hand
- Incision of muscle, tendon, fascia, and bursa of hand 82.0
82.0 Incision of muscle, tendon, fascia, and bursa of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.01', 'Operations on muscle, tendon, and fascia of hand
- Incision of muscle, tendon, fascia, and bursa of hand
-- Exploration of tendon sheath of hand 82.01
82.01 Exploration of tendon sheath of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.02', 'Operations on muscle, tendon, and fascia of hand
- Incision of muscle, tendon, fascia, and bursa of hand
-- Myotomy of hand 82.02
82.02 Myotomy of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.03', 'Operations on muscle, tendon, and fascia of hand
- Incision of muscle, tendon, fascia, and bursa of hand
-- Bursotomy of hand 82.03
82.03 Bursotomy of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.04', 'Operations on muscle, tendon, and fascia of hand
- Incision of muscle, tendon, fascia, and bursa of hand
-- Incision and drainage of palmar or thenar space 82.04
82.04 Incision and drainage of palmar or thenar space', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.09', 'Operations on muscle, tendon, and fascia of hand
- Incision of muscle, tendon, fascia, and bursa of hand
-- Other incision of soft tissue of hand 82.09
82.09 Other incision of soft tissue of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.1', 'Operations on muscle, tendon, and fascia of hand
- Division of muscle, tendon, and fascia of hand 82.1
82.1 Division of muscle, tendon, and fascia of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.11', 'Operations on muscle, tendon, and fascia of hand
- Division of muscle, tendon, and fascia of hand
-- Tenotomy of hand 82.11
82.11 Tenotomy of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.12', 'Operations on muscle, tendon, and fascia of hand
- Division of muscle, tendon, and fascia of hand
-- Fasciotomy of hand 82.12
82.12 Fasciotomy of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.19', 'Operations on muscle, tendon, and fascia of hand
- Division of muscle, tendon, and fascia of hand
-- Other division of soft tissue of hand 82.19
82.19 Other division of soft tissue of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.2', 'Operations on muscle, tendon, and fascia of hand
- Excision of lesion of muscle, tendon, and fascia of hand 82.2
82.2 Excision of lesion of muscle, tendon, and fascia of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.21', 'Operations on muscle, tendon, and fascia of hand
- Excision of lesion of muscle, tendon, and fascia of hand
-- Excision of lesion of tendon sheath of hand 82.21
82.21 Excision of lesion of tendon sheath of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.22', 'Operations on muscle, tendon, and fascia of hand
- Excision of lesion of muscle, tendon, and fascia of hand
-- Excision of lesion of muscle of hand 82.22
82.22 Excision of lesion of muscle of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.29', 'Operations on muscle, tendon, and fascia of hand
- Excision of lesion of muscle, tendon, and fascia of hand
-- Excision of other lesion of soft tissue of hand 82.29
82.29 Excision of other lesion of soft tissue of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.3', 'Operations on muscle, tendon, and fascia of hand
- Other excision of soft tissue of hand 82.3
82.3 Other excision of soft tissue of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.31', 'Operations on muscle, tendon, and fascia of hand
- Other excision of soft tissue of hand
-- Bursectomy of hand 82.31
82.31 Bursectomy of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.32', 'Operations on muscle, tendon, and fascia of hand
- Other excision of soft tissue of hand
-- Excision of tendon of hand for graft 82.32
82.32 Excision of tendon of hand for graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.33', 'Operations on muscle, tendon, and fascia of hand
- Other excision of soft tissue of hand
-- Other tenonectomy of hand 82.33
82.33 Other tenonectomy of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.34', 'Operations on muscle, tendon, and fascia of hand
- Other excision of soft tissue of hand
-- Excision of muscle or fascia of hand for graft 82.34
82.34 Excision of muscle or fascia of hand for graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.35', 'Operations on muscle, tendon, and fascia of hand
- Other excision of soft tissue of hand
-- Other fasciectomy of hand 82.35
82.35 Other fasciectomy of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.36', 'Operations on muscle, tendon, and fascia of hand
- Other excision of soft tissue of hand
-- Other myectomy of hand 82.36
82.36 Other myectomy of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.39', 'Operations on muscle, tendon, and fascia of hand
- Other excision of soft tissue of hand
-- Other excision of soft tissue of hand 82.39
82.39 Other excision of soft tissue of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.4', 'Operations on muscle, tendon, and fascia of hand
- Suture of muscle, tendon, and fascia of hand 82.4
82.4 Suture of muscle, tendon, and fascia of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.41', 'Operations on muscle, tendon, and fascia of hand
- Suture of muscle, tendon, and fascia of hand
-- Suture of tendon sheath of hand 82.41
82.41 Suture of tendon sheath of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.42', 'Operations on muscle, tendon, and fascia of hand
- Suture of muscle, tendon, and fascia of hand
-- Delayed suture of flexor tendon of hand 82.42
82.42 Delayed suture of flexor tendon of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.43', 'Operations on muscle, tendon, and fascia of hand
- Suture of muscle, tendon, and fascia of hand
-- Delayed suture of other tendon of hand 82.43
82.43 Delayed suture of other tendon of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.44', 'Operations on muscle, tendon, and fascia of hand
- Suture of muscle, tendon, and fascia of hand
-- Other suture of flexor tendon of hand 82.44
82.44 Other suture of flexor tendon of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.45', 'Operations on muscle, tendon, and fascia of hand
- Suture of muscle, tendon, and fascia of hand
-- Other suture of other tendon of hand 82.45
82.45 Other suture of other tendon of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.46', 'Operations on muscle, tendon, and fascia of hand
- Suture of muscle, tendon, and fascia of hand
-- Suture of muscle or fascia of hand 82.46
82.46 Suture of muscle or fascia of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.5', 'Operations on muscle, tendon, and fascia of hand
- Transplantation of muscle and tendon of hand 82.5
82.5 Transplantation of muscle and tendon of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.51', 'Operations on muscle, tendon, and fascia of hand
- Transplantation of muscle and tendon of hand
-- Advancement of tendon of hand 82.51
82.51 Advancement of tendon of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.52', 'Operations on muscle, tendon, and fascia of hand
- Transplantation of muscle and tendon of hand
-- Recession of tendon of hand 82.52
82.52 Recession of tendon of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.53', 'Operations on muscle, tendon, and fascia of hand
- Transplantation of muscle and tendon of hand
-- Reattachment of tendon of hand 82.53
82.53 Reattachment of tendon of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.54', 'Operations on muscle, tendon, and fascia of hand
- Transplantation of muscle and tendon of hand
-- Reattachment of muscle of hand 82.54
82.54 Reattachment of muscle of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.55', 'Operations on muscle, tendon, and fascia of hand
- Transplantation of muscle and tendon of hand
-- Other change in hand muscle or tendon length 82.55
82.55 Other change in hand muscle or tendon length', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.56', 'Operations on muscle, tendon, and fascia of hand
- Transplantation of muscle and tendon of hand
-- Other hand tendon transfer or transplantation 82.56
82.56 Other hand tendon transfer or transplantation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.57', 'Operations on muscle, tendon, and fascia of hand
- Transplantation of muscle and tendon of hand
-- Other hand tendon transposition 82.57
82.57 Other hand tendon transposition', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.58', 'Operations on muscle, tendon, and fascia of hand
- Transplantation of muscle and tendon of hand
-- Other hand muscle transfer or transplantation 82.58
82.58 Other hand muscle transfer or transplantation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.59', 'Operations on muscle, tendon, and fascia of hand
- Transplantation of muscle and tendon of hand
-- Other hand muscle transposition 82.59
82.59 Other hand muscle transposition', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.6', 'Operations on muscle, tendon, and fascia of hand
- Reconstruction of thumb 82.6
82.6 Reconstruction of thumb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.61', 'Operations on muscle, tendon, and fascia of hand
- Reconstruction of thumb
-- Pollicization operation carrying over nerves and blood supply 82.61
82.61 Pollicization operation carrying over nerves and blood supply', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.69', 'Operations on muscle, tendon, and fascia of hand
- Reconstruction of thumb
-- Other reconstruction of thumb 82.69
82.69 Other reconstruction of thumb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.7', 'Operations on muscle, tendon, and fascia of hand
- Plastic operation on hand with graft or implant 82.7
82.7 Plastic operation on hand with graft or implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.71', 'Operations on muscle, tendon, and fascia of hand
- Plastic operation on hand with graft or implant
-- Tendon pulley reconstruction 82.71
82.71 Tendon pulley reconstruction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.72', 'Operations on muscle, tendon, and fascia of hand
- Plastic operation on hand with graft or implant
-- Plastic operation on hand with graft of muscle or fascia 82.72
82.72 Plastic operation on hand with graft of muscle or fascia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.79', 'Operations on muscle, tendon, and fascia of hand
- Plastic operation on hand with graft or implant
-- Plastic operation on hand with other graft or implant 82.79
82.79 Plastic operation on hand with other graft or implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.8', 'Operations on muscle, tendon, and fascia of hand
- Other plastic operations on hand 82.8
82.8 Other plastic operations on hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.81', 'Operations on muscle, tendon, and fascia of hand
- Other plastic operations on hand
-- Transfer of finger, except thumb 82.81
82.81 Transfer of finger, except thumb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.82', 'Operations on muscle, tendon, and fascia of hand
- Other plastic operations on hand
-- Repair of cleft hand 82.82
82.82 Repair of cleft hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.83', 'Operations on muscle, tendon, and fascia of hand
- Other plastic operations on hand
-- Repair of macrodactyly 82.83
82.83 Repair of macrodactyly', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.84', 'Operations on muscle, tendon, and fascia of hand
- Other plastic operations on hand
-- Repair of mallet finger 82.84
82.84 Repair of mallet finger', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.85', 'Operations on muscle, tendon, and fascia of hand
- Other plastic operations on hand
-- Other tenodesis of hand 82.85
82.85 Other tenodesis of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.86', 'Operations on muscle, tendon, and fascia of hand
- Other plastic operations on hand
-- Other tenoplasty of hand 82.86
82.86 Other tenoplasty of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.89', 'Operations on muscle, tendon, and fascia of hand
- Other plastic operations on hand
-- Other plastic operations on hand 82.89
82.89 Other plastic operations on hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.9', 'Operations on muscle, tendon, and fascia of hand
- Other operations on muscle, tendon, and fascia of hand 82.9
82.9 Other operations on muscle, tendon, and fascia of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.91', 'Operations on muscle, tendon, and fascia of hand
- Other operations on muscle, tendon, and fascia of hand
-- Lysis of adhesions of hand 82.91
82.91 Lysis of adhesions of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.92', 'Operations on muscle, tendon, and fascia of hand
- Other operations on muscle, tendon, and fascia of hand
-- Aspiration of bursa of hand 82.92
82.92 Aspiration of bursa of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.93', 'Operations on muscle, tendon, and fascia of hand
- Other operations on muscle, tendon, and fascia of hand
-- Aspiration of other soft tissue of hand 82.93
82.93 Aspiration of other soft tissue of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.94', 'Operations on muscle, tendon, and fascia of hand
- Other operations on muscle, tendon, and fascia of hand
-- Injection of therapeutic substance into bursa of hand 82.94
82.94 Injection of therapeutic substance into bursa of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.95', 'Operations on muscle, tendon, and fascia of hand
- Other operations on muscle, tendon, and fascia of hand
-- Injection of therapeutic substance into tendon of hand 82.95
82.95 Injection of therapeutic substance into tendon of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.96', 'Operations on muscle, tendon, and fascia of hand
- Other operations on muscle, tendon, and fascia of hand
-- Other injection of locally-acting therapeutic substance into 82.96
82.96 Other injection of locally-acting therapeutic substance into', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.99', 'Operations on muscle, tendon, and fascia of hand
- Other operations on muscle, tendon, and fascia of hand
-- Other operations on muscle, tendon, and fascia of hand 82.99
82.99 Other operations on muscle, tendon, and fascia of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83', 'Operations on muscle, tendon, fascia, and bursa, except
83 Operations on muscle, tendon, fascia, and bursa, except', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.0', 'Operations on muscle, tendon, fascia, and bursa, except
- Incision of muscle, tendon, fascia, and bursa 83.0
83.0 Incision of muscle, tendon, fascia, and bursa', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.01', 'Operations on muscle, tendon, fascia, and bursa, except
- Incision of muscle, tendon, fascia, and bursa
-- Exploration of tendon sheath 83.01
83.01 Exploration of tendon sheath', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.02', 'Operations on muscle, tendon, fascia, and bursa, except
- Incision of muscle, tendon, fascia, and bursa
-- Myotomy 83.02
83.02 Myotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.03', 'Operations on muscle, tendon, fascia, and bursa, except
- Incision of muscle, tendon, fascia, and bursa
-- Bursotomy 83.03
83.03 Bursotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.09', 'Operations on muscle, tendon, fascia, and bursa, except
- Incision of muscle, tendon, fascia, and bursa
-- Other incision of soft tissue 83.09
83.09 Other incision of soft tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.1', 'Operations on muscle, tendon, fascia, and bursa, except
- Division of muscle, tendon, and fascia 83.1
83.1 Division of muscle, tendon, and fascia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.11', 'Operations on muscle, tendon, fascia, and bursa, except
- Division of muscle, tendon, and fascia
-- Achillotenotomy 83.11
83.11 Achillotenotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.12', 'Operations on muscle, tendon, fascia, and bursa, except
- Division of muscle, tendon, and fascia
-- Adductor tenotomy of hip 83.12
83.12 Adductor tenotomy of hip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.13', 'Operations on muscle, tendon, fascia, and bursa, except
- Division of muscle, tendon, and fascia
-- Other tenotomy 83.13
83.13 Other tenotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.14', 'Operations on muscle, tendon, fascia, and bursa, except
- Division of muscle, tendon, and fascia
-- Fasciotomy 83.14
83.14 Fasciotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.19', 'Operations on muscle, tendon, fascia, and bursa, except
- Division of muscle, tendon, and fascia
-- Other division of soft tissue 83.19
83.19 Other division of soft tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.2', 'Operations on muscle, tendon, fascia, and bursa, except
- Diagnostic procedures on muscle, tendon, fascia, and bursa, 83.2
83.2 Diagnostic procedures on muscle, tendon, fascia, and bursa,', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.21', 'Operations on muscle, tendon, fascia, and bursa, except
- Diagnostic procedures on muscle, tendon, fascia, and bursa,
-- Biopsy of soft tissue 83.21
83.21 Biopsy of soft tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.29', 'Operations on muscle, tendon, fascia, and bursa, except
- Diagnostic procedures on muscle, tendon, fascia, and bursa,
-- Other diagnostic procedures on muscle, tendon, fascia, and bursa, 83.29
83.29 Other diagnostic procedures on muscle, tendon, fascia, and bursa,', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.3', 'Operations on muscle, tendon, fascia, and bursa, except
- Excision of lesion of muscle, tendon, fascia, and bursa 83.3
83.3 Excision of lesion of muscle, tendon, fascia, and bursa', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.31', 'Operations on muscle, tendon, fascia, and bursa, except
- Excision of lesion of muscle, tendon, fascia, and bursa
-- Excision of lesion of tendon sheath 83.31
83.31 Excision of lesion of tendon sheath', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.32', 'Operations on muscle, tendon, fascia, and bursa, except
- Excision of lesion of muscle, tendon, fascia, and bursa
-- Excision of lesion of muscle 83.32
83.32 Excision of lesion of muscle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.39', 'Operations on muscle, tendon, fascia, and bursa, except
- Excision of lesion of muscle, tendon, fascia, and bursa
-- Excision of lesion of other soft tissue 83.39
83.39 Excision of lesion of other soft tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.4', 'Operations on muscle, tendon, fascia, and bursa, except
- Other excision of muscle, tendon, and fascia 83.4
83.4 Other excision of muscle, tendon, and fascia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.41', 'Operations on muscle, tendon, fascia, and bursa, except
- Other excision of muscle, tendon, and fascia
-- Excision of tendon for graft 83.41
83.41 Excision of tendon for graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.42', 'Operations on muscle, tendon, fascia, and bursa, except
- Other excision of muscle, tendon, and fascia
-- Other tenonectomy 83.42
83.42 Other tenonectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.43', 'Operations on muscle, tendon, fascia, and bursa, except
- Other excision of muscle, tendon, and fascia
-- Excision of muscle or fascia for graft 83.43
83.43 Excision of muscle or fascia for graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.44', 'Operations on muscle, tendon, fascia, and bursa, except
- Other excision of muscle, tendon, and fascia
-- Other fasciectomy 83.44
83.44 Other fasciectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.45', 'Operations on muscle, tendon, fascia, and bursa, except
- Other excision of muscle, tendon, and fascia
-- Other myectomy 83.45
83.45 Other myectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.49', 'Operations on muscle, tendon, fascia, and bursa, except
- Other excision of muscle, tendon, and fascia
-- Other excision of soft tissue 83.49
83.49 Other excision of soft tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.5', 'Operations on muscle, tendon, fascia, and bursa, except
- Bursectomy 83.5
83.5 Bursectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.6', 'Operations on muscle, tendon, fascia, and bursa, except
- Suture of muscle, tendon, and fascia 83.6
83.6 Suture of muscle, tendon, and fascia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.61', 'Operations on muscle, tendon, fascia, and bursa, except
- Suture of muscle, tendon, and fascia
-- Suture of tendon sheath 83.61
83.61 Suture of tendon sheath', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.62', 'Operations on muscle, tendon, fascia, and bursa, except
- Suture of muscle, tendon, and fascia
-- Delayed suture of tendon 83.62
83.62 Delayed suture of tendon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.63', 'Operations on muscle, tendon, fascia, and bursa, except
- Suture of muscle, tendon, and fascia
-- Rotator cuff repair 83.63
83.63 Rotator cuff repair', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.64', 'Operations on muscle, tendon, fascia, and bursa, except
- Suture of muscle, tendon, and fascia
-- Other suture of tendon 83.64
83.64 Other suture of tendon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.65', 'Operations on muscle, tendon, fascia, and bursa, except
- Suture of muscle, tendon, and fascia
-- Other suture of muscle or fascia 83.65
83.65 Other suture of muscle or fascia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.7', 'Operations on muscle, tendon, fascia, and bursa, except
- Reconstruction of muscle and tendon 83.7
83.7 Reconstruction of muscle and tendon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.71', 'Operations on muscle, tendon, fascia, and bursa, except
- Reconstruction of muscle and tendon
-- Advancement of tendon 83.71
83.71 Advancement of tendon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.72', 'Operations on muscle, tendon, fascia, and bursa, except
- Reconstruction of muscle and tendon
-- Recession of tendon 83.72
83.72 Recession of tendon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.73', 'Operations on muscle, tendon, fascia, and bursa, except
- Reconstruction of muscle and tendon
-- Reattachment of tendon 83.73
83.73 Reattachment of tendon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.74', 'Operations on muscle, tendon, fascia, and bursa, except
- Reconstruction of muscle and tendon
-- Reattachment of muscle 83.74
83.74 Reattachment of muscle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.75', 'Operations on muscle, tendon, fascia, and bursa, except
- Reconstruction of muscle and tendon
-- Tendon transfer or transplantation 83.75
83.75 Tendon transfer or transplantation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.76', 'Operations on muscle, tendon, fascia, and bursa, except
- Reconstruction of muscle and tendon
-- Other tendon transposition 83.76
83.76 Other tendon transposition', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.77', 'Operations on muscle, tendon, fascia, and bursa, except
- Reconstruction of muscle and tendon
-- Muscle transfer or transplantation 83.77
83.77 Muscle transfer or transplantation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.79', 'Operations on muscle, tendon, fascia, and bursa, except
- Reconstruction of muscle and tendon
-- Other muscle transposition 83.79
83.79 Other muscle transposition', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.8', 'Operations on muscle, tendon, fascia, and bursa, except
- Other plastic operations on muscle, tendon, and fascia 83.8
83.8 Other plastic operations on muscle, tendon, and fascia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.81', 'Operations on muscle, tendon, fascia, and bursa, except
- Other plastic operations on muscle, tendon, and fascia
-- Tendon graft 83.81
83.81 Tendon graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.82', 'Operations on muscle, tendon, fascia, and bursa, except
- Other plastic operations on muscle, tendon, and fascia
-- Graft of muscle or fascia 83.82
83.82 Graft of muscle or fascia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.83', 'Operations on muscle, tendon, fascia, and bursa, except
- Other plastic operations on muscle, tendon, and fascia
-- Tendon pulley reconstruction 83.83
83.83 Tendon pulley reconstruction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.84', 'Operations on muscle, tendon, fascia, and bursa, except
- Other plastic operations on muscle, tendon, and fascia
-- Release of clubfoot, not elsewhere classified 83.84
83.84 Release of clubfoot, not elsewhere classified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.85', 'Operations on muscle, tendon, fascia, and bursa, except
- Other plastic operations on muscle, tendon, and fascia
-- Other change in muscle or tendon length 83.85
83.85 Other change in muscle or tendon length', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.86', 'Operations on muscle, tendon, fascia, and bursa, except
- Other plastic operations on muscle, tendon, and fascia
-- Quadricepsplasty 83.86
83.86 Quadricepsplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.87', 'Operations on muscle, tendon, fascia, and bursa, except
- Other plastic operations on muscle, tendon, and fascia
-- Other plastic operations on muscle 83.87
83.87 Other plastic operations on muscle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.88', 'Operations on muscle, tendon, fascia, and bursa, except
- Other plastic operations on muscle, tendon, and fascia
-- Other plastic operations on tendon 83.88
83.88 Other plastic operations on tendon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.89', 'Operations on muscle, tendon, fascia, and bursa, except
- Other plastic operations on muscle, tendon, and fascia
-- Other plastic operations on fascia 83.89
83.89 Other plastic operations on fascia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.9', 'Operations on muscle, tendon, fascia, and bursa, except
- Other operations on muscle, tendon, fascia, and bursa 83.9
83.9 Other operations on muscle, tendon, fascia, and bursa', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.91', 'Operations on muscle, tendon, fascia, and bursa, except
- Other operations on muscle, tendon, fascia, and bursa
-- Lysis of adhesions of muscle, tendon, fascia, and barsa 83.91
83.91 Lysis of adhesions of muscle, tendon, fascia, and barsa', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.92', 'Operations on muscle, tendon, fascia, and bursa, except
- Other operations on muscle, tendon, fascia, and bursa
-- Insertion or replacement of skeletal muscle stimulator 83.92
83.92 Insertion or replacement of skeletal muscle stimulator', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.93', 'Operations on muscle, tendon, fascia, and bursa, except
- Other operations on muscle, tendon, fascia, and bursa
-- Removal of skeletal muscle stimulator 83.93
83.93 Removal of skeletal muscle stimulator', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.94', 'Operations on muscle, tendon, fascia, and bursa, except
- Other operations on muscle, tendon, fascia, and bursa
-- Aspiration of barsa 83.94
83.94 Aspiration of barsa', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.95', 'Operations on muscle, tendon, fascia, and bursa, except
- Other operations on muscle, tendon, fascia, and bursa
-- Aspiration of other soft tissue 83.95
83.95 Aspiration of other soft tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.96', 'Operations on muscle, tendon, fascia, and bursa, except
- Other operations on muscle, tendon, fascia, and bursa
-- Injection of therapeutic substance into bursa 83.96
83.96 Injection of therapeutic substance into bursa', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.97', 'Operations on muscle, tendon, fascia, and bursa, except
- Other operations on muscle, tendon, fascia, and bursa
-- Injection of therapeutic substance into tendon 83.97
83.97 Injection of therapeutic substance into tendon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.98', 'Operations on muscle, tendon, fascia, and bursa, except
- Other operations on muscle, tendon, fascia, and bursa
-- Injection of locally-acting therapeutic substance into other soft 83.98
83.98 Injection of locally-acting therapeutic substance into other soft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.99', 'Operations on muscle, tendon, fascia, and bursa, except
- Other operations on muscle, tendon, fascia, and bursa
-- Other operations on muscle, tendon, fascia, and bursa 83.99
83.99 Other operations on muscle, tendon, fascia, and bursa', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84', 'Other procedures on musculoskeletal system
84 Other procedures on musculoskeletal system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.0', 'Other procedures on musculoskeletal system
- Amputation of upper limb 84.0
84.0 Amputation of upper limb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.00', 'Other procedures on musculoskeletal system
- Amputation of upper limb
-- Upper limb amputation, not otherwise specified 84.00
84.00 Upper limb amputation, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.01', 'Other procedures on musculoskeletal system
- Amputation of upper limb
-- Amputation and disarticulation of finger 84.01
84.01 Amputation and disarticulation of finger', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.02', 'Other procedures on musculoskeletal system
- Amputation of upper limb
-- Amputation and disarticulation of thumb 84.02
84.02 Amputation and disarticulation of thumb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.03', 'Other procedures on musculoskeletal system
- Amputation of upper limb
-- Amputation through hand 84.03
84.03 Amputation through hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.04', 'Other procedures on musculoskeletal system
- Amputation of upper limb
-- Disarticulation of wrist 84.04
84.04 Disarticulation of wrist', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.05', 'Other procedures on musculoskeletal system
- Amputation of upper limb
-- Amputation through forearm 84.05
84.05 Amputation through forearm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.06', 'Other procedures on musculoskeletal system
- Amputation of upper limb
-- Disarticulation of elbow 84.06
84.06 Disarticulation of elbow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.07', 'Other procedures on musculoskeletal system
- Amputation of upper limb
-- Amputation through humerus 84.07
84.07 Amputation through humerus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.08', 'Other procedures on musculoskeletal system
- Amputation of upper limb
-- Disarticulation of shoulder 84.08
84.08 Disarticulation of shoulder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.09', 'Other procedures on musculoskeletal system
- Amputation of upper limb
-- Interthoracoscapular amputation 84.09
84.09 Interthoracoscapular amputation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.1', 'Other procedures on musculoskeletal system
- Amputation of lower limb 84.1
84.1 Amputation of lower limb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.10', 'Other procedures on musculoskeletal system
- Amputation of lower limb
-- Lower limb amputation, not otherwise specified 84.10
84.10 Lower limb amputation, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.11', 'Other procedures on musculoskeletal system
- Amputation of lower limb
-- Amputation of toe 84.11
84.11 Amputation of toe', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.12', 'Other procedures on musculoskeletal system
- Amputation of lower limb
-- Amputation through foot 84.12
84.12 Amputation through foot', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.13', 'Other procedures on musculoskeletal system
- Amputation of lower limb
-- Disarticulation of ankle 84.13
84.13 Disarticulation of ankle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.14', 'Other procedures on musculoskeletal system
- Amputation of lower limb
-- Amputation of ankle through malleoli of tibia and fibula 84.14
84.14 Amputation of ankle through malleoli of tibia and fibula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.15', 'Other procedures on musculoskeletal system
- Amputation of lower limb
-- Other amputation below knee 84.15
84.15 Other amputation below knee', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.16', 'Other procedures on musculoskeletal system
- Amputation of lower limb
-- Disarticulation of knee 84.16
84.16 Disarticulation of knee', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.17', 'Other procedures on musculoskeletal system
- Amputation of lower limb
-- Amputation above knee 84.17
84.17 Amputation above knee', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.18', 'Other procedures on musculoskeletal system
- Amputation of lower limb
-- Disarticulation of hip 84.18
84.18 Disarticulation of hip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.19', 'Other procedures on musculoskeletal system
- Amputation of lower limb
-- Abdominopelvic amputation 84.19
84.19 Abdominopelvic amputation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.2', 'Other procedures on musculoskeletal system
- Reattachment of extremity 84.2
84.2 Reattachment of extremity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.21', 'Other procedures on musculoskeletal system
- Reattachment of extremity
-- Thumb reattachment 84.21
84.21 Thumb reattachment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.22', 'Other procedures on musculoskeletal system
- Reattachment of extremity
-- Finger reattachment 84.22
84.22 Finger reattachment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.23', 'Other procedures on musculoskeletal system
- Reattachment of extremity
-- Forearm, wrist, or hand reattachment 84.23
84.23 Forearm, wrist, or hand reattachment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.24', 'Other procedures on musculoskeletal system
- Reattachment of extremity
-- Upper arm reattachment 84.24
84.24 Upper arm reattachment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.25', 'Other procedures on musculoskeletal system
- Reattachment of extremity
-- Toe reattachment 84.25
84.25 Toe reattachment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.26', 'Other procedures on musculoskeletal system
- Reattachment of extremity
-- Foot reattachment 84.26
84.26 Foot reattachment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.27', 'Other procedures on musculoskeletal system
- Reattachment of extremity
-- Lower leg or ankle reattachment 84.27
84.27 Lower leg or ankle reattachment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.28', 'Other procedures on musculoskeletal system
- Reattachment of extremity
-- Thigh reattachment 84.28
84.28 Thigh reattachment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.29', 'Other procedures on musculoskeletal system
- Reattachment of extremity
-- Other reattachment 84.29
84.29 Other reattachment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.3', 'Other procedures on musculoskeletal system
- Revision of amputation stump 84.3
84.3 Revision of amputation stump', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.4', 'Other procedures on musculoskeletal system
- Implantation or fitting of prosthetic limb device 84.4
84.4 Implantation or fitting of prosthetic limb device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.40', 'Other procedures on musculoskeletal system
- Implantation or fitting of prosthetic limb device
-- Implantation or fitting of prosthetic limb device, not otherwise 84.40
84.40 Implantation or fitting of prosthetic limb device, not otherwise', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.41', 'Other procedures on musculoskeletal system
- Implantation or fitting of prosthetic limb device
-- Fitting of prosthesis of upper arm and shoulder 84.41
84.41 Fitting of prosthesis of upper arm and shoulder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.42', 'Other procedures on musculoskeletal system
- Implantation or fitting of prosthetic limb device
-- Fitting of prosthesis of lower arm and hand 84.42
84.42 Fitting of prosthesis of lower arm and hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.43', 'Other procedures on musculoskeletal system
- Implantation or fitting of prosthetic limb device
-- Fitting of prosthesis of arm, not otherwise specified 84.43
84.43 Fitting of prosthesis of arm, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.44', 'Other procedures on musculoskeletal system
- Implantation or fitting of prosthetic limb device
-- Implantation of prosthetic device of arm 84.44
84.44 Implantation of prosthetic device of arm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.45', 'Other procedures on musculoskeletal system
- Implantation or fitting of prosthetic limb device
-- Fitting of prosthesis above knee 84.45
84.45 Fitting of prosthesis above knee', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.46', 'Other procedures on musculoskeletal system
- Implantation or fitting of prosthetic limb device
-- Fitting of prosthesis below knee 84.46
84.46 Fitting of prosthesis below knee', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.47', 'Other procedures on musculoskeletal system
- Implantation or fitting of prosthetic limb device
-- Fitting of prosthesis of leg, not otherwise specified 84.47
84.47 Fitting of prosthesis of leg, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.48', 'Other procedures on musculoskeletal system
- Implantation or fitting of prosthetic limb device
-- Implantation of prosthetic device of leg 84.48
84.48 Implantation of prosthetic device of leg', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.5', 'Other procedures on musculoskeletal system
- Implantation of other musculoskeletal devices and substances 84.5
84.5 Implantation of other musculoskeletal devices and substances', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.51', 'Other procedures on musculoskeletal system
- Implantation of other musculoskeletal devices and substances
-- Insertion of interbody spinal fusion device 84.51
84.51 Insertion of interbody spinal fusion device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.52', 'Other procedures on musculoskeletal system
- Implantation of other musculoskeletal devices and substances
-- Insertion of recombinant bone morphogenetic protein 84.52
84.52 Insertion of recombinant bone morphogenetic protein', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.53', 'Other procedures on musculoskeletal system
- Implantation of other musculoskeletal devices and substances
-- Implantation of internal limb lengthening device with kinetic 84.53
84.53 Implantation of internal limb lengthening device with kinetic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.54', 'Other procedures on musculoskeletal system
- Implantation of other musculoskeletal devices and substances
-- Implantation of other internal limb lengthening device 84.54
84.54 Implantation of other internal limb lengthening device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.55', 'Other procedures on musculoskeletal system
- Implantation of other musculoskeletal devices and substances
-- Insertion of bone void filler 84.55
84.55 Insertion of bone void filler', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.56', 'Other procedures on musculoskeletal system
- Implantation of other musculoskeletal devices and substances
-- Insertion or replacement of (cement) spacer 84.56
84.56 Insertion or replacement of (cement) spacer', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.57', 'Other procedures on musculoskeletal system
- Implantation of other musculoskeletal devices and substances
-- Removal of (cement) spacer 84.57
84.57 Removal of (cement) spacer', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.59', 'Other procedures on musculoskeletal system
- Implantation of other musculoskeletal devices and substances
-- Insertion of other spinal devices 84.59
84.59 Insertion of other spinal devices', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.6', 'Other procedures on musculoskeletal system
- Replacement of spinal disc 84.6
84.6 Replacement of spinal disc', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.60', 'Other procedures on musculoskeletal system
- Replacement of spinal disc
-- Insertion of spinal disc prosthesis, not otherwise specified 84.60
84.60 Insertion of spinal disc prosthesis, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.61', 'Other procedures on musculoskeletal system
- Replacement of spinal disc
-- Insertion of partial spinal disc prosthesis, cervical 84.61
84.61 Insertion of partial spinal disc prosthesis, cervical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.62', 'Other procedures on musculoskeletal system
- Replacement of spinal disc
-- Insertion of total spinal disc prosthesis, cervical 84.62
84.62 Insertion of total spinal disc prosthesis, cervical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.63', 'Other procedures on musculoskeletal system
- Replacement of spinal disc
-- Insertion of spinal disc prosthesis, thoracic 84.63
84.63 Insertion of spinal disc prosthesis, thoracic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.64', 'Other procedures on musculoskeletal system
- Replacement of spinal disc
-- Insertion of partial spinal disc prosthesis, lumbosacral 84.64
84.64 Insertion of partial spinal disc prosthesis, lumbosacral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.65', 'Other procedures on musculoskeletal system
- Replacement of spinal disc
-- Insertion of total spinal disc prosthesis, lumbosacral 84.65
84.65 Insertion of total spinal disc prosthesis, lumbosacral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.66', 'Other procedures on musculoskeletal system
- Replacement of spinal disc
-- Revision or replacement of artificial spinal disc prosthesis, 84.66
84.66 Revision or replacement of artificial spinal disc prosthesis,', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.67', 'Other procedures on musculoskeletal system
- Replacement of spinal disc
-- Revision or replacement of artificial spinal disc prosthesis, 84.67
84.67 Revision or replacement of artificial spinal disc prosthesis,', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.68', 'Other procedures on musculoskeletal system
- Replacement of spinal disc
-- Revision or replacement of artificial spinal disc prosthesis, 84.68
84.68 Revision or replacement of artificial spinal disc prosthesis,', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.69', 'Other procedures on musculoskeletal system
- Replacement of spinal disc
-- Revision or replacement of artificial spinal disc prosthesis, not 84.69
84.69 Revision or replacement of artificial spinal disc prosthesis, not', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.7', 'Other procedures on musculoskeletal system
- Adjunct codes for external fixator devices 84.7
84.7 Adjunct codes for external fixator devices', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.71', 'Other procedures on musculoskeletal system
- Adjunct codes for external fixator devices
-- Application of external fixator device, monoplanar system 84.71
84.71 Application of external fixator device, monoplanar system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.72', 'Other procedures on musculoskeletal system
- Adjunct codes for external fixator devices
-- Application of external fixator device, ring system 84.72
84.72 Application of external fixator device, ring system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.73', 'Other procedures on musculoskeletal system
- Adjunct codes for external fixator devices
-- Application of hybrid external fixator device 84.73
84.73 Application of hybrid external fixator device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.8', 'Other procedures on musculoskeletal system
- Insertion, replacement and revision of posterior spinal motion 84.8
84.8 Insertion, replacement and revision of posterior spinal motion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.80', 'Other procedures on musculoskeletal system
- Insertion, replacement and revision of posterior spinal motion
-- Insertion or replacement of interspinous process device(s)  84.80
84.80 Insertion or replacement of interspinous process device(s) ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.81', 'Other procedures on musculoskeletal system
- Insertion, replacement and revision of posterior spinal motion
-- Revision of interspinous process device(s)  84.81
84.81 Revision of interspinous process device(s) ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.82', 'Other procedures on musculoskeletal system
- Insertion, replacement and revision of posterior spinal motion
-- Insertion or replacement of pedicle-based dynamic stabilization 84.82
84.82 Insertion or replacement of pedicle-based dynamic stabilization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.83', 'Other procedures on musculoskeletal system
- Insertion, replacement and revision of posterior spinal motion
-- Revision of pedicle-based dynamic stabilization device(s)  84.83
84.83 Revision of pedicle-based dynamic stabilization device(s) ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.84', 'Other procedures on musculoskeletal system
- Insertion, replacement and revision of posterior spinal motion
-- Insertion or replacement of facet replacement device(s)  84.84
84.84 Insertion or replacement of facet replacement device(s) ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.85', 'Other procedures on musculoskeletal system
- Insertion, replacement and revision of posterior spinal motion
-- Revision of facet replacement device(s)  84.85
84.85 Revision of facet replacement device(s) ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.9', 'Other procedures on musculoskeletal system
- Other operations on musculoskeletal system 84.9
84.9 Other operations on musculoskeletal system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.91', 'Other procedures on musculoskeletal system
- Other operations on musculoskeletal system
-- Amputation, not otherwise specified 84.91
84.91 Amputation, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.92', 'Other procedures on musculoskeletal system
- Other operations on musculoskeletal system
-- Separation of equal conjoined twins 84.92
84.92 Separation of equal conjoined twins', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.93', 'Other procedures on musculoskeletal system
- Other operations on musculoskeletal system
-- Separation of unequal conjoined twins 84.93
84.93 Separation of unequal conjoined twins', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.99', 'Other procedures on musculoskeletal system
- Other operations on musculoskeletal system
-- Other 84.99
84.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85', 'Operations on the breast
85 Operations on the breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.0', 'Operations on the breast
- Mastotomy 85.0
85.0 Mastotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.1', 'Operations on the breast
- Diagnostic procedures on breast 85.1
85.1 Diagnostic procedures on breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.11', 'Operations on the breast
- Diagnostic procedures on breast
-- Closed [percutaneous] [needle] biopsy of breast 85.11
85.11 Closed [percutaneous] [needle] biopsy of breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.12', 'Operations on the breast
- Diagnostic procedures on breast
-- Open biopsy of breast 85.12
85.12 Open biopsy of breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.19', 'Operations on the breast
- Diagnostic procedures on breast
-- Other diagnostic procedures on breast 85.19
85.19 Other diagnostic procedures on breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.2', 'Operations on the breast
- Excision or destruction of breast tissue 85.2
85.2 Excision or destruction of breast tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.20', 'Operations on the breast
- Excision or destruction of breast tissue
-- Excision or destruction of breast tissue, not otherwise specified 85.20
85.20 Excision or destruction of breast tissue, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.21', 'Operations on the breast
- Excision or destruction of breast tissue
-- Local excision of lesion of breast 85.21
85.21 Local excision of lesion of breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.22', 'Operations on the breast
- Excision or destruction of breast tissue
-- Resection of quadrant of breast 85.22
85.22 Resection of quadrant of breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.23', 'Operations on the breast
- Excision or destruction of breast tissue
-- Subtotal mastectomy 85.23
85.23 Subtotal mastectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.24', 'Operations on the breast
- Excision or destruction of breast tissue
-- Excision of ectopic breast tissue 85.24
85.24 Excision of ectopic breast tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.25', 'Operations on the breast
- Excision or destruction of breast tissue
-- Excision of nipple 85.25
85.25 Excision of nipple', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.3', 'Operations on the breast
- Reduction mammoplasty and subcutaneous mammectomy 85.3
85.3 Reduction mammoplasty and subcutaneous mammectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.31', 'Operations on the breast
- Reduction mammoplasty and subcutaneous mammectomy
-- Unilateral reduction mammoplasty 85.31
85.31 Unilateral reduction mammoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.32', 'Operations on the breast
- Reduction mammoplasty and subcutaneous mammectomy
-- Bilateral reduction mammoplasty 85.32
85.32 Bilateral reduction mammoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.33', 'Operations on the breast
- Reduction mammoplasty and subcutaneous mammectomy
-- Unilateral subcutaneous mammectomy with synchronous implant 85.33
85.33 Unilateral subcutaneous mammectomy with synchronous implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.34', 'Operations on the breast
- Reduction mammoplasty and subcutaneous mammectomy
-- Other unilateral subcutaneous mammectomy 85.34
85.34 Other unilateral subcutaneous mammectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.35', 'Operations on the breast
- Reduction mammoplasty and subcutaneous mammectomy
-- Bilateral subcutaneous mammectomy with synchronous implant 85.35
85.35 Bilateral subcutaneous mammectomy with synchronous implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.36', 'Operations on the breast
- Reduction mammoplasty and subcutaneous mammectomy
-- Other bilateral subcutaneous mammectomy 85.36
85.36 Other bilateral subcutaneous mammectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.4', 'Operations on the breast
- Mastectomy 85.4
85.4 Mastectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.41', 'Operations on the breast
- Mastectomy
-- Unilateral simple mastectomy 85.41
85.41 Unilateral simple mastectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.42', 'Operations on the breast
- Mastectomy
-- Bilateral simple mastectomy 85.42
85.42 Bilateral simple mastectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.43', 'Operations on the breast
- Mastectomy
-- Unilateral extended simple mastectomy 85.43
85.43 Unilateral extended simple mastectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.44', 'Operations on the breast
- Mastectomy
-- Bilateral extended simple mastectomy 85.44
85.44 Bilateral extended simple mastectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.45', 'Operations on the breast
- Mastectomy
-- Unilateral radical mastectomy 85.45
85.45 Unilateral radical mastectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.46', 'Operations on the breast
- Mastectomy
-- Bilateral radical mastectomy 85.46
85.46 Bilateral radical mastectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.47', 'Operations on the breast
- Mastectomy
-- Unilateral extended radical mastectomy 85.47
85.47 Unilateral extended radical mastectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.48', 'Operations on the breast
- Mastectomy
-- Bilateral extended radical mastectomy 85.48
85.48 Bilateral extended radical mastectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.5', 'Operations on the breast
- Augmentation mammoplasty 85.5
85.5 Augmentation mammoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.50', 'Operations on the breast
- Augmentation mammoplasty
-- Augmentation mammoplasty, not otherwise specified 85.50
85.50 Augmentation mammoplasty, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.51', 'Operations on the breast
- Augmentation mammoplasty
-- Unilateral injection into breast for augmentation 85.51
85.51 Unilateral injection into breast for augmentation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.52', 'Operations on the breast
- Augmentation mammoplasty
-- Bilateral injection into breast for augmentation 85.52
85.52 Bilateral injection into breast for augmentation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.53', 'Operations on the breast
- Augmentation mammoplasty
-- Unilateral breast implant 85.53
85.53 Unilateral breast implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.54', 'Operations on the breast
- Augmentation mammoplasty
-- Bilateral breast implant 85.54
85.54 Bilateral breast implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.6', 'Operations on the breast
- Mastopexy 85.6
85.6 Mastopexy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.7', 'Operations on the breast
- Total reconstruction of breast 85.7
85.7 Total reconstruction of breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.70', 'Operations on the breast
- Total reconstruction of breast
-- Total reconstruction of breast, not otherwise specified  85.70
85.70 Total reconstruction of breast, not otherwise specified ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.71', 'Operations on the breast
- Total reconstruction of breast
-- Latissimus dorsi myocutaneous flap  85.71
85.71 Latissimus dorsi myocutaneous flap ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.72', 'Operations on the breast
- Total reconstruction of breast
-- Transverse rectus abdominis myocutaneous (TRAM) flap, pedicled  85.72
85.72 Transverse rectus abdominis myocutaneous (TRAM) flap, pedicled ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.73', 'Operations on the breast
- Total reconstruction of breast
-- Transverse rectus abdominis myocutaneous (TRAM) flap, free 85.73
85.73 Transverse rectus abdominis myocutaneous (TRAM) flap, free', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.74', 'Operations on the breast
- Total reconstruction of breast
-- Deep inferior epigastric artery perforator (DIEP) flap, free  85.74
85.74 Deep inferior epigastric artery perforator (DIEP) flap, free ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.75', 'Operations on the breast
- Total reconstruction of breast
-- Superficial inferior epigastric artery (SIEA) flap, free  85.75
85.75 Superficial inferior epigastric artery (SIEA) flap, free ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.76', 'Operations on the breast
- Total reconstruction of breast
-- Gluteal artery perforator (GAP) flap, free  85.76
85.76 Gluteal artery perforator (GAP) flap, free ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.79', 'Operations on the breast
- Total reconstruction of breast
-- Other total reconstruction of breast  85.79
85.79 Other total reconstruction of breast ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.8', 'Operations on the breast
- Other repair and plastic operations on breast 85.8
85.8 Other repair and plastic operations on breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.81', 'Operations on the breast
- Other repair and plastic operations on breast
-- Suture of laceration of breast 85.81
85.81 Suture of laceration of breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.82', 'Operations on the breast
- Other repair and plastic operations on breast
-- Split-thickness graft to breast 85.82
85.82 Split-thickness graft to breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.83', 'Operations on the breast
- Other repair and plastic operations on breast
-- Full-thickness graft to breast 85.83
85.83 Full-thickness graft to breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.84', 'Operations on the breast
- Other repair and plastic operations on breast
-- Pedicle graft to breast 85.84
85.84 Pedicle graft to breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.85', 'Operations on the breast
- Other repair and plastic operations on breast
-- Muscle flap graft to breast 85.85
85.85 Muscle flap graft to breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.86', 'Operations on the breast
- Other repair and plastic operations on breast
-- Transposition of nipple 85.86
85.86 Transposition of nipple', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.87', 'Operations on the breast
- Other repair and plastic operations on breast
-- Other repair or reconstruction of nipple 85.87
85.87 Other repair or reconstruction of nipple', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.89', 'Operations on the breast
- Other repair and plastic operations on breast
-- Other mammoplasty 85.89
85.89 Other mammoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.9', 'Operations on the breast
- Other operations on the breast 85.9
85.9 Other operations on the breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.91', 'Operations on the breast
- Other operations on the breast
-- Aspiration of breast 85.91
85.91 Aspiration of breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.92', 'Operations on the breast
- Other operations on the breast
-- Injection of therapeutic agent into breast 85.92
85.92 Injection of therapeutic agent into breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.93', 'Operations on the breast
- Other operations on the breast
-- Revision of implant of breast 85.93
85.93 Revision of implant of breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.94', 'Operations on the breast
- Other operations on the breast
-- Removal of implant of breast 85.94
85.94 Removal of implant of breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.95', 'Operations on the breast
- Other operations on the breast
-- Insertion of breast tissue expander 85.95
85.95 Insertion of breast tissue expander', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.96', 'Operations on the breast
- Other operations on the breast
-- Removal of breast tissue expander 85.96
85.96 Removal of breast tissue expander', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.99', 'Operations on the breast
- Other operations on the breast
-- Other 85.99
85.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86', 'Operations on skin and subcutaneous tissue
86 Operations on skin and subcutaneous tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.0', 'Operations on skin and subcutaneous tissue
- Incision of skin and subcutaneous tissue 86.0
86.0 Incision of skin and subcutaneous tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.01', 'Operations on skin and subcutaneous tissue
- Incision of skin and subcutaneous tissue
-- Aspiration of skin and subcutaneous tissue 86.01
86.01 Aspiration of skin and subcutaneous tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.02', 'Operations on skin and subcutaneous tissue
- Incision of skin and subcutaneous tissue
-- Injection or tattooing of skin lesion or defect 86.02
86.02 Injection or tattooing of skin lesion or defect', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.03', 'Operations on skin and subcutaneous tissue
- Incision of skin and subcutaneous tissue
-- Incision of pilonidal sinus or cyst 86.03
86.03 Incision of pilonidal sinus or cyst', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.04', 'Operations on skin and subcutaneous tissue
- Incision of skin and subcutaneous tissue
-- Other incision with drainage of skin and subcutaneous tissue 86.04
86.04 Other incision with drainage of skin and subcutaneous tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.05', 'Operations on skin and subcutaneous tissue
- Incision of skin and subcutaneous tissue
-- Incision with removal of foreign body or device from skin and 86.05
86.05 Incision with removal of foreign body or device from skin and', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.06', 'Operations on skin and subcutaneous tissue
- Incision of skin and subcutaneous tissue
-- Insertion of totally implantable infusion pump 86.06
86.06 Insertion of totally implantable infusion pump', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.07', 'Operations on skin and subcutaneous tissue
- Incision of skin and subcutaneous tissue
-- Insertion of totally implantable vascular access device [VAD] 86.07
86.07 Insertion of totally implantable vascular access device [VAD]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.09', 'Operations on skin and subcutaneous tissue
- Incision of skin and subcutaneous tissue
-- Other incision of skin and subcutaneous tissue 86.09
86.09 Other incision of skin and subcutaneous tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.1', 'Operations on skin and subcutaneous tissue
- Diagnostic procedures on skin and subcutaneous tissue 86.1
86.1 Diagnostic procedures on skin and subcutaneous tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.11', 'Operations on skin and subcutaneous tissue
- Diagnostic procedures on skin and subcutaneous tissue
-- Biopsy of skin and subcutaneous tissue 86.11
86.11 Biopsy of skin and subcutaneous tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.19', 'Operations on skin and subcutaneous tissue
- Diagnostic procedures on skin and subcutaneous tissue
-- Other diagnostic procedures on skin and subcutaneous tissue 86.19
86.19 Other diagnostic procedures on skin and subcutaneous tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.2', 'Operations on skin and subcutaneous tissue
- Excision or destruction of lesion or tissue of skin and subcutaneous 86.2
86.2 Excision or destruction of lesion or tissue of skin and subcutaneous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.21', 'Operations on skin and subcutaneous tissue
- Excision or destruction of lesion or tissue of skin and subcutaneous
-- Excision of pilonidal cyst or sinus 86.21
86.21 Excision of pilonidal cyst or sinus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.22', 'Operations on skin and subcutaneous tissue
- Excision or destruction of lesion or tissue of skin and subcutaneous
-- Excisional debridement of wound, infection, or burn 86.22
86.22 Excisional debridement of wound, infection, or burn', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.23', 'Operations on skin and subcutaneous tissue
- Excision or destruction of lesion or tissue of skin and subcutaneous
-- Removal of nail, nail bed, or nail fold 86.23
86.23 Removal of nail, nail bed, or nail fold', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.24', 'Operations on skin and subcutaneous tissue
- Excision or destruction of lesion or tissue of skin and subcutaneous
-- Chemosurgery of skin 86.24
86.24 Chemosurgery of skin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.25', 'Operations on skin and subcutaneous tissue
- Excision or destruction of lesion or tissue of skin and subcutaneous
-- Dermabrasion 86.25
86.25 Dermabrasion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.26', 'Operations on skin and subcutaneous tissue
- Excision or destruction of lesion or tissue of skin and subcutaneous
-- Ligation of dermal appendage 86.26
86.26 Ligation of dermal appendage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.27', 'Operations on skin and subcutaneous tissue
- Excision or destruction of lesion or tissue of skin and subcutaneous
-- Debridement of nail, nail bed, or nail fold 86.27
86.27 Debridement of nail, nail bed, or nail fold', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.28', 'Operations on skin and subcutaneous tissue
- Excision or destruction of lesion or tissue of skin and subcutaneous
-- Nonexcisional debridement of wound, infection or burn 86.28
86.28 Nonexcisional debridement of wound, infection or burn', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.3', 'Operations on skin and subcutaneous tissue
- Other local excision or destruction of lesion or tissue of skin and 86.3
86.3 Other local excision or destruction of lesion or tissue of skin and', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.4', 'Operations on skin and subcutaneous tissue
- Radical excision of skin lesion 86.4
86.4 Radical excision of skin lesion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.5', 'Operations on skin and subcutaneous tissue
- Suture or other closure of skin and subcutaneous tissue 86.5
86.5 Suture or other closure of skin and subcutaneous tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.51', 'Operations on skin and subcutaneous tissue
- Suture or other closure of skin and subcutaneous tissue
-- Replantation of scalp 86.51
86.51 Replantation of scalp', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.59', 'Operations on skin and subcutaneous tissue
- Suture or other closure of skin and subcutaneous tissue
-- Closure of skin and subcutaneous tissue of other sites 86.59
86.59 Closure of skin and subcutaneous tissue of other sites', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.6', 'Operations on skin and subcutaneous tissue
- Free skin graft 86.6
86.6 Free skin graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.60', 'Operations on skin and subcutaneous tissue
- Free skin graft
-- Free skin graft, not otherwise specified 86.60
86.60 Free skin graft, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.61', 'Operations on skin and subcutaneous tissue
- Free skin graft
-- Full-thickness skin graft to hand 86.61
86.61 Full-thickness skin graft to hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.62', 'Operations on skin and subcutaneous tissue
- Free skin graft
-- Other skin graft to hand 86.62
86.62 Other skin graft to hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.63', 'Operations on skin and subcutaneous tissue
- Free skin graft
-- Full-thickness skin graft to other sites 86.63
86.63 Full-thickness skin graft to other sites', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.64', 'Operations on skin and subcutaneous tissue
- Free skin graft
-- Hair transplant 86.64
86.64 Hair transplant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.65', 'Operations on skin and subcutaneous tissue
- Free skin graft
-- Heterograft to skin 86.65
86.65 Heterograft to skin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.66', 'Operations on skin and subcutaneous tissue
- Free skin graft
-- Homograft to skin 86.66
86.66 Homograft to skin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.67', 'Operations on skin and subcutaneous tissue
- Free skin graft
-- Dermal regenerative graft 86.67
86.67 Dermal regenerative graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.69', 'Operations on skin and subcutaneous tissue
- Free skin graft
-- Other skin graft to other sites 86.69
86.69 Other skin graft to other sites', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.7', 'Operations on skin and subcutaneous tissue
- Pedicle grafts or flaps 86.7
86.7 Pedicle grafts or flaps', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.70', 'Operations on skin and subcutaneous tissue
- Pedicle grafts or flaps
-- Pedicle or flap graft, not otherwise specified 86.70
86.70 Pedicle or flap graft, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.71', 'Operations on skin and subcutaneous tissue
- Pedicle grafts or flaps
-- Cutting and preparation of pedicle grafts or flaps 86.71
86.71 Cutting and preparation of pedicle grafts or flaps', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.72', 'Operations on skin and subcutaneous tissue
- Pedicle grafts or flaps
-- Advancement of pedicle graft 86.72
86.72 Advancement of pedicle graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.73', 'Operations on skin and subcutaneous tissue
- Pedicle grafts or flaps
-- Attachment of pedicle or flap graft to hand 86.73
86.73 Attachment of pedicle or flap graft to hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.74', 'Operations on skin and subcutaneous tissue
- Pedicle grafts or flaps
-- Attachment of pedicle or flap graft to other sites 86.74
86.74 Attachment of pedicle or flap graft to other sites', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.75', 'Operations on skin and subcutaneous tissue
- Pedicle grafts or flaps
-- Revision of pedicle or flap graft 86.75
86.75 Revision of pedicle or flap graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.8', 'Operations on skin and subcutaneous tissue
- Other repair and reconstruction of skin and subcutaneous tissue 86.8
86.8 Other repair and reconstruction of skin and subcutaneous tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.81', 'Operations on skin and subcutaneous tissue
- Other repair and reconstruction of skin and subcutaneous tissue
-- Repair for facial weakness 86.81
86.81 Repair for facial weakness', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.82', 'Operations on skin and subcutaneous tissue
- Other repair and reconstruction of skin and subcutaneous tissue
-- Facial rhytidectomy 86.82
86.82 Facial rhytidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.83', 'Operations on skin and subcutaneous tissue
- Other repair and reconstruction of skin and subcutaneous tissue
-- Size reduction plastic operation 86.83
86.83 Size reduction plastic operation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.84', 'Operations on skin and subcutaneous tissue
- Other repair and reconstruction of skin and subcutaneous tissue
-- Relaxation of scar or web contracture of skin 86.84
86.84 Relaxation of scar or web contracture of skin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.85', 'Operations on skin and subcutaneous tissue
- Other repair and reconstruction of skin and subcutaneous tissue
-- Correction of syndactyly 86.85
86.85 Correction of syndactyly', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.86', 'Operations on skin and subcutaneous tissue
- Other repair and reconstruction of skin and subcutaneous tissue
-- Onychoplasty 86.86
86.86 Onychoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.89', 'Operations on skin and subcutaneous tissue
- Other repair and reconstruction of skin and subcutaneous tissue
-- Other repair and reconstruction of skin and subcutaneous tissue 86.89
86.89 Other repair and reconstruction of skin and subcutaneous tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.9', 'Operations on skin and subcutaneous tissue
- Other operations on skin and subcutaneous tissue 86.9
86.9 Other operations on skin and subcutaneous tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.91', 'Operations on skin and subcutaneous tissue
- Other operations on skin and subcutaneous tissue
-- Excision of skin for graft 86.91
86.91 Excision of skin for graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.92', 'Operations on skin and subcutaneous tissue
- Other operations on skin and subcutaneous tissue
-- Electrolysis and other epilation of skin 86.92
86.92 Electrolysis and other epilation of skin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.93', 'Operations on skin and subcutaneous tissue
- Other operations on skin and subcutaneous tissue
-- Insertion of tissue expander 86.93
86.93 Insertion of tissue expander', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.94', 'Operations on skin and subcutaneous tissue
- Other operations on skin and subcutaneous tissue
-- Insertion or replacement of single array neurostimulator pulse 86.94
86.94 Insertion or replacement of single array neurostimulator pulse', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.95', 'Operations on skin and subcutaneous tissue
- Other operations on skin and subcutaneous tissue
-- Insertion or replacement of dual array neurostimulator pulse 86.95
86.95 Insertion or replacement of dual array neurostimulator pulse', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.96', 'Operations on skin and subcutaneous tissue
- Other operations on skin and subcutaneous tissue
-- Insertion or replacement of other neurostimulator pulse generator 86.96
86.96 Insertion or replacement of other neurostimulator pulse generator', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.97', 'Operations on skin and subcutaneous tissue
- Other operations on skin and subcutaneous tissue
-- Insertion or replacement of single array rechargeable 86.97
86.97 Insertion or replacement of single array rechargeable', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.98', 'Operations on skin and subcutaneous tissue
- Other operations on skin and subcutaneous tissue
-- Insertion or replacement of dual array rechargeable 86.98
86.98 Insertion or replacement of dual array rechargeable', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.99', 'Operations on skin and subcutaneous tissue
- Other operations on skin and subcutaneous tissue
-- Other 86.99
86.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87', 'Diagnostic Radiology
87 Diagnostic Radiology', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.0', 'Diagnostic Radiology
- Soft tissue x-ray of face, head, and neck 87.0
87.0 Soft tissue x-ray of face, head, and neck', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.01', 'Diagnostic Radiology
- Soft tissue x-ray of face, head, and neck
-- Pneumoencephalogram 87.01
87.01 Pneumoencephalogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.02', 'Diagnostic Radiology
- Soft tissue x-ray of face, head, and neck
-- Other contrast radiogram of brain and skull 87.02
87.02 Other contrast radiogram of brain and skull', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.03', 'Scan
- CT
-- head 87.03
87.03 Computerized axial tomography of head', '[{"type":"includes","text":"Computerized axial tomography of head NOS"}]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.04', 'Diagnostic Radiology
- Soft tissue x-ray of face, head, and neck
-- Other tomography of head 87.04
87.04 Other tomography of head', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.05', 'Diagnostic Radiology
- Soft tissue x-ray of face, head, and neck
-- Contrast dacryocystogram 87.05
87.05 Contrast dacryocystogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.06', 'Diagnostic Radiology
- Soft tissue x-ray of face, head, and neck
-- Contrast radiogram of nasopharynx 87.06
87.06 Contrast radiogram of nasopharynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.07', 'Diagnostic Radiology
- Soft tissue x-ray of face, head, and neck
-- Contrast laryngogram 87.07
87.07 Contrast laryngogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.08', 'Diagnostic Radiology
- Soft tissue x-ray of face, head, and neck
-- Cervical lymphangiogram 87.08
87.08 Cervical lymphangiogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.09', 'Diagnostic Radiology
- Soft tissue x-ray of face, head, and neck
-- Other soft tissue x-ray of face, head, and neck 87.09
87.09 Other soft tissue x-ray of face, head, and neck', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.1', 'Diagnostic Radiology
- Other x-ray of face, head, and neck 87.1
87.1 Other x-ray of face, head, and neck', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.11', 'Diagnostic Radiology
- Other x-ray of face, head, and neck
-- Full-mouth x-ray of teeth 87.11
87.11 Full-mouth x-ray of teeth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.12', 'Diagnostic Radiology
- Other x-ray of face, head, and neck
-- Other dental x-ray 87.12
87.12 Other dental x-ray', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.13', 'Diagnostic Radiology
- Other x-ray of face, head, and neck
-- Temporomandibular contrast arthrogram 87.13
87.13 Temporomandibular contrast arthrogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.14', 'Diagnostic Radiology
- Other x-ray of face, head, and neck
-- Contrast radiogram of orbit 87.14
87.14 Contrast radiogram of orbit', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.15', 'Diagnostic Radiology
- Other x-ray of face, head, and neck
-- Contrast radiogram of sinus 87.15
87.15 Contrast radiogram of sinus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.16', 'Diagnostic Radiology
- Other x-ray of face, head, and neck
-- Other x-ray of facial bones 87.16
87.16 Other x-ray of facial bones', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.17', 'Diagnostic Radiology
- Other x-ray of face, head, and neck
-- Other x-ray of skull 87.17
87.17 Other x-ray of skull', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.2', 'Diagnostic Radiology
- X-ray of spine 87.2
87.2 X-ray of spine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.21', 'Diagnostic Radiology
- X-ray of spine
-- Contrast myelogram 87.21
87.21 Contrast myelogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.22', 'Diagnostic Radiology
- X-ray of spine
-- Other x-ray of cervical spine 87.22
87.22 Other x-ray of cervical spine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.23', 'Diagnostic Radiology
- X-ray of spine
-- Other x-ray of thoracic spine 87.23
87.23 Other x-ray of thoracic spine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.24', 'Diagnostic Radiology
- X-ray of spine
-- Other x-ray of lumbosacral spine 87.24
87.24 Other x-ray of lumbosacral spine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.29', 'Diagnostic Radiology
- X-ray of spine
-- Other x-ray of spine 87.29
87.29 Other x-ray of spine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.3', 'Diagnostic Radiology
- Soft tissue x-ray of thorax 87.3
87.3 Soft tissue x-ray of thorax', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.31', 'Diagnostic Radiology
- Soft tissue x-ray of thorax
-- Endotracheal bronchogram 87.31
87.31 Endotracheal bronchogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.32', 'Diagnostic Radiology
- Soft tissue x-ray of thorax
-- Other contrast bronchogram 87.32
87.32 Other contrast bronchogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.33', 'Diagnostic Radiology
- Soft tissue x-ray of thorax
-- Mediastinal pneumogram 87.33
87.33 Mediastinal pneumogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.34', 'Diagnostic Radiology
- Soft tissue x-ray of thorax
-- Intrathoracic lymphangiogram 87.34
87.34 Intrathoracic lymphangiogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.35', 'Diagnostic Radiology
- Soft tissue x-ray of thorax
-- Contrast radiogram of mammary ducts 87.35
87.35 Contrast radiogram of mammary ducts', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.36', 'Diagnostic Radiology
- Soft tissue x-ray of thorax
-- Xerography of breast 87.36
87.36 Xerography of breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.37', 'Diagnostic Radiology
- Soft tissue x-ray of thorax
-- Other mammography 87.37
87.37 Other mammography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.38', 'Diagnostic Radiology
- Soft tissue x-ray of thorax
-- Sinogram of chest wall 87.38
87.38 Sinogram of chest wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.39', 'Diagnostic Radiology
- Soft tissue x-ray of thorax
-- Other soft tissue x-ray of chest wall 87.39
87.39 Other soft tissue x-ray of chest wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.4', 'Diagnostic Radiology
- Other x-ray of thorax 87.4
87.4 Other x-ray of thorax', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.41', 'Scan
- CT
-- thorax 87.41
87.41 Computerized axial tomography of thorax', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.42', 'Diagnostic Radiology
- Other x-ray of thorax
-- Other tomography of thorax 87.42
87.42 Other tomography of thorax', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.43', 'Diagnostic Radiology
- Other x-ray of thorax
-- X-ray of ribs, sternum, and clavicle 87.43
87.43 X-ray of ribs, sternum, and clavicle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.44', 'Diagnostic Radiology
- Other x-ray of thorax
-- Routine chest x-ray, so described 87.44
87.44 Routine chest x-ray, so described', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.49', 'Diagnostic Radiology
- Other x-ray of thorax
-- Other chest x-ray 87.49
87.49 Other chest x-ray', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.5', 'Diagnostic Radiology
- Biliary tract x-ray 87.5
87.5 Biliary tract x-ray', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.51', 'Diagnostic Radiology
- Biliary tract x-ray
-- Percutaneous hepatic cholangiogram 87.51
87.51 Percutaneous hepatic cholangiogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.52', 'Diagnostic Radiology
- Biliary tract x-ray
-- Intravenous cholangiogram 87.52
87.52 Intravenous cholangiogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.53', 'Diagnostic Radiology
- Biliary tract x-ray
-- Intraoperative cholangiogram 87.53
87.53 Intraoperative cholangiogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.54', 'Diagnostic Radiology
- Biliary tract x-ray
-- Other cholangiogram 87.54
87.54 Other cholangiogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.59', 'Diagnostic Radiology
- Biliary tract x-ray
-- Other biliary tract x-ray 87.59
87.59 Other biliary tract x-ray', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.6', 'Diagnostic Radiology
- Other x-ray of digestive system 87.6
87.6 Other x-ray of digestive system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.61', 'Diagnostic Radiology
- Other x-ray of digestive system
-- Barium swallow 87.61
87.61 Barium swallow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.62', 'Diagnostic Radiology
- Other x-ray of digestive system
-- Upper GI series 87.62
87.62 Upper GI series', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.63', 'Diagnostic Radiology
- Other x-ray of digestive system
-- Small bowel series 87.63
87.63 Small bowel series', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.64', 'Diagnostic Radiology
- Other x-ray of digestive system
-- Lower GI series 87.64
87.64 Lower GI series', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.65', 'Diagnostic Radiology
- Other x-ray of digestive system
-- Other x-ray of intestine 87.65
87.65 Other x-ray of intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.66', 'Diagnostic Radiology
- Other x-ray of digestive system
-- Contrast pancreatogram 87.66
87.66 Contrast pancreatogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.69', 'Diagnostic Radiology
- Other x-ray of digestive system
-- Other digestive tract x-ray 87.69
87.69 Other digestive tract x-ray', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.7', 'Diagnostic Radiology
- X-ray of urinary system 87.7
87.7 X-ray of urinary system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.71', 'Diagnostic Radiology
- X-ray of urinary system
-- Computerized axial tomography of kidney 87.71
87.71 Computerized axial tomography of kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.72', 'Diagnostic Radiology
- X-ray of urinary system
-- Other nephrotomogram 87.72
87.72 Other nephrotomogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.73', 'Diagnostic Radiology
- X-ray of urinary system
-- Intravenous pyelogram 87.73
87.73 Intravenous pyelogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.74', 'Diagnostic Radiology
- X-ray of urinary system
-- Retrograde pyelogram 87.74
87.74 Retrograde pyelogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.75', 'Diagnostic Radiology
- X-ray of urinary system
-- Percutaneous pyelogram 87.75
87.75 Percutaneous pyelogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.76', 'Diagnostic Radiology
- X-ray of urinary system
-- Retrograde cystourethrogram 87.76
87.76 Retrograde cystourethrogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.77', 'Diagnostic Radiology
- X-ray of urinary system
-- Other cystogram 87.77
87.77 Other cystogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.78', 'Diagnostic Radiology
- X-ray of urinary system
-- Ileal conduitogram 87.78
87.78 Ileal conduitogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.79', 'Diagnostic Radiology
- X-ray of urinary system
-- Other x-ray of the urinary system 87.79
87.79 Other x-ray of the urinary system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.8', 'Diagnostic Radiology
- X-ray of female genital organs 87.8
87.8 X-ray of female genital organs', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.81', 'Diagnostic Radiology
- X-ray of female genital organs
-- X-ray of gravid uterus 87.81
87.81 X-ray of gravid uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.82', 'Diagnostic Radiology
- X-ray of female genital organs
-- Gas contrast hysterosalpingogram 87.82
87.82 Gas contrast hysterosalpingogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.83', 'Diagnostic Radiology
- X-ray of female genital organs
-- Opaque dye contrast hysterosalpingogram 87.83
87.83 Opaque dye contrast hysterosalpingogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.84', 'Diagnostic Radiology
- X-ray of female genital organs
-- Percutaneous hysterogram 87.84
87.84 Percutaneous hysterogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.85', 'Diagnostic Radiology
- X-ray of female genital organs
-- Other x-ray of fallopian tubes and uterus 87.85
87.85 Other x-ray of fallopian tubes and uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.89', 'Diagnostic Radiology
- X-ray of female genital organs
-- Other x-ray of female genital organs 87.89
87.89 Other x-ray of female genital organs', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.9', 'Diagnostic Radiology
- X-ray of male genital organs 87.9
87.9 X-ray of male genital organs', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.91', 'Diagnostic Radiology
- X-ray of male genital organs
-- Contrast seminal vesiculogram 87.91
87.91 Contrast seminal vesiculogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.92', 'Diagnostic Radiology
- X-ray of male genital organs
-- Other x-ray of prostate and seminal vesicles 87.92
87.92 Other x-ray of prostate and seminal vesicles', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.93', 'Diagnostic Radiology
- X-ray of male genital organs
-- Contrast epididymogram 87.93
87.93 Contrast epididymogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.94', 'Diagnostic Radiology
- X-ray of male genital organs
-- Contrast vasogram 87.94
87.94 Contrast vasogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.95', 'Diagnostic Radiology
- X-ray of male genital organs
-- Other x-ray of epididymis and vas deferens 87.95
87.95 Other x-ray of epididymis and vas deferens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.99', 'Diagnostic Radiology
- X-ray of male genital organs
-- Other x-ray of male genital organs 87.99
87.99 Other x-ray of male genital organs', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88', 'Other diagnostic radiology and related techniques
88 Other diagnostic radiology and related techniques', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.0', 'Other diagnostic radiology and related techniques
- Soft tissue x-ray of abdomen 88.0
88.0 Soft tissue x-ray of abdomen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.01', 'Scan
- CT
-- abdomen 88.01
88.01 Computerized axial tomography of abdomen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.02', 'Other diagnostic radiology and related techniques
- Soft tissue x-ray of abdomen
-- Other abdomen tomography 88.02
88.02 Other abdomen tomography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.03', 'Other diagnostic radiology and related techniques
- Soft tissue x-ray of abdomen
-- Sinogram of abdominal wall 88.03
88.03 Sinogram of abdominal wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.04', 'Other diagnostic radiology and related techniques
- Soft tissue x-ray of abdomen
-- Abdominal lymphangiogram 88.04
88.04 Abdominal lymphangiogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.09', 'Other diagnostic radiology and related techniques
- Soft tissue x-ray of abdomen
-- Other soft tissue x-ray of abdominal wall 88.09
88.09 Other soft tissue x-ray of abdominal wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.1', 'Other diagnostic radiology and related techniques
- Other x-ray of abdomen 88.1
88.1 Other x-ray of abdomen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.11', 'Other diagnostic radiology and related techniques
- Other x-ray of abdomen
-- Pelvic opaque dye contrast radiography 88.11
88.11 Pelvic opaque dye contrast radiography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.12', 'Other diagnostic radiology and related techniques
- Other x-ray of abdomen
-- Pelvic gas contrast radiography 88.12
88.12 Pelvic gas contrast radiography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.13', 'Other diagnostic radiology and related techniques
- Other x-ray of abdomen
-- Other peritoneal pneumogram 88.13
88.13 Other peritoneal pneumogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.14', 'Other diagnostic radiology and related techniques
- Other x-ray of abdomen
-- Retroperitoneal fistulogram 88.14
88.14 Retroperitoneal fistulogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.15', 'Other diagnostic radiology and related techniques
- Other x-ray of abdomen
-- Retroperitoneal pneumogram 88.15
88.15 Retroperitoneal pneumogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.16', 'Other diagnostic radiology and related techniques
- Other x-ray of abdomen
-- Other retroperitoneal x-ray 88.16
88.16 Other retroperitoneal x-ray', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.19', 'Other diagnostic radiology and related techniques
- Other x-ray of abdomen
-- Other x-ray of abdomen 88.19
88.19 Other x-ray of abdomen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.2', 'Other diagnostic radiology and related techniques
- Skeletal x-ray of extremities and pelvis 88.2
88.2 Skeletal x-ray of extremities and pelvis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.21', 'Other diagnostic radiology and related techniques
- Skeletal x-ray of extremities and pelvis
-- Skeletal x-ray of shoulder and upper arm 88.21
88.21 Skeletal x-ray of shoulder and upper arm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.22', 'Other diagnostic radiology and related techniques
- Skeletal x-ray of extremities and pelvis
-- Skeletal x-ray of elbow and forearm 88.22
88.22 Skeletal x-ray of elbow and forearm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.23', 'Other diagnostic radiology and related techniques
- Skeletal x-ray of extremities and pelvis
-- Skeletal x-ray of wrist and hand 88.23
88.23 Skeletal x-ray of wrist and hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.24', 'Other diagnostic radiology and related techniques
- Skeletal x-ray of extremities and pelvis
-- Skeletal x-ray of upper limb, not otherwise specified 88.24
88.24 Skeletal x-ray of upper limb, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.25', 'Other diagnostic radiology and related techniques
- Skeletal x-ray of extremities and pelvis
-- Pelvimetry 88.25
88.25 Pelvimetry', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.26', 'Other diagnostic radiology and related techniques
- Skeletal x-ray of extremities and pelvis
-- Other skeletal x-ray of pelvis and hip 88.26
88.26 Other skeletal x-ray of pelvis and hip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.27', 'Other diagnostic radiology and related techniques
- Skeletal x-ray of extremities and pelvis
-- Skeletal x-ray of thigh, knee, and lower leg 88.27
88.27 Skeletal x-ray of thigh, knee, and lower leg', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.28', 'Other diagnostic radiology and related techniques
- Skeletal x-ray of extremities and pelvis
-- Skeletal x-ray of ankle and foot 88.28
88.28 Skeletal x-ray of ankle and foot', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.29', 'Other diagnostic radiology and related techniques
- Skeletal x-ray of extremities and pelvis
-- Skeletal x-ray of lower limb, not otherwise specified 88.29
88.29 Skeletal x-ray of lower limb, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.3', 'Other diagnostic radiology and related techniques
- Other x-ray 88.3
88.3 Other x-ray', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.31', 'Other diagnostic radiology and related techniques
- Other x-ray
-- Skeletal series 88.31
88.31 Skeletal series', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.32', 'Other diagnostic radiology and related techniques
- Other x-ray
-- Contrast arthrogram 88.32
88.32 Contrast arthrogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.33', 'Other diagnostic radiology and related techniques
- Other x-ray
-- Other skeletal x-ray 88.33
88.33 Other skeletal x-ray', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.34', 'Other diagnostic radiology and related techniques
- Other x-ray
-- Lymphangiogram of upper limb 88.34
88.34 Lymphangiogram of upper limb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.35', 'Other diagnostic radiology and related techniques
- Other x-ray
-- Other soft tissue x-ray of upper limb 88.35
88.35 Other soft tissue x-ray of upper limb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.36', 'Other diagnostic radiology and related techniques
- Other x-ray
-- Lymphangiogram of lower limb 88.36
88.36 Lymphangiogram of lower limb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.37', 'Other diagnostic radiology and related techniques
- Other x-ray
-- Other soft tissue x-ray of lower limb 88.37
88.37 Other soft tissue x-ray of lower limb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.38', 'Other diagnostic radiology and related techniques
- Other x-ray
-- Other computerized axial tomography 88.38
88.38 Other computerized axial tomography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.39', 'Other diagnostic radiology and related techniques
- Other x-ray
-- X-ray, other and unspecified 88.39
88.39 X-ray, other and unspecified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.4', 'Other diagnostic radiology and related techniques
- Arteriography using contrast material 88.4
88.4 Arteriography using contrast material', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.40', 'Other diagnostic radiology and related techniques
- Arteriography using contrast material
-- Arteriography using contrast material, unspecified site 88.40
88.40 Arteriography using contrast material, unspecified site', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.41', 'Other diagnostic radiology and related techniques
- Arteriography using contrast material
-- Arteriography of cerebral arteries 88.41
88.41 Arteriography of cerebral arteries', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.42', 'Other diagnostic radiology and related techniques
- Arteriography using contrast material
-- Aortography 88.42
88.42 Aortography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.43', 'Other diagnostic radiology and related techniques
- Arteriography using contrast material
-- Arteriography of pulmonary arteries 88.43
88.43 Arteriography of pulmonary arteries', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.44', 'Other diagnostic radiology and related techniques
- Arteriography using contrast material
-- Arteriography of other intrathoracic vessels 88.44
88.44 Arteriography of other intrathoracic vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.45', 'Other diagnostic radiology and related techniques
- Arteriography using contrast material
-- Arteriography of renal arteries 88.45
88.45 Arteriography of renal arteries', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.46', 'Other diagnostic radiology and related techniques
- Arteriography using contrast material
-- Arteriography of placenta 88.46
88.46 Arteriography of placenta', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.47', 'Other diagnostic radiology and related techniques
- Arteriography using contrast material
-- Arteriography of other intra-abdominal arteries 88.47
88.47 Arteriography of other intra-abdominal arteries', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.48', 'Other diagnostic radiology and related techniques
- Arteriography using contrast material
-- Arteriography of femoral and other lower extremity arteries 88.48
88.48 Arteriography of femoral and other lower extremity arteries', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.49', 'Other diagnostic radiology and related techniques
- Arteriography using contrast material
-- Arteriography of other specified sites 88.49
88.49 Arteriography of other specified sites', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.5', 'Other diagnostic radiology and related techniques
- Angiocardiography using contrast material 88.5
88.5 Angiocardiography using contrast material', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.50', 'Other diagnostic radiology and related techniques
- Angiocardiography using contrast material
-- Angiocardiography, not otherwise specified 88.50
88.50 Angiocardiography, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.51', 'Other diagnostic radiology and related techniques
- Angiocardiography using contrast material
-- Angiocardiography of venae cavae 88.51
88.51 Angiocardiography of venae cavae', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.52', 'Other diagnostic radiology and related techniques
- Angiocardiography using contrast material
-- Angiocardiography of right heart structures 88.52
88.52 Angiocardiography of right heart structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.53', 'Other diagnostic radiology and related techniques
- Angiocardiography using contrast material
-- Angiocardiography of left heart structures 88.53
88.53 Angiocardiography of left heart structures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.54', 'Other diagnostic radiology and related techniques
- Angiocardiography using contrast material
-- Combined right and left heart angiocardiography 88.54
88.54 Combined right and left heart angiocardiography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.55', 'Other diagnostic radiology and related techniques
- Angiocardiography using contrast material
-- Coronary arteriography using a single catheter 88.55
88.55 Coronary arteriography using a single catheter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.56', 'Other diagnostic radiology and related techniques
- Angiocardiography using contrast material
-- Coronary arteriography using two catheters 88.56
88.56 Coronary arteriography using two catheters', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.57', 'Other diagnostic radiology and related techniques
- Angiocardiography using contrast material
-- Other and unspecified coronary arteriography 88.57
88.57 Other and unspecified coronary arteriography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.58', 'Other diagnostic radiology and related techniques
- Angiocardiography using contrast material
-- Negative-contrast cardiac roentgenography 88.58
88.58 Negative-contrast cardiac roentgenography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.59', 'Other diagnostic radiology and related techniques
- Angiocardiography using contrast material
-- Intra-operative fluorescence vascular angiography  88.59
88.59 Intra-operative fluorescence vascular angiography ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.6', 'Other diagnostic radiology and related techniques
- Phlebography 88.6
88.6 Phlebography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.60', 'Other diagnostic radiology and related techniques
- Phlebography
-- Phlebography using contrast material, unspecified site 88.60
88.60 Phlebography using contrast material, unspecified site', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.61', 'Other diagnostic radiology and related techniques
- Phlebography
-- Phlebography of veins of head and neck using contrast material 88.61
88.61 Phlebography of veins of head and neck using contrast material', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.62', 'Other diagnostic radiology and related techniques
- Phlebography
-- Phlebography of pulmonary veins using contrast material 88.62
88.62 Phlebography of pulmonary veins using contrast material', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.63', 'Other diagnostic radiology and related techniques
- Phlebography
-- Phlebography of other intrathoracic veins using contrast material 88.63
88.63 Phlebography of other intrathoracic veins using contrast material', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.64', 'Other diagnostic radiology and related techniques
- Phlebography
-- Phlebography of the portal venous system using contrast material 88.64
88.64 Phlebography of the portal venous system using contrast material', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.65', 'Other diagnostic radiology and related techniques
- Phlebography
-- Phlebography of other intra-abdominal veins using contrast 88.65
88.65 Phlebography of other intra-abdominal veins using contrast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.66', 'Other diagnostic radiology and related techniques
- Phlebography
-- Phlebography of femoral and other lower extremity veins using 88.66
88.66 Phlebography of femoral and other lower extremity veins using', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.67', 'Other diagnostic radiology and related techniques
- Phlebography
-- Phlebography of other specified sites using contrast material 88.67
88.67 Phlebography of other specified sites using contrast material', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.68', 'Other diagnostic radiology and related techniques
- Phlebography
-- Impedance phlebography 88.68
88.68 Impedance phlebography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.7', 'Other diagnostic radiology and related techniques
- Diagnostic ultrasound 88.7
88.7 Diagnostic ultrasound', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.71', 'Other diagnostic radiology and related techniques
- Diagnostic ultrasound
-- Diagnostic ultrasound of head and neck 88.71
88.71 Diagnostic ultrasound of head and neck', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.72', 'Other diagnostic radiology and related techniques
- Diagnostic ultrasound
-- Diagnostic ultrasound of heart 88.72
88.72 Diagnostic ultrasound of heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.73', 'Other diagnostic radiology and related techniques
- Diagnostic ultrasound
-- Diagnostic ultrasound of other sites of thorax 88.73
88.73 Diagnostic ultrasound of other sites of thorax', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.74', 'Other diagnostic radiology and related techniques
- Diagnostic ultrasound
-- Diagnostic ultrasound of digestive system 88.74
88.74 Diagnostic ultrasound of digestive system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.75', 'Other diagnostic radiology and related techniques
- Diagnostic ultrasound
-- Diagnostic ultrasound of urinary system 88.75
88.75 Diagnostic ultrasound of urinary system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.76', 'Other diagnostic radiology and related techniques
- Diagnostic ultrasound
-- Diagnostic ultrasound of abdomen and retroperitoneum 88.76
88.76 Diagnostic ultrasound of abdomen and retroperitoneum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.77', 'Other diagnostic radiology and related techniques
- Diagnostic ultrasound
-- Diagnostic ultrasound of peripheral vascular system 88.77
88.77 Diagnostic ultrasound of peripheral vascular system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.78', 'Other diagnostic radiology and related techniques
- Diagnostic ultrasound
-- Diagnostic ultrasound of gravid uterus 88.78
88.78 Diagnostic ultrasound of gravid uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.79', 'Other diagnostic radiology and related techniques
- Diagnostic ultrasound
-- Other diagnostic ultrasound 88.79
88.79 Other diagnostic ultrasound', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.8', 'Other diagnostic radiology and related techniques
- Thermography 88.8
88.8 Thermography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.81', 'Other diagnostic radiology and related techniques
- Thermography
-- Cerebral thermography 88.81
88.81 Cerebral thermography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.82', 'Other diagnostic radiology and related techniques
- Thermography
-- Ocular thermography 88.82
88.82 Ocular thermography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.83', 'Other diagnostic radiology and related techniques
- Thermography
-- Bone thermography 88.83
88.83 Bone thermography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.84', 'Other diagnostic radiology and related techniques
- Thermography
-- Muscle thermography 88.84
88.84 Muscle thermography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.85', 'Other diagnostic radiology and related techniques
- Thermography
-- Breast thermography 88.85
88.85 Breast thermography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.86', 'Other diagnostic radiology and related techniques
- Thermography
-- Blood vessel thermography 88.86
88.86 Blood vessel thermography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.89', 'Other diagnostic radiology and related techniques
- Thermography
-- Thermography of other sites 88.89
88.89 Thermography of other sites', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.9', 'Other diagnostic radiology and related techniques
- Other diagnostic imaging 88.9
88.9 Other diagnostic imaging', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.90', 'Other diagnostic radiology and related techniques
- Other diagnostic imaging
-- Diagnostic imaging, not elsewhere classified 88.90
88.90 Diagnostic imaging, not elsewhere classified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.91', 'Imaging
- magnetic resonance
-- brain 88.91
88.91 Magnetic resonance imaging of brain', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.92', 'Other diagnostic radiology and related techniques
- Other diagnostic imaging
-- Magnetic resonance imaging of chest and myocardium 88.92
88.92 Magnetic resonance imaging of chest and myocardium', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.93', 'Other diagnostic radiology and related techniques
- Other diagnostic imaging
-- Magnetic resonance imaging of spinal canal 88.93
88.93 Magnetic resonance imaging of spinal canal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.94', 'Other diagnostic radiology and related techniques
- Other diagnostic imaging
-- Magnetic resonance imaging of musculoskeletal 88.94
88.94 Magnetic resonance imaging of musculoskeletal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.95', 'Other diagnostic radiology and related techniques
- Other diagnostic imaging
-- Magnetic resonance imaging of pelvis, prostate, and bladder 88.95
88.95 Magnetic resonance imaging of pelvis, prostate, and bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.96', 'Other diagnostic radiology and related techniques
- Other diagnostic imaging
-- Other intraoperative magnetic resonance imaging 88.96
88.96 Other intraoperative magnetic resonance imaging', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.97', 'Other diagnostic radiology and related techniques
- Other diagnostic imaging
-- Magnetic resonance imaging of other and unspecified sites 88.97
88.97 Magnetic resonance imaging of other and unspecified sites', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.98', 'Other diagnostic radiology and related techniques
- Other diagnostic imaging
-- Bone mineral density studies 88.98
88.98 Bone mineral density studies', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89', 'Interview, evaluation, consultation, and examination
89 Interview, evaluation, consultation, and examination', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.0', 'Interview, evaluation, consultation, and examination
- Diagnostic interview, consultation, and evaluation 89.0
89.0 Diagnostic interview, consultation, and evaluation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.01', 'Interview, evaluation, consultation, and examination
- Diagnostic interview, consultation, and evaluation
-- Interview and evaluation, described as brief 89.01
89.01 Interview and evaluation, described as brief', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.02', 'Interview, evaluation, consultation, and examination
- Diagnostic interview, consultation, and evaluation
-- Interview and evaluation, described as limited 89.02
89.02 Interview and evaluation, described as limited', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.03', 'Interview, evaluation, consultation, and examination
- Diagnostic interview, consultation, and evaluation
-- Interview and evaluation, described as comprehensive 89.03
89.03 Interview and evaluation, described as comprehensive', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.04', 'Interview, evaluation, consultation, and examination
- Diagnostic interview, consultation, and evaluation
-- Other interview and evaluation 89.04
89.04 Other interview and evaluation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.05', 'Interview, evaluation, consultation, and examination
- Diagnostic interview, consultation, and evaluation
-- Diagnostic interview and evaluation, not otherwise specified 89.05
89.05 Diagnostic interview and evaluation, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.06', 'Interview, evaluation, consultation, and examination
- Diagnostic interview, consultation, and evaluation
-- Consultation, described as limited 89.06
89.06 Consultation, described as limited', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.07', 'Interview, evaluation, consultation, and examination
- Diagnostic interview, consultation, and evaluation
-- Consultation, described as comprehensive 89.07
89.07 Consultation, described as comprehensive', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.08', 'Interview, evaluation, consultation, and examination
- Diagnostic interview, consultation, and evaluation
-- Other consultation 89.08
89.08 Other consultation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.09', 'Interview, evaluation, consultation, and examination
- Diagnostic interview, consultation, and evaluation
-- Consultation, not otherwise specified 89.09
89.09 Consultation, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.1', 'Interview, evaluation, consultation, and examination
- Anatomic and physiologic measurements and manual 89.1
89.1 Anatomic and physiologic measurements and manual', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.10', 'Interview, evaluation, consultation, and examination
- Anatomic and physiologic measurements and manual
-- Intracarotid amobarbital test 89.10
89.10 Intracarotid amobarbital test', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.11', 'Interview, evaluation, consultation, and examination
- Anatomic and physiologic measurements and manual
-- Tonometry 89.11
89.11 Tonometry', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.12', 'Interview, evaluation, consultation, and examination
- Anatomic and physiologic measurements and manual
-- Nasal function study 89.12
89.12 Nasal function study', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.13', 'Interview, evaluation, consultation, and examination
- Anatomic and physiologic measurements and manual
-- Neurologic examination 89.13
89.13 Neurologic examination', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.14', 'Interview, evaluation, consultation, and examination
- Anatomic and physiologic measurements and manual
-- Electroencephalogram 89.14
89.14 Electroencephalogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.15', 'Interview, evaluation, consultation, and examination
- Anatomic and physiologic measurements and manual
-- Other nonoperative neurologic function tests 89.15
89.15 Other nonoperative neurologic function tests', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.16', 'Interview, evaluation, consultation, and examination
- Anatomic and physiologic measurements and manual
-- Transillumination of newborn skull 89.16
89.16 Transillumination of newborn skull', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.17', 'Interview, evaluation, consultation, and examination
- Anatomic and physiologic measurements and manual
-- Polysomnogram 89.17
89.17 Polysomnogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.18', 'Interview, evaluation, consultation, and examination
- Anatomic and physiologic measurements and manual
-- Other sleep disorder function tests 89.18
89.18 Other sleep disorder function tests', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.19', 'Interview, evaluation, consultation, and examination
- Anatomic and physiologic measurements and manual
-- Video and radio-telemetered electroencephalographic monitoring 89.19
89.19 Video and radio-telemetered electroencephalographic monitoring', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.2', 'Interview, evaluation, consultation, and examination
- Anatomic and physiologic measurements and manual 89.2
89.2 Anatomic and physiologic measurements and manual', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.21', 'Interview, evaluation, consultation, and examination
- Anatomic and physiologic measurements and manual
-- Urinary manometry 89.21
89.21 Urinary manometry', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.22', 'Interview, evaluation, consultation, and examination
- Anatomic and physiologic measurements and manual
-- Cystometrogram 89.22
89.22 Cystometrogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.23', 'Interview, evaluation, consultation, and examination
- Anatomic and physiologic measurements and manual
-- Urethral sphincter electromyogram 89.23
89.23 Urethral sphincter electromyogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.24', 'Interview, evaluation, consultation, and examination
- Anatomic and physiologic measurements and manual
-- Uroflowmetry [UFR] 89.24
89.24 Uroflowmetry [UFR]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.25', 'Interview, evaluation, consultation, and examination
- Anatomic and physiologic measurements and manual
-- Urethral pressure profile [UPP] 89.25
89.25 Urethral pressure profile [UPP]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.26', 'Interview, evaluation, consultation, and examination
- Anatomic and physiologic measurements and manual
-- Gynecological examination 89.26
89.26 Gynecological examination', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.29', 'Interview, evaluation, consultation, and examination
- Anatomic and physiologic measurements and manual
-- Other nonoperative genitourinary system measurements 89.29
89.29 Other nonoperative genitourinary system measurements', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.3', 'Interview, evaluation, consultation, and examination
- Other anatomic and physiologic measurements and manual 89.3
89.3 Other anatomic and physiologic measurements and manual', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.31', 'Interview, evaluation, consultation, and examination
- Other anatomic and physiologic measurements and manual
-- Dental examination 89.31
89.31 Dental examination', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.32', 'Interview, evaluation, consultation, and examination
- Other anatomic and physiologic measurements and manual
-- Esophageal manometry 89.32
89.32 Esophageal manometry', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.33', 'Interview, evaluation, consultation, and examination
- Other anatomic and physiologic measurements and manual
-- Digital examination of enterostomy stoma 89.33
89.33 Digital examination of enterostomy stoma', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.34', 'Interview, evaluation, consultation, and examination
- Other anatomic and physiologic measurements and manual
-- Digital examination of rectum 89.34
89.34 Digital examination of rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.35', 'Interview, evaluation, consultation, and examination
- Other anatomic and physiologic measurements and manual
-- Transillumination of nasal sinuses 89.35
89.35 Transillumination of nasal sinuses', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.36', 'Interview, evaluation, consultation, and examination
- Other anatomic and physiologic measurements and manual
-- Manual examination of breast 89.36
89.36 Manual examination of breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.37', 'Interview, evaluation, consultation, and examination
- Other anatomic and physiologic measurements and manual
-- Vital capacity determination 89.37
89.37 Vital capacity determination', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.38', 'Interview, evaluation, consultation, and examination
- Other anatomic and physiologic measurements and manual
-- Other nonoperative respiratory measurements 89.38
89.38 Other nonoperative respiratory measurements', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.39', 'Interview, evaluation, consultation, and examination
- Other anatomic and physiologic measurements and manual
-- Other nonoperative measurements and examinations 89.39
89.39 Other nonoperative measurements and examinations', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.4', 'Interview, evaluation, consultation, and examination
- Cardiac stress tests, pacemaker and defibrillator checks 89.4
89.4 Cardiac stress tests, pacemaker and defibrillator checks', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.41', 'Interview, evaluation, consultation, and examination
- Cardiac stress tests, pacemaker and defibrillator checks
-- Cardiovascular stress test using treadmill 89.41
89.41 Cardiovascular stress test using treadmill', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.42', 'Interview, evaluation, consultation, and examination
- Cardiac stress tests, pacemaker and defibrillator checks
-- Masters'' two-step stress test 89.42
89.42 Masters'' two-step stress test', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.43', 'Interview, evaluation, consultation, and examination
- Cardiac stress tests, pacemaker and defibrillator checks
-- Cardiovascular stress test using bicycle ergometer 89.43
89.43 Cardiovascular stress test using bicycle ergometer', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.44', 'Interview, evaluation, consultation, and examination
- Cardiac stress tests, pacemaker and defibrillator checks
-- Other cardiovascular stress test 89.44
89.44 Other cardiovascular stress test', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.45', 'Interview, evaluation, consultation, and examination
- Cardiac stress tests, pacemaker and defibrillator checks
-- Artificial pacemaker rate check 89.45
89.45 Artificial pacemaker rate check', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.46', 'Interview, evaluation, consultation, and examination
- Cardiac stress tests, pacemaker and defibrillator checks
-- Artificial pacemaker artifact wave form check 89.46
89.46 Artificial pacemaker artifact wave form check', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.47', 'Interview, evaluation, consultation, and examination
- Cardiac stress tests, pacemaker and defibrillator checks
-- Artificial pacemaker electrode impedance check 89.47
89.47 Artificial pacemaker electrode impedance check', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.48', 'Interview, evaluation, consultation, and examination
- Cardiac stress tests, pacemaker and defibrillator checks
-- Artificial pacemaker voltage or amperage threshold check 89.48
89.48 Artificial pacemaker voltage or amperage threshold check', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.49', 'Interview, evaluation, consultation, and examination
- Cardiac stress tests, pacemaker and defibrillator checks
-- Automatic implantable cardioverter/defibrillator (AICD) check 89.49
89.49 Automatic implantable cardioverter/defibrillator (AICD) check', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.5', 'Interview, evaluation, consultation, and examination
- Other nonoperative cardiac and vascular diagnostic procedures 89.5
89.5 Other nonoperative cardiac and vascular diagnostic procedures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.50', 'Interview, evaluation, consultation, and examination
- Other nonoperative cardiac and vascular diagnostic procedures
-- Ambulatory cardiac monitoring 89.50
89.50 Ambulatory cardiac monitoring', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.51', 'Interview, evaluation, consultation, and examination
- Other nonoperative cardiac and vascular diagnostic procedures
-- Rhythm electrocardiogram 89.51
89.51 Rhythm electrocardiogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.52', 'Electrocardiogram
- routine 89.52
89.52 Electrocardiogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.53', 'Interview, evaluation, consultation, and examination
- Other nonoperative cardiac and vascular diagnostic procedures
-- Vectorcardiogram (with ECG) 89.53
89.53 Vectorcardiogram (with ECG)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.54', 'Interview, evaluation, consultation, and examination
- Other nonoperative cardiac and vascular diagnostic procedures
-- Electrographic monitoring 89.54
89.54 Electrographic monitoring', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.55', 'Interview, evaluation, consultation, and examination
- Other nonoperative cardiac and vascular diagnostic procedures
-- Phonocardiogram with ECG lead 89.55
89.55 Phonocardiogram with ECG lead', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.56', 'Interview, evaluation, consultation, and examination
- Other nonoperative cardiac and vascular diagnostic procedures
-- Carotid pulse tracing with ECG lead 89.56
89.56 Carotid pulse tracing with ECG lead', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.57', 'Interview, evaluation, consultation, and examination
- Other nonoperative cardiac and vascular diagnostic procedures
-- Apexcardiogram (with ECG lead) 89.57
89.57 Apexcardiogram (with ECG lead)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.58', 'Interview, evaluation, consultation, and examination
- Other nonoperative cardiac and vascular diagnostic procedures
-- Plethysmogram 89.58
89.58 Plethysmogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.59', 'Interview, evaluation, consultation, and examination
- Other nonoperative cardiac and vascular diagnostic procedures
-- Other nonoperative cardiac and vascular measurements 89.59
89.59 Other nonoperative cardiac and vascular measurements', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.6', 'Interview, evaluation, consultation, and examination
- Circulatory monitoring 89.6
89.6 Circulatory monitoring', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.60', 'Interview, evaluation, consultation, and examination
- Circulatory monitoring
-- Continuous intra-arterial blood gas monitoring 89.60
89.60 Continuous intra-arterial blood gas monitoring', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.61', 'Interview, evaluation, consultation, and examination
- Circulatory monitoring
-- Systemic arterial pressure monitoring 89.61
89.61 Systemic arterial pressure monitoring', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.62', 'Interview, evaluation, consultation, and examination
- Circulatory monitoring
-- Central venous pressure monitoring 89.62
89.62 Central venous pressure monitoring', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.63', 'Interview, evaluation, consultation, and examination
- Circulatory monitoring
-- Pulmonary artery pressure monitoring 89.63
89.63 Pulmonary artery pressure monitoring', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.64', 'Interview, evaluation, consultation, and examination
- Circulatory monitoring
-- Pulmonary artery wedge monitoring 89.64
89.64 Pulmonary artery wedge monitoring', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.65', 'Interview, evaluation, consultation, and examination
- Circulatory monitoring
-- Measurement of systemic arterial blood gases 89.65
89.65 Measurement of systemic arterial blood gases', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.66', 'Interview, evaluation, consultation, and examination
- Circulatory monitoring
-- Measurement of mixed venous blood gases 89.66
89.66 Measurement of mixed venous blood gases', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.67', 'Interview, evaluation, consultation, and examination
- Circulatory monitoring
-- Monitoring of cardiac output by oxygen consumption technique 89.67
89.67 Monitoring of cardiac output by oxygen consumption technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.68', 'Interview, evaluation, consultation, and examination
- Circulatory monitoring
-- Monitoring of cardiac output by other technique 89.68
89.68 Monitoring of cardiac output by other technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.69', 'Interview, evaluation, consultation, and examination
- Circulatory monitoring
-- Monitoring of coronary blood flow 89.69
89.69 Monitoring of coronary blood flow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.7', 'Interview, evaluation, consultation, and examination
- General physical examination 89.7
89.7 General physical examination', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.8', 'Interview, evaluation, consultation, and examination
- Autopsy 89.8
89.8 Autopsy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90', 'Microscopic examination-I
90 Microscopic examination-I', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.0', 'Microscopic examination-I
- Microscopic examination of specimen from nervous system and 90.0
90.0 Microscopic examination of specimen from nervous system and', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.1', 'Microscopic examination-I
- Microscopic examination of specimen from endocrine gland, not 90.1
90.1 Microscopic examination of specimen from endocrine gland, not', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.2', 'Microscopic examination-I
- Microscopic examination of specimen from eye  90.2
90.2 Microscopic examination of specimen from eye ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.3', 'Microscopic examination-I
- Microscopic examination of specimen from ear, nose, throat, and 90.3
90.3 Microscopic examination of specimen from ear, nose, throat, and', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.4', 'Microscopic examination-I
- Microscopic examination of specimen from trachea, bronchus, 90.4
90.4 Microscopic examination of specimen from trachea, bronchus,', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.5', 'Microscopic examination-I
- Microscopic examination of blood  90.5
90.5 Microscopic examination of blood ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.6', 'Microscopic examination-I
- Microscopic examination of specimen from spleen and of bone 90.6
90.6 Microscopic examination of specimen from spleen and of bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.7', 'Microscopic examination-I
- Microscopic examination of specimen from lymph node and of 90.7
90.7 Microscopic examination of specimen from lymph node and of', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.8', 'Microscopic examination-I
- Microscopic examination of specimen from upper gastrointestinal 90.8
90.8 Microscopic examination of specimen from upper gastrointestinal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.9', 'Microscopic examination-I
- Microscopic examination of specimen from lower gastrointestinal 90.9
90.9 Microscopic examination of specimen from lower gastrointestinal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91', 'Microscopic examination-II
91 Microscopic examination-II', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.0', 'Microscopic examination-II
- Microscopic examination of specimen from liver, biliary tract, 91.0
91.0 Microscopic examination of specimen from liver, biliary tract,', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.1', 'Microscopic examination-II
- Microscopic examination of peritoneal and retroperitoneal 91.1
91.1 Microscopic examination of peritoneal and retroperitoneal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.2', 'Microscopic examination-II
- Microscopic examination of specimen from kidney, ureter, 91.2
91.2 Microscopic examination of specimen from kidney, ureter,', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.3', 'Microscopic examination-II
- Microscopic examination of specimen from bladder, urethra, 91.3
91.3 Microscopic examination of specimen from bladder, urethra,', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.4', 'Microscopic examination-II
- Microscopic examination of specimen from female genital tract  91.4
91.4 Microscopic examination of specimen from female genital tract ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.5', 'Microscopic examination-II
- Microscopic examination of specimen from musculoskeletal 91.5
91.5 Microscopic examination of specimen from musculoskeletal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.6', 'Microscopic examination-II
- Microscopic examination of specimen from skin and other 91.6
91.6 Microscopic examination of specimen from skin and other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.7', 'Microscopic examination-II
- Microscopic examination of specimen from operative wound  91.7
91.7 Microscopic examination of specimen from operative wound ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.8', 'Microscopic examination-II
- Microscopic examination of specimen from other site  91.8
91.8 Microscopic examination of specimen from other site ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.9', 'Microscopic examination-II
- Microscopic examination of specimen from unspecified site  91.9
91.9 Microscopic examination of specimen from unspecified site ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92', 'Nuclear medicine
92 Nuclear medicine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.0', 'Nuclear medicine
- Radioisotope scan and function study 92.0
92.0 Radioisotope scan and function study', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.01', 'Nuclear medicine
- Radioisotope scan and function study
-- Thyroid scan and radioisotope function studies 92.01
92.01 Thyroid scan and radioisotope function studies', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.02', 'Nuclear medicine
- Radioisotope scan and function study
-- Liver scan and radioisotope function study 92.02
92.02 Liver scan and radioisotope function study', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.03', 'Nuclear medicine
- Radioisotope scan and function study
-- Renal scan and radioisotope function study 92.03
92.03 Renal scan and radioisotope function study', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.04', 'Nuclear medicine
- Radioisotope scan and function study
-- Gastrointestinal scan and radioisotope function study 92.04
92.04 Gastrointestinal scan and radioisotope function study', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.05', 'Nuclear medicine
- Radioisotope scan and function study
-- Cardiovascular and hematopoietic scan and radioisotope function 92.05
92.05 Cardiovascular and hematopoietic scan and radioisotope function', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.09', 'Nuclear medicine
- Radioisotope scan and function study
-- Other radioisotope function studies 92.09
92.09 Other radioisotope function studies', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.1', 'Nuclear medicine
- Other radioisotope scan 92.1
92.1 Other radioisotope scan', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.11', 'Nuclear medicine
- Other radioisotope scan
-- Cerebral scan 92.11
92.11 Cerebral scan', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.12', 'Nuclear medicine
- Other radioisotope scan
-- Scan of other sites of head 92.12
92.12 Scan of other sites of head', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.13', 'Nuclear medicine
- Other radioisotope scan
-- Parathyroid scan 92.13
92.13 Parathyroid scan', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.14', 'Nuclear medicine
- Other radioisotope scan
-- Bone scan 92.14
92.14 Bone scan', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.15', 'Nuclear medicine
- Other radioisotope scan
-- Pulmonary scan 92.15
92.15 Pulmonary scan', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.16', 'Nuclear medicine
- Other radioisotope scan
-- Scan of lymphatic system 92.16
92.16 Scan of lymphatic system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.17', 'Nuclear medicine
- Other radioisotope scan
-- Placental scan 92.17
92.17 Placental scan', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.18', 'Nuclear medicine
- Other radioisotope scan
-- Total body scan 92.18
92.18 Total body scan', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.19', 'Nuclear medicine
- Other radioisotope scan
-- Scan of other sites 92.19
92.19 Scan of other sites', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.2', 'Nuclear medicine
- Therapeutic radiology and nuclear medicine 92.2
92.2 Therapeutic radiology and nuclear medicine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.20', 'Nuclear medicine
- Therapeutic radiology and nuclear medicine
-- Infusion of liquid brachytherapy radioisotope 92.20
92.20 Infusion of liquid brachytherapy radioisotope', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.21', 'Nuclear medicine
- Therapeutic radiology and nuclear medicine
-- Superficial radiation 92.21
92.21 Superficial radiation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.22', 'Nuclear medicine
- Therapeutic radiology and nuclear medicine
-- Orthovoltage radiation 92.22
92.22 Orthovoltage radiation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.23', 'Nuclear medicine
- Therapeutic radiology and nuclear medicine
-- Radioisotopic teleradiotherapy 92.23
92.23 Radioisotopic teleradiotherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.24', 'Nuclear medicine
- Therapeutic radiology and nuclear medicine
-- Teleradiotherapy using photons 92.24
92.24 Teleradiotherapy using photons', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.25', 'Nuclear medicine
- Therapeutic radiology and nuclear medicine
-- Teleradiotherapy using electrons 92.25
92.25 Teleradiotherapy using electrons', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.26', 'Nuclear medicine
- Therapeutic radiology and nuclear medicine
-- Teleradiotherapy of other particulate radiation 92.26
92.26 Teleradiotherapy of other particulate radiation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.27', 'Nuclear medicine
- Therapeutic radiology and nuclear medicine
-- Implantation or insertion of radioactive elements 92.27
92.27 Implantation or insertion of radioactive elements', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.28', 'Nuclear medicine
- Therapeutic radiology and nuclear medicine
-- Injection or instillation of radioisotopes 92.28
92.28 Injection or instillation of radioisotopes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.29', 'Nuclear medicine
- Therapeutic radiology and nuclear medicine
-- Other radiotherapeutic procedure 92.29
92.29 Other radiotherapeutic procedure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.3', 'Nuclear medicine
- Stereotactic radiosurgery 92.3
92.3 Stereotactic radiosurgery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.30', 'Nuclear medicine
- Stereotactic radiosurgery
-- Stereotactic radiosurgery, not otherwise specified 92.30
92.30 Stereotactic radiosurgery, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.31', 'Nuclear medicine
- Stereotactic radiosurgery
-- Single source photon radiosurgery 92.31
92.31 Single source photon radiosurgery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.32', 'Nuclear medicine
- Stereotactic radiosurgery
-- Multi-source photon radiosurgery 92.32
92.32 Multi-source photon radiosurgery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.33', 'Nuclear medicine
- Stereotactic radiosurgery
-- Particulate radiosurgery 92.33
92.33 Particulate radiosurgery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.39', 'Nuclear medicine
- Stereotactic radiosurgery
-- Stereotactic radiosurgery, not elsewhere classified 92.39
92.39 Stereotactic radiosurgery, not elsewhere classified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.4', 'Nuclear medicine
- Intra-operative radiation procedures 92.4
92.4 Intra-operative radiation procedures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.41', 'Nuclear medicine
- Intra-operative radiation procedures
-- Intra-operative electron radiation therapy  92.41
92.41 Intra-operative electron radiation therapy ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93', 'Physical therapy, respiratory therapy, rehabilitation, and
93 Physical therapy, respiratory therapy, rehabilitation, and', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.0', 'Physical therapy, respiratory therapy, rehabilitation, and
- Diagnostic physical therapy 93.0
93.0 Diagnostic physical therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.01', 'Physical therapy, respiratory therapy, rehabilitation, and
- Diagnostic physical therapy
-- Functional evaluation 93.01
93.01 Functional evaluation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.02', 'Physical therapy, respiratory therapy, rehabilitation, and
- Diagnostic physical therapy
-- Orthotic evaluation 93.02
93.02 Orthotic evaluation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.03', 'Physical therapy, respiratory therapy, rehabilitation, and
- Diagnostic physical therapy
-- Prosthetic evaluation 93.03
93.03 Prosthetic evaluation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.04', 'Physical therapy, respiratory therapy, rehabilitation, and
- Diagnostic physical therapy
-- Manual testing of muscle function 93.04
93.04 Manual testing of muscle function', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.05', 'Physical therapy, respiratory therapy, rehabilitation, and
- Diagnostic physical therapy
-- Range of motion testing 93.05
93.05 Range of motion testing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.06', 'Physical therapy, respiratory therapy, rehabilitation, and
- Diagnostic physical therapy
-- Measurement of limb length 93.06
93.06 Measurement of limb length', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.07', 'Physical therapy, respiratory therapy, rehabilitation, and
- Diagnostic physical therapy
-- Body measurement 93.07
93.07 Body measurement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.08', 'Physical therapy, respiratory therapy, rehabilitation, and
- Diagnostic physical therapy
-- Electromyography 93.08
93.08 Electromyography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.09', 'Physical therapy, respiratory therapy, rehabilitation, and
- Diagnostic physical therapy
-- Other diagnostic physical therapy procedure 93.09
93.09 Other diagnostic physical therapy procedure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.1', 'Physical therapy, respiratory therapy, rehabilitation, and
- Physical therapy exercises 93.1
93.1 Physical therapy exercises', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.11', 'Physical therapy, respiratory therapy, rehabilitation, and
- Physical therapy exercises
-- Assisting exercise 93.11
93.11 Assisting exercise', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.12', 'Physical therapy, respiratory therapy, rehabilitation, and
- Physical therapy exercises
-- Other active musculoskeletal exercise 93.12
93.12 Other active musculoskeletal exercise', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.13', 'Physical therapy, respiratory therapy, rehabilitation, and
- Physical therapy exercises
-- Resistive exercise 93.13
93.13 Resistive exercise', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.14', 'Physical therapy, respiratory therapy, rehabilitation, and
- Physical therapy exercises
-- Training in joint movements 93.14
93.14 Training in joint movements', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.15', 'Physical therapy, respiratory therapy, rehabilitation, and
- Physical therapy exercises
-- Mobilization of spine 93.15
93.15 Mobilization of spine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.16', 'Physical therapy, respiratory therapy, rehabilitation, and
- Physical therapy exercises
-- Mobilization of other joints 93.16
93.16 Mobilization of other joints', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.17', 'Physical therapy, respiratory therapy, rehabilitation, and
- Physical therapy exercises
-- Other passive musculoskeletal exercise 93.17
93.17 Other passive musculoskeletal exercise', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.18', 'Physical therapy, respiratory therapy, rehabilitation, and
- Physical therapy exercises
-- Breathing exercise 93.18
93.18 Breathing exercise', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.19', 'Physical therapy, respiratory therapy, rehabilitation, and
- Physical therapy exercises
-- Exercise, not elsewhere classified 93.19
93.19 Exercise, not elsewhere classified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.2', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other physical therapy musculoskeletal manipulation 93.2
93.2 Other physical therapy musculoskeletal manipulation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.21', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other physical therapy musculoskeletal manipulation
-- Manual and mechanical traction 93.21
93.21 Manual and mechanical traction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.22', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other physical therapy musculoskeletal manipulation
-- Ambulation and gait training 93.22
93.22 Ambulation and gait training', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.23', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other physical therapy musculoskeletal manipulation
-- Fitting of orthotic device 93.23
93.23 Fitting of orthotic device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.24', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other physical therapy musculoskeletal manipulation
-- Training in use of prosthetic or orthotic device 93.24
93.24 Training in use of prosthetic or orthotic device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.25', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other physical therapy musculoskeletal manipulation
-- Forced extension of limb 93.25
93.25 Forced extension of limb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.26', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other physical therapy musculoskeletal manipulation
-- Manual rupture of joint adhesions 93.26
93.26 Manual rupture of joint adhesions', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.27', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other physical therapy musculoskeletal manipulation
-- Stretching of muscle or tendon 93.27
93.27 Stretching of muscle or tendon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.28', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other physical therapy musculoskeletal manipulation
-- Stretching of fascia 93.28
93.28 Stretching of fascia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.29', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other physical therapy musculoskeletal manipulation
-- Other forcible correction of deformity 93.29
93.29 Other forcible correction of deformity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.3', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other physical therapy therapeutic procedures 93.3
93.3 Other physical therapy therapeutic procedures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.31', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other physical therapy therapeutic procedures
-- Assisted exercise in pool 93.31
93.31 Assisted exercise in pool', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.32', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other physical therapy therapeutic procedures
-- Whirlpool treatment 93.32
93.32 Whirlpool treatment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.33', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other physical therapy therapeutic procedures
-- Other hydrotherapy 93.33
93.33 Other hydrotherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.34', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other physical therapy therapeutic procedures
-- Diathermy 93.34
93.34 Diathermy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.35', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other physical therapy therapeutic procedures
-- Other heat therapy 93.35
93.35 Other heat therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.36', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other physical therapy therapeutic procedures
-- Cardiac retraining 93.36
93.36 Cardiac retraining', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.37', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other physical therapy therapeutic procedures
-- Prenatal training 93.37
93.37 Prenatal training', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.38', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other physical therapy therapeutic procedures
-- Combined physical therapy without mention of the components 93.38
93.38 Combined physical therapy without mention of the components', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.39', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other physical therapy therapeutic procedures
-- Other physical therapy 93.39
93.39 Other physical therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.4', 'Physical therapy, respiratory therapy, rehabilitation, and
- Skeletal traction and other traction 93.4
93.4 Skeletal traction and other traction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.41', 'Physical therapy, respiratory therapy, rehabilitation, and
- Skeletal traction and other traction
-- Spinal traction using skull device 93.41
93.41 Spinal traction using skull device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.42', 'Physical therapy, respiratory therapy, rehabilitation, and
- Skeletal traction and other traction
-- Other spinal traction 93.42
93.42 Other spinal traction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.43', 'Physical therapy, respiratory therapy, rehabilitation, and
- Skeletal traction and other traction
-- Intermittent skeletal traction 93.43
93.43 Intermittent skeletal traction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.44', 'Physical therapy, respiratory therapy, rehabilitation, and
- Skeletal traction and other traction
-- Other skeletal traction 93.44
93.44 Other skeletal traction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.45', 'Physical therapy, respiratory therapy, rehabilitation, and
- Skeletal traction and other traction
-- Thomas'' splint traction 93.45
93.45 Thomas'' splint traction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.46', 'Physical therapy, respiratory therapy, rehabilitation, and
- Skeletal traction and other traction
-- Other skin traction of limbs 93.46
93.46 Other skin traction of limbs', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.5', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other immobilization, pressure, and attention to wound 93.5
93.5 Other immobilization, pressure, and attention to wound', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.51', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other immobilization, pressure, and attention to wound
-- Application of plaster jacket 93.51
93.51 Application of plaster jacket', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.52', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other immobilization, pressure, and attention to wound
-- Application of neck support 93.52
93.52 Application of neck support', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.53', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other immobilization, pressure, and attention to wound
-- Application of other cast 93.53
93.53 Application of other cast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.54', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other immobilization, pressure, and attention to wound
-- Application of splint 93.54
93.54 Application of splint', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.55', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other immobilization, pressure, and attention to wound
-- Dental wiring 93.55
93.55 Dental wiring', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.56', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other immobilization, pressure, and attention to wound
-- Application of pressure dressing 93.56
93.56 Application of pressure dressing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.57', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other immobilization, pressure, and attention to wound
-- Application of other wound dressing 93.57
93.57 Application of other wound dressing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.58', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other immobilization, pressure, and attention to wound
-- Application of pressure trousers 93.58
93.58 Application of pressure trousers', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.59', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other immobilization, pressure, and attention to wound
-- Other immobilization, pressure, and attention to wound 93.59
93.59 Other immobilization, pressure, and attention to wound', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.6', 'Physical therapy, respiratory therapy, rehabilitation, and
- Osteopathic manipulative treatment 93.6
93.6 Osteopathic manipulative treatment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.61', 'Physical therapy, respiratory therapy, rehabilitation, and
- Osteopathic manipulative treatment
-- Osteopathic manipulative treatment for general mobilization 93.61
93.61 Osteopathic manipulative treatment for general mobilization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.62', 'Physical therapy, respiratory therapy, rehabilitation, and
- Osteopathic manipulative treatment
-- Osteopathic manipulative treatment using high- velocity, 93.62
93.62 Osteopathic manipulative treatment using high- velocity,', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.63', 'Physical therapy, respiratory therapy, rehabilitation, and
- Osteopathic manipulative treatment
-- Osteopathic manipulative treatment using low- velocity, 93.63
93.63 Osteopathic manipulative treatment using low- velocity,', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.64', 'Physical therapy, respiratory therapy, rehabilitation, and
- Osteopathic manipulative treatment
-- Osteopathic manipulative treatment using isotonic, isometric 93.64
93.64 Osteopathic manipulative treatment using isotonic, isometric', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.65', 'Physical therapy, respiratory therapy, rehabilitation, and
- Osteopathic manipulative treatment
-- Osteopathic manipulative treatment using indirect forces 93.65
93.65 Osteopathic manipulative treatment using indirect forces', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.66', 'Physical therapy, respiratory therapy, rehabilitation, and
- Osteopathic manipulative treatment
-- Osteopathic manipulative treatment to move tissue fluids 93.66
93.66 Osteopathic manipulative treatment to move tissue fluids', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.67', 'Physical therapy, respiratory therapy, rehabilitation, and
- Osteopathic manipulative treatment
-- Other specified osteopathic manipulative treatment 93.67
93.67 Other specified osteopathic manipulative treatment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.7', 'Physical therapy, respiratory therapy, rehabilitation, and
- Speech and reading rehabilitation and rehabilitation of the blind 93.7
93.7 Speech and reading rehabilitation and rehabilitation of the blind', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.71', 'Physical therapy, respiratory therapy, rehabilitation, and
- Speech and reading rehabilitation and rehabilitation of the blind
-- Dyslexia training 93.71
93.71 Dyslexia training', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.72', 'Physical therapy, respiratory therapy, rehabilitation, and
- Speech and reading rehabilitation and rehabilitation of the blind
-- Dysphasia training 93.72
93.72 Dysphasia training', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.73', 'Physical therapy, respiratory therapy, rehabilitation, and
- Speech and reading rehabilitation and rehabilitation of the blind
-- Esophageal speech training 93.73
93.73 Esophageal speech training', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.74', 'Physical therapy, respiratory therapy, rehabilitation, and
- Speech and reading rehabilitation and rehabilitation of the blind
-- Speech defect training 93.74
93.74 Speech defect training', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.75', 'Physical therapy, respiratory therapy, rehabilitation, and
- Speech and reading rehabilitation and rehabilitation of the blind
-- Other speech training and therapy 93.75
93.75 Other speech training and therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.76', 'Physical therapy, respiratory therapy, rehabilitation, and
- Speech and reading rehabilitation and rehabilitation of the blind
-- Training in use of lead dog for the blind 93.76
93.76 Training in use of lead dog for the blind', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.77', 'Physical therapy, respiratory therapy, rehabilitation, and
- Speech and reading rehabilitation and rehabilitation of the blind
-- Training in braille or Moon 93.77
93.77 Training in braille or Moon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.78', 'Physical therapy, respiratory therapy, rehabilitation, and
- Speech and reading rehabilitation and rehabilitation of the blind
-- Other rehabilitation for the blind 93.78
93.78 Other rehabilitation for the blind', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.8', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other rehabilitation therapy 93.8
93.8 Other rehabilitation therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.81', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other rehabilitation therapy
-- Recreation therapy 93.81
93.81 Recreation therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.82', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other rehabilitation therapy
-- Educational therapy 93.82
93.82 Educational therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.83', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other rehabilitation therapy
-- Occupational therapy 93.83
93.83 Occupational therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.84', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other rehabilitation therapy
-- Music therapy 93.84
93.84 Music therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.85', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other rehabilitation therapy
-- Vocational rehabilitation 93.85
93.85 Vocational rehabilitation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.89', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other rehabilitation therapy
-- Rehabilitation, not elsewhere classified 93.89
93.89 Rehabilitation, not elsewhere classified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.9', 'Physical therapy, respiratory therapy, rehabilitation, and
- Respiratory therapy 93.9
93.9 Respiratory therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.90', 'Physical therapy, respiratory therapy, rehabilitation, and
- Respiratory therapy
-- Non-invasive mechanical ventilation 93.90
93.90 Non-invasive mechanical ventilation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.91', 'Physical therapy, respiratory therapy, rehabilitation, and
- Respiratory therapy
-- Intermittent positive pressure breathing [IPPB] 93.91
93.91 Intermittent positive pressure breathing [IPPB]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.93', 'Physical therapy, respiratory therapy, rehabilitation, and
- Respiratory therapy
-- Nonmechanical methods of resuscitation 93.93
93.93 Nonmechanical methods of resuscitation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.94', 'Physical therapy, respiratory therapy, rehabilitation, and
- Respiratory therapy
-- Respiratory medication administered by nebulizer 93.94
93.94 Respiratory medication administered by nebulizer', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.95', 'Physical therapy, respiratory therapy, rehabilitation, and
- Respiratory therapy
-- Hyperbaric oxygenation 93.95
93.95 Hyperbaric oxygenation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.96', 'Physical therapy, respiratory therapy, rehabilitation, and
- Respiratory therapy
-- Other oxygen enrichment 93.96
93.96 Other oxygen enrichment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.97', 'Physical therapy, respiratory therapy, rehabilitation, and
- Respiratory therapy
-- Decompression chamber 93.97
93.97 Decompression chamber', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.98', 'Physical therapy, respiratory therapy, rehabilitation, and
- Respiratory therapy
-- Other control of atmospheric pressure and composition 93.98
93.98 Other control of atmospheric pressure and composition', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.99', 'Physical therapy, respiratory therapy, rehabilitation, and
- Respiratory therapy
-- Other respiratory procedures 93.99
93.99 Other respiratory procedures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94', 'Procedures related to the psyche
94 Procedures related to the psyche', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.0', 'Procedures related to the psyche
- Psychologic evaluation and testing 94.0
94.0 Psychologic evaluation and testing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.01', 'Procedures related to the psyche
- Psychologic evaluation and testing
-- Administration of intelligence test 94.01
94.01 Administration of intelligence test', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.02', 'Procedures related to the psyche
- Psychologic evaluation and testing
-- Administration of psychologic test 94.02
94.02 Administration of psychologic test', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.03', 'Procedures related to the psyche
- Psychologic evaluation and testing
-- Character analysis 94.03
94.03 Character analysis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.08', 'Procedures related to the psyche
- Psychologic evaluation and testing
-- Other psychologic evaluation and testing 94.08
94.08 Other psychologic evaluation and testing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.09', 'Procedures related to the psyche
- Psychologic evaluation and testing
-- Psychologic mental status determination, not otherwise specified 94.09
94.09 Psychologic mental status determination, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.1', 'Procedures related to the psyche
- Psychiatric interviews, consultations, and evaluations 94.1
94.1 Psychiatric interviews, consultations, and evaluations', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.11', 'Procedures related to the psyche
- Psychiatric interviews, consultations, and evaluations
-- Psychiatric mental status determination 94.11
94.11 Psychiatric mental status determination', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.12', 'Procedures related to the psyche
- Psychiatric interviews, consultations, and evaluations
-- Routine psychiatric visit, not otherwise specified 94.12
94.12 Routine psychiatric visit, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.13', 'Procedures related to the psyche
- Psychiatric interviews, consultations, and evaluations
-- Psychiatric commitment evaluation 94.13
94.13 Psychiatric commitment evaluation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.19', 'Procedures related to the psyche
- Psychiatric interviews, consultations, and evaluations
-- Other psychiatric interview and evaluation 94.19
94.19 Other psychiatric interview and evaluation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.2', 'Procedures related to the psyche
- Psychiatric somatotherapy 94.2
94.2 Psychiatric somatotherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.21', 'Procedures related to the psyche
- Psychiatric somatotherapy
-- Narcoanalysis 94.21
94.21 Narcoanalysis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.22', 'Procedures related to the psyche
- Psychiatric somatotherapy
-- Lithium therapy 94.22
94.22 Lithium therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.23', 'Procedures related to the psyche
- Psychiatric somatotherapy
-- Neuroleptic therapy 94.23
94.23 Neuroleptic therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.24', 'Procedures related to the psyche
- Psychiatric somatotherapy
-- Chemical shock therapy 94.24
94.24 Chemical shock therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.25', 'Procedures related to the psyche
- Psychiatric somatotherapy
-- Other psychiatric drug therapy 94.25
94.25 Other psychiatric drug therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.26', 'Procedures related to the psyche
- Psychiatric somatotherapy
-- Subconvulsive electroshock therapy 94.26
94.26 Subconvulsive electroshock therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.27', 'Procedures related to the psyche
- Psychiatric somatotherapy
-- Other electroshock therapy 94.27
94.27 Other electroshock therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.29', 'Procedures related to the psyche
- Psychiatric somatotherapy
-- Other psychiatric somatotherapy 94.29
94.29 Other psychiatric somatotherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.3', 'Procedures related to the psyche
- Individual psychotherapy 94.3
94.3 Individual psychotherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.31', 'Procedures related to the psyche
- Individual psychotherapy
-- Psychoanalysis 94.31
94.31 Psychoanalysis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.32', 'Procedures related to the psyche
- Individual psychotherapy
-- Hypnotherapy 94.32
94.32 Hypnotherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.33', 'Procedures related to the psyche
- Individual psychotherapy
-- Behavior therapy 94.33
94.33 Behavior therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.34', 'Procedures related to the psyche
- Individual psychotherapy
-- Individual therapy for psychosexual dysfunction 94.34
94.34 Individual therapy for psychosexual dysfunction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.35', 'Procedures related to the psyche
- Individual psychotherapy
-- Crisis intervention 94.35
94.35 Crisis intervention', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.36', 'Procedures related to the psyche
- Individual psychotherapy
-- Play psychotherapy 94.36
94.36 Play psychotherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.37', 'Procedures related to the psyche
- Individual psychotherapy
-- Exploratory verbal psychotherapy 94.37
94.37 Exploratory verbal psychotherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.38', 'Procedures related to the psyche
- Individual psychotherapy
-- Supportive verbal psychotherapy 94.38
94.38 Supportive verbal psychotherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.39', 'Procedures related to the psyche
- Individual psychotherapy
-- Other individual psychotherapy 94.39
94.39 Other individual psychotherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.4', 'Procedures related to the psyche
- Other psychotherapy and counselling 94.4
94.4 Other psychotherapy and counselling', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.41', 'Procedures related to the psyche
- Other psychotherapy and counselling
-- Group therapy for psychosexual dysfunction 94.41
94.41 Group therapy for psychosexual dysfunction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.42', 'Procedures related to the psyche
- Other psychotherapy and counselling
-- Family therapy 94.42
94.42 Family therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.43', 'Procedures related to the psyche
- Other psychotherapy and counselling
-- Psychodrama 94.43
94.43 Psychodrama', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.44', 'Procedures related to the psyche
- Other psychotherapy and counselling
-- Other group therapy 94.44
94.44 Other group therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.45', 'Procedures related to the psyche
- Other psychotherapy and counselling
-- Drug addiction counselling 94.45
94.45 Drug addiction counselling', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.46', 'Procedures related to the psyche
- Other psychotherapy and counselling
-- Alcoholism counselling 94.46
94.46 Alcoholism counselling', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.49', 'Procedures related to the psyche
- Other psychotherapy and counselling
-- Other counselling 94.49
94.49 Other counselling', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.5', 'Procedures related to the psyche
- Referral for psychologic rehabilitation 94.5
94.5 Referral for psychologic rehabilitation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.51', 'Procedures related to the psyche
- Referral for psychologic rehabilitation
-- Referral for psychotherapy 94.51
94.51 Referral for psychotherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.52', 'Procedures related to the psyche
- Referral for psychologic rehabilitation
-- Referral for psychiatric aftercare: 94.52
94.52 Referral for psychiatric aftercare:', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.53', 'Procedures related to the psyche
- Referral for psychologic rehabilitation
-- Referral for alcoholism rehabilitation 94.53
94.53 Referral for alcoholism rehabilitation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.54', 'Procedures related to the psyche
- Referral for psychologic rehabilitation
-- Referral for drug addiction rehabilitation 94.54
94.54 Referral for drug addiction rehabilitation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.55', 'Procedures related to the psyche
- Referral for psychologic rehabilitation
-- Referral for vocational rehabilitation 94.55
94.55 Referral for vocational rehabilitation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.59', 'Procedures related to the psyche
- Referral for psychologic rehabilitation
-- Referral for other psychologic rehabilitation 94.59
94.59 Referral for other psychologic rehabilitation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.6', 'Procedures related to the psyche
- Alcohol and drug rehabilitation and detoxification 94.6
94.6 Alcohol and drug rehabilitation and detoxification', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.61', 'Procedures related to the psyche
- Alcohol and drug rehabilitation and detoxification
-- Alcohol rehabilitation 94.61
94.61 Alcohol rehabilitation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.62', 'Procedures related to the psyche
- Alcohol and drug rehabilitation and detoxification
-- Alcohol detoxification 94.62
94.62 Alcohol detoxification', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.63', 'Procedures related to the psyche
- Alcohol and drug rehabilitation and detoxification
-- Alcohol rehabilitation and detoxification 94.63
94.63 Alcohol rehabilitation and detoxification', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.64', 'Procedures related to the psyche
- Alcohol and drug rehabilitation and detoxification
-- Drug rehabilitation 94.64
94.64 Drug rehabilitation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.65', 'Procedures related to the psyche
- Alcohol and drug rehabilitation and detoxification
-- Drug detoxification 94.65
94.65 Drug detoxification', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.66', 'Procedures related to the psyche
- Alcohol and drug rehabilitation and detoxification
-- Drug rehabilitation and detoxification 94.66
94.66 Drug rehabilitation and detoxification', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.67', 'Procedures related to the psyche
- Alcohol and drug rehabilitation and detoxification
-- Combined alcohol and drug rehabilitation 94.67
94.67 Combined alcohol and drug rehabilitation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.68', 'Procedures related to the psyche
- Alcohol and drug rehabilitation and detoxification
-- Combined alcohol and drug detoxification 94.68
94.68 Combined alcohol and drug detoxification', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.69', 'Procedures related to the psyche
- Alcohol and drug rehabilitation and detoxification
-- Combined alcohol and drug rehabilitation and detoxification 94.69
94.69 Combined alcohol and drug rehabilitation and detoxification', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95', 'Ophthalmologic and otologic diagnosis and treatment
95 Ophthalmologic and otologic diagnosis and treatment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.0', 'Ophthalmologic and otologic diagnosis and treatment
- General and subjective eye examination 95.0
95.0 General and subjective eye examination', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.01', 'Ophthalmologic and otologic diagnosis and treatment
- General and subjective eye examination
-- Limited eye examination 95.01
95.01 Limited eye examination', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.02', 'Ophthalmologic and otologic diagnosis and treatment
- General and subjective eye examination
-- Comprehensive eye examination 95.02
95.02 Comprehensive eye examination', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.03', 'Ophthalmologic and otologic diagnosis and treatment
- General and subjective eye examination
-- Extended ophthalmologic work-up 95.03
95.03 Extended ophthalmologic work-up', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.04', 'Ophthalmologic and otologic diagnosis and treatment
- General and subjective eye examination
-- Eye examination under anesthesia 95.04
95.04 Eye examination under anesthesia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.05', 'Ophthalmologic and otologic diagnosis and treatment
- General and subjective eye examination
-- Visual field study 95.05
95.05 Visual field study', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.06', 'Ophthalmologic and otologic diagnosis and treatment
- General and subjective eye examination
-- Color vision study 95.06
95.06 Color vision study', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.07', 'Ophthalmologic and otologic diagnosis and treatment
- General and subjective eye examination
-- Dark adaptation study 95.07
95.07 Dark adaptation study', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.09', 'Ophthalmologic and otologic diagnosis and treatment
- General and subjective eye examination
-- Eye examination, not otherwise specified 95.09
95.09 Eye examination, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.1', 'Ophthalmologic and otologic diagnosis and treatment
- Examinations of form and structure of eye 95.1
95.1 Examinations of form and structure of eye', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.11', 'Ophthalmologic and otologic diagnosis and treatment
- Examinations of form and structure of eye
-- Fundus photography 95.11
95.11 Fundus photography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.12', 'Ophthalmologic and otologic diagnosis and treatment
- Examinations of form and structure of eye
-- Fluorescein angiography or angioscopy of eye 95.12
95.12 Fluorescein angiography or angioscopy of eye', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.13', 'Ophthalmologic and otologic diagnosis and treatment
- Examinations of form and structure of eye
-- Ultrasound study of eye 95.13
95.13 Ultrasound study of eye', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.14', 'Ophthalmologic and otologic diagnosis and treatment
- Examinations of form and structure of eye
-- X-ray study of eye 95.14
95.14 X-ray study of eye', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.15', 'Ophthalmologic and otologic diagnosis and treatment
- Examinations of form and structure of eye
-- Ocular motility study 95.15
95.15 Ocular motility study', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.16', 'Ophthalmologic and otologic diagnosis and treatment
- Examinations of form and structure of eye
-- P32 and other tracer studies of eye 95.16
95.16 P32 and other tracer studies of eye', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.2', 'Ophthalmologic and otologic diagnosis and treatment
- Objective functional tests of eye 95.2
95.2 Objective functional tests of eye', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.21', 'Ophthalmologic and otologic diagnosis and treatment
- Objective functional tests of eye
-- Electroretinogram [ERG] 95.21
95.21 Electroretinogram [ERG]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.22', 'Ophthalmologic and otologic diagnosis and treatment
- Objective functional tests of eye
-- Electro-oculogram [EOG] 95.22
95.22 Electro-oculogram [EOG]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.23', 'Ophthalmologic and otologic diagnosis and treatment
- Objective functional tests of eye
-- Visual evoked potential [VEP] 95.23
95.23 Visual evoked potential [VEP]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.24', 'Ophthalmologic and otologic diagnosis and treatment
- Objective functional tests of eye
-- Electronystagmogram [ENG] 95.24
95.24 Electronystagmogram [ENG]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.25', 'Ophthalmologic and otologic diagnosis and treatment
- Objective functional tests of eye
-- Electromyogram of eye [EMG] 95.25
95.25 Electromyogram of eye [EMG]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.26', 'Ophthalmologic and otologic diagnosis and treatment
- Objective functional tests of eye
-- Tonography, provocative tests, and other glaucoma testing 95.26
95.26 Tonography, provocative tests, and other glaucoma testing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.3', 'Ophthalmologic and otologic diagnosis and treatment
- Special vision services 95.3
95.3 Special vision services', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.31', 'Ophthalmologic and otologic diagnosis and treatment
- Special vision services
-- Fitting and dispensing of spectacles 95.31
95.31 Fitting and dispensing of spectacles', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.32', 'Ophthalmologic and otologic diagnosis and treatment
- Special vision services
-- Prescription, fitting, and dispensing of contact lens 95.32
95.32 Prescription, fitting, and dispensing of contact lens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.33', 'Ophthalmologic and otologic diagnosis and treatment
- Special vision services
-- Dispensing of other low vision aids 95.33
95.33 Dispensing of other low vision aids', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.34', 'Ophthalmologic and otologic diagnosis and treatment
- Special vision services
-- Ocular prosthetics 95.34
95.34 Ocular prosthetics', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.35', 'Ophthalmologic and otologic diagnosis and treatment
- Special vision services
-- Orthoptic training 95.35
95.35 Orthoptic training', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.36', 'Ophthalmologic and otologic diagnosis and treatment
- Special vision services
-- Ophthalmologic counselling and instruction 95.36
95.36 Ophthalmologic counselling and instruction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.4', 'Ophthalmologic and otologic diagnosis and treatment
- Nonoperative procedures related to hearing 95.4
95.4 Nonoperative procedures related to hearing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.41', 'Ophthalmologic and otologic diagnosis and treatment
- Nonoperative procedures related to hearing
-- Audiometry 95.41
95.41 Audiometry', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.42', 'Ophthalmologic and otologic diagnosis and treatment
- Nonoperative procedures related to hearing
-- Clinical test of hearing 95.42
95.42 Clinical test of hearing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.43', 'Ophthalmologic and otologic diagnosis and treatment
- Nonoperative procedures related to hearing
-- Audiological evaluation 95.43
95.43 Audiological evaluation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.44', 'Ophthalmologic and otologic diagnosis and treatment
- Nonoperative procedures related to hearing
-- Clinical vestibular function tests 95.44
95.44 Clinical vestibular function tests', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.45', 'Ophthalmologic and otologic diagnosis and treatment
- Nonoperative procedures related to hearing
-- Rotation tests 95.45
95.45 Rotation tests', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.46', 'Ophthalmologic and otologic diagnosis and treatment
- Nonoperative procedures related to hearing
-- Other auditory and vestibular function tests 95.46
95.46 Other auditory and vestibular function tests', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.47', 'Ophthalmologic and otologic diagnosis and treatment
- Nonoperative procedures related to hearing
-- Hearing examination, not otherwise specified 95.47
95.47 Hearing examination, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.48', 'Ophthalmologic and otologic diagnosis and treatment
- Nonoperative procedures related to hearing
-- Fitting of hearing aid 95.48
95.48 Fitting of hearing aid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.49', 'Ophthalmologic and otologic diagnosis and treatment
- Nonoperative procedures related to hearing
-- Other nonoperative procedures related to hearing 95.49
95.49 Other nonoperative procedures related to hearing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96', 'Nonoperative intubation and irrigation
96 Nonoperative intubation and irrigation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.0', 'Nonoperative intubation and irrigation
- Nonoperative intubation of gastrointestinal and respiratory 96.0
96.0 Nonoperative intubation of gastrointestinal and respiratory', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.01', 'Nonoperative intubation and irrigation
- Nonoperative intubation of gastrointestinal and respiratory
-- Insertion of nasopharyngeal airway 96.01
96.01 Insertion of nasopharyngeal airway', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.02', 'Nonoperative intubation and irrigation
- Nonoperative intubation of gastrointestinal and respiratory
-- Insertion of oropharyngeal airway 96.02
96.02 Insertion of oropharyngeal airway', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.03', 'Nonoperative intubation and irrigation
- Nonoperative intubation of gastrointestinal and respiratory
-- Insertion of esophageal obturator airway 96.03
96.03 Insertion of esophageal obturator airway', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.04', 'Nonoperative intubation and irrigation
- Nonoperative intubation of gastrointestinal and respiratory
-- Insertion of endotracheal tube 96.04
96.04 Insertion of endotracheal tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.05', 'Nonoperative intubation and irrigation
- Nonoperative intubation of gastrointestinal and respiratory
-- Other intubation of respiratory tract 96.05
96.05 Other intubation of respiratory tract', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.06', 'Nonoperative intubation and irrigation
- Nonoperative intubation of gastrointestinal and respiratory
-- Insertion of Sengstaken tube 96.06
96.06 Insertion of Sengstaken tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.07', 'Nonoperative intubation and irrigation
- Nonoperative intubation of gastrointestinal and respiratory
-- Insertion of other (naso-)gastric tube 96.07
96.07 Insertion of other (naso-)gastric tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.08', 'Nonoperative intubation and irrigation
- Nonoperative intubation of gastrointestinal and respiratory
-- Insertion of (naso-)intestinal tube 96.08
96.08 Insertion of (naso-)intestinal tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.09', 'Nonoperative intubation and irrigation
- Nonoperative intubation of gastrointestinal and respiratory
-- Insertion of rectal tube 96.09
96.09 Insertion of rectal tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.1', 'Nonoperative intubation and irrigation
- Other nonoperative insertion 96.1
96.1 Other nonoperative insertion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.11', 'Nonoperative intubation and irrigation
- Other nonoperative insertion
-- Packing of external auditory canal 96.11
96.11 Packing of external auditory canal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.14', 'Nonoperative intubation and irrigation
- Other nonoperative insertion
-- Vaginal packing 96.14
96.14 Vaginal packing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.15', 'Nonoperative intubation and irrigation
- Other nonoperative insertion
-- Insertion of vaginal mold 96.15
96.15 Insertion of vaginal mold', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.16', 'Nonoperative intubation and irrigation
- Other nonoperative insertion
-- Other vaginal dilation 96.16
96.16 Other vaginal dilation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.17', 'Nonoperative intubation and irrigation
- Other nonoperative insertion
-- Insertion of vaginal diaphragm 96.17
96.17 Insertion of vaginal diaphragm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.18', 'Nonoperative intubation and irrigation
- Other nonoperative insertion
-- Insertion of other vaginal pessary 96.18
96.18 Insertion of other vaginal pessary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.19', 'Nonoperative intubation and irrigation
- Other nonoperative insertion
-- Rectal packing 96.19
96.19 Rectal packing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.2', 'Nonoperative intubation and irrigation
- Nonoperative dilation and manipulation 96.2
96.2 Nonoperative dilation and manipulation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.21', 'Nonoperative intubation and irrigation
- Nonoperative dilation and manipulation
-- Dilation of frontonasal duct 96.21
96.21 Dilation of frontonasal duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.22', 'Nonoperative intubation and irrigation
- Nonoperative dilation and manipulation
-- Dilation of rectum 96.22
96.22 Dilation of rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.23', 'Nonoperative intubation and irrigation
- Nonoperative dilation and manipulation
-- Dilation of anal sphincter 96.23
96.23 Dilation of anal sphincter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.24', 'Nonoperative intubation and irrigation
- Nonoperative dilation and manipulation
-- Dilation and manipulation of enterostomy stoma 96.24
96.24 Dilation and manipulation of enterostomy stoma', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.25', 'Nonoperative intubation and irrigation
- Nonoperative dilation and manipulation
-- Therapeutic distention of bladder 96.25
96.25 Therapeutic distention of bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.26', 'Nonoperative intubation and irrigation
- Nonoperative dilation and manipulation
-- Manual reduction of rectal prolapse 96.26
96.26 Manual reduction of rectal prolapse', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.27', 'Nonoperative intubation and irrigation
- Nonoperative dilation and manipulation
-- Manual reduction of hernia 96.27
96.27 Manual reduction of hernia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.28', 'Nonoperative intubation and irrigation
- Nonoperative dilation and manipulation
-- Manual reduction of enterostomy prolapse 96.28
96.28 Manual reduction of enterostomy prolapse', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.29', 'Nonoperative intubation and irrigation
- Nonoperative dilation and manipulation
-- Reduction of intussusception of alimentary tract 96.29
96.29 Reduction of intussusception of alimentary tract', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.3', 'Nonoperative intubation and irrigation
- Nonoperative alimentary tract irrigation, cleaning, and local 96.3
96.3 Nonoperative alimentary tract irrigation, cleaning, and local', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.31', 'Nonoperative intubation and irrigation
- Nonoperative alimentary tract irrigation, cleaning, and local
-- Gastric cooling 96.31
96.31 Gastric cooling', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.32', 'Nonoperative intubation and irrigation
- Nonoperative alimentary tract irrigation, cleaning, and local
-- Gastric freezing 96.32
96.32 Gastric freezing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.33', 'Nonoperative intubation and irrigation
- Nonoperative alimentary tract irrigation, cleaning, and local
-- Gastric lavage 96.33
96.33 Gastric lavage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.34', 'Nonoperative intubation and irrigation
- Nonoperative alimentary tract irrigation, cleaning, and local
-- Other irrigation of (naso-)gastric tube 96.34
96.34 Other irrigation of (naso-)gastric tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.35', 'Nonoperative intubation and irrigation
- Nonoperative alimentary tract irrigation, cleaning, and local
-- Gastric gavage 96.35
96.35 Gastric gavage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.36', 'Nonoperative intubation and irrigation
- Nonoperative alimentary tract irrigation, cleaning, and local
-- Irrigation of gastrostomy or enterostomy 96.36
96.36 Irrigation of gastrostomy or enterostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.37', 'Nonoperative intubation and irrigation
- Nonoperative alimentary tract irrigation, cleaning, and local
-- Proctoclysis 96.37
96.37 Proctoclysis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.38', 'Nonoperative intubation and irrigation
- Nonoperative alimentary tract irrigation, cleaning, and local
-- Removal of impacted feces 96.38
96.38 Removal of impacted feces', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.39', 'Nonoperative intubation and irrigation
- Nonoperative alimentary tract irrigation, cleaning, and local
-- Other transanal enema 96.39
96.39 Other transanal enema', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.4', 'Nonoperative intubation and irrigation
- Nonoperative irrigation, cleaning, and local instillation of other 96.4
96.4 Nonoperative irrigation, cleaning, and local instillation of other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.41', 'Nonoperative intubation and irrigation
- Nonoperative irrigation, cleaning, and local instillation of other
-- Irrigation of cholecystostomy and other biliary tube 96.41
96.41 Irrigation of cholecystostomy and other biliary tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.42', 'Nonoperative intubation and irrigation
- Nonoperative irrigation, cleaning, and local instillation of other
-- Irrigation of pancreatic tube 96.42
96.42 Irrigation of pancreatic tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.43', 'Nonoperative intubation and irrigation
- Nonoperative irrigation, cleaning, and local instillation of other
-- Digestive tract instillation, except gastric gavage 96.43
96.43 Digestive tract instillation, except gastric gavage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.44', 'Nonoperative intubation and irrigation
- Nonoperative irrigation, cleaning, and local instillation of other
-- Vaginal douche 96.44
96.44 Vaginal douche', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.45', 'Nonoperative intubation and irrigation
- Nonoperative irrigation, cleaning, and local instillation of other
-- Irrigation of nephrostomy and pyelostomy 96.45
96.45 Irrigation of nephrostomy and pyelostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.46', 'Nonoperative intubation and irrigation
- Nonoperative irrigation, cleaning, and local instillation of other
-- Irrigation of ureterostomy and ureteral catheter 96.46
96.46 Irrigation of ureterostomy and ureteral catheter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.47', 'Nonoperative intubation and irrigation
- Nonoperative irrigation, cleaning, and local instillation of other
-- Irrigation of cystostomy 96.47
96.47 Irrigation of cystostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.48', 'Nonoperative intubation and irrigation
- Nonoperative irrigation, cleaning, and local instillation of other
-- Irrigation of other indwelling urinary catheter 96.48
96.48 Irrigation of other indwelling urinary catheter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.49', 'Nonoperative intubation and irrigation
- Nonoperative irrigation, cleaning, and local instillation of other
-- Other genitourinary instillation 96.49
96.49 Other genitourinary instillation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.5', 'Nonoperative intubation and irrigation
- Other nonoperative irrigation and cleaning 96.5
96.5 Other nonoperative irrigation and cleaning', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.51', 'Nonoperative intubation and irrigation
- Other nonoperative irrigation and cleaning
-- Irrigation of eye 96.51
96.51 Irrigation of eye', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.52', 'Nonoperative intubation and irrigation
- Other nonoperative irrigation and cleaning
-- Irrigation of ear 96.52
96.52 Irrigation of ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.53', 'Nonoperative intubation and irrigation
- Other nonoperative irrigation and cleaning
-- Irrigation of nasal passages 96.53
96.53 Irrigation of nasal passages', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.54', 'Nonoperative intubation and irrigation
- Other nonoperative irrigation and cleaning
-- Dental scaling, polishing, and debridement 96.54
96.54 Dental scaling, polishing, and debridement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.55', 'Nonoperative intubation and irrigation
- Other nonoperative irrigation and cleaning
-- Tracheostomy toilette 96.55
96.55 Tracheostomy toilette', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.56', 'Nonoperative intubation and irrigation
- Other nonoperative irrigation and cleaning
-- Other lavage of bronchus and trachea 96.56
96.56 Other lavage of bronchus and trachea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.57', 'Nonoperative intubation and irrigation
- Other nonoperative irrigation and cleaning
-- Irrigation of vascular catheter 96.57
96.57 Irrigation of vascular catheter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.58', 'Nonoperative intubation and irrigation
- Other nonoperative irrigation and cleaning
-- Irrigation of wound catheter 96.58
96.58 Irrigation of wound catheter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.59', 'Nonoperative intubation and irrigation
- Other nonoperative irrigation and cleaning
-- Other irrigation of wound 96.59
96.59 Other irrigation of wound', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.6', 'Nonoperative intubation and irrigation
- Enteral infusion of concentrated nutritional substances 96.6
96.6 Enteral infusion of concentrated nutritional substances', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.7', 'Nonoperative intubation and irrigation
- Other continuous invasive mechanical ventilation 96.7
96.7 Other continuous invasive mechanical ventilation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.70', 'Ventilation
- mechanical
-- continuous 96.70
96.70 Continuous invasive mechanical ventilation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.71', 'Nonoperative intubation and irrigation
- Other continuous invasive mechanical ventilation
-- Continuous invasive mechanical ventilation for less than 96 96.71
96.71 Continuous invasive mechanical ventilation for less than 96', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.72', 'Nonoperative intubation and irrigation
- Other continuous invasive mechanical ventilation
-- Continuous invasive mechanical ventilation for 96 consecutive 96.72
96.72 Continuous invasive mechanical ventilation for 96 consecutive', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97', 'Replacement and removal of therapeutic appliances
97 Replacement and removal of therapeutic appliances', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.0', 'Replacement and removal of therapeutic appliances
- Nonoperative replacement of gastrointestinal appliance 97.0
97.0 Nonoperative replacement of gastrointestinal appliance', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.01', 'Replacement and removal of therapeutic appliances
- Nonoperative replacement of gastrointestinal appliance
-- Replacement of (naso-)gastric or esophagostomy tube 97.01
97.01 Replacement of (naso-)gastric or esophagostomy tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.02', 'Replacement and removal of therapeutic appliances
- Nonoperative replacement of gastrointestinal appliance
-- Replacement of gastrostomy tube 97.02
97.02 Replacement of gastrostomy tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.03', 'Replacement and removal of therapeutic appliances
- Nonoperative replacement of gastrointestinal appliance
-- Replacement of tube or enterostomy device of small intestine 97.03
97.03 Replacement of tube or enterostomy device of small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.04', 'Replacement and removal of therapeutic appliances
- Nonoperative replacement of gastrointestinal appliance
-- Replacement of tube or enterostomy device of large intestine 97.04
97.04 Replacement of tube or enterostomy device of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.05', 'Replacement and removal of therapeutic appliances
- Nonoperative replacement of gastrointestinal appliance
-- Replacement of stent (tube) in biliary or pancreatic duct 97.05
97.05 Replacement of stent (tube) in biliary or pancreatic duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.1', 'Replacement and removal of therapeutic appliances
- Nonoperative replacement of musculoskeletal and integumentary 97.1
97.1 Nonoperative replacement of musculoskeletal and integumentary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.11', 'Replacement and removal of therapeutic appliances
- Nonoperative replacement of musculoskeletal and integumentary
-- Replacement of cast on upper limb 97.11
97.11 Replacement of cast on upper limb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.12', 'Replacement and removal of therapeutic appliances
- Nonoperative replacement of musculoskeletal and integumentary
-- Replacement of cast on lower limb 97.12
97.12 Replacement of cast on lower limb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.13', 'Replacement and removal of therapeutic appliances
- Nonoperative replacement of musculoskeletal and integumentary
-- Replacement of other cast 97.13
97.13 Replacement of other cast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.14', 'Replacement and removal of therapeutic appliances
- Nonoperative replacement of musculoskeletal and integumentary
-- Replacement of other device for musculoskeletal immobilization 97.14
97.14 Replacement of other device for musculoskeletal immobilization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.15', 'Replacement and removal of therapeutic appliances
- Nonoperative replacement of musculoskeletal and integumentary
-- Replacement of wound catheter 97.15
97.15 Replacement of wound catheter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.16', 'Replacement and removal of therapeutic appliances
- Nonoperative replacement of musculoskeletal and integumentary
-- Replacement of wound packing or drain 97.16
97.16 Replacement of wound packing or drain', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.2', 'Replacement and removal of therapeutic appliances
- Other nonoperative replacement 97.2
97.2 Other nonoperative replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.21', 'Replacement and removal of therapeutic appliances
- Other nonoperative replacement
-- Replacement of nasal packing 97.21
97.21 Replacement of nasal packing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.22', 'Replacement and removal of therapeutic appliances
- Other nonoperative replacement
-- Replacement of dental packing 97.22
97.22 Replacement of dental packing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.23', 'Replacement and removal of therapeutic appliances
- Other nonoperative replacement
-- Replacement of tracheostomy tube 97.23
97.23 Replacement of tracheostomy tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.24', 'Replacement and removal of therapeutic appliances
- Other nonoperative replacement
-- Replacement and refitting of vaginal diaphragm 97.24
97.24 Replacement and refitting of vaginal diaphragm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.25', 'Replacement and removal of therapeutic appliances
- Other nonoperative replacement
-- Replacement of other vaginal pessary 97.25
97.25 Replacement of other vaginal pessary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.26', 'Replacement and removal of therapeutic appliances
- Other nonoperative replacement
-- Replacement of vaginal or vulvar packing or drain 97.26
97.26 Replacement of vaginal or vulvar packing or drain', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.29', 'Replacement and removal of therapeutic appliances
- Other nonoperative replacement
-- Other nonoperative replacements 97.29
97.29 Other nonoperative replacements', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.3', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from head and neck 97.3
97.3 Nonoperative removal of therapeutic device from head and neck', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.31', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from head and neck
-- Removal of eye prosthesis 97.31
97.31 Removal of eye prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.32', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from head and neck
-- Removal of nasal packing 97.32
97.32 Removal of nasal packing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.33', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from head and neck
-- Removal of dental wiring 97.33
97.33 Removal of dental wiring', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.34', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from head and neck
-- Removal of dental packing 97.34
97.34 Removal of dental packing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.35', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from head and neck
-- Removal of dental prosthesis 97.35
97.35 Removal of dental prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.36', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from head and neck
-- Removal of other external mandibular fixation device 97.36
97.36 Removal of other external mandibular fixation device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.37', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from head and neck
-- Removal of tracheostomy tube 97.37
97.37 Removal of tracheostomy tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.38', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from head and neck
-- Removal of sutures from head and neck 97.38
97.38 Removal of sutures from head and neck', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.39', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from head and neck
-- Removal of other therapeutic device from head and neck 97.39
97.39 Removal of other therapeutic device from head and neck', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.4', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from thorax 97.4
97.4 Nonoperative removal of therapeutic device from thorax', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.41', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from thorax
-- Removal of thoracotomy tube or pleural cavity drain 97.41
97.41 Removal of thoracotomy tube or pleural cavity drain', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.42', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from thorax
-- Removal of mediastinal drain 97.42
97.42 Removal of mediastinal drain', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.43', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from thorax
-- Removal of sutures from thorax 97.43
97.43 Removal of sutures from thorax', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.44', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from thorax
-- Nonoperative removal of heart assist system 97.44
97.44 Nonoperative removal of heart assist system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.49', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from thorax
-- Removal of other device from thorax 97.49
97.49 Removal of other device from thorax', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.5', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from digestive 97.5
97.5 Nonoperative removal of therapeutic device from digestive', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.51', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from digestive
-- Removal of gastrostomy tube 97.51
97.51 Removal of gastrostomy tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.52', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from digestive
-- Removal of tube from small intestine 97.52
97.52 Removal of tube from small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.53', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from digestive
-- Removal of tube from large intestine or appendix 97.53
97.53 Removal of tube from large intestine or appendix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.54', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from digestive
-- Removal of cholecystostomy tube 97.54
97.54 Removal of cholecystostomy tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.55', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from digestive
-- Removal of T-tube, other bile duct tube, or liver tube 97.55
97.55 Removal of T-tube, other bile duct tube, or liver tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.56', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from digestive
-- Removal of pancreatic tube or drain 97.56
97.56 Removal of pancreatic tube or drain', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.59', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from digestive
-- Removal of other device from digestive system 97.59
97.59 Removal of other device from digestive system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.6', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from urinary system 97.6
97.6 Nonoperative removal of therapeutic device from urinary system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.61', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from urinary system
-- Removal of pyelostomy and nephrostomy tube 97.61
97.61 Removal of pyelostomy and nephrostomy tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.62', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from urinary system
-- Removal of ureterostomy tube and ureteral catheter 97.62
97.62 Removal of ureterostomy tube and ureteral catheter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.63', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from urinary system
-- Removal of cystostomy tube 97.63
97.63 Removal of cystostomy tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.64', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from urinary system
-- Removal of other urinary drainage device 97.64
97.64 Removal of other urinary drainage device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.65', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from urinary system
-- Removal of urethral stent 97.65
97.65 Removal of urethral stent', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.69', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from urinary system
-- Removal of other device from urinary system 97.69
97.69 Removal of other device from urinary system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.7', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from genital system 97.7
97.7 Nonoperative removal of therapeutic device from genital system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.71', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from genital system
-- Removal of intrauterine contraceptive device 97.71
97.71 Removal of intrauterine contraceptive device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.72', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from genital system
-- Removal of intrauterine pack 97.72
97.72 Removal of intrauterine pack', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.73', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from genital system
-- Removal of vaginal diaphragm 97.73
97.73 Removal of vaginal diaphragm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.74', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from genital system
-- Removal of other vaginal pessary 97.74
97.74 Removal of other vaginal pessary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.75', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from genital system
-- Removal of vaginal or vulvar packing 97.75
97.75 Removal of vaginal or vulvar packing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.79', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from genital system
-- Removal of other device from genital tract 97.79
97.79 Removal of other device from genital tract', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.8', 'Replacement and removal of therapeutic appliances
- Other nonoperative removal of therapeutic device 97.8
97.8 Other nonoperative removal of therapeutic device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.81', 'Replacement and removal of therapeutic appliances
- Other nonoperative removal of therapeutic device
-- Removal of retroperitoneal drainage device 97.81
97.81 Removal of retroperitoneal drainage device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.82', 'Replacement and removal of therapeutic appliances
- Other nonoperative removal of therapeutic device
-- Removal of peritoneal drainage device 97.82
97.82 Removal of peritoneal drainage device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.83', 'Replacement and removal of therapeutic appliances
- Other nonoperative removal of therapeutic device
-- Removal of abdominal wall sutures 97.83
97.83 Removal of abdominal wall sutures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.84', 'Replacement and removal of therapeutic appliances
- Other nonoperative removal of therapeutic device
-- Removal of sutures from trunk, not elsewhere classified 97.84
97.84 Removal of sutures from trunk, not elsewhere classified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.85', 'Replacement and removal of therapeutic appliances
- Other nonoperative removal of therapeutic device
-- Removal of packing from trunk, not elsewhere classified 97.85
97.85 Removal of packing from trunk, not elsewhere classified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.86', 'Replacement and removal of therapeutic appliances
- Other nonoperative removal of therapeutic device
-- Removal of other device from abdomen 97.86
97.86 Removal of other device from abdomen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.87', 'Replacement and removal of therapeutic appliances
- Other nonoperative removal of therapeutic device
-- Removal of other device from trunk 97.87
97.87 Removal of other device from trunk', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.88', 'Replacement and removal of therapeutic appliances
- Other nonoperative removal of therapeutic device
-- Removal of external immobilization device 97.88
97.88 Removal of external immobilization device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.89', 'Replacement and removal of therapeutic appliances
- Other nonoperative removal of therapeutic device
-- Removal of other therapeutic device 97.89
97.89 Removal of other therapeutic device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98', 'Nonoperative removal of foreign body or calculus
98 Nonoperative removal of foreign body or calculus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.0', 'Nonoperative removal of foreign body or calculus
- Removal of intraluminal foreign body from digestive system 98.0
98.0 Removal of intraluminal foreign body from digestive system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.01', 'Nonoperative removal of foreign body or calculus
- Removal of intraluminal foreign body from digestive system
-- Removal of intraluminal foreign body from mouth without incision 98.01
98.01 Removal of intraluminal foreign body from mouth without incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.02', 'Nonoperative removal of foreign body or calculus
- Removal of intraluminal foreign body from digestive system
-- Removal of intraluminal foreign body from esophagus without 98.02
98.02 Removal of intraluminal foreign body from esophagus without', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.03', 'Nonoperative removal of foreign body or calculus
- Removal of intraluminal foreign body from digestive system
-- Removal of intraluminal foreign body from stomach and small 98.03
98.03 Removal of intraluminal foreign body from stomach and small', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.04', 'Nonoperative removal of foreign body or calculus
- Removal of intraluminal foreign body from digestive system
-- Removal of intraluminal foreign body from large intestine 98.04
98.04 Removal of intraluminal foreign body from large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.05', 'Nonoperative removal of foreign body or calculus
- Removal of intraluminal foreign body from digestive system
-- Removal of intraluminal foreign body from rectum and anus 98.05
98.05 Removal of intraluminal foreign body from rectum and anus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.1', 'Nonoperative removal of foreign body or calculus
- Removal of intraluminal foreign body from other sites without 98.1
98.1 Removal of intraluminal foreign body from other sites without', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.11', 'Nonoperative removal of foreign body or calculus
- Removal of intraluminal foreign body from other sites without
-- Removal of intraluminal foreign body from ear without incision 98.11
98.11 Removal of intraluminal foreign body from ear without incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.12', 'Nonoperative removal of foreign body or calculus
- Removal of intraluminal foreign body from other sites without
-- Removal of intraluminal foreign body from nose without incision 98.12
98.12 Removal of intraluminal foreign body from nose without incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.13', 'Nonoperative removal of foreign body or calculus
- Removal of intraluminal foreign body from other sites without
-- Removal of intraluminal foreign body from pharynx without incision 98.13
98.13 Removal of intraluminal foreign body from pharynx without incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.14', 'Nonoperative removal of foreign body or calculus
- Removal of intraluminal foreign body from other sites without
-- Removal of intraluminal foreign body from larynx without incision 98.14
98.14 Removal of intraluminal foreign body from larynx without incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.15', 'Nonoperative removal of foreign body or calculus
- Removal of intraluminal foreign body from other sites without
-- Removal of intraluminal foreign body from trachea and bronchus 98.15
98.15 Removal of intraluminal foreign body from trachea and bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.16', 'Nonoperative removal of foreign body or calculus
- Removal of intraluminal foreign body from other sites without
-- Removal of intraluminal foreign body from uterus without 98.16
98.16 Removal of intraluminal foreign body from uterus without', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.17', 'Nonoperative removal of foreign body or calculus
- Removal of intraluminal foreign body from other sites without
-- Removal of intraluminal foreign body from vagina without incision 98.17
98.17 Removal of intraluminal foreign body from vagina without incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.18', 'Nonoperative removal of foreign body or calculus
- Removal of intraluminal foreign body from other sites without
-- Removal of intraluminal foreign body from artificial stoma 98.18
98.18 Removal of intraluminal foreign body from artificial stoma', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.19', 'Nonoperative removal of foreign body or calculus
- Removal of intraluminal foreign body from other sites without
-- Removal of intraluminal foreign body from urethra without incision 98.19
98.19 Removal of intraluminal foreign body from urethra without incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.2', 'Nonoperative removal of foreign body or calculus
- Removal of other foreign body without incision 98.2
98.2 Removal of other foreign body without incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.20', 'Nonoperative removal of foreign body or calculus
- Removal of other foreign body without incision
-- Removal of foreign body, not otherwise specified 98.20
98.20 Removal of foreign body, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.21', 'Nonoperative removal of foreign body or calculus
- Removal of other foreign body without incision
-- Removal of superficial foreign body from eye without incision 98.21
98.21 Removal of superficial foreign body from eye without incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.22', 'Nonoperative removal of foreign body or calculus
- Removal of other foreign body without incision
-- Removal of other foreign body without incision from head and 98.22
98.22 Removal of other foreign body without incision from head and', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.23', 'Nonoperative removal of foreign body or calculus
- Removal of other foreign body without incision
-- Removal of foreign body from vulva without incision 98.23
98.23 Removal of foreign body from vulva without incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.24', 'Nonoperative removal of foreign body or calculus
- Removal of other foreign body without incision
-- Removal of foreign body from scrotum or penis without incision 98.24
98.24 Removal of foreign body from scrotum or penis without incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.25', 'Nonoperative removal of foreign body or calculus
- Removal of other foreign body without incision
-- Removal of other foreign body without incision from trunk 98.25
98.25 Removal of other foreign body without incision from trunk', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.26', 'Nonoperative removal of foreign body or calculus
- Removal of other foreign body without incision
-- Removal of foreign body from hand without incision 98.26
98.26 Removal of foreign body from hand without incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.27', 'Nonoperative removal of foreign body or calculus
- Removal of other foreign body without incision
-- Removal of foreign body without incision from upper limb, 98.27
98.27 Removal of foreign body without incision from upper limb,', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.28', 'Nonoperative removal of foreign body or calculus
- Removal of other foreign body without incision
-- Removal of foreign body from foot without incision 98.28
98.28 Removal of foreign body from foot without incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.29', 'Nonoperative removal of foreign body or calculus
- Removal of other foreign body without incision
-- Removal of foreign body without incision from lower limb, 98.29
98.29 Removal of foreign body without incision from lower limb,', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.5', 'Nonoperative removal of foreign body or calculus
- Extracorporeal shockwave lithotripsy [ESWL] 98.5
98.5 Extracorporeal shockwave lithotripsy [ESWL]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.51', 'Nonoperative removal of foreign body or calculus
- Extracorporeal shockwave lithotripsy [ESWL]
-- Extracorporeal shockwave lithotripsy [ESWL] of the kidney, ureter 98.51
98.51 Extracorporeal shockwave lithotripsy [ESWL] of the kidney, ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.52', 'Nonoperative removal of foreign body or calculus
- Extracorporeal shockwave lithotripsy [ESWL]
-- Extracorporeal shockwave lithotripsy [ESWL] of the gallbladder 98.52
98.52 Extracorporeal shockwave lithotripsy [ESWL] of the gallbladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.59', 'Nonoperative removal of foreign body or calculus
- Extracorporeal shockwave lithotripsy [ESWL]
-- Extracorporeal shockwave lithotripsy of other sites 98.59
98.59 Extracorporeal shockwave lithotripsy of other sites', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99', 'Other nonoperative procedures
99 Other nonoperative procedures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.0', 'Other nonoperative procedures
- Transfusion of blood and blood components 99.0
99.0 Transfusion of blood and blood components', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.00', 'Other nonoperative procedures
- Transfusion of blood and blood components
-- Perioperative autologous transfusion of whole blood or blood 99.00
99.00 Perioperative autologous transfusion of whole blood or blood', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.01', 'Other nonoperative procedures
- Transfusion of blood and blood components
-- Exchange transfusion 99.01
99.01 Exchange transfusion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.02', 'Other nonoperative procedures
- Transfusion of blood and blood components
-- Transfusion of previously collected autologous blood 99.02
99.02 Transfusion of previously collected autologous blood', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.03', 'Other nonoperative procedures
- Transfusion of blood and blood components
-- Other transfusion of whole blood 99.03
99.03 Other transfusion of whole blood', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.04', 'Other nonoperative procedures
- Transfusion of blood and blood components
-- Transfusion of packed cells 99.04
99.04 Transfusion of packed cells', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.05', 'Other nonoperative procedures
- Transfusion of blood and blood components
-- Transfusion of platelets 99.05
99.05 Transfusion of platelets', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.06', 'Other nonoperative procedures
- Transfusion of blood and blood components
-- Transfusion of coagulation factors 99.06
99.06 Transfusion of coagulation factors', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.07', 'Other nonoperative procedures
- Transfusion of blood and blood components
-- Transfusion of other serum 99.07
99.07 Transfusion of other serum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.08', 'Other nonoperative procedures
- Transfusion of blood and blood components
-- Transfusion of blood expander 99.08
99.08 Transfusion of blood expander', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.09', 'Other nonoperative procedures
- Transfusion of blood and blood components
-- Transfusion of other substance 99.09
99.09 Transfusion of other substance', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.1', 'Other nonoperative procedures
- Injection or infusion of therapeutic or prophylactic substance 99.1
99.1 Injection or infusion of therapeutic or prophylactic substance', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.10', 'Other nonoperative procedures
- Injection or infusion of therapeutic or prophylactic substance
-- Injection or infusion of thrombolytic agent 99.10
99.10 Injection or infusion of thrombolytic agent', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.11', 'Other nonoperative procedures
- Injection or infusion of therapeutic or prophylactic substance
-- Injection of Rh immune globulin 99.11
99.11 Injection of Rh immune globulin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.12', 'Other nonoperative procedures
- Injection or infusion of therapeutic or prophylactic substance
-- Immunization for allergy 99.12
99.12 Immunization for allergy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.13', 'Other nonoperative procedures
- Injection or infusion of therapeutic or prophylactic substance
-- Immunization for autoimmune disease 99.13
99.13 Immunization for autoimmune disease', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.14', 'Other nonoperative procedures
- Injection or infusion of therapeutic or prophylactic substance
-- Injection or infusion of gamma globulin 99.14
99.14 Injection or infusion of gamma globulin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.15', 'Other nonoperative procedures
- Injection or infusion of therapeutic or prophylactic substance
-- Parenteral infusion of concentrated nutritional substances 99.15
99.15 Parenteral infusion of concentrated nutritional substances', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.16', 'Other nonoperative procedures
- Injection or infusion of therapeutic or prophylactic substance
-- Injection of antidote 99.16
99.16 Injection of antidote', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.17', 'Other nonoperative procedures
- Injection or infusion of therapeutic or prophylactic substance
-- Injection of insulin 99.17
99.17 Injection of insulin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.18', 'Other nonoperative procedures
- Injection or infusion of therapeutic or prophylactic substance
-- Injection or infusion of electrolytes 99.18
99.18 Injection or infusion of electrolytes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.19', 'Other nonoperative procedures
- Injection or infusion of therapeutic or prophylactic substance
-- Injection of anticoagulant 99.19
99.19 Injection of anticoagulant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.2', 'Other nonoperative procedures
- Injection or infusion of other therapeutic or prophylactic 99.2
99.2 Injection or infusion of other therapeutic or prophylactic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.20', 'Other nonoperative procedures
- Injection or infusion of other therapeutic or prophylactic
-- Injection or infusion of platelet inhibitor 99.20
99.20 Injection or infusion of platelet inhibitor', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.21', 'Other nonoperative procedures
- Injection or infusion of other therapeutic or prophylactic
-- Injection of antibiotic 99.21
99.21 Injection of antibiotic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.22', 'Other nonoperative procedures
- Injection or infusion of other therapeutic or prophylactic
-- Injection of other anti-infective 99.22
99.22 Injection of other anti-infective', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.23', 'Other nonoperative procedures
- Injection or infusion of other therapeutic or prophylactic
-- Injection of steroid 99.23
99.23 Injection of steroid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.24', 'Other nonoperative procedures
- Injection or infusion of other therapeutic or prophylactic
-- Injection of other hormone 99.24
99.24 Injection of other hormone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.25', 'Other nonoperative procedures
- Injection or infusion of other therapeutic or prophylactic
-- Injection or infusion of cancer chemotherapeutic substance 99.25
99.25 Injection or infusion of cancer chemotherapeutic substance', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.26', 'Other nonoperative procedures
- Injection or infusion of other therapeutic or prophylactic
-- Injection of tranquilizer 99.26
99.26 Injection of tranquilizer', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.27', 'Other nonoperative procedures
- Injection or infusion of other therapeutic or prophylactic
-- Iontophoresis 99.27
99.27 Iontophoresis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.28', 'Other nonoperative procedures
- Injection or infusion of other therapeutic or prophylactic
-- Injection or infusion of biological response modifier [BRM] as an 99.28
99.28 Injection or infusion of biological response modifier [BRM] as an', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.29', 'Other nonoperative procedures
- Injection or infusion of other therapeutic or prophylactic
-- Injection or infusion of other therapeutic or prophylactic substance 99.29
99.29 Injection or infusion of other therapeutic or prophylactic substance', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.3', 'Other nonoperative procedures
- Prophylactic vaccination and inoculation against certain bacterial 99.3
99.3 Prophylactic vaccination and inoculation against certain bacterial', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.31', 'Other nonoperative procedures
- Prophylactic vaccination and inoculation against certain bacterial
-- Vaccination against cholera 99.31
99.31 Vaccination against cholera', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.32', 'Other nonoperative procedures
- Prophylactic vaccination and inoculation against certain bacterial
-- Vaccination against typhoid and paratyphoid fever 99.32
99.32 Vaccination against typhoid and paratyphoid fever', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.33', 'Other nonoperative procedures
- Prophylactic vaccination and inoculation against certain bacterial
-- Vaccination against tuberculosis 99.33
99.33 Vaccination against tuberculosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.34', 'Other nonoperative procedures
- Prophylactic vaccination and inoculation against certain bacterial
-- Vaccination against plague 99.34
99.34 Vaccination against plague', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.35', 'Other nonoperative procedures
- Prophylactic vaccination and inoculation against certain bacterial
-- Vaccination against tularemia 99.35
99.35 Vaccination against tularemia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.36', 'Other nonoperative procedures
- Prophylactic vaccination and inoculation against certain bacterial
-- Administration of diphtheria toxoid 99.36
99.36 Administration of diphtheria toxoid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.37', 'Other nonoperative procedures
- Prophylactic vaccination and inoculation against certain bacterial
-- Vaccination against pertussis 99.37
99.37 Vaccination against pertussis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.38', 'Other nonoperative procedures
- Prophylactic vaccination and inoculation against certain bacterial
-- Administration of tetanus toxoid 99.38
99.38 Administration of tetanus toxoid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.39', 'Other nonoperative procedures
- Prophylactic vaccination and inoculation against certain bacterial
-- Administration of diphtheria-tetanus- pertussis, combined 99.39
99.39 Administration of diphtheria-tetanus- pertussis, combined', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.4', 'Other nonoperative procedures
- Prophylactic vaccination and inoculation against certain viral 99.4
99.4 Prophylactic vaccination and inoculation against certain viral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.41', 'Other nonoperative procedures
- Prophylactic vaccination and inoculation against certain viral
-- Administration of poliomyelitis vaccine 99.41
99.41 Administration of poliomyelitis vaccine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.42', 'Other nonoperative procedures
- Prophylactic vaccination and inoculation against certain viral
-- Vaccination against smallpox 99.42
99.42 Vaccination against smallpox', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.43', 'Other nonoperative procedures
- Prophylactic vaccination and inoculation against certain viral
-- Vaccination against yellow fever 99.43
99.43 Vaccination against yellow fever', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.44', 'Other nonoperative procedures
- Prophylactic vaccination and inoculation against certain viral
-- Vaccination against rabies 99.44
99.44 Vaccination against rabies', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.45', 'Other nonoperative procedures
- Prophylactic vaccination and inoculation against certain viral
-- Vaccination against measles 99.45
99.45 Vaccination against measles', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.46', 'Other nonoperative procedures
- Prophylactic vaccination and inoculation against certain viral
-- Vaccination against mumps 99.46
99.46 Vaccination against mumps', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.47', 'Other nonoperative procedures
- Prophylactic vaccination and inoculation against certain viral
-- Vaccination against rubella 99.47
99.47 Vaccination against rubella', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.48', 'Other nonoperative procedures
- Prophylactic vaccination and inoculation against certain viral
-- Administration of measles-mumps-rubella vaccine 99.48
99.48 Administration of measles-mumps-rubella vaccine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.5', 'Other nonoperative procedures
- Other vaccination and inoculation 99.5
99.5 Other vaccination and inoculation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.51', 'Other nonoperative procedures
- Other vaccination and inoculation
-- Prophylactic vaccination against the common cold 99.51
99.51 Prophylactic vaccination against the common cold', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.52', 'Other nonoperative procedures
- Other vaccination and inoculation
-- Prophylactic vaccination against influenza 99.52
99.52 Prophylactic vaccination against influenza', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.53', 'Other nonoperative procedures
- Other vaccination and inoculation
-- Prophylactic vaccination against arthropod- borne viral 99.53
99.53 Prophylactic vaccination against arthropod- borne viral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.54', 'Other nonoperative procedures
- Other vaccination and inoculation
-- Prophylactic vaccination against other arthropod-borne viral 99.54
99.54 Prophylactic vaccination against other arthropod-borne viral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.55', 'Other nonoperative procedures
- Other vaccination and inoculation
-- Prophylactic administration of vaccine against other diseases 99.55
99.55 Prophylactic administration of vaccine against other diseases', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.56', 'Other nonoperative procedures
- Other vaccination and inoculation
-- Administration of tetanus antitoxin 99.56
99.56 Administration of tetanus antitoxin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.57', 'Other nonoperative procedures
- Other vaccination and inoculation
-- Administration of botulism antitoxin 99.57
99.57 Administration of botulism antitoxin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.58', 'Other nonoperative procedures
- Other vaccination and inoculation
-- Administration of other antitoxins 99.58
99.58 Administration of other antitoxins', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.59', 'Other nonoperative procedures
- Other vaccination and inoculation
-- Other vaccination and inoculation 99.59
99.59 Other vaccination and inoculation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.6', 'Other nonoperative procedures
- Conversion of cardiac rhythm 99.6
99.6 Conversion of cardiac rhythm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.60', 'Other nonoperative procedures
- Conversion of cardiac rhythm
-- Cardiopulmonary resuscitation, not otherwise specified 99.60
99.60 Cardiopulmonary resuscitation, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.61', 'Other nonoperative procedures
- Conversion of cardiac rhythm
-- Atrial cardioversion 99.61
99.61 Atrial cardioversion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.62', 'Other nonoperative procedures
- Conversion of cardiac rhythm
-- Other electric countershock of heart 99.62
99.62 Other electric countershock of heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.63', 'Other nonoperative procedures
- Conversion of cardiac rhythm
-- Closed chest cardiac massage 99.63
99.63 Closed chest cardiac massage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.64', 'Other nonoperative procedures
- Conversion of cardiac rhythm
-- Carotid sinus stimulation 99.64
99.64 Carotid sinus stimulation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.69', 'Other nonoperative procedures
- Conversion of cardiac rhythm
-- Other conversion of cardiac rhythm 99.69
99.69 Other conversion of cardiac rhythm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.7', 'Other nonoperative procedures
- Therapeutic apheresis or other injection, administration, or 99.7
99.7 Therapeutic apheresis or other injection, administration, or', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.71', 'Other nonoperative procedures
- Therapeutic apheresis or other injection, administration, or
-- Therapeutic plasmapheresis 99.71
99.71 Therapeutic plasmapheresis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.72', 'Other nonoperative procedures
- Therapeutic apheresis or other injection, administration, or
-- Therapeutic leukopheresis 99.72
99.72 Therapeutic leukopheresis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.73', 'Other nonoperative procedures
- Therapeutic apheresis or other injection, administration, or
-- Therapeutic erythrocytapheresis 99.73
99.73 Therapeutic erythrocytapheresis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.74', 'Other nonoperative procedures
- Therapeutic apheresis or other injection, administration, or
-- Therapeutic plateletpheresis 99.74
99.74 Therapeutic plateletpheresis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.75', 'Other nonoperative procedures
- Therapeutic apheresis or other injection, administration, or
-- Administration of neuroprotective agent 99.75
99.75 Administration of neuroprotective agent', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.76', 'Other nonoperative procedures
- Therapeutic apheresis or other injection, administration, or
-- Extracorporeal immunoadsorption 99.76
99.76 Extracorporeal immunoadsorption', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.77', 'Other nonoperative procedures
- Therapeutic apheresis or other injection, administration, or
-- Application or administration of adhesion barrier substance 99.77
99.77 Application or administration of adhesion barrier substance', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.78', 'Other nonoperative procedures
- Therapeutic apheresis or other injection, administration, or
-- Aquapheresis 99.78
99.78 Aquapheresis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.79', 'Other nonoperative procedures
- Therapeutic apheresis or other injection, administration, or
-- Other 99.79
99.79 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.8', 'Other nonoperative procedures
- Miscellaneous physical procedures 99.8
99.8 Miscellaneous physical procedures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.81', 'Other nonoperative procedures
- Miscellaneous physical procedures
-- Hypothermia (central) (local) 99.81
99.81 Hypothermia (central) (local)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.82', 'Other nonoperative procedures
- Miscellaneous physical procedures
-- Ultraviolet light therapy 99.82
99.82 Ultraviolet light therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.83', 'Other nonoperative procedures
- Miscellaneous physical procedures
-- Other phototherapy 99.83
99.83 Other phototherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.84', 'Other nonoperative procedures
- Miscellaneous physical procedures
-- Isolation 99.84
99.84 Isolation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.85', 'Other nonoperative procedures
- Miscellaneous physical procedures
-- Hyperthermia for treatment of cancer 99.85
99.85 Hyperthermia for treatment of cancer', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.86', 'Other nonoperative procedures
- Miscellaneous physical procedures
-- Non-invasive placement of bone growth stimulator 99.86
99.86 Non-invasive placement of bone growth stimulator', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.88', 'Other nonoperative procedures
- Miscellaneous physical procedures
-- Therapeutic photopheresis 99.88
99.88 Therapeutic photopheresis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.9', 'Other nonoperative procedures
- Other miscellaneous procedures 99.9
99.9 Other miscellaneous procedures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.91', 'Other nonoperative procedures
- Other miscellaneous procedures
-- Acupuncture for anesthesia 99.91
99.91 Acupuncture for anesthesia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.92', 'Other nonoperative procedures
- Other miscellaneous procedures
-- Other acupuncture 99.92
99.92 Other acupuncture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.93', 'Other nonoperative procedures
- Other miscellaneous procedures
-- Rectal massage (for levator spasm) 99.93
99.93 Rectal massage (for levator spasm)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.94', 'Other nonoperative procedures
- Other miscellaneous procedures
-- Prostatic massage 99.94
99.94 Prostatic massage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.95', 'Other nonoperative procedures
- Other miscellaneous procedures
-- Stretching of foreskin 99.95
99.95 Stretching of foreskin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.96', 'Other nonoperative procedures
- Other miscellaneous procedures
-- Collection of sperm for artificial insemination 99.96
99.96 Collection of sperm for artificial insemination', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.97', 'Other nonoperative procedures
- Other miscellaneous procedures
-- Fitting of denture 99.97
99.97 Fitting of denture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.98', 'Other nonoperative procedures
- Other miscellaneous procedures
-- Extraction of milk from lactating breast 99.98
99.98 Extraction of milk from lactating breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.99', 'Other nonoperative procedures
- Other miscellaneous procedures
-- Other 99.99
99.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.59', 'Examination
- blood
-- chemical 90.59
90.59 Other blood chemistry', '[]');