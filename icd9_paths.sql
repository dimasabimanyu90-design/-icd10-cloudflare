-- ICD-9-CM paths database (v2) — from Vol.3 Alphabetical Index
-- 3,644 codes with correct lead term paths

CREATE TABLE IF NOT EXISTS icd9_paths (
  code TEXT PRIMARY KEY,
  path TEXT NOT NULL,
  vol1 TEXT DEFAULT '[]'
);

DELETE FROM icd9_paths;

INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00', 'Therapy
- radiation
-- high voltage (200-3
00 high voltage (200-3', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.10', 'for cancer NEC
- brain wafer implantation
00.10 brain wafer implantation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.11', 'DrotAA
00.11 DrotAA', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.12', 'inhaled nitric oxide
00.12 inhaled nitric oxide', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.13', 'nesiritide
00.13 nesiritide', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.14', 'antibiotic
- oxazolidinone class
00.14 oxazolidinone class', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.15', 'Proleukin® (low-dose)
- high-dose
00.15 high-dose', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.16', 'Decoy, E2F
00.16 Decoy, E2F', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.17', 'Infusion
- vasopressor
00.17 vasopressor', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.18', 'Procedures and interventions, Not Elsewhere Classified
- Pharamaceuticals
-- Infusion of immunosuppressive antibody therapy 00.18
00.18 Infusion of immunosuppressive antibody therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.21', 'Procedures and interventions, Not Elsewhere Classified
- Intravascular imaging of blood vessels
-- Intravascular imaging of extracranial cerebral vessels 00.21
00.21 Intravascular imaging of extracranial cerebral vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.22', 'Ultrasound
- intravascular (IVUS) -IVUS)
-- aorta
00.22 aorta', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.23', 'Ultrasound
- intravascular (IVUS) -IVUS)
-- peripheral vessel
00.23 peripheral vessel', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.24', 'intravascular (coronary vessels)
00.24 intravascular (coronary vessels)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.25', 'Ultrasound
- intravascular (IVUS) -IVUS)
-- renal vessel
00.25 renal vessel', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.28', 'Ultrasound
- intravascular (IVUS) -IVUS)
-- other specified vessel
00.28 other specified vessel', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.29', 'Procedures and interventions, Not Elsewhere Classified
- Intravascular imaging of blood vessels
-- Intravascular imaging, unspecified vessel(s) 00.29
00.29 Intravascular imaging, unspecified vessel(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.31', 'spinal female
- TO PROCEDURES (FY10)
---- Surgery
----- CAS with CT/CTA
00.31 CAS with CT/CTA', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.32', 'Procedures and interventions, Not Elsewhere Classified
- Computer assisted surgery [CAS]
-- Computer assisted surgery with MR/MRA 00.32
00.32 Computer assisted surgery with MR/MRA', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.33', 'Radiography (diagnostic) NEC
- computer assisted surgery (CAS)
-- fluoroscopy
00.33 fluoroscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.34', 'spinal female
- TO PROCEDURES (FY10)
---- Surgery
----- imageless
00.34 imageless', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.35', 'spinal female
- TO PROCEDURES (FY10)
---- Surgery
----- CAS with multiple datasets
00.35 CAS with multiple datasets', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.39', 'spinal female
- TO PROCEDURES (FY10)
---- Surgery
----- computer assisted (CAS)
00.39 computer assisted (CAS)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.43', 'coronary (artery)
--- or
00.43 or', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.44', 'Removal
- coronary artery obstruction (thrombus)
-- percutaneous transluminal (balloon)
---- treated. Use code
00.44 treated. Use code', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.48', 'coronary (artery)
--- 00.46, 00.47, or
00.48 00.46, 00.47, or', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.49', 'Downstream® System (AO therapy)
- (aqueous oxygen)
00.49 (aqueous oxygen)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.50', 'CRT-P (biventricular pacemaker)
-- leads)
00.50 leads)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.51', 'Replacement
- CRT-D (biventricular defibrillator)
-- and one or more leads)
00.51 and one or more leads)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.52', 'CRT-D (biventricular defibrillator)
- left ventricular coronary venous
-- only
00.52 only', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.53', 'CRT-P (biventricular pacemaker)
- pulse generator only
00.53 pulse generator only', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.54', 'CRT-D (biventricular defibrillator)
- pulse generator only
00.54 pulse generator only', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.55', 'Insertion stent(s) artery
- -non-coronary
--- peripheral
---- drug-eluting
00.55 drug-eluting', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.56', 'Monitoring
- cardiac output (by)
-- intracardiac or great vessel hemodynamic
--- sensor (lead)
00.56 sensor (lead)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.57', 'Monitoring
- cardiac output (by)
-- intracardiac or great vessel hemodynamic
--- subcutaneous device
00.57 subcutaneous device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.58', 'sensor(lead)
- intra-aneurysm sac pressure
-- monitoring device
00.58 monitoring device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.59', 'coronary blood flow
- fractional flow reserve (FFR)
00.59 fractional flow reserve (FFR)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.61', 'Procedures and interventions, Not Elsewhere Classified
- Procedures on blood vessels
-- Percutaneous angioplasty or atherectomy of precerebral 00.61
00.61 Percutaneous angioplasty or atherectomy of precerebral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.62', 'intracranial (open) NEC
- percutaneous approach, intracranial
-- vessel(s)
00.62 vessel(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.63', 'Insertion stent(s) artery
- -non-coronary
--- carotid
00.63 carotid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.64', 'Insertion stent(s) artery
- -non-coronary
--- extracranial
00.64 extracranial', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.65', 'Insertion stent(s) artery
- -non-coronary
--- intracranial
00.65 intracranial', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.66', 'Angioplasty
- coronary artery
-- percutaneous transluminal (balloon) 00.66
00.66 Percutaneous transluminal coronary angioplasty [PTCA]', '[{"type":"includes","text":"Balloon angioplasty of coronary artery"},{"type":"includes","text":"PTCA NOS"},{"type":"note","text":"Code also any: insertion of coronary artery stent (36.06-36.07)"}]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.67', 'intravascular pressure
- intrathoracic
00.67 intrathoracic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.68', 'intravascular pressure
- peripheral
00.68 peripheral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.69', 'intravascular pressure
00.69 intravascular pressure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.70', 'Implant -joint femoral- revision
--- total (acetabular and femoral
---- components)
00.70 components)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.71', 'prosthesis
- acetabular component only
00.71 acetabular component only', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.72', 'Revision -CRT-P
- hip replacement NOS
-- femoral component only
00.72 femoral component only', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.73', 'Implant -joint femoral- revision
--- femoral head only and/or
---- acetabular liner
00.73 acetabular liner', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.74', 'metal on polyethylene
00.74 metal on polyethylene', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.75', 'metal-on-metal
00.75 metal-on-metal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.76', 'ceramic-on-ceramic
00.76 ceramic-on-ceramic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.77', 'ceramic-on-polyethylene
00.77 ceramic-on-polyethylene', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.80', 'Implant -joint femoral- revision
- knee (partial) (total)
-- revision NOS
--- total (all components)
00.80 total (all components)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.81', 'Implant -joint femoral- revision
- knee (partial) (total)
-- revision NOS
--- partial
---- tibial component
00.81 tibial component', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.82', 'Implant -joint femoral- revision
- knee (partial) (total)
-- revision NOS
--- femoral component
00.82 femoral component', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.83', 'Implant -joint femoral- revision
- knee (partial) (total)
-- revision NOS
--- partial
---- patellar component
00.83 patellar component', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.84', 'Implant -joint femoral- revision
- knee (partial) (total)
-- revision NOS
--- partial
---- tibial insert
00.84 tibial insert', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.91', 'Renotransplantation NEC
-- live related donor
00.91 live related donor', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.92', 'Renotransplantation NEC
-- live non-related donor
00.92 live non-related donor', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.93', 'Renotransplantation NEC
-- cadaver
00.93 cadaver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('00.94', 'IAEMT (intraoperative anesthetic effect
- monitoring and titration)
00.94 monitoring and titration)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.01', 'cisternal
01.01 cisternal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.02', 'Drainage
- ventricle (cerebral) (incision) NEC
-- aspiration
--- through previously implanted
---- catheter
01.02 catheter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.09', 'cranial (puncture)
01.09 cranial (puncture)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.10', 'intracranial pressure
01.10 intracranial pressure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.11', 'Biopsy -bone
- cerebral meninges NEC
01.11 cerebral meninges NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.12', 'Biopsy -bone
- cerebral meninges NEC
-- open
01.12 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.13', 'Biopsy -bone
- brain NEC
01.13 brain NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.14', 'Biopsy -bone
- brain NEC
-- open
01.14 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.15', 'Biopsy
- skull
01.15 skull', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.16', 'Incision and excision of skull, brain, and cerebral meninges
- Diagnostic procedures on skull, brain, and cerebral meninges
-- Intracranial oxygen monitoring  01.16
01.16 Intracranial oxygen monitoring ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.17', 'Monitoring
- brain temperature
01.17 brain temperature', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.18', 'Procedure -diagnostic
- globus pallidus
01.18 globus pallidus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.19', '(for dental
- TO PROCEDURES (FY10)
---- Procedure -diagnostic
----- skull
01.19 skull', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.21', 'radical
- TO PROCEDURES (FY10)
---- Division
----- cranial sinus (incision) (trephination)
01.21 cranial sinus (incision) (trephination)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.22', 'Removal electrodes
- depth
01.22 depth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.23', 'reopening of site
01.23 reopening of site', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.24', 'Craniotomy
- burr hole 01.24
01.24 Other craniotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.25', 'Craniectomy
01.25 Craniectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.26', 'code
----- cranial cavity
01.26 cranial cavity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.27', 'Removal
- catheter (indwelling)
-- cranial cavity
01.27 cranial cavity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.28', 'code
----- placement via burr hole(s)
01.28 placement via burr hole(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.31', 'meninges (cerebral)
01.31 meninges (cerebral)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.32', 'Cingulumotomy (brain) (percutaneous
- radio-frequency)
01.32 radio-frequency)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.39', 'Amygdalohippocampotomy
01.39 Amygdalohippocampotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.41', 'Chemothalamectomy
01.41 Chemothalamectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.42', 'Chemopallidectomy
01.42 Chemopallidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.51', 'brain
01.51 brain', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.52', 'Excision
- brain
-- hemisphere
01.52 hemisphere', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.53', 'Excision
- brain
-- lobe
01.53 lobe', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.59', 'Cryotherapy
- brain
01.59 brain', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('01.6', 'Excision -lesion -artery
- bone
-- skull
01.6 skull', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.01', 'strip (opening of cranial suture)
02.01 strip (opening of cranial suture)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.02', 'for decompression of fracture
02.02 for decompression of fracture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.03', 'Repair
- cranium NEC
-- flap (bone)
02.03 flap (bone)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.04', 'Graft, grafting bone
- skull
02.04 skull', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.05', 'skull
- plate
02.05 plate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.06', 'Cranioplasty
02.06 Cranioplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.07', 'Other operations on skull, brain, and cerebral meninges
- Cranioplasty
-- Removal of skull plate 02.07
02.07 Removal of skull plate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.11', 'Suture (laceration)
- cerebral meninges
02.11 cerebral meninges', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.12', 'Cranioplasty
- repair of skull defect 02.12
02.12 Other repair of skull', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.13', 'Ligation
- longitudinal sinus (superior)
02.13 longitudinal sinus (superior)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.14', 'choroid
02.14 choroid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.2', 'Rickham reservoir
02.2 Rickham reservoir', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.31', 'ventriculomastoid (with valve)
02.31 ventriculomastoid (with valve)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.32', 'ventriculoatrial (with valve)
02.32 ventriculoatrial (with valve)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.33', 'ventriculopleural (with valve)
02.33 ventriculopleural (with valve)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.34', 'Shunt
- ventricular (cerebral) (with valve)
-- gallbladder
02.34 gallbladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.35', 'Other operations on skull, brain, and cerebral meninges
- Extracranial ventricular shunt
-- Ventricular shunt to urinary system 02.35
02.35 Ventricular shunt to urinary system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.39', 'Shunt
- ventricular (cerebral) (with valve)
-- bone marrow
02.39 bone marrow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.41', 'Exploration
- shunt
-- ventricular site
02.41 ventricular site', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.42', 'Reinsertion
- Holter (-Spitz) valve
02.42 Holter (-Spitz) valve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.43', 'Clamping
- ventricular shunt
02.43 ventricular shunt', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.91', 'Incision (and drainage)
- brain
-- cortical adhesions
02.91 cortical adhesions', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.92', 'Other operations on skull, brain, and cerebral meninges
- Other operations on skull, brain, and cerebral meninges
-- Repair of brain 02.92
02.92 Repair of brain', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.93', 'electrode(s)
- brain
02.93 brain', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.94', 'Application
- Crutchfield tongs (skull) (with synchronous
-- skeletal traction)
02.94 skeletal traction)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.95', 'Barton''s tongs (skull)
02.95 Barton''s tongs (skull)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.96', 'electrode(s)
- brain
-- sphenoidal
02.96 sphenoidal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('02.99', 'brain NEC
02.99 brain NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.01', 'Removal -foreign body
- meninges (cerebral)
-- spinal
03.01 spinal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.02', 'Laminectomy (decompression)
- reopening of site
03.02 reopening of site', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.09', 'Laminectomy 03.09
03.09 Other exploration and decompression of spinal canal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.1', 'Incision (and drainage)
- spinal
-- nerve root
03.1 nerve root', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.21', 'Chordotomy (spinothalmic) (anterior)
- percutaneous
03.21 percutaneous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.29', 'Chordotomy (spinothalmic) (anterior)
- (posterior) NEC
03.29 (posterior) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.31', 'spinal
03.31 spinal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.32', 'meninges (cerebral) NEC
- spinal
03.32 spinal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.39', 'Procedure -diagnostic
- meninges (cerebral)
-- spinal
03.39 spinal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.4', 'Destruction -lesion (local) --- Cont.
- meninges (cerebral)
-- spinal
03.4 spinal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.51', 'Gardner operation (spinal meningocele
- repair)
03.51 repair)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.52', 'Repair
- spina bifida NEC
-- myelomeningocele
03.52 myelomeningocele', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.53', 'Elevation
- bone fragments (fractured)
-- spinal
03.53 spinal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.59', 'Repair
- spina bifida NEC
03.59 spina bifida NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.6', 'Operations on spinal cord and spinal canal structures
- Lysis of adhesions of spinal cord and nerve roots 03.6
03.6 Lysis of adhesions of spinal cord and nerve roots', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.71', 'Shunt
- spinal (thecal) (with valve) NEC
-- subarachnoid-peritoneal
03.71 subarachnoid-peritoneal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.72', 'Shunt
- spinal (thecal) (with valve) NEC
-- subarachnoid-ureteral
03.72 subarachnoid-ureteral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.79', 'Shunt
- pleurothecal (with valve)
03.79 pleurothecal (with valve)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.8', 'spinal canal structure
03.8 spinal canal structure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.90', 'code
- lead
----- substances
03.90 substances', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.92', 'spinal (canal) NEC
03.92 spinal (canal) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.93', 'Insertion -electrode(s)
-- spine
03.93 spine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.94', 'Removal electrodes
- spinal
03.94 spinal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.95', 'patch, spine (epidural)
03.95 patch, spine (epidural)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.96', 'Denervation
- facet, percutaneous(radiofrequency)
03.96 facet, percutaneous(radiofrequency)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.97', 'Operations on spinal cord and spinal canal structures
- Other operations on spinal cord and spinal canal structures
-- Revision of spinal thecal shunt 03.97
03.97 Revision of spinal thecal shunt', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.98', 'Removal
- shunt
-- lumbar-subarachnoid NEC
03.98 lumbar-subarachnoid NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('03.99', 'with meninges (spinal) NEC
03.99 with meninges (spinal) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.01', 'Destruction --- Cont.
- neuroma
-- acoustic
04.01 acoustic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.02', 'gasserian ganglion
04.02 gasserian ganglion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.03', 'nerve (cranial) (peripheral) NEC
- phrenic
04.03 phrenic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.04', 'Operations on cranial and peripheral nerves
- Incision, division, and excision of cranial and peripheral nerves
-- Other incision of cranial and peripheral nerves 04.04
04.04 Other incision of cranial and peripheral nerves', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.05', 'gasserian ganglion
04.05 gasserian ganglion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.06', 'nerve (cranial) (peripheral) NEC
04.06 nerve (cranial) (peripheral) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.07', 'Destruction -lesion (local) --- Cont.
- nerve (peripheral)
04.07 nerve (peripheral)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.11', 'Operations on cranial and peripheral nerves
- Diagnostic procedures on peripheral nervous system
-- Closed [percutaneous] [needle] biopsy of cranial or peripheral 04.11
04.11 Closed [percutaneous] [needle] biopsy of cranial or peripheral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.12', 'Operations on cranial and peripheral nerves
- Diagnostic procedures on peripheral nervous system
-- Open biopsy of cranial or peripheral nerve or ganglion 04.12
04.12 Open biopsy of cranial or peripheral nerve or ganglion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.2', 'cryoanalgesia nerve (cranial)
-- (peripheral)
04.2 (peripheral)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.3', 'nerve (cranial) (peripheral)
04.3 nerve (cranial) (peripheral)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.41', 'nerve (peripheral) NEC
- trigeminal (root)
04.41 trigeminal (root)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.42', 'ganglion (peripheral) NEC
- cranial NEC
04.42 cranial NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.43', 'median nerve
04.43 median nerve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.44', 'tarsal tunnel
04.44 tarsal tunnel', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.49', 'ganglion (peripheral) NEC
04.49 ganglion (peripheral) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.5', 'Operations on cranial and peripheral nerves
- Cranial or peripheral nerve graft 04.5
04.5 Cranial or peripheral nerve graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.6', 'nerve (cranial) (peripheral) (radial
-- anterior) (ulnar)
04.6 anterior) (ulnar)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.71', 'Anastomosis
- facial-hypoglossal nerve
04.71 facial-hypoglossal nerve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.72', 'accessory-facial nerve
04.72 accessory-facial nerve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.73', 'accessory-hypoglossal nerve
04.73 accessory-hypoglossal nerve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.75', 'neuroplasty
04.75 neuroplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.76', 'Operations on cranial and peripheral nerves
- Other cranial or peripheral neuroplasty
-- Repair of old traumatic injury of cranial and peripheral nerves 04.76
04.76 Repair of old traumatic injury of cranial and peripheral nerves', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.79', 'Reattachment-extremity
- nerve (peripheral)
04.79 nerve (peripheral)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.80', 'Operations on cranial and peripheral nerves
- Injection into peripheral nerve
-- Peripheral nerve injection, not otherwise specified 04.80
04.80 Peripheral nerve injection, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.81', 'gasserian ganglion
04.81 gasserian ganglion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.89', 'Operations on cranial and peripheral nerves
- Injection into peripheral nerve
-- Injection of other agent, except neurolytic 04.89
04.89 Injection of other agent, except neurolytic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.91', 'nerve (cranial) (peripheral)
04.91 nerve (cranial) (peripheral)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.92', 'Operations on cranial and peripheral nerves
- Other operations on cranial and peripheral nerves
-- Implantation or replacement of peripheral neurostimulator lead(s) 04.92
04.92 Implantation or replacement of peripheral neurostimulator lead(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.93', 'Removal electrodes
- carotid sinus
04.93 carotid sinus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('04.99', 'ganglia NEC
04.99 ganglia NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.0', 'ganglion, sympathetic
05.0 ganglion, sympathetic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.11', 'Biopsy
- sympathetic nerve
05.11 sympathetic nerve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.19', 'Procedure -diagnostic
- ganglion (cranial) (peripheral)
-- sympathetic
05.19 sympathetic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.21', 'sphenopalatine (Meckel''s)
05.21 sphenopalatine (Meckel''s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.22', 'Neurectomy (cranial) (infraorbital)
- paracervical
05.22 paracervical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.23', 'lumbar sympathetic
05.23 lumbar sympathetic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.24', 'hypogastric
05.24 hypogastric', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.25', 'arterial
05.25 arterial', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.29', 'Destruction -lesion (local) --- Cont.
- nerve (peripheral)
-- sympathetic
05.29 sympathetic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.31', 'caudal
-- ganglion or plexus
05.31 ganglion or plexus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.32', 'Injection-nerve
- sympathetic
-- alcohol
05.32 alcohol', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.39', 'Injection-nerve
- sympathetic
05.39 sympathetic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.81', 'nerve (cranial) (peripheral)
- sympathetic
05.81 sympathetic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.89', 'ganglia NEC
- sympathetic
05.89 sympathetic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('05.9', 'Operation
- nervous system NEC
05.9 nervous system NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.01', 'Aspiration
- thyroid (field) (gland)
06.01 thyroid (field) (gland)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.02', 'Aspiration
- thyroid (field) (gland)
-- postoperative
06.02 postoperative', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.09', 'radical
- TO PROCEDURES (FY10)
---- Division
----- thyroid (field) (gland)
06.09 thyroid (field) (gland)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.11', 'Biopsy
- thyroid gland NEC
06.11 thyroid gland NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.12', 'Biopsy
- thyroid gland NEC
-- open
06.12 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.13', 'Operations on thyroid and parathyroid glands
- Diagnostic procedures on thyroid and parathyroid glands
-- Biopsy of parathyroid gland 06.13
06.13 Biopsy of parathyroid gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.19', '(for dental
- TO PROCEDURES (FY10)
---- Procedure -diagnostic
----- parathyroid gland
06.19 parathyroid gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.2', 'inguinal (with removal of portion of remaining lobe)
06.2 inguinal (with removal of portion of remaining lobe)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.31', 'Operations on thyroid and parathyroid glands
- Other partial thyroidectomy
-- Excision of lesion of thyroid 06.31
06.31 Excision of lesion of thyroid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.39', 'NEC stomach
---- Isthmectomy, thyroid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.4', '[PEEP] Thoracectomy
- TO PROCEDURES (FY10)
---- Thyroidectomy NEC
----- complete or total
06.4 complete or total', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.50', '[PEEP] Thoracectomy
- TO PROCEDURES (FY10)
---- Thyroidectomy NEC
----- Thyroidectomy, substernal
06.50 Thyroidectomy, substernal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.51', 'Operations on thyroid and parathyroid glands
- Substernal thyroidectomy
-- Partial substernal thyroidectomy 06.51
06.51 Partial substernal thyroidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.52', '[PEEP] Thoracectomy
- TO PROCEDURES (FY10)
---- Thyroidectomy NEC
----- (transsternal route)
06.52 (transsternal route)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.6', '[PEEP] Thoracectomy
- TO PROCEDURES (FY10)
---- Thyroidectomy NEC
----- transoral route (lingual)
06.6 transoral route (lingual)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.7', 'cyst
- thyroglossal (with resection of
-- bone)
06.7 bone)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.81', 'Operations on thyroid and parathyroid glands
- Parathyroidectomy
-- Complete parathyroidectomy 06.81
06.81 Complete parathyroidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.89', 'Operations on thyroid and parathyroid glands
- Parathyroidectomy
-- Other parathyroidectomy 06.89
06.89 Other parathyroidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.91', 'isthmus
- thyroid
06.91 thyroid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.92', 'Ligation
- thyroid vessel (artery) (vein)
06.92 thyroid vessel (artery) (vein)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.93', 'Operations on thyroid and parathyroid glands
- Other operations on thyroid (region) and parathyroid
-- Suture of thyroid gland 06.93
06.93 Suture of thyroid gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.94', 'thyroid tissue
06.94 thyroid tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.95', 'Reimplantation
- parathyroid tissue (heterotopic)
-- (orthotopic)
06.95 (orthotopic)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.98', 'axis) 39.91 thoracoscopic, NEC
----- thyroid gland NEC
06.98 thyroid gland NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('06.99', 'Operation
- parathyroid gland(s) NEC
06.99 parathyroid gland(s) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.00', 'adrenal (gland)
- field
07.00 field', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.01', 'adrenal (gland)
- field
-- unilateral
07.01 unilateral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.02', 'adrenal (gland)
- field
-- bilateral
07.02 bilateral', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.16', 'Biopsy
- thymus
07.16 thymus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.17', 'Operations on other endocrine glands
- Diagnostic procedures on adrenal glands, pituitary gland, pineal
-- Biopsy of pineal gland 07.17
07.17 Biopsy of pineal gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.19', 'Procedure -diagnostic
- hypophysis
07.19 hypophysis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.21', 'Operations on other endocrine glands
- Partial adrenalectomy
-- Excision of lesion of adrenal gland 07.21
07.21 Excision of lesion of adrenal gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.22', 'site
- 28.6 vaccine
---- Adrenalectomy (unilateral)
07.22 Adrenalectomy (unilateral)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.29', 'site
- 28.6 vaccine
---- with partial removal of remaining gland
07.29 with partial removal of remaining gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.3', 'site
- 28.6 vaccine
---- bilateral
07.3 bilateral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.41', 'adrenal (gland)
07.41 adrenal (gland)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.42', 'radical
- TO PROCEDURES (FY10)
---- Division
----- adrenal gland
07.42 adrenal gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.43', '(for Laryngotracheoscopy
- TO PROCEDURES (FY10)
---- Ligation
----- adrenal vessel (artery) (vein)
07.43 adrenal vessel (artery) (vein)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.44', 'Suture (laceration)
- adrenal (gland)
07.44 adrenal (gland)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.49', 'Operation
- nerve (cranial) (peripheral) NEC
-- adrenal NEC
07.49 adrenal NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.51', 'Exploration
- pineal (gland)
-- field
07.51 field', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.52', 'Exploration
- pineal (gland)
07.52 pineal (gland)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.53', 'pineal gland (complete) (total)
- partial
07.53 partial', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.54', 'pineal gland (complete) (total)
07.54 pineal gland (complete) (total)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.59', 'Operations on other endocrine glands
- Operations on pineal gland
-- Other operations on pineal gland 07.59
07.59 Other operations on pineal gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.61', 'Hypophysectomy (complete) (total)
- partial or subtotal
-- transfrontal approach
07.61 transfrontal approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.62', 'Operations on other endocrine glands
- Hypophysectomy
-- Partial excision of pituitary gland, transsphenoidal approach 07.62
07.62 Partial excision of pituitary gland, transsphenoidal approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.63', 'hypophyseal stalk
-- Hypophysectomy, partial
07.63 Hypophysectomy, partial', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.64', 'Ablation
- pituitary
-- implantation (strontium-yttrium)
--- transfrontal approach
07.64 transfrontal approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.68', 'Ablation
- pituitary
-- implantation (strontium-yttrium)
---- NEC
07.68 NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.69', 'Ablation
- pituitary
07.69 pituitary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.71', 'Exploration
- pituitary (gland)
-- fossa
07.71 fossa', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.72', 'craniobuccal pouch
07.72 craniobuccal pouch', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.79', 'Insertion -pacemaker
- pack
-- sella turcica
07.79 sella turcica', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.80', 'Thymectomy
07.80 Thymectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.81', 'Partial (open) (other)
07.81 Partial (open) (other)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.82', 'Total (open) (other)
07.82 Total (open) (other)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.83', 'Partial (open) (other)
- thoracoscopic
07.83 thoracoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.84', 'Total (open) (other)
- thoracoscopic
07.84 thoracoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.91', 'Operations on other endocrine glands
- Other operations on thymus
-- Exploration of thymus field 07.91
07.91 Exploration of thymus field', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.92', 'Aspiration
- thymus
07.92 thymus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.93', 'also hand
- 59.3 thymus (gland)
07.93 59.3 thymus (gland)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.94', 'thymus
07.94 thymus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.95', 'Aspiration
- thoracoscopic
07.95 thoracoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.98', 'axis) 39.91 thoracoscopic, NEC
07.98 axis) 39.91 thoracoscopic, NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('07.99', 'transcervical
07.99 transcervical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.01', 'Operations on eyelids
- Incision of eyelid
-- Incision of lid margin 08.01
08.01 Incision of lid margin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.02', 'division or severing
08.02 division or severing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.09', 'Blepharotomy
08.09 Blepharotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.11', 'Operations on eyelids
- Diagnostic procedures on eyelid
-- Biopsy of eyelid 08.11
08.11 Biopsy of eyelid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.19', 'Procedure -diagnostic
- eyelid
08.19 eyelid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.20', 'Ciliectomy (ciliary body)
- eyelid margin
08.20 eyelid margin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.21', 'Incision (and drainage)
- chalazion
-- with removal of capsule
08.21 with removal of capsule', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.22', 'Operations on eyelids
- Excision or destruction of lesion or tissue of eyelid
-- Excision of other minor lesion of eyelid 08.22
08.22 Excision of other minor lesion of eyelid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.23', 'Operations on eyelids
- Excision or destruction of lesion or tissue of eyelid
-- Excision of major lesion of eyelid, partial-thickness 08.23
08.23 Excision of major lesion of eyelid, partial-thickness', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.24', 'Excision
- tarsal plate (eyelid)
-- by wedge resection
08.24 by wedge resection', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.25', 'Cryotherapy
- eyelid
08.25 eyelid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.31', 'blepharoptosis
- by
-- suture
08.31 suture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.32', 'Crawford operation (tarso-frontalis
- of eyelid)
08.32 of eyelid)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.33', 'levator palpebrae
08.33 levator palpebrae', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.34', 'blepharoptosis
- levator muscle technique
08.34 levator muscle technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.35', 'Fasanella-Servatt operation
- (blepharoptosis repair)
08.35 (blepharoptosis repair)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.36', 'Correction
- blepharoptosis
-- blepharoptosis
08.36 blepharoptosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.37', 'ptosis overcorrection
08.37 ptosis overcorrection', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.38', 'Correction
- eyelid
-- retraction
08.38 retraction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.41', 'Operations on eyelids
- Repair of entropion or ectropion
-- Repair of entropion or ectropion by thermocauterization 08.41
08.41 Repair of entropion or ectropion by thermocauterization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.42', 'Suture (laceration)
- entropion
08.42 entropion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.43', 'device pupil
- anus) subcutaneous tunnel
----- resection)
08.43 resection)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.44', 'Wheeler operation
- entropion repair
08.44 entropion repair', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.49', 'Operations on eyelids
- Repair of entropion or ectropion
-- Other repair of entropion or ectropion 08.49
08.49 Other repair of entropion or ectropion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.51', 'Canthotomy
08.51 Canthotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.52', 'Blepharorrhaphy
08.52 Blepharorrhaphy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.59', 'Canthoplasty
08.59 Canthoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.61', 'Operations on eyelids
- Reconstruction of eyelid with flaps or grafts
-- Reconstruction of eyelid with skin flap or graft 08.61
08.61 Reconstruction of eyelid with skin flap or graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.62', 'eyelid
- free mucous membrane
08.62 free mucous membrane', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.63', 'Graft, grafting -skin
-- eyelid or eyebrow
08.63 eyelid or eyebrow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.64', 'flap (advanced) (rotating) (sliding)
- tarsoconjunctival
08.64 tarsoconjunctival', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.69', 'eyebrow
-- with graft
08.69 with graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.70', 'Operations on eyelids
- Other reconstruction of eyelid
-- Reconstruction of eyelid, not otherwise specified 08.70
08.70 Reconstruction of eyelid, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.71', 'cilia base
08.71 cilia base', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.72', '(with mucous membrane
- 08.38 full-thickness
----- partial-thickness
08.72 partial-thickness', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.73', '(with mucous membrane
- 08.38 full-thickness
----- involving lid margin
08.73 involving lid margin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.74', '(with mucous membrane
- 08.38 full-thickness
08.74 08.38 full-thickness', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.81', 'Repair -eyelid
- linear
08.81 linear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.82', 'Repair -eyelid
- partial-thickness
-- involving lid margin
08.82 involving lid margin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.83', 'Repair -eyelid
- partial-thickness
08.83 partial-thickness', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.84', 'Operations on eyelids
- Other repair of eyelid
-- Repair of laceration involving lid margin, full-thickness 08.84
08.84 Repair of laceration involving lid margin, full-thickness', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.85', 'Operations on eyelids
- Other repair of eyelid
-- Other repair of laceration of eyelid, full-thickness 08.85
08.85 Other repair of laceration of eyelid, full-thickness', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.86', 'Removal
- redundant skin, eyelid
08.86 redundant skin, eyelid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.87', 'device tibial component
- head at peritoneal site
----- upper
08.87 upper', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.89', 'Operations on eyelids
- Other repair of eyelid
-- Other eyelid repair 08.89
08.89 Other eyelid repair', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.91', 'stones
---- Enlargement
----- electrosurgical
08.91 electrosurgical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.92', 'stones
---- Enlargement
----- cryosurgical
08.92 cryosurgical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.93', 'stones
---- Enlargement
----- eyebrow (forceps)
08.93 eyebrow (forceps)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('08.99', 'canthus NEC
08.99 canthus NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.0', 'lacrimal ductules
09.0 lacrimal ductules', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.11', 'lacrimal
- gland
09.11 gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.12', 'lacrimal
- sac
09.12 sac', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.19', 'Procedure -diagnostic
- lacrimal (system)
09.19 lacrimal (system)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.20', 'Operations on lacrimal system
- Excision of lesion or tissue of lacrimal gland
-- Excision of lacrimal gland, not otherwise specified 09.20
09.20 Excision of lacrimal gland, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.21', 'Excision
- fistula
-- gland
09.21 gland', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.41', 'lacrimal
- punctum
09.41 punctum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.42', 'Cannulation
- lacrimal apparatus
09.42 lacrimal apparatus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.43', 'nasolacrimal duct (retrograde)
09.43 nasolacrimal duct (retrograde)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.44', 'lacrimonasal duct
09.44 lacrimonasal duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.49', 'Operations on lacrimal system
- Manipulation of lacrimal passage
-- Other manipulation of lacrimal passage 09.49
09.49 Other manipulation of lacrimal passage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.51', 'lacrimal
- punctum
09.51 punctum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.52', 'lacrimal
- canaliculus
09.52 canaliculus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.53', 'lacrimal
- sac
09.53 sac', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.59', 'lacrimal
- passage NEC
09.59 passage NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.6', 'Destruction -lesion (local) --- Cont.
- lacrimal sac
09.6 lacrimal sac', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.71', 'Correction
- everted lacrimal punctum
09.71 everted lacrimal punctum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.72', 'Repair hernia -ventral
- lacrimal system NEC
-- punctum
09.72 punctum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.73', 'Canaliculoplasty
09.73 Canaliculoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.81', 'Anastomosis
- nasolacrimal
09.81 nasolacrimal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.82', 'Anastomosis
- lacrimal sac to conjunctiva
09.82 lacrimal sac to conjunctiva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.83', 'Stallard operation
- with insertion of tube or stent
09.83 with insertion of tube or stent', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.91', 'lacrimal punctum
09.91 lacrimal punctum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('09.99', 'Repair hernia -ventral
- lacrimal system NEC
09.99 lacrimal system NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.0', 'Removal -foreign body
-- by incision
10.0 by incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.1', 'radical
----- blood vessels, cornea
10.1 blood vessels, cornea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.21', 'Biopsy -bone
- conjunctiva
10.21 conjunctiva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.29', 'gastric cervix
- 09.42 ciliary body
----- conjunctiva
10.29 conjunctiva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.31', 'Operations on conjunctiva
- Excision or destruction of lesion or tissue of conjunctiva
-- Excision of lesion or tissue of conjunctiva 10.31
10.31 Excision of lesion or tissue of conjunctiva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.32', 'Operations on conjunctiva
- Excision or destruction of lesion or tissue of conjunctiva
-- Destruction of lesion of conjunctiva 10.32
10.32 Destruction of lesion of conjunctiva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.33', 'trachoma follicles
10.33 trachoma follicles', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.41', 'conjunctiva (free) (mucosa)
- for symblepharon repair
10.41 for symblepharon repair', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.42', 'Operations on conjunctiva
- Conjunctivoplasty
-- Reconstruction of conjunctival cul-de-sac with free graft 10.42
10.42 Reconstruction of conjunctival cul-de-sac with free graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.43', 'Operations on conjunctiva
- Conjunctivoplasty
-- Other reconstruction of conjunctival cul-de-sac 10.43
10.43 Other reconstruction of conjunctival cul-de-sac', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.44', 'conjunctiva (free) (mucosa)
10.44 conjunctiva (free) (mucosa)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.49', 'Repair
- conjunctiva NEC
10.49 conjunctiva NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.5', 'Operations on conjunctiva
- Lysis of adhesions of conjunctiva and eyelid 10.5
10.5 Lysis of adhesions of conjunctiva and eyelid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.6', 'Repair
- conjunctiva NEC
-- laceration
10.6 laceration', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('10.91', 'Operations on conjunctiva
- Other operations on conjunctiva
-- Subconjunctival injection 10.91
10.91 Subconjunctival injection', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.0', 'foreign body
- cornea
11.0 cornea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.1', 'Giffod
- keratotomy (delimiting)
11.1 keratotomy (delimiting)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.21', 'Removal
- corneal epithelium
-- for smear or culture
11.21 for smear or culture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.22', 'Biopsy -bone
- cornea
11.22 cornea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.29', 'gastric cervix
- 09.42 ciliary body
----- cornea
11.29 cornea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.31', 'Dissection
- pterygium (with reposition)
11.31 pterygium (with reposition)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.32', 'pterygium (simple)
- with corneal graft
11.32 with corneal graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.39', 'pterygium (simple)
11.39 pterygium (simple)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.41', 'corneal epithelium
11.41 corneal epithelium', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.42', 'Destruction -lesion (local) --- Cont.
- cornea NEC
-- electrocauterization
11.42 electrocauterization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.43', 'Cryotherapy
- corneal lesion (ulcer)
11.43 corneal lesion (ulcer)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.49', 'Destruction -lesion (local) --- Cont.
- cornea NEC
11.49 cornea NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.51', 'filtering bleb (corneal) (scleral) (by
- by
-- suture
11.51 suture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.52', 'Repair
- cornea NEC
-- postoperative dehiscence
11.52 postoperative dehiscence', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.53', 'Repair
- cornea NEC
-- conjunctival flap
11.53 conjunctival flap', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.59', 'Correction
- cornea NEC
11.59 cornea NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.60', 'cornea
11.60 cornea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.61', 'lamellar (nonpenetrating) (with
- with autograft
11.61 with autograft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.62', 'lamellar (nonpenetrating) (with
-- homograft)
11.62 homograft)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.63', 'penetrating (full-thickness) (with
- with autograft
11.63 with autograft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.64', 'penetrating (full-thickness) (with
-- homograft)
11.64 homograft)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.69', 'specified type NEC
11.69 specified type NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.71', 'Correction
- cornea NEC
-- keratomileusis
11.71 keratomileusis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.72', 'Correction
- cornea NEC
-- keratophakia
11.72 keratophakia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.73', 'cornea
11.73 cornea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.74', 'axis) 39.91 thoracoscopic, NEC
----- TKP (thermokeratoplasty)
11.74 TKP (thermokeratoplasty)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.75', 'Correction
- cornea NEC
-- radial keratotomy
11.75 radial keratotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.76', 'Correction
- cornea NEC
-- epikeratophakia
11.76 epikeratophakia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.79', 'Correction
- cornea NEC
-- refractive NEC
11.79 refractive NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.91', 'root Take-down
---- Tattooing
----- cornea
11.91 cornea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.92', 'Removal -gallstones
- implant
-- cornea
11.92 cornea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('11.99', 'Operations on cornea
- Other operations on cornea
-- Other 11.99
11.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12', 'Electrocardiogram (with
12 Electrocardiogram (with', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.00', 'Removal -foreign body
-- anterior chamber
12.00 anterior chamber', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.01', 'foreign body
- anterior chamber, eye
12.01 anterior chamber, eye', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.02', 'Removal -foreign body
-- by incision
12.02 by incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.11', 'with transfixion
12.11 with transfixion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.12', 'Iridotomy
12.12 Iridotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.13', 'prolapsed iris (in wound)
12.13 prolapsed iris (in wound)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.14', 'Iridectomy (basal) (buttonhole) (optical)
- (peripheral) (total)
12.14 (peripheral) (total)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.21', 'anterior chamber, eye (therapeutic)
- diagnostic
12.21 diagnostic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.22', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Diagnostic procedures on iris, ciliary body, sclera, and anterior
-- Biopsy of iris 12.22
12.22 Biopsy of iris', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.29', 'Procedure -diagnostic
- eye
-- anterior chamber
12.29 anterior chamber', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.31', 'goniosynechiae
12.31 goniosynechiae', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.32', 'anterior synechiae (with injection
-- or liquid)
12.32 or liquid)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.33', 'posterior synechiae
12.33 posterior synechiae', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.34', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Iridoplasty and coreoplasty
-- Lysis of corneovitreal adhesions 12.34
12.34 Lysis of corneovitreal adhesions', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.35', 'Needling
- pupillary membrane (iris)
12.35 pupillary membrane (iris)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.39', 'Iridoplasty NEC
12.39 Iridoplasty NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.40', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Excision or destruction of lesion of iris and ciliary body
-- Removal of lesion of anterior segment of eye, not otherwise 12.40
12.40 Removal of lesion of anterior segment of eye, not otherwise', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.41', 'Cryotherapy
- iris
12.41 iris', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.42', 'Destruction -lesion (local) --- Cont.
- iris (nonexcisional) NEC
-- by excision
12.42 by excision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.43', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Excision or destruction of lesion of iris and ciliary body
-- Destruction of lesion of ciliary body, nonexcisional 12.43
12.43 Destruction of lesion of ciliary body, nonexcisional', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.44', 'Ciliectomy (ciliary body)
12.44 Ciliectomy (ciliary body)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.51', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Facilitation of intraocular circulation
-- Goniopuncture without goniotomy 12.51
12.51 Goniopuncture without goniotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.52', 'Barkan operation (goniotomy)
12.52 Barkan operation (goniotomy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.53', 'with goniopuncture
12.53 with goniopuncture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.54', 'Trabeculotomy ab externo
12.54 Trabeculotomy ab externo', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.55', 'Ciliarotomy
12.55 Ciliarotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.59', 'Trabeculodialysis
12.59 Trabeculodialysis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.61', 'Elliot operation (scleral trephination
- with iridectomy)
12.61 with iridectomy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.62', 'with
- scleral
-- thermocauterization
12.62 thermocauterization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.63', 'Holth operation
- iridencleisis
12.63 iridencleisis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.64', 'Trabeculectomy ab externo
12.64 Trabeculectomy ab externo', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.65', 'Holth operation
- sclerectomy
12.65 sclerectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.66', 'filtering bleb, corneoscleral
-- (post-glaucoma)
12.66 (post-glaucoma)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.69', 'Iridosclerotomy
12.69 Iridosclerotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.71', 'Cycloelectrolysis
12.71 Cycloelectrolysis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.72', 'Cryotherapy
- ciliary body
12.72 ciliary body', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.73', 'Cyclophotocoagulation
12.73 Cyclophotocoagulation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.74', 'Cycloanemization
12.74 Cycloanemization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.79', 'Neurectomy (cranial) (infraorbital)
- opticociliary
12.79 opticociliary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.81', 'Repair
- conjunctiva NEC
-- with scleral repair
12.81 with scleral repair', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.82', 'filtering bleb (corneal) (scleral) (by
- by
-- scleroplasty
12.82 scleroplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.83', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Operations on sclera
-- Revision of operative wound of anterior segment, not elsewhere 12.83
12.83 Revision of operative wound of anterior segment, not elsewhere', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.84', 'Excision lesion -pituitary
- sclera
12.84 sclera', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.85', 'also hand
- 35.51 rectum NEC
----- with graft
12.85 with graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.86', 'also hand
- 35.51 rectum NEC
----- staphyloma NEC
12.86 staphyloma NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.87', 'Reinforcement
- sclera NEC
-- with graft
12.87 with graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.88', 'Reinforcement
- sclera NEC
12.88 sclera NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.89', 'Exploration
- sclera (by incision)
12.89 sclera (by incision)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.91', 'anterior chamber (eye)
12.91 anterior chamber (eye)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.92', 'Injection (into) (hypodermically)
- anterior chamber, eye (air) (liquid)
-- (medication)
12.92 (medication)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.93', 'Operations on iris, ciliary body, sclera, and anterior chamber
- Other operations on iris, ciliary body, and anterior chamber
-- Removal or destruction of epithelial downgrowth from anterior 12.93
12.93 Removal or destruction of epithelial downgrowth from anterior', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.97', 'Operation
- iris NEC
12.97 iris NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.98', 'ciliary body NEC
12.98 ciliary body NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('12.99', 'Operation
- anterior chamber (eye) NEC
12.99 anterior chamber (eye) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.00', 'Operations on lens
- Removal of foreign body from lens
-- Removal of foreign body from lens, not otherwise specified 13.00
13.00 Removal of foreign body from lens, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.01', 'foreign body
- lens
13.01 lens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.02', 'Operations on lens
- Removal of foreign body from lens
-- Removal of foreign body from lens without use of magnet 13.02
13.02 Removal of foreign body from lens without use of magnet', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.11', 'cataract
- cryoextraction (intracapsular approach)
-- temporal inferior route (in presence
--- of fistulization bleb)
13.11 of fistulization bleb)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.19', 'Cryotherapy
- cataract
13.19 cataract', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.2', 'Needling
- lens (capsule)
13.2 lens (capsule)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.3', 'cataract
13.3 cataract', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.41', 'Phacoemulsification
- cataract
-- with aspiration 13.41
13.41 Phacoemulsification and aspiration of cataract', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.42', 'cataract
- with
-- posterior route
13.42 posterior route', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.43', 'cataract
- with
-- phacofragmentation
13.43 phacofragmentation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.51', 'Capsulectomy
- lens
-- with extraction of lens
13.51 with extraction of lens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.59', 'Operations on lens
- Other extracapsular extraction of lens
-- Other extracapsular extraction of lens 13.59
13.59 Other extracapsular extraction of lens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.64', 'cataract
- after cataract (by)
-- capsulotomy
13.64 capsulotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.65', 'Capsulectomy
- lens
13.65 lens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.66', 'cataract
- after cataract (by)
-- mechanical fragmentation
13.66 mechanical fragmentation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.69', 'Operations on lens
- Other cataract extraction
-- Other cataract extraction 13.69
13.69 Other cataract extraction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.70', 'lens, prosthetic (intraocular)
13.70 lens, prosthetic (intraocular)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.72', 'Insertion
- lens, prosthetic (intraocular)
-- secondary (subsequent to cataract extraction) 13.72
13.72 Secondary insertion of intraocular lens prosthesis', '[{"type":"includes","text":"Phacoemulsification with insertion of intraocular lens prosthesis (posterior chamber)"}]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.8', 'Removal -gallstones
- implant
-- lens (prosthetic)
13.8 lens (prosthetic)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.90', 'Operations on lens
- Other operations on lens
-- Operation on lens, Not Elsewhere Classified 13.90
13.90 Operation on lens, Not Elsewhere Classified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('13.91', 'telescope (IMT) (miniature)
13.91 telescope (IMT) (miniature)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.00', 'Removal -foreign body
-- choroid (by incision)
14.00 choroid (by incision)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.01', 'foreign body
- choroid
14.01 choroid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.02', 'Removal -foreign body
-- without use of magnet
14.02 without use of magnet', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.11', 'Aspiration
- vitreous (and replacement)
-- diagnostic
14.11 diagnostic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.19', 'Procedure -diagnostic
- eye
-- posterior chamber
14.19 posterior chamber', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.21', 'Repair, esophagocutaneous
- TO PROCEDURES (FY10)
---- Coagulation, electrocoagulation
----- destruction of lesion
14.21 destruction of lesion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.22', 'Cryotherapy
- retina (for)
-- destruction of lesion
14.22 destruction of lesion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.23', 'C-Urea breath test
- Destruction of lesion of retina and choroid
-- Destruction of chorioretinal lesion by xenon arc photocoagulation 14.23
14.23 Destruction of chorioretinal lesion by xenon arc photocoagulation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.24', 'Photocoagulation
- retinal
-- laser 14.24
14.24 Destruction of lesion of retina by laser photocoagulation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.25', 'Photocoagulation
- retina
-- destruction of lesion
14.25 destruction of lesion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.26', 'Therapy
- radiation
-- retinal lesion
14.26 retinal lesion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.27', 'C-Urea breath test
- Destruction of lesion of retina and choroid
-- Destruction of chorioretinal lesion by implantation of radiation 14.27
14.27 Destruction of chorioretinal lesion by implantation of radiation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.29', 'Destruction
- chorioretinopathy
-- lesion, choroid
14.29 lesion, choroid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.31', 'Repair, esophagocutaneous
- TO PROCEDURES (FY10)
---- Coagulation, electrocoagulation
----- repair for tear
14.31 repair for tear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.32', 'Cryoretinopexy (for)
- repair of tear or defect
14.32 repair of tear or defect', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.33', 'region Pharyngorrhaphy
---- Phlebectomy
----- repair of tear or defect
14.33 repair of tear or defect', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.34', 'region Pharyngorrhaphy
---- Phlebectomy
----- repair of tear or defect
14.34 repair of tear or defect', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.35', 'Photocoagulation
- retina
-- repair of tear or defect
14.35 repair of tear or defect', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.39', 'also hand
- 35.51 rectum NEC
----- tear or defect
14.39 tear or defect', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.41', 'Buckling, scleral
- with
-- implant (silicone) (vitreous)
14.41 implant (silicone) (vitreous)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.49', 'Buckling, scleral
14.49 Buckling, scleral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.51', 'Reattachment-extremity
- retina (and choroid) NEC
-- diathermy
14.51 diathermy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.52', 'Cryoretinopexy (for)
- reattachment
14.52 reattachment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.53', 'Reattachment-extremity
- retina (and choroid) NEC
-- photocoagulation
--- xenon arc
14.53 xenon arc', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.54', 'Reattachment-extremity
- retina (and choroid) NEC
-- photocoagulation
--- laser
14.54 laser', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.55', 'Photocoagulation
- retina
-- reattachment
14.55 reattachment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.59', 'Reattachment-extremity
- retina (and choroid) NEC
14.59 retina (and choroid) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.6', 'Removal -gallstones
- implant
-- posterior segment
14.6 posterior segment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.71', 'vitreous (with replacement)
- anterior approach (partial)
14.71 anterior approach (partial)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.72', 'Aspiration
- vitreous (and replacement)
14.72 vitreous (and replacement)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.73', 'Division
- vitreous, cicatricial bands (posterior
-- anterior approach
14.73 anterior approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.74', 'Division
- vitreous, cicatricial bands (posterior
-- approach)
14.74 approach)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.75', 'vitreous (silicone)
14.75 vitreous (silicone)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.79', 'vitreous NEC
14.79 vitreous NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('14.9', 'choroid NEC
14.9 choroid NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.01', 'muscle
- extraocular
15.01 extraocular', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.09', 'Procedure -diagnostic
- ocular
-- muscle
15.09 muscle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.11', 'Recession
- extraocular muscle
15.11 extraocular muscle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.12', 'Tenotomy
- eye
15.12 eye', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.13', 'Excision lesion -pituitary
- tendon
-- ocular
15.13 ocular', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.19', 'with globe
----- globe
15.19 globe', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.21', 'extraocular muscle NEC
15.21 extraocular muscle NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.22', 'eye muscle
15.22 eye muscle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.29', 'with globe
----- single
15.29 single', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.3', 'eye muscle
- multiple
15.3 multiple', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.4', 'Operations on extraocular muscles
- Other operations on two or more extraocular muscles, one or 15.4
15.4 Other operations on two or more extraocular muscles, one or', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.5', 'extraocular muscles
15.5 extraocular muscles', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.6', 'Revision -CRT-P
- extraocular muscle surgery
15.6 extraocular muscle surgery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.7', 'extraocular muscle, entrapped
15.7 extraocular muscle, entrapped', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('15.9', 'Attachment
- eye muscle
-- rectus to frontalis
15.9 rectus to frontalis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.01', 'Orbitotomy
- with
-- bone flap
16.01 bone flap', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.02', 'Orbitotomy
- with
-- insertion of implant
16.02 insertion of implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.09', 'orbit
16.09 orbit', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.1', 'Removal -foreign body
- orbit (by magnet)
-- by incision
16.1 by incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.21', 'ophthalmoscopic
16.21 ophthalmoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.22', 'Operations on orbit and eyeball
- Diagnostic procedures on orbit and eyeball
-- Diagnostic aspiration of orbit 16.22
16.22 Diagnostic aspiration of orbit', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.23', 'Operations on orbit and eyeball
- Diagnostic procedures on orbit and eyeball
-- Biopsy of eyeball and orbit 16.23
16.23 Biopsy of eyeball and orbit', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.29', 'Procedure -diagnostic
- eye
16.29 eye', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.31', 'assist eyeball)
16.31 assist eyeball)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.39', 'Evisceration
- eyeball
16.39 eyeball', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.41', 'Implant, implantation
- eye (Iowa type)
-- integrated
16.41 integrated', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.42', 'Insertion -prosthesis
- ocular (secondary)
-- with orbital exenteration
16.42 with orbital exenteration', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.49', 'stones
---- Enlargement
----- eyeball
16.49 eyeball', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.51', 'Orbitomaxillectomy, radical
16.51 Orbitomaxillectomy, radical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.52', 'site
----- therapeutic removal of bone
16.52 therapeutic removal of bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.59', 'node, multi-source
----- orbit
16.59 orbit', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.61', 'Implant, implantation
- eye (Iowa type)
16.61 eye (Iowa type)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.62', 'Reinsertion
- implant (expelled) (extruded)
-- orbital
16.62 orbital', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.63', 'eye socket
- with graft
16.63 with graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.64', 'Enlargement ---Cont
- orbit (eye)
16.64 orbit (eye)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.65', 'Revision -CRT-P
- exenteration cavity
-- with secondary graft
16.65 with secondary graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.66', 'Revision -CRT-P
- exenteration cavity
16.66 exenteration cavity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.69', 'Insertion -electrode(s)
- globe, into eye socket
16.69 globe, into eye socket', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.71', 'Removal -gallstones
- implant
-- ocular
16.71 ocular', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.72', 'Removal -gallstones
- implant
-- orbit
16.72 orbit', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.81', 'orbit
- wound
16.81 wound', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.82', 'Operations on orbit and eyeball
- Repair of injury of eyeball and orbit
-- Repair of rupture of eyeball 16.82
16.82 Repair of rupture of eyeball', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.89', 'orbit
16.89 orbit', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.91', 'Injection-nerve
- optic
16.91 optic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.92', 'Dissection
- orbital fibrous bands
16.92 orbital fibrous bands', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.93', 'Destruction -lesion (local) --- Cont.
- eye NEC
16.93 eye NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.98', 'Operation
- orbit NEC
16.98 orbit NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('16.99', 'Operation
- ocular NEC
16.99 ocular NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.11', 'rod
- TO PROCEDURES (FY10)
---- Repair hernia -inguinal
----- prosthesis
17.11 prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.13', 'rod
- TO PROCEDURES (FY10)
---- Repair hernia -inguinal
----- NOS
17.13 NOS', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.21', 'Repair -hernia
- inguinal (unilateral)
-- bilateral
--- laparoscopic with graft
----- prosthesis
17.21 prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.22', 'Repair -hernia
- inguinal (unilateral)
-- bilateral
--- laparoscopic with graft
----- prosthesis
17.22 prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.23', 'Repair -hernia
- inguinal (unilateral)
-- bilateral
--- laparoscopic with graft
----- prosthesis
17.23 prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.24', 'Repair -hernia
- inguinal (unilateral)
-- bilateral
--- laparoscopic
17.24 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.31', 'also laparoscopic
17.31 also laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.32', 'Cecectomy (with resection of terminal
- laparoscopic
17.32 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.33', 'right (extended)
- laparoscopic
17.33 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.34', 'Resection colon
-- transverse
--- laparoscopic
17.34 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.35', 'left
- laparoscopic
17.35 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.36', 'also laparoscopic
----- laparoscopic
17.36 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.39', 'Other miscellaneous procedures
- Laparoscopic partial excision of large intestine
-- Other laparoscopic partial excision of large intestine 17.39
17.39 Other laparoscopic partial excision of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.4', 'Magnuson (-Stack) operation (arthroplasty
- for recurrent shoulder dislocation)
17.4 for recurrent shoulder dislocation)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.41', 'device tibial component
- head at peritoneal site
----- open
17.41 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.42', 'device tibial component
- head at peritoneal site
----- laparoscopic
17.42 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.43', 'device tibial component
- head at peritoneal site
----- percutaneous
17.43 percutaneous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.44', 'device tibial component
- head at peritoneal site
----- endoscopic
17.44 endoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.45', 'device tibial component
- head at peritoneal site
----- thoracoscopic
17.45 thoracoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.49', 'device tibial component
- head at peritoneal site
----- other and unspecified
17.49 other and unspecified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.51', 'CCM (implantation of cardiac contractility
- total system
17.51 total system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.52', 'Other miscellaneous procedures
- Implantation or replacement of cardiac contractility modulation 17.52
17.52 Implantation or replacement of cardiac contractility modulation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.61', 'lesion
- brain
17.61 brain', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.62', 'Laser interstitial thermal therapy-lesion
- thyroid
17.62 thyroid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.63', 'lesion
- liver
17.63 liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.69', 'Laser interstitial thermal therapy-lesion
- lung
17.69 lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('17.70', 'for cancer NEC
- CLO
17.70 CLO', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.01', 'Operations on external ear
- Incision of external ear
-- Piercing of ear lobe 18.01
18.01 Piercing of ear lobe', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.02', 'auditory canal, external
18.02 auditory canal, external', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.09', 'Incision (and drainage)
- skin
-- ear
18.09 ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.11', 'ear
18.11 ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.12', 'Operations on external ear
- Diagnostic procedures on external ear
-- Biopsy of external ear 18.12
18.12 Biopsy of external ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.19', '(for dental
----- external
18.19 external', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.21', 'Excision lesion -pituitary
- preauricular (ear)
18.21 preauricular (ear)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.29', 'ear
- external
18.29 external', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.31', 'Excision -lesion -artery
- auditory canal or meatus,external
-- radical
18.31 radical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.39', 'Amputation (cineplastic) (closed flap)
- ear, external
18.39 ear, external', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.4', 'Suture (laceration)
- ear, external
18.4 ear, external', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.5', 'Setback, ear
18.5 Setback, ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.6', 'Canaloplasty,external auditory meatus
18.6 Canaloplasty,external auditory meatus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.71', 'auricle,ear(with graft)(with implant)
18.71 auricle,ear(with graft)(with implant)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.72', 'Operations on external ear
- Other plastic repair of external ear
-- Reattachment of amputated ear 18.72
18.72 Reattachment of amputated ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.79', 'fistula
- cervicoaural
18.79 cervicoaural', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('18.9', 'Operation
- ear (external) NEC
18.9 ear (external) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.0', 'Mobilization
- stapes (transcrural)
19.0 stapes (transcrural)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.11', 'stapes foot plate(with vein graft)
- with incus replacement
19.11 with incus replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.19', 'Incudopexy
19.19 Incudopexy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.21', 'Revision
- stapedectomy NEC
-- with incus replacement (homograft)
--- (prosthesis)
19.21 (prosthesis)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.29', 'Revision
- stapedectomy NEC
19.29 stapedectomy NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.3', 'Ossiculectomy NEC
19.3 Ossiculectomy NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.4', 'Closure fistula
-- tympanic membrane
--- Tympanoplasty
19.4 Tympanoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.52', 'Reconstructive operations on middle ear
- Other tympanoplasty
-- Type II tympanoplasty 19.52
19.52 Type II tympanoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.53', 'Ossiculectomy NEC
- with
-- tympanoplasty
19.53 tympanoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.54', 'Reconstructive operations on middle ear
- Other tympanoplasty
-- Type IV tympanoplasty 19.54
19.54 Type IV tympanoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.55', 'ear
- tympanic
19.55 tympanic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.6', 'Ossiculectomy NEC
- with
-- revision
19.6 revision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('19.9', 'Lempert''s (endaural)
19.9 Lempert''s (endaural)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.01', 'myringotomy device (button) (tube)
- with intubation
20.01 with intubation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.09', 'Other operations on middle and inner ear
- Myringotomy
-- Other myringotomy 20.09
20.09 Other myringotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.1', 'Removal
- catheter (indwelling)
-- middle ear (tympanum)
20.1 middle ear (tympanum)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.21', 'Exploration
- mastoid
20.21 mastoid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.22', 'Exploration
- petrous pyramid air cells
20.22 petrous pyramid air cells', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.23', 'middle ear
20.23 middle ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.31', 'Other operations on middle and inner ear
- Diagnostic procedures on middle and inner ear
-- Electrocochleography 20.31
20.31 Electrocochleography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.32', 'Other operations on middle and inner ear
- Diagnostic procedures on middle and inner ear
-- Biopsy of middle and inner ear 20.32
20.32 Biopsy of middle and inner ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.39', '(for dental
----- inner and middle
20.39 inner and middle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.41', 'Other operations on middle and inner ear
- Mastoidectomy
-- Simple mastoidectomy 20.41
20.41 Simple mastoidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.42', 'Other operations on middle and inner ear
- Mastoidectomy
-- Radical mastoidectomy 20.42
20.42 Radical mastoidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.49', 'mastoid
20.49 mastoid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.51', 'ear
- middle
20.51 middle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.59', 'petrous pyramid
20.59 petrous pyramid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.61', 'ear
- inner (with graft)
20.61 inner (with graft)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.62', 'ear
- inner (with graft)
-- revision
20.62 revision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.71', 'Shunt
- semicircular subarachnoid
20.71 semicircular subarachnoid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.72', 'Ablation
- inner ear (cryosurgery) (ultrasound)
-- by injection
20.72 by injection', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.79', 'ear
- inner
20.79 inner', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.8', 'Cannulation
- Eustachian tube
20.8 Eustachian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.91', 'Other operations on middle and inner ear
- Other operations on inner and middle ear
-- Tympanosympathectomy 20.91
20.91 Tympanosympathectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.92', 'mastoidectomy
20.92 mastoidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.93', 'Closure fistula
-- oval window (ear)
20.93 oval window (ear)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.94', 'Other operations on middle and inner ear
- Other operations on inner and middle ear
-- Injection of tympanum 20.94
20.94 Injection of tympanum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.96', 'cochlear (electrode)
20.96 cochlear (electrode)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.97', 'cochlear (electrode)
- prosthetic device(electrode and
-- channel (single)
20.97 channel (single)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.98', 'cochlear (electrode)
- prosthetic device(electrode and
-- multiple
20.98 multiple', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('20.99', 'Attachment
- percutaneous
20.99 percutaneous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.00', 'epistaxis
21.00 epistaxis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.01', 'epistaxis
- by
-- packing (nasal) (anterior)
21.01 packing (nasal) (anterior)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.02', 'epistaxis
- by
-- posterior (and anterior)
21.02 posterior (and anterior)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.03', 'epistaxis
- by
-- coagulation (with packing)
21.03 coagulation (with packing)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.04', 'epistaxis
- by
-- ethmoidal
21.04 ethmoidal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.05', 'epistaxis
- by
-- maxillary (transantral)
21.05 maxillary (transantral)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.06', 'epistaxis
- by
-- external carotid
21.06 external carotid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.07', 'epistaxis
- by
-- excision of nasal mucosa with
--- grafting
21.07 grafting', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.09', 'epistaxis
- by
-- ligation of artery
21.09 ligation of artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.1', 'Chondrotomy
- nasal
21.1 nasal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.21', 'Rhinoscopy
21.21 Rhinoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.22', 'Operations on nose
- Diagnostic procedures on nose
-- Biopsy of nose 21.22
21.22 Biopsy of nose', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.29', 'Procedure -diagnostic
- nose, nasal
21.29 nose, nasal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.30', 'Destruction -lesion (local) --- Cont.
- nose
21.30 nose', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.31', 'Destruction -lesion (local) --- Cont.
- intranasal
21.31 intranasal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.32', 'Destruction -lesion (local) --- Cont.
- nose
-- specified NEC
21.32 specified NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.4', 'nose (complete) (extended) (partial)
-- (radical)
21.4 (radical)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.5', 'Chondrectomy---Cont
- nasal (submucous)
21.5 nasal (submucous)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.61', 'Cryotherapy
- nasal turbinates
21.61 nasal turbinates', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.62', 'turbinates (nasal)
21.62 turbinates (nasal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.69', 'also laparoscopic
- 81.40 Colposcopy
----- Conchectomy
21.69 Conchectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.71', 'Reduction-fracture --Cont.
-- nasal (closed)
21.71 nasal (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.72', 'Reduction-fracture --Cont.
-- open
21.72 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.81', 'nose (external) (internal)
21.81 nose (external) (internal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.82', 'Closure fistula
-- oronasal
21.82 oronasal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.83', 'nose (total) (with arm flap) (with
-- flap)
21.83 flap)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.84', 'Rhinoplasty (external) (internal) NEC
- revision
21.84 revision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.85', 'Rhinoplasty (external) (internal) NEC
- augmentation (with graft) (with
-- implant)
21.85 implant)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.86', 'Weir
- correction of nostrils
21.86 correction of nostrils', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.88', 'crushing of nasal septum
21.88 crushing of nasal septum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.89', 'nose
21.89 nose', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.91', 'Operations on nose
- Other operations on nose
-- Lysis of adhesions of nose 21.91
21.91 Lysis of adhesions of nose', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('21.99', 'nares
21.99 nares', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.00', 'mucocele, nasal sinus
22.00 mucocele, nasal sinus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.01', 'Cannulation
- antrum
22.01 antrum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.02', 'Cannulation
- nasal sinus (by puncture)
-- through natural ostium
22.02 through natural ostium', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.11', 'Biopsy
- sinus, nasal
22.11 sinus, nasal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.12', 'Biopsy
- sinus, nasal
-- open
22.12 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.19', 'Procedure -diagnostic
- nose, nasal
-- sinus
22.19 sinus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.2', 'intranasal
22.2 intranasal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.31', 'maxillary
- radical
22.31 radical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.39', 'maxillary
22.39 maxillary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.41', 'Exploration
- sinus
-- frontal
22.41 frontal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.42', 'frontal sinus (with fat)
22.42 frontal sinus (with fat)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.50', 'Removal -foreign body
- nasal sinus
22.50 nasal sinus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.51', 'Exploration
- sinus
-- ethmoid
22.51 ethmoid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.52', 'sphenoid ostia
22.52 sphenoid ostia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.53', 'multiple
22.53 multiple', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.60', 'Excision
- tooth NEC
-- from nasal sinus
22.60 from nasal sinus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.61', 'maxillary
- with Caldwell-Luc approach
22.61 with Caldwell-Luc approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.62', 'maxillary
22.62 maxillary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.63', 'ethmoid
22.63 ethmoid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.64', 'sphenoid
22.64 sphenoid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.71', 'fistula
- antrobuccal
22.71 antrobuccal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.79', 'Elevation
- bone fragments (fractured)
-- frontal
22.79 frontal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('22.9', 'maxillary sinus
22.9 maxillary sinus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.01', 'Extraction -
- tooth (by forceps) (multiple) (single)
-- deciduous
23.01 deciduous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.09', 'Extraction -
- tooth (by forceps) (multiple) (single)
-- NEC
23.09 NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.11', 'Resection
- root (tooth) (apex)
-- residual or retained
23.11 residual or retained', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.19', 'Excision
- tooth NEC
-- surgical
23.19 surgical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.2', 'Removal and restoration of teeth
- Restoration of tooth by filling 23.2
23.2 Restoration of tooth by filling', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.3', 'Removal and restoration of teeth
- Restoration of tooth by inlay 23.3
23.3 Restoration of tooth by inlay', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.41', 'Removal and restoration of teeth
- Other dental restoration
-- Application of crown 23.41
23.41 Application of crown', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.42', 'Insertion
- bridge (dental) (fixed)
23.42 bridge (dental) (fixed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.43', 'Insertion
- bridge (dental) (fixed)
-- removable
23.43 removable', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.49', 'Removal and restoration of teeth
- Other dental restoration
-- Other 23.49
23.49 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.5', 'tooth (bud) (germ)
23.5 tooth (bud) (germ)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.6', 'tooth (bud) (germ)
- prosthetic
23.6 prosthetic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.70', 'nerve, tooth
-- root canal
23.70 root canal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.71', 'device tibial component
- head at peritoneal site
----- irrigation
23.71 irrigation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.72', 'tooth (root)
- with root canal therapy
23.72 with root canal therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('23.73', 'tooth (root)
23.73 tooth (root)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.0', 'Alveolotomy (apical)
24.0 Alveolotomy (apical)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.11', 'Other operations on teeth, gums, and alveoli
- Diagnostic procedures on teeth, gums, and alveoli
-- Biopsy of gum 24.11
24.11 Biopsy of gum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.12', 'Other operations on teeth, gums, and alveoli
- Diagnostic procedures on teeth, gums, and alveoli
-- Biopsy of alveolus 24.12
24.12 Biopsy of alveolus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.19', 'Procedure -diagnostic
- gum
24.19 gum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.2', 'Gingivoplasty (with bone graft) (with
- tissue graft)
24.2 tissue graft)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.31', 'Excision
- bulbous tuberosities (mandible)
-- (fibrous) (osseous)
24.31 (fibrous) (osseous)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.32', 'spinal female
- 50.0 image guided
---- Suspension
----- gingiva
24.32 gingiva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.39', 'of Gross (herniorrhaphy)
----- gum NEC
24.39 gum NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.4', 'cyst
- dental
24.4 dental', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.5', 'Alveolectomy (interradicular) (intraseptal)
- implant)
24.5 implant)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.6', 'Eruption, tooth, surgical
24.6 Eruption, tooth, surgical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.7', 'Application
- obturator (orthodontic)
24.7 obturator (orthodontic)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.8', 'occlusal
24.8 occlusal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.91', 'Kazanjiian operation (buccal vestibular
- sulcus extension)
24.91 sulcus extension)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('24.99', 'femoral proctopexy
- 52.53 Denker (radical maxillary antrotomy)
----- dental NEC
24.99 dental NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.01', 'Biopsy
- tongue
25.01 tongue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.02', 'Biopsy
- tongue
-- open
25.02 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.09', '(for dental
- TO PROCEDURES (FY10)
---- Procedure -diagnostic
----- tongue
25.09 tongue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.1', 'Resection
- tongue
-- wedge
25.1 wedge', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.2', 'Excision
- tongue (complete) (total)
-- partial or subtotal
25.2 partial or subtotal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.3', 'Excision
- tongue (complete) (total)
25.3 tongue (complete) (total)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.4', 'Excision
- tongue (complete) (total)
-- radical
25.4 radical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.51', 'Glossorrhaphy
25.51 Glossorrhaphy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.59', 'Douglas'' operation (suture of tongue
- lip for micrognathia)
25.59 lip for micrognathia)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.91', 'frenulum, frenum
- lingual
25.91 lingual', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.92', 'Excision
- frenulum, frenum
-- lingual (tongue)
25.92 lingual (tongue)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.93', 'Operations on tongue
- Other operations on tongue
-- Lysis of adhesions of tongue 25.93
25.93 Lysis of adhesions of tongue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.94', 'Glossotomy NEC
25.94 Glossotomy NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('25.99', 'axis) 39.91 thoracoscopic, NEC
----- tongue NEC
25.99 tongue NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.0', 'Exploration
- salivary gland
26.0 salivary gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.11', 'Biopsy
- salivary gland or duct
26.11 salivary gland or duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.12', 'Biopsy
- salivary gland or duct
-- open
26.12 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.19', '(for dental
- TO PROCEDURES (FY10)
---- Procedure -diagnostic
----- salivary gland or duct
26.19 salivary gland or duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.21', 'Marsupialization
- cyst
-- salivary gland
26.21 salivary gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.29', 'Excision lesion -pituitary
- salivary gland or duct NEC
26.29 salivary gland or duct NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.30', 'parotid gland
-- salivary gland
26.30 salivary gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.31', 'NEC renal vessel, aberrant
----- partial
26.31 partial', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.32', 'Excision lesion -pituitary
- salivary gland or duct NEC
-- en bloc
26.32 en bloc', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.41', 'salivary gland
26.41 salivary gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.42', 'Closure fistula
-- salivary (gland) (duct)
26.42 salivary (gland) (duct)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.49', 'Operations on salivary glands and ducts
- Repair of salivary gland or duct
-- Other repair and plastic operations on salivary gland or duct 26.49
26.49 Other repair and plastic operations on salivary gland or duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.91', 'salivary duct
26.91 salivary duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('26.99', 'Operation
- parotid gland or duct NEC
26.99 parotid gland or duct NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.0', 'Cheilotomy
27.0 Cheilotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.1', 'palate
27.1 palate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.21', 'Other operations on mouth and face
- Diagnostic procedures on oral cavity
-- Biopsy of bony palate 27.21
27.21 Biopsy of bony palate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.22', 'Biopsy
- soft palate
27.22 soft palate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.23', 'lip
27.23 lip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.24', 'mouth NEC
27.24 mouth NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.29', 'Procedure -diagnostic
- mouth
27.29 mouth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.31', 'palate
27.31 palate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.32', 'Destruction -lesion (local) --- Cont.
- palate (bony) (local)
-- wide
27.32 wide', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.41', 'Excision
- frenulum, frenum
-- labial (lip)
27.41 labial (lip)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.42', 'Excision lesion
-- by wide excision
27.42 by wide excision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.43', 'Excision lesion
-- lip
27.43 lip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.49', 'Excision
- buccal mucosa
27.49 buccal mucosa', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.51', 'Cheilorrhaphy
27.51 Cheilorrhaphy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.52', 'Stomatorrhaphy
27.52 Stomatorrhaphy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.53', 'Fistulectomy
- mouth NEC
27.53 mouth NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.54', 'Correction
- cleft
-- lip
27.54 lip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.55', 'Other operations on mouth and face
- Plastic repair of lip and mouth
-- Full-thickness skin graft to lip and mouth 27.55
27.55 Full-thickness skin graft to lip and mouth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.56', 'Graft, grafting -skin
-- free (autogenous) NEC
--- lip
27.56 lip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.57', 'Graft, grafting -skin
-- attachment to site (advanced)(double)
--- lip
27.57 lip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.59', 'Cheiloplasty
27.59 Cheiloplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.61', 'Palatorrhaphy
27.61 Palatorrhaphy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.62', 'Correction
- cleft
-- palate
27.62 palate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.63', 'Palatoplasty
- for cleft palate
-- secondary or subsequent
27.63 secondary or subsequent', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.64', 'Insertion -pacemaker
- palatal implant
27.64 palatal implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.69', 'Palatoplasty
27.69 Palatoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.71', 'uvula
27.71 uvula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.72', 'Other operations on mouth and face
- Operations on uvula
-- Excision of uvula 27.72
27.72 Excision of uvula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.73', 'uvula
27.73 uvula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.79', 'uvula NEC
27.79 uvula NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.91', 'frenulum, frenum
- labial
27.91 labial', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.92', 'Removal -foreign body
- mouth (intraluminal)
-- by incision
27.92 by incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('27.99', 'buccal sulcus
27.99 buccal sulcus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.0', 'parapharyngeal
28.0 parapharyngeal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.11', 'Operations on tonsils and adenoids
- Diagnostic procedures on tonsils and adenoids
-- Biopsy of tonsils and adenoids 28.11
28.11 Biopsy of tonsils and adenoids', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.19', 'only), eye muscle (oblique) (rectus)
---- Pneumoperitoneum(surgically-induced)
----- adenoid
28.19 adenoid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.2', 'Excision
- tonsil
28.2 tonsil', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.3', 'with tonsillectomy
28.3 with tonsillectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.4', 'Excision
- tonsil
-- tag
28.4 tag', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.5', 'Excision
- tonsil
-- lingual
28.5 lingual', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.6', 'adenoid tag(s)
28.6 adenoid tag(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.7', 'hemorrhage
- adenoids (postoperative)
28.7 adenoids (postoperative)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.91', 'Operations on tonsils and adenoids
- Other operations on tonsils and adenoids
-- Removal of foreign body from tonsil and adenoid by incision 28.91
28.91 Removal of foreign body from tonsil and adenoid by incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.92', 'Operations on tonsils and adenoids
- Other operations on tonsils and adenoids
-- Excision of lesion of tonsil and adenoid 28.92
28.92 Excision of lesion of tonsil and adenoid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('28.99', 'tooth, intestine
----- adenoids NEC
28.99 adenoids NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.0', 'branchial cleft cyst
29.0 branchial cleft cyst', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.11', 'on
----- pharynx
29.11 pharynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.12', 'Biopsy
- supraglottic mass
29.12 supraglottic mass', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.19', 'Procedure -diagnostic
- nasopharynx
29.19 nasopharynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.2', 'Excision
- branchial cleft cyst or vestige
29.2 branchial cleft cyst or vestige', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.3', 'Operations on pharynx
- Excision or destruction of lesion or tissue of pharynx 29.3
29.3 Excision or destruction of lesion or tissue of pharynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.31', 'Operations on pharynx
- Excision or destruction of lesion or tissue of pharynx
-- Cricopharyngeal myotomy 29.31
29.31 Cricopharyngeal myotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.32', 'Diverticulectomy
- hypopharyngeal (by cricopharyngeal
-- myotomy)
29.32 myotomy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.33', 'pharynx (partial)
29.33 pharynx (partial)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.39', 'pharynx (by diathermy)
29.39 pharynx (by diathermy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.4', 'Correction
- nasopharyngeal atresia
29.4 nasopharyngeal atresia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.51', 'pharynx NEC
- laceration (by suture)
29.51 laceration (by suture)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.52', 'fistula
- branchial cleft
29.52 branchial cleft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.53', 'Closure fistula
-- pharyngoesophageal
29.53 pharyngoesophageal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.54', 'congenital web
- pharynx
29.54 pharynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.59', 'pharynx NEC
29.59 pharynx NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.91', 'choanae (nasopharynx)
29.91 choanae (nasopharynx)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.92', 'glossopharyngeal nerve
29.92 glossopharyngeal nerve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('29.99', 'Operation
- hypopharynx NEC
29.99 hypopharynx NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('30.01', 'Marsupialization
- cyst
-- larynx
30.01 larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('30.09', 'Cauterization
- vocal cords
30.09 vocal cords', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('30.1', 'Hemilaryngectomy (anterior) (lateral)
- (vertical)
30.1 (vertical)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('30.21', 'stones
---- Enlargement
----- Epiglottidectomy
30.21 Epiglottidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('30.22', 'Chordectomy, vocal
30.22 Chordectomy, vocal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('30.29', 'Arytenoidectomy
30.29 Arytenoidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('30.3', 'dissection
- larynx
30.3 larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('30.4', 'Dissection
- neck, radical
-- with laryngectomy
30.4 with laryngectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.0', 'Other operations on larynx and trachea
- Injection of larynx 31.0
31.0 Injection of larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.1', 'Tracheostomy
- temporary (emergency) 31.1
31.1 Temporary tracheostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.21', 'Tracheostomy
- mediastinal (permanent) 31.21
31.21 Mediastinal tracheostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.29', 'Tracheolaryngotomy (emergency)
- permanent opening
31.29 permanent opening', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.3', 'larynx NEC
31.3 larynx NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.41', 'Tracheoscopy NEC
- through tracheotomy (stoma)
31.41 through tracheotomy (stoma)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.42', 'Tracheoscopy NEC
31.42 Tracheoscopy NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.43', 'larynx
31.43 larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.44', 'Other operations on larynx and trachea
- Diagnostic procedures on larynx and trachea
-- Closed [endoscopic] biopsy of trachea 31.44
31.44 Closed [endoscopic] biopsy of trachea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.45', 'larynx
- open
31.45 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.48', 'Procedure -diagnostic
- larynx
31.48 larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.49', '(for dental
- TO PROCEDURES (FY10)
---- Procedure -diagnostic
----- trachea
31.49 trachea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.5', 'Resection
- trachea
31.5 trachea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.61', 'Repair hernia -ventral
- larynx
-- laceration
31.61 laceration', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.62', 'stoma
- larynx
31.62 larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.63', 'Repair
- stoma
-- larynx
31.63 larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.64', 'Reduction-fracture --Cont.
-- larynx
31.64 larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.69', 'Abduction, arytenoid
31.69 Abduction, arytenoid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.71', 'Tracheorrhaphy
31.71 Tracheorrhaphy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.72', 'stoma
- trachea
31.72 trachea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.73', 'Closure fistula
-- trachea NEC
31.73 trachea NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.74', 'Repair
- stoma
-- trachea
31.74 trachea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.75', 'Asai operation (larynx)
31.75 Asai operation (larynx)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.79', 'Tracheoplasty
31.79 Tracheoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.91', 'laryngeal nerve (external) (recurrent)
-- (superior)
31.91 (superior)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.92', 'Other operations on larynx and trachea
- Other operations on larynx and trachea
-- Lysis of adhesions of trachea or larynx 31.92
31.92 Lysis of adhesions of trachea or larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.93', 'laryngeal stent
31.93 laryngeal stent', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.94', 'Other operations on larynx and trachea
- Other operations on larynx and trachea
-- Injection of locally-acting therapeutic substance into trachea 31.94
31.94 Injection of locally-acting therapeutic substance into trachea', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.95', 'Formation
- fistula
-- tracheoesophageal
31.95 tracheoesophageal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.98', 'larynx
31.98 larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('31.99', 'Aspiration
- trachea
-- percutaneous
31.99 percutaneous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.01', 'Excision
- bronchogenic cyst
-- endoscopic
32.01 endoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.09', 'Excision
- bronchogenic cyst
32.09 bronchogenic cyst', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.1', 'Dissection
- bronchus
32.1 bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.20', 'Excision
- bleb (emphysematous), lung
-- thoracoscopic
32.20 thoracoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.21', 'bleb (emphysematous), lung
32.21 bleb (emphysematous), lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.22', 'Lung volume reduction
32.22 Lung volume reduction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.23', 'Ablation
- lesion
-- lung
--- open
32.23 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.24', 'Ablation
- lesion
-- lung
--- percutaneous
32.24 percutaneous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.25', 'Ablation
- lesion
-- lung
--- thoracoscopic
32.25 thoracoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.26', 'Ablation
- lesion
-- lung
32.26 lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.28', 'Destruction -lesion (local) --- Cont.
- lung
-- endoscopic
32.28 endoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.29', 'Destruction -lesion (local) --- Cont.
- lung
32.29 lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.3', 'flap uterine
----- segmental
32.3 segmental', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.30', 'lung
- thoracoscopic
32.30 thoracoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.39', 'lung
32.39 lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.41', 'lung (complete)
- segmental (with resection of adjacent
-- thoracoscopic
32.41 thoracoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.49', 'lung (complete)
32.49 lung (complete)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.50', 'Dissection
- thoracoscopic
32.50 thoracoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.59', 'of
---- Mediastinotomy (Chamberlain procedure)
----- with pneumonectomy
32.59 with pneumonectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('32.6', 'dissection
- bronchus
32.6 bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.0', 'bronchus
33.0 bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.1', 'Cavernostomy
33.1 Cavernostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.20', 'lung NEC
- thoracoscopic
33.20 thoracoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.21', 'bronchus NEC
- through stoma (artificial)
33.21 through stoma (artificial)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.22', 'Bronchoscopy (fibre-optic) (through tracheostomy) 33.22
33.22 Fibre-optic bronchoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.23', 'bronchus NEC
33.23 bronchus NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.24', 'Biopsy -bone
- bronchus NEC
33.24 bronchus NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.25', 'Biopsy -bone
- bronchus NEC
-- open
33.25 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.26', 'lung NEC
- transthoracic
33.26 transthoracic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.27', 'lung NEC
33.27 lung NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.28', 'lung NEC
- open
33.28 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.29', 'Procedure -diagnostic
- lung
33.29 lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.31', 'nerve (cranial) (peripheral) NEC
- phrenic
-- for collapse of lung
33.31 for collapse of lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.32', 'Pneumothorax (artificial) (surgical)
- intrapleural
33.32 intrapleural', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.33', 'Collapse, lung, surgical
- by
-- pneumoperitoneum
33.33 pneumoperitoneum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.34', 'Collapse, lung, surgical
- by
-- thoracoplasty
33.34 thoracoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.39', 'for collapse of lung
33.39 for collapse of lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.41', 'Suture (laceration)
- bronchus
33.41 bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.42', 'bronchostomy
33.42 bronchostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.43', 'spinal female
- code intestine
----- lung
33.43 lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.48', 'Other operations on lung and bronchus
- Repair and plastic operation on lung and bronchus
-- Other repair and plastic operations on bronchus 33.48
33.48 Other repair and plastic operations on bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.49', 'or graft lung NEC
33.49 or graft lung NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.5', 'Reimplantation
- lung
33.5 lung', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.6', 'Transplant, transplantation
- combined heart-lung
33.6 combined heart-lung', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.7', 'Lung volume reduction
-- biologic lung volume reduction
--- (BLVR)
33.7 (BLVR)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.71', 'device
- single lobe
33.71 single lobe', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.73', 'device
- multiple lobes
33.73 multiple lobes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.78', 'Other operations on lung and bronchus
- Other endoscopic procedures in bronchus or lung
-- Endoscopic removal of bronchial device(s) or substances 33.78
33.78 Endoscopic removal of bronchial device(s) or substances', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.79', 'device
- bronchial device NOS
33.79 bronchial device NOS', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.91', 'Other operations on lung and bronchus
- Other operations on lung and bronchus
-- Bronchial dilation 33.91
33.91 Bronchial dilation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.92', 'Other operations on lung and bronchus
- Other operations on lung and bronchus
-- Ligation of bronchus 33.92
33.92 Ligation of bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.93', 'lung (by incision)
- by punch (needle) (trocar)
33.93 by punch (needle) (trocar)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.98', 'bronchus NEC
33.98 bronchus NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('33.99', 'lung (total)(whole)
33.99 lung (total)(whole)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.01', 'chest wall
34.01 chest wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.02', 'exploratory
34.02 exploratory', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.03', 'also laparoscopic
- TO PROCEDURES (FY10)
---- Control hemorrhage
----- postoperative (recurrent)
34.03 postoperative (recurrent)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.04', 'Thoracentesis 34.04
34.04 Insertion of intercostal catheter for drainage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.05', 'Shunt
- pleuroperitoneal
34.05 pleuroperitoneal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.06', 'chest
- thoracoscopic
34.06 thoracoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.09', 'Thoracotomy
- exploratory 34.09
34.09 Other incision of pleura', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.1', 'Exploration
- mediastinum
34.1 mediastinum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.20', 'Operations on chest wall, pleura, mediastinum, and
- Diagnostic procedures on chest wall, pleura, mediastinum, and
-- Thoracoscopic pleural biopsy  34.20
34.20 Thoracoscopic pleural biopsy ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.21', 'Cavernoscopy
34.21 Cavernoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.22', 'Exploration
- mediastinum
-- endoscopic
34.22 endoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.23', 'Biopsy -bone
- chest wall
34.23 chest wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.24', 'Operations on chest wall, pleura, mediastinum, and
- Diagnostic procedures on chest wall, pleura, mediastinum, and
-- Other pleural biopsy 34.24
34.24 Other pleural biopsy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.25', 'mediastinum NEC
34.25 mediastinum NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.26', 'mediastinum NEC
- open
34.26 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.27', 'Biopsy -bone
- diaphragm
34.27 diaphragm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.28', 'gastric cervix
----- chest wall
34.28 chest wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.29', 'Procedure -diagnostic
- mediastinum
34.29 mediastinum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.3', 'Excision lesion
-- mediastinum
34.3 mediastinum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.4', 'Excision lesion -pituitary
- thorax
34.4 thorax', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.51', 'lung (partial) (total)
34.51 lung (partial) (total)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.52', 'lung (partial) (total)
- thoracoscopic
34.52 thoracoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.59', 'Excision lesion -pituitary
- pleura
34.59 pleura', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.6', 'pleural cavity
34.6 pleural cavity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.71', 'chest wall
34.71 chest wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.72', 'stoma
- thorax
34.72 thorax', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.73', 'fistula
- bronchomediastinal
34.73 bronchomediastinal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.74', 'Chondrosternoplasty (for pectus
- repair)
34.74 repair)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.79', 'chest wall (mesh) (silastic)
34.79 chest wall (mesh) (silastic)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.81', 'diaphragm
34.81 diaphragm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.82', 'Suture (laceration)
- diaphragm
34.82 diaphragm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.83', 'fistula
- abdominothoracic
34.83 abdominothoracic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.84', 'Repair
- diaphragm NEC
34.84 diaphragm NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.85', 'diaphragmatic pacemaker
34.85 diaphragmatic pacemaker', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.89', 'Operation
- diaphragm NEC
34.89 diaphragm NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.91', 'chest
34.91 chest', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.92', 'sclerosing agent NEC
- pleura
34.92 pleura', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.93', 'Closure fistula
-- pleura, pleural NEC
34.93 pleura, pleural NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('34.99', 'Operations on chest wall, pleura, mediastinum, and
- Other operations on thorax
-- Other 34.99
34.99 Other', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.03', 'Brock (pulmonary valvulotomy)
35.03 Brock (pulmonary valvulotomy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.04', 'Operations on valves and septa of heart
- Closed heart valvotomy
-- Closed heart valvotomy, tricuspid valve 35.04
35.04 Closed heart valvotomy, tricuspid valve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.10', 'cardiac valve
35.10 cardiac valve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.11', 'Operations on valves and septa of heart
- Open heart valvuloplasty without replacement
-- Open heart valvuloplasty of aortic valve without replacement 35.11
35.11 Open heart valvuloplasty of aortic valve without replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.12', 'Hinging, mitral valve
35.12 Hinging, mitral valve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.13', 'rod
- implant combined with repair of atrial and
----- pulmonary (without replacement)
35.13 pulmonary (without replacement)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.14', 'tricuspid valve (with plication)
35.14 tricuspid valve (with plication)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.20', 'heart
- valve (with prosthesis) (with tissue
-- graft)
35.20 graft)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.21', 'heart
- valve (with prosthesis) (with tissue
-- with tissue graft
35.21 with tissue graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.22', 'heart
- valve (with prosthesis) (with tissue
-- aortic (with prosthesis)
35.22 aortic (with prosthesis)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.23', 'heart
- valve (with prosthesis) (with tissue
-- with tissue graft
35.23 with tissue graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.24', 'heart
- valve (with prosthesis) (with tissue
-- mitral (with prosthesis)
35.24 mitral (with prosthesis)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.25', 'heart
- valve (with prosthesis) (with tissue
-- with tissue graft
35.25 with tissue graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.26', 'Insertion -prosthesis
- outflow tract (gusset type) (heart)
-- pulmonary valvuloplasty
35.26 pulmonary valvuloplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.27', 'heart
- valve (with prosthesis) (with tissue
-- with tissue graft
35.27 with tissue graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.28', 'heart
- valve (with prosthesis) (with tissue
-- tricuspid (with prosthesis)
35.28 tricuspid (with prosthesis)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.31', 'Operation
- papillary muscle (heart) NEC
35.31 papillary muscle (heart) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.32', 'chordae tendineae NEC
35.32 chordae tendineae NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.33', 'annulus, heart valve
35.33 annulus, heart valve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.34', 'ventricle (heart) (right)
35.34 ventricle (heart) (right)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.35', 'radical
- TO PROCEDURES (FY10)
---- Division
----- trabeculae carneae cordis (heart)
35.35 trabeculae carneae cordis (heart)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.39', 'Repair -aneurysm -by or with
-- sinus of Valsalva
35.39 sinus of Valsalva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.41', 'Atrioseptostomy (balloon)
35.41 Atrioseptostomy (balloon)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.42', 'interatrial fistula
35.42 interatrial fistula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.50', 'Repair -fracture
- heart
-- with
--- prosthesis
35.50 prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.51', 'Repair, esophagocutaneous
----- prosthesis(open heart technique)
35.51 prosthesis(open heart technique)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.52', 'atrial septal defect
- with
-- closed heart technique
35.52 closed heart technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.53', 'also hand
- TO PROCEDURES (FY10)
---- Repair
----- prosthesis (open heart technique)
35.53 prosthesis (open heart technique)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.54', 'atrioventricular canal defect (any type)
- with
-- prosthesis
35.54 prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.55', 'NEC in total repair of
- closed prosthesis (open heart technique)
----- closed heart technique
35.55 closed heart technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.60', 'Repair -fracture
- heart
-- with
--- tissue graft
35.60 tissue graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.61', 'atrial septal defect
- with
-- tissue graft
35.61 tissue graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.62', 'Repair
- supracristal defect (heart)
-- tissue graft
35.62 tissue graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.63', 'atrioventricular canal defect (any type)
- with
-- tissue graft
35.63 tissue graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.70', 'fenestration
- septal, heart
-- septum
35.70 septum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.71', 'Atrioplasty NEC
- septum (heart) NEC
35.71 septum (heart) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.72', 'Repair
- supracristal defect (heart)
35.72 supracristal defect (heart)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.73', 'endocardial cushion defect
- endocardial cushion defect
35.73 endocardial cushion defect', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.81', 'also laparoscopic
- TO PROCEDURES (FY10)
---- Corpectomy, (vertebral)
----- one-stage
35.81 one-stage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.82', 'Incision (and drainage)
- common wall between posterior
-- patch graft)
35.82 patch graft)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.83', 'conduit
- right ventricle and pulmonary
-- truncus arteriosus
35.83 truncus arteriosus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.84', 'Operation
- Jatene (arterial switch)
35.84 Jatene (arterial switch)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.91', 'Baffes operation (interatrial transposition
- of venous return)
35.91 of venous return)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.92', 'conduit
- right ventricle and pulmonary
-- (distal) artery
35.92 (distal) artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.93', 'conduit
- left ventricle and aorta
35.93 left ventricle and aorta', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.94', 'Correction
- atresia
-- tricuspid
35.94 tricuspid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.95', 'Reinsertion
- heart valve (prosthetic)
35.95 heart valve (prosthetic)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.96', 'Operations on valves and septa of heart
- Other operations on valves and septa of heart
-- Percutaneous valvuloplasty 35.96
35.96 Percutaneous valvuloplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.98', 'cardiac NEC
- septum NEC
35.98 septum NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('35.99', 'cardiac NEC
- valve NEC
35.99 valve NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.0', 'Operations on vessels of heart
- Removal of coronary artery obstruction and insertion of stent(s) 36.0
36.0 Removal of coronary artery obstruction and insertion of stent(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.02', '89.68 enzymes, thrombolytic (streptokinase) (tissue
- 73.1 low-dose
----- coronary (single vessel)
36.02 coronary (single vessel)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.03', 'Removal
- coronary artery obstruction (thrombus)
-- open chest approach
36.03 open chest approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.04', 'platelet inhibitor
- direct coronary artery
36.04 direct coronary artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.05', 'Removal
- coronary artery obstruction (thrombus)
-- multiple vessels
36.05 multiple vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.06', 'Insertion
- stent
-- coronary artery
--- non-drug-eluting 36.06
36.06 Insertion of non-drug-eluting coronary artery stent', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.07', 'Insertion
- stent
-- coronary artery
--- drug-eluting 36.07
36.07 Insertion of drug-eluting coronary artery stent', '[{"type":"includes","text":"Drug-eluting coronary artery stent"},{"type":"note","text":"Code also any open chest coronary artery angioplasty (36.03)"}]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.09', 'coronary artery
36.09 coronary artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.10', 'Bypass
- aortocoronary (catheter stent) (with
-- graft) (with vein graft)
36.10 graft) (with vein graft)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.11', 'Bypass
- aortocoronary (catheter stent) (with
-- one coronary vessel
36.11 one coronary vessel', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.12', 'Bypass
- aortocoronary (catheter stent) (with
-- two coronary vessels
36.12 two coronary vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.13', 'Bypass
- aortocoronary (catheter stent) (with
-- three coronary vessels
36.13 three coronary vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.14', 'Bypass
- aortocoronary (catheter stent) (with
-- four coronary vessels
36.14 four coronary vessels', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.15', 'Bypass
- internal mammary-coronary
-- artery (single)
36.15 artery (single)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.16', 'Anastomosis
- internal mammary artery (to)
-- double vessel
36.16 double vessel', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.17', 'Bypass
- abdominal - coronary artery
36.17 abdominal - coronary artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.19', 'cardiac (heart muscle) (myocardium)
- with
-- specified type NEC
36.19 specified type NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.2', 'Anastomosis
- internal mammary artery (to)
-- myocardium
36.2 myocardium', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.3', '- 20.79
---- Abrasion
----- epicardial surface
36.3 epicardial surface', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.31', 'cardiac (heart muscle) (myocardium)
- transmyocardial
-- open chest
36.31 open chest', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.32', 'cardiac (heart muscle) (myocardium)
- transmyocardial
-- specified type NEC
36.32 specified type NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.33', 'cardiac (heart muscle) (myocardium)
- transmyocardial
-- endoscopic
36.33 endoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.34', 'cardiac (heart muscle) (myocardium)
- transmyocardial
-- endovascular
36.34 endovascular', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.39', 'aorta-coronary sinus shunt
36.39 aorta-coronary sinus shunt', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.91', 'Repair -aneurysm -by or with
-- coronary artery
36.91 coronary artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('36.99', 'Ligation
- fistula, arteriovenous
-- coronary artery
36.99 coronary artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.0', 'heart
37.0 heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.10', 'Other operations on heart and pericardium
- Cardiotomy and pericardiotomy
-- Incision of heart, not otherwise specified 37.10
37.10 Incision of heart, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.11', 'Atriotomy
37.11 Atriotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.12', 'pericardial window
37.12 pericardial window', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.20', 'noninvasive programmed electrical
- stimulation (NIPS)
37.20 stimulation (NIPS)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.21', 'cardiac (right)
37.21 cardiac (right)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.22', 'cardiac (right)
- left
37.22 left', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.23', 'Catheterization
- heart
-- right 37.23
37.23 Combined right and left heart cardiac catheterization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.24', 'Other operations on heart and pericardium
- Diagnostic procedures on heart and pericardium
-- Biopsy of pericardium 37.24
37.24 Biopsy of pericardium', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.25', 'Other operations on heart and pericardium
- Diagnostic procedures on heart and pericardium
-- Biopsy of heart 37.25
37.25 Biopsy of heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.26', 'catheter based invasive electrophysiologic
- testing
37.26 testing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.27', 'Mapping
- cardiac (electrophysiologic)
37.27 cardiac (electrophysiologic)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.28', 'Ultrasound
- heart
-- intracardiac (heart chambers)(ICE)
37.28 intracardiac (heart chambers)(ICE)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.29', 'His bundle recording
37.29 His bundle recording', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.31', 'heart
37.31 heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.32', 'aneurysm
- heart
37.32 heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.33', 'Ablation
- lesion
-- maze procedure (Cox-maze)
--- trans-thoracic approach
37.33 trans-thoracic approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.34', 'Ablation
- lesion
-- endovascular approach
37.34 endovascular approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.35', 'Batista operation (partial ventriculectomy)
- remodeling)
37.35 remodeling)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.36', 'Destruction -lesion (local) --- Cont.
- heart
-- left atrial appendage
37.36 left atrial appendage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.41', 'device
- cardiac support device (CSD)
37.41 cardiac support device (CSD)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.49', 'Closure fistula
-- pleuropericardial
37.49 pleuropericardial', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.51', 'Other operations on heart and pericardium
- Heart replacement procedures
-- Heart transplantation 37.51
37.51 Heart transplantation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.52', 'heart
37.52 heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.53', 'heart
- artificial
-- thoracic unit
37.53 thoracic unit', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.54', 'heart
- artificial
-- implantable battery
37.54 implantable battery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.55', 'Removal -gallstones
- heart replacement system
-- internal biventricular
37.55 internal biventricular', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.60', 'circulatory support device
- external heart assist device
-- biventricular
37.60 biventricular', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.61', 'Implant
- cardiac resynchronization defibrillator (CRT-D) 37.61
37.61 Implant of combined pacemaker-defibrillator', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.62', 'CentriMag® acute circulatory support
- device
37.62 device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.63', 'Removal -gallstones
- heart assist system
-- with replacement
37.63 with replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.64', 'Removal -gallstones
- heart assist system
-- open removal
37.64 open removal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.65', 'Implant, implantation
- heart
-- external heart assist system,
---- approach
37.65 approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.66', 'HeartMate® implantable heart assist
- system
37.66 system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.67', '(ECI)
----- cardiomyostimulation system
37.67 cardiomyostimulation system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.68', 'Implant, implantation
- heart
-- extrinsic
37.68 extrinsic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.70', '(ECI)
- TO PROCEDURES (FY10)
---- Implant, implantation -device
----- cardiac (initial) (transvenous)
37.70 cardiac (initial) (transvenous)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.71', '(ECI)
- TO PROCEDURES (FY10)
---- Implant, implantation -device
----- ventricle (initial)
37.71 ventricle (initial)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.72', '(ECI)
- TO PROCEDURES (FY10)
---- Implant, implantation -device
----- atrium and ventricle (initial)
37.72 atrium and ventricle (initial)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.73', '(ECI)
- TO PROCEDURES (FY10)
---- Implant, implantation -device
----- atrium (initial)
37.73 atrium (initial)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.74', 'Removal electrodes
- epicardial (myocardial)
-- epicardial lead
37.74 epicardial lead', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.75', 'Repair
- cardiac pacemaker NEC
-- electrode(s) (lead) NEC
37.75 electrode(s) (lead) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.76', 'Removal electrodes
- cardiac pacemaker (atrial) (transvenous)
-- with replacement
37.76 with replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.77', 'Removal electrodes
- cardiac pacemaker (atrial) (transvenous)
-- (ventricular)
37.77 (ventricular)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.78', 'Other operations on heart and pericardium
- Insertion, revision, replacement, and removal of leads; insertion
-- Insertion of temporary transvenous pacemaker system 37.78
37.78 Insertion of temporary transvenous pacemaker system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.79', 'pocket
- loop recorder
37.79 loop recorder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.80', 'great
---- Implant, implantation - heart
----- pacemaker, cardiac
37.80 pacemaker, cardiac', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.85', 'Removal
- cardiac pacemaker (device) (initial)
-- single-chamber device
37.85 single-chamber device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.86', 'Removal
- cardiac pacemaker (device) (initial)
-- single-chamber device
--- rate responsive
37.86 rate responsive', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.87', 'Removal
- cardiac pacemaker (device) (initial)
-- dual chamber device
37.87 dual chamber device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.89', 'Removal
- cardiac pacemaker (device) (initial)
-- device,CRT-P)
37.89 device,CRT-P)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.9', 'Other operations on heart and pericardium
- Other operations on heart and pericardium 37.9
37.9 Other operations on heart and pericardium', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.90', 'device
- left atrial appendage
37.90 left atrial appendage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.91', 'Massage
- cardiac (external) (manual) (closed)
-- open
37.91 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.92', 'heart
- for intracardiac injection
37.92 for intracardiac injection', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.93', 'pericardium
37.93 pericardium', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.94', '(ECI)
----- cardioverter/defibrillator (automatic)
37.94 cardioverter/defibrillator (automatic)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.95', '(ECI)
----- (sensing) (pacing)
37.95 (sensing) (pacing)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.96', '(ECI)
----- pulse generator only
37.96 pulse generator only', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.97', 'Replacement
- cardioverter/defibrillator(total system)
-- leads only (electrodes) (sensing)
--- (pacing)
37.97 (pacing)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.98', 'Replacement
- cardioverter/defibrillator(total system)
-- pulse generator only
37.98 pulse generator only', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('37.99', 'Atrioplasty NEC
37.99 Atrioplasty NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.00', 'Embolectomy
38.00 Embolectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.01', 'intracranial NEC
38.01 intracranial NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.02', 'head and neck NEC
38.02 head and neck NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.03', 'upper limb (artery) (vein)
38.03 upper limb (artery) (vein)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.04', 'Aortotomy
38.04 Aortotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.05', 'thoracic NEC
38.05 thoracic NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.06', 'Embolectomy
- abdominal
-- artery
38.06 artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.07', 'Embolectomy
- abdominal
-- vein
38.07 vein', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.08', 'lower limb
- artery
38.08 artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.09', 'lower limb
- vein
38.09 vein', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.10', 'Gas endarterectomy
38.10 Gas endarterectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.11', 'intracranial (open) NEC
38.11 intracranial (open) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.12', 'head and neck NEC
38.12 head and neck NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.13', 'upper limb
38.13 upper limb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.14', '73.93 fasciotomy
- TO PROCEDURES (FY10)
---- Electroshock therapy (EST)
----- aorta (arch) (ascending) (descending)
38.14 aorta (arch) (ascending) (descending)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.15', 'thoracic NEC
38.15 thoracic NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.16', 'abdominal
38.16 abdominal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.18', 'lower limb
38.18 lower limb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.21', 'Incision, excision, and occlusion of vessels
- Diagnostic procedures on blood vessels
-- Biopsy of blood vessel 38.21
38.21 Biopsy of blood vessel', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.22', 'tract) cerebral (intracranial)
---- Angioscopy, percutaneous
38.22 Angioscopy, percutaneous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.23', 'Incision, excision, and occlusion of vessels
- Diagnostic procedures on blood vessels
-- Intravascular spectroscopy  38.23
38.23 Intravascular spectroscopy ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.24', 'coronary vessel(s)
38.24 coronary vessel(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.25', 'non-coronary vessel(s)
38.25 non-coronary vessel(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.29', 'Procedure -diagnostic
-- vessel (blood) (any site)
38.29 vessel (blood) (any site)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.30', 'with
- anastomosis
38.30 anastomosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.31', 'with
- anastomosis
-- intracranial NEC
38.31 intracranial NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.32', 'with
- anastomosis
-- head and neck NEC
38.32 head and neck NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.33', 'with
- anastomosis
-- upper limb (artery) (vein)
38.33 upper limb (artery) (vein)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.34', 'with
- anastomosis
-- aorta (arch) (ascending)
--- (descending)
38.34 (descending)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.35', 'with
- anastomosis
-- thoracic NEC
38.35 thoracic NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.36', 'with
- anastomosis
-- artery
38.36 artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.37', 'with
- anastomosis
-- vein
38.37 vein', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.38', 'with
- anastomosis
-- artery
38.38 artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.39', 'with
- anastomosis
-- vein
38.39 vein', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.40', 'Phlebectomy -with anastomosis
-- graft replacement
38.40 graft replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.41', 'with
- graft replacement (interposition)
-- intracranial NEC
38.41 intracranial NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.42', 'with
- graft replacement (interposition)
-- head and neck NEC
38.42 head and neck NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.43', 'with
- graft replacement (interposition)
-- upper limb (artery) (vein)
38.43 upper limb (artery) (vein)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.44', 'with
- graft replacement (interposition)
-- aorta
--- open approach
38.44 open approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.45', 'with
- graft replacement (interposition)
-- thoracic
38.45 thoracic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.46', 'with
- graft replacement (interposition)
-- artery
38.46 artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.47', 'with
- graft replacement (interposition)
-- vein
38.47 vein', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.48', 'with
- graft replacement (interposition)
-- artery
38.48 artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.49', 'with
- graft replacement (interposition)
-- vein
38.49 vein', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.50', 'Division
- vein (with ligation)
-- varicose
38.50 varicose', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.51', 'Division
- vein (with ligation)
-- intracranial NEC
38.51 intracranial NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.52', 'Division
- vein (with ligation)
-- head and neck NEC
38.52 head and neck NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.53', 'Division
- vein (with ligation)
-- upper limb
38.53 upper limb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.55', 'Division
- vein (with ligation)
-- thoracic NEC
38.55 thoracic NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.57', 'Division
- vein (with ligation)
-- abdominal
38.57 abdominal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.59', 'Division
- vein (with ligation)
-- varicose
38.59 varicose', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.60', 'Aneurysmectomy
38.60 Aneurysmectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.61', 'intracranial NEC
38.61 intracranial NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.62', 'head and neck NEC
38.62 head and neck NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.63', 'upper limb
38.63 upper limb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.64', '38.60 intervertebral
- 77.9 clitoris
----- anastomosis)
38.64 anastomosis)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.65', 'thoracic NEC
38.65 thoracic NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.66', 'abdominal
- artery
38.66 artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.67', 'abdominal
- vein
38.67 vein', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.68', 'lower-limb
38.68 lower-limb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.69', 'Excision -lesion -artery
- blood vessel
-- vein
38.69 vein', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.7', 'Antiembolic filter, vena cava
38.7 Antiembolic filter, vena cava', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.80', 'Division
- vein (with ligation)
38.80 vein (with ligation)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.81', 'Division
- vein (with ligation)
-- intracranial NEC
38.81 intracranial NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.82', 'Division
- vein (with ligation)
-- head and neck NEC
38.82 head and neck NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.83', 'Division
- vein (with ligation)
-- upper limb
38.83 upper limb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.84', 'radical
38.84 radical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.85', 'pulmonary artery
38.85 pulmonary artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.86', 'Embolization (transcatheter)
- artery (selective)
-- abdominal NEC
38.86 abdominal NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.87', 'Division
- vein (with ligation)
-- abdominal
38.87 abdominal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.88', 'radical
----- lower limb
38.88 lower limb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.89', 'Division
- vein (with ligation)
-- lower limb
38.89 lower limb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.91', 'Cannulation
- artery
38.91 artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.92', 'umbilical vein
38.92 umbilical vein', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.93', 'Catheterization
- venous
-- central 38.93
38.93 Venous catheterization, not elsewhere classified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.94', 'retina Curettage (with packing) (with secondary
-- by bone
----- Cutdown, venous
38.94 Cutdown, venous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.95', 'vein NEC
- for renal dialysis
38.95 for renal dialysis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.98', 'artery NEC
38.98 artery NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('38.99', 'Phlebotomy
38.99 Phlebotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.0', 'shunt
- left-to-right (systemic to
-- pulmonary circulation)
39.0 pulmonary circulation)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.1', 'Anastomosis
- mesenteric-caval
39.1 mesenteric-caval', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.21', 'Glenn (anastomosis of superior vena
-- to right pulmonary artery)
39.21 to right pulmonary artery)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.22', 'aorta-subclavian artery
39.22 aorta-subclavian artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.23', 'Anastomosis
- intrathoracic vessel NEC
39.23 intrathoracic vessel NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.24', 'aorta-renal artery
39.24 aorta-renal artery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.25', 'Bypass
- vascular
-- aortocoronary 39.25
39.25 Aorta-iliac-femoral bypass', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.26', 'aortoceliac
39.26 aortoceliac', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.27', 'arteriovenous NEC
- for renal dialysis
39.27 for renal dialysis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.28', 'Bypass
- arterial (graft) (mandril grown graft)
-- carotid-cerebral
39.28 carotid-cerebral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.29', 'arteriovenous NEC
39.29 arteriovenous NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.30', 'Repair -fracture
- great vessels NEC
-- laceration (by suture)
39.30 laceration (by suture)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.31', 'Repair -aneurysm -by or with
- aorta
39.31 aorta', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.32', 'Phleborrhaphy
39.32 Phleborrhaphy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.41', 'also laparoscopic
- TO PROCEDURES (FY10)
---- Control hemorrhage
----- postvascular surgery
39.41 postvascular surgery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.42', 'arteriovenous shunt (device)
- with creation of new shunt
39.42 with creation of new shunt', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.43', 'arteriovenous shunt (device)
39.43 arteriovenous shunt (device)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.49', 'artery (suture of distal to proximal
- revision
39.49 revision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.50', 'Atherectomy
- peripheral
39.50 peripheral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.51', 'Clamping
- aneurysm (cerebral)
39.51 aneurysm (cerebral)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.52', 'Endoaneurysmorrhaphy
- Aneurysmorrhaphy
39.52 Aneurysmorrhaphy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.53', 'arteriovenous fistula
39.53 arteriovenous fistula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.54', 'aortic aneurysm
39.54 aortic aneurysm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.55', 'Hellstöm operation (transplantation
- aberrant renal vessel)
39.55 aberrant renal vessel)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.56', 'tissue mandril (for vascular graft)
- with
-- blood vessel repair
39.56 blood vessel repair', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.57', '(without aneurysm
----- synthetic patch (Dacron) (Teflon)
39.57 synthetic patch (Dacron) (Teflon)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.58', 'Repair -artery
- with
-- patch graft
39.58 patch graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.59', 'fenestration
- aorticopulmonary
39.59 aorticopulmonary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.61', 'Assistance
- cardiac
-- extracorporeal circulation
39.61 extracorporeal circulation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.62', 'Other operations on vessels
- Extracorporeal circulation and procedures auxiliary to heart
-- Hypothermia (systemic) incidental to open heart surgery 39.62
39.62 Hypothermia (systemic) incidental to open heart surgery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.63', 'cardiac, induced (anoxic)(circulatory)
39.63 cardiac, induced (anoxic)(circulatory)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.64', 'Other operations on vessels
- Extracorporeal circulation and procedures auxiliary to heart
-- Intraoperative cardiac pacemaker 39.64
39.64 Intraoperative cardiac pacemaker', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.65', 'ECMO (extracorporeal membrane
- oxygenation)
39.65 oxygenation)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.66', 'Bypass
- cardiopulmonary
-- percutaneous (closed)
39.66 percutaneous (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.71', 'with
- graft replacement (interposition)
-- aorta
--- endovascular approach
39.71 endovascular approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.72', 'Embolization (transcatheter)
- adhesive (glue)
-- head and neck
39.72 head and neck', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.73', 'by or with
- endovascular graft
-- thoracic aorta
39.73 thoracic aorta', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.74', 'Embolectomy
- endovascular
-- head and neck
39.74 head and neck', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.75', 'Embolization (transcatheter)
- artery (selective)
-- endovascular approach
--- bare coils
39.75 bare coils', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.76', 'Embolization (transcatheter)
- artery (selective)
-- endovascular approach
--- bioactive coils
39.76 bioactive coils', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.79', 'Embolization (transcatheter)
- adhesive (glue)
39.79 adhesive (glue)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.8', 'Chemodectomy
39.8 Chemodectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.90', 'Insertion stent(s) artery
- -non-coronary
--- peripheral
39.90 peripheral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.91', 'Dissection
- artery-vein-nerve bundle
39.91 artery-vein-nerve bundle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.92', 'sclerosing agent NEC
- varicose vein
39.92 varicose vein', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.93', 'Cannulation
- arteriovenous
39.93 arteriovenous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.94', 'Replacement
- cannula
-- arteriovenous shunt
39.94 arteriovenous shunt', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.95', 'kidney
39.95 kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.96', 'total body
39.96 total body', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.97', 'Perfusion NEC
39.97 Perfusion NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.98', 'Angiotripsy
39.98 Angiotripsy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('39.99', 'tissue mandril (peripheral vessel)
-- (Spark''s type)
39.99 (Spark''s type)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.0', 'Exploration
- lymphatic structure(s) (channel)
-- (vessel)
40.0 (vessel)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.11', 'lymphatic structure (channel) (node)
-- (vessel)
40.11 (vessel)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.19', 'Procedure -diagnostic
- lymphatic structure (channel) (gland)
-- (node) (vessel)
40.19 (node) (vessel)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.21', 'Excision
- fat pad NEC
-- scalene
40.21 scalene', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.22', 'Excision
- lymph, lymphatic
-- mammary (internal)
40.22 mammary (internal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.23', 'Excision
- lymph, lymphatic
-- axillary
40.23 axillary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.24', 'Excision
- lymph, lymphatic
-- groin
40.24 groin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.29', 'cystic
- hygroma
40.29 hygroma', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.3', 'Excision
- lymph, lymphatic
-- with
--- lymphatic drainage area
----- tissue, and fat)
40.3 tissue, and fat)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.40', 'dissection
- neck
40.40 neck', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.41', 'Dissection
- neck, radical
-- unilateral
40.41 unilateral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.42', 'Dissection
- neck, radical
-- bilateral
40.42 bilateral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.50', 'dissection
- lymph nodes
40.50 lymph nodes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.51', 'Excision
- lymph, lymphatic
-- axillary
--- radical
40.51 radical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.52', 'Excision
- lymph, lymphatic
-- periaortic
--- radical
40.52 radical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.53', 'Excision
- lymph, lymphatic
-- iliac
--- radical
40.53 radical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.54', 'Dissection
- groin, radical
40.54 groin, radical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.59', 'Excision
- lymph, lymphatic
-- mammary (internal)
--- external
---- radical
40.59 radical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.61', 'Cannulation
- cisterna chyli
40.61 cisterna chyli', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.62', 'Fistulization
- cisterna chyli
40.62 cisterna chyli', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.63', 'fistula
- cisterna chyli
40.63 cisterna chyli', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.64', 'Ligation
- lymphatic (channel) (peripheral)
-- thoracic duct
40.64 thoracic duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.69', 'cisterna chyli NEC
40.69 cisterna chyli NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('40.9', 'Correction
- lymphedema (of limb)
40.9 lymphedema (of limb)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.00', 'Transplant, transplantation
- bone
-- marrow
41.00 marrow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.01', 'Transplant, transplantation
- bone
-- autograft
41.01 autograft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.02', 'Transplant, transplantation
- bone
-- allogeneic
--- with purging
41.02 with purging', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.03', 'Transplant, transplantation
- bone
-- allogeneic
41.03 allogeneic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.04', 'Operations on bone marrow and spleen
- Bone marrow or hematopoietic stem cell transplant
-- Autologous hematopoietic stem cell transplant without purging 41.04
41.04 Autologous hematopoietic stem cell transplant without purging', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.05', 'Operations on bone marrow and spleen
- Bone marrow or hematopoietic stem cell transplant
-- Allogeneic hematopoietic stem cell transplant without purging 41.05
41.05 Allogeneic hematopoietic stem cell transplant without purging', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.06', 'Transplant, transplantation
- bone
-- stem cell
--- cord blood
41.06 cord blood', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.07', 'Transplant, transplantation
- bone
-- stem cell
--- autologous (hematopoietic)
---- with purging
41.07 with purging', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.08', 'Transplant, transplantation
- bone
-- stem cell
--- allogeneic (hematopoietic)
---- with purging
41.08 with purging', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.09', 'Transplant, transplantation
- bone
-- autograft
--- with purging
41.09 with purging', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.1', 'spleen
41.1 spleen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.2', 'Incision (and drainage)
- spleen
41.2 spleen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.31', 'bone marrow (for biopsy)
41.31 bone marrow (for biopsy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.32', 'Biopsy
- spleen
41.32 spleen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.33', 'Biopsy
- spleen
-- open
41.33 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.38', 'only), eye muscle (oblique) (rectus)
- and amnion
-- of femur
----- marrow
41.38 marrow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.39', '(for dental
- TO PROCEDURES (FY10)
---- Procedure -diagnostic
----- spleen
41.39 spleen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.41', 'Marsupialization
- cyst
-- spleen, splenic
41.41 spleen, splenic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.42', 'cyst
- spleen
41.42 spleen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.43', 'Splenectomy (complete) (total)
- partial
41.43 partial', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.5', 'Splenectomy (complete) (total)
41.5 Splenectomy (complete) (total)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.91', 'bone marrow (for biopsy)
- from donor for transplant
41.91 from donor for transplant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.92', 'Injection (into) (hypodermically)
- bone marrow
41.92 bone marrow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.93', 'Operations on bone marrow and spleen
- Other operations on spleen and bone marrow
-- Excision of accessory spleen 41.93
41.93 Excision of accessory spleen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.94', 'Operations on bone marrow and spleen
- Other operations on spleen and bone marrow
-- Transplantation of spleen 41.94
41.94 Transplantation of spleen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.95', 'Closure fistula
-- splenocolic
41.95 splenocolic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.98', 'inguinal Bobb (cholelithotomy)
- artery) marrow NEC
41.98 artery) marrow NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('41.99', 'Operation
- spleen NEC
41.99 spleen NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.01', 'web, esophageal
42.01 web, esophageal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.09', 'Removal -foreign body
-- by incision
42.09 by incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.10', 'Esophagostomy 42.10
42.10 Esophagostomy, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.11', 'Fistulization
- esophagus, external
-- cervical
42.11 cervical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.12', 'esophageal pouch
42.12 esophageal pouch', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.19', 'Fistulization
- esophagus, external
-- specified technique NEC
42.19 specified technique NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.21', 'esophagus NEC
- transabdominal (operative)
42.21 transabdominal (operative)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.22', 'esophagus NEC
- through stoma (artificial)
42.22 through stoma (artificial)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.23', 'esophagus NEC
42.23 esophagus NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.24', 'Operations on esophagus
- Diagnostic procedures on esophagus
-- Closed [endoscopic] biopsy of esophagus 42.24
42.24 Closed [endoscopic] biopsy of esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.25', 'Operations on esophagus
- Diagnostic procedures on esophagus
-- Open biopsy of esophagus 42.25
42.25 Open biopsy of esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.29', '(for dental
----- esophagus
42.29 esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.31', 'Diverticulectomy
- esophagus
42.31 esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.32', 'Destruction -lesion (local) --- Cont.
- esophagus (chemosurgery)
-- by excision
42.32 by excision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.33', 'Ablation
- lesion
-- endoscopic
42.33 endoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.39', 'Ablation
- lesion
-- esophagus
42.39 esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.40', 'Esophagectomy
42.40 Esophagectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.41', 'partial or subtotal
42.41 partial or subtotal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.42', 'abdominothoracocervical (combined)
-- (synchronous)
42.42 (synchronous)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.51', 'Operations on esophagus
- Intrathoracic anastomosis of esophagus
-- Intrathoracic esophagoesophagostomy 42.51
42.51 Intrathoracic esophagoesophagostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.52', 'Operations on esophagus
- Intrathoracic anastomosis of esophagus
-- Intrathoracic esophagogastrostomy 42.52
42.52 Intrathoracic esophagogastrostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.53', 'Anastomosis
-- small bowel NEC
---- with interposition
42.53 with interposition', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.54', 'Anastomosis
-- small bowel NEC
42.54 small bowel NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.55', 'Anastomosis
-- colon (intrathoracic) NEC
---- with interposition
42.55 with interposition', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.56', 'Anastomosis
-- colon (intrathoracic) NEC
42.56 colon (intrathoracic) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.58', 'Interposition operation
- esophageal reconstruction (intrathoracic)
-- interposition
42.58 interposition', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.59', 'Operations on esophagus
- Intrathoracic anastomosis of esophagus
-- Other intrathoracic anastomosis of esophagus 42.59
42.59 Other intrathoracic anastomosis of esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.61', 'antesternal or antethoracic
42.61 antesternal or antethoracic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.62', 'Operations on esophagus
- Antesternal anastomosis of esophagus
-- Antesternal esophagogastrostomy 42.62
42.62 Antesternal esophagogastrostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.63', 'Anastomosis
-- small bowel NEC
---- antesternal or antethoracic
----- with interposition
42.63 with interposition', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.64', 'antesternal or antethoracic
-- to intestinal segment
42.64 to intestinal segment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.65', 'Anastomosis
-- colon (intrathoracic) NEC
---- antesternal or antethoracic
----- with interposition
42.65 with interposition', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.66', 'antesternal or antethoracic NEC
42.66 antesternal or antethoracic NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.68', 'Anastomosis
-- antesternal or antethoracic
---- with interposition
42.68 with interposition', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.69', 'Operations on esophagus
- Antesternal anastomosis of esophagus
-- Other antesternal anastomosis of esophagus 42.69
42.69 Other antesternal anastomosis of esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.7', 'Diverticulectomy
- esophagomyotomy
42.7 esophagomyotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.81', 'tube
- feeding
-- esophageal
42.81 esophageal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.82', 'Repair, esophagocutaneous
----- esophagus
42.82 esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.83', 'esophagostomy
42.83 esophagostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.84', 'Repair, esophagocutaneous
42.84 Repair, esophagocutaneous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.85', 'Correction
- atresia
-- esophageal
42.85 esophageal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.86', 'Production
- subcutaneous tunnel for esophageal
-- anastomosis
42.86 anastomosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.87', 'esophagus NEC
42.87 esophagus NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.89', 'Repair
- stoma
-- esophagus
42.89 esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.91', 'Ligation
- esophageal vessel
42.91 esophageal vessel', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.92', 'Operations on esophagus
- Other operations on esophagus
-- Dilation of esophagus 42.92
42.92 Dilation of esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('42.99', 'Correction
- atresia
-- by magnetic forces
42.99 by magnetic forces', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.0', 'Incision (and drainage)
- stomach
43.0 stomach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.11', 'Formation
- fistula
-- percutaneous (endoscopic)
---- (transabdominal)
43.11 (transabdominal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.19', 'Gastrostomy 43.19
43.19 Other gastrostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.3', 'Fredet-Ramstedt operation (pyloromyotomy)
- (with wedge resection)
43.3 (with wedge resection)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.41', 'stomach
- endoscopic
43.41 endoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.42', 'Excision lesion -pituitary
- stomach NEC
43.42 stomach NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.49', 'stomach
43.49 stomach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.5', 'with
- anastomosis (to) NEC
-- esophagus
43.5 esophagus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.6', 'pyloric
43.6 pyloric', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.7', 'Diversion
- biliopancreatic(BPD)
43.7 biliopancreatic(BPD)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.81', 'with
- jejunal transposition
43.81 jejunal transposition', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.89', 'with
- anastomosis (to) NEC
43.89 anastomosis (to) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.91', 'complete NEC
- with intestinal interposition
43.91 with intestinal interposition', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('43.99', 'with
- complete gastrectomy
43.99 complete gastrectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.00', 'nerve (cranial) (peripheral) NEC
- vagus (transabdominal)', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.11', 'on
----- transabdominal (operative)
44.11 transabdominal (operative)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.12', 'on
----- through stoma (artificial)
44.12 through stoma (artificial)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.13', 'Gastroscopy
- through stoma 44.13
44.13 Other gastroscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.14', 'Biopsy -bone
- cardioesophageal (junction)
44.14 cardioesophageal (junction)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.15', 'Biopsy -bone
- cardioesophageal (junction)
-- open
44.15 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.19', 'Procedure -diagnostic
- gastric
44.19 gastric', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.2', 'Other operations on stomach
- Pyloroplasty 44.2
44.2 Pyloroplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.21', 'pylorus
- by incision
44.21 by incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.22', 'pylorus
- endoscopic
44.22 endoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.29', 'sling Fimbriectomy
---- Finney operation (pyloroplasty)
44.29 Finney operation (pyloroplasty)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.31', 'Bypass
- gastric
-- high
44.31 high', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.32', 'PEGJJ (percutaneous [endoscopic]
- gastrojejunostomy)
44.32 gastrojejunostomy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.38', 'Bypass
- gastric
-- laparoscopic
44.38 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.39', 'Bypass
- gastric
44.39 gastric', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.40', 'Repair, esophagocutaneous
----- peptic ulcer (bleeding) (perforated)
44.40 peptic ulcer (bleeding) (perforated)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.41', 'ulcer (bleeding) (peptic) (perforated)
- gastric
44.41 gastric', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.42', 'ulcer (bleeding) (peptic) (perforated)
- duodenum
44.42 duodenum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.43', 'Suture (laceration)
- duodenum
-- endoscopic
44.43 endoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.44', 'Embolization (transcatheter)
- artery (selective)
-- duodenal (transcatheter)
44.44 duodenal (transcatheter)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.49', 'also laparoscopic
- TO PROCEDURES (FY10)
---- Control hemorrhage
----- duodenum (ulcer)
44.49 duodenum (ulcer)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.5', 'Operation
- Steinberg
44.5 Steinberg', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.61', 'Repair
- stomach NEC
-- laceration (by suture)
44.61 laceration (by suture)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.62', 'stoma
- stomach
44.62 stomach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.63', 'Closure fistula
-- stomach NEC
44.63 stomach NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.64', 'spinal,
- TO PROCEDURES (FY10)
---- Gastropexy
44.64 Gastropexy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.65', 'Other operations on stomach
- Other repair of stomach
-- Esophagogastroplasty 44.65
44.65 Esophagogastroplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.66', 'esophagogastric sphincteric competence
-- NEC
44.66 NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.67', 'esophagogastric sphincteric competence
- laparoscopic
44.67 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.68', 'gastric
44.68 gastric', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.69', 'diverticulum
- gastric
44.69 gastric', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.91', 'Ligation
- gastric
-- varices
44.91 varices', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.92', 'volvulus
- stomach
44.92 stomach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.93', 'Insertion
- balloon
-- gastric
44.93 gastric', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.94', 'Removal -gallstones
- gastric bubble (balloon)
44.94 gastric bubble (balloon)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.95', 'device
- Lap-
44.95 Lap-', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.96', 'Revision -CRT-P
- gastric band, laparoscopic
44.96 gastric band, laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.97', 'Removal -gallstones
- gastric band(adjustable),laparoscopic
44.97 gastric band(adjustable),laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('44.99', 'gastric NEC
44.99 gastric NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.00', 'Coloileotomy
45.00 Coloileotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.01', 'Enterocentesis
- duodenum
45.01 duodenum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.02', 'Enterocentesis
- small intestine NEC
45.02 small intestine NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.03', 'Cecotomy
45.03 Cecotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.11', 'transabdominal (operative)
45.11 transabdominal (operative)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.12', 'through stoma (artificial)
45.12 through stoma (artificial)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.13', 'Colonoscopy
- through stoma 45.13
45.13 Other colonoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.14', 'Biopsy -bone
- duodenum
45.14 duodenum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.15', 'Incision, excision, and anastomosis of intestine
- Diagnostic procedures on small intestine
-- Open biopsy of small intestine 45.15
45.15 Open biopsy of small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.16', 'with closed biopsy
45.16 with closed biopsy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.19', 'Procedure -diagnostic
- ileum
45.19 ileum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.21', 'Colonoscopy
- intraoperative
45.21 intraoperative', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.22', 'Colonoscopy
- through stoma (artificial)
45.22 through stoma (artificial)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.23', 'Colonoscopy
45.23 Colonoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.24', 'Proctosigmoidoscopy (rigid)
- flexible
45.24 flexible', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.25', 'Biopsy -bone
- cecum
45.25 cecum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.26', 'Biopsy -bone
- cecum
-- open
45.26 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.27', 'Incision, excision, and anastomosis of intestine
- Diagnostic procedures on large intestine
-- Intestinal biopsy, site unspecified 45.27
45.27 Intestinal biopsy, site unspecified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.28', 'Procedure -diagnostic
- intestine
-- large
45.28 large', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.29', 'Procedure -diagnostic
- intestine
45.29 intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.30', 'Destruction -lesion (local) --- Cont.
- duodenum NEC
-- endoscopic
45.30 endoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.31', 'Destruction -lesion (local) --- Cont.
- duodenum NEC
-- by excision
45.31 by excision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.32', 'Destruction -lesion (local) --- Cont.
- duodenum NEC
45.32 duodenum NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.33', 'Destruction -lesion (local) --- Cont.
- intestine (large)
-- by excision
45.33 by excision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.34', 'Destruction -lesion (local) --- Cont.
- intestine (large)
-- small
45.34 small', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.41', 'Destruction -lesion (local) --- Cont.
- intestine (large)
-- by excision
45.41 by excision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.42', 'Destruction -lesion (local) --- Cont.
- intestine (large)
-- endoscopic
--- polypectomy
45.42 polypectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.43', 'Ablation
- lesion
-- large
--- endoscopic
45.43 endoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.49', 'Ablation
- lesion
-- large
45.49 large', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.50', 'Resection colon
- intestine (partial) NEC
-- for interposition
45.50 for interposition', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.51', 'intestinal segment for interposition
- small
45.51 small', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.52', 'intestinal segment for interposition
- large
45.52 large', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.61', 'Incision, excision, and anastomosis of intestine
- Other excision of small intestine
-- Multiple segmental resection of small intestine 45.61
45.61 Multiple segmental resection of small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.62', 'Ileoectomy (partial)
45.62 Ileoectomy (partial)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.63', 'Enterectomy NEC
45.63 Enterectomy NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.71', 'also laparoscopic
----- open and other
45.71 open and other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.72', 'Cecectomy (with resection of terminal
- open and other
45.72 open and other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.73', 'right (extended)
- open and other
45.73 open and other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.74', 'Resection colon
-- transverse
--- open and other
45.74 open and other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.75', 'left
- open and other
45.75 open and other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.76', 'also laparoscopic
----- open and other
45.76 open and other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.79', 'Colocolostomy
- proximal to distal segment
45.79 proximal to distal segment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.8', 'Incision, excision, and anastomosis of intestine
- Total intra-abdominal colectomy 45.8
45.8 Total intra-abdominal colectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.81', 'also laparoscopic
----- laparoscopic
45.81 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.82', 'also laparoscopic
----- open
45.82 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.83', 'also laparoscopic
----- other
45.83 other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.90', 'Anastomosis
- intestine
45.90 intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.91', 'Anastomosis
- intestine
-- small-to-small
45.91 small-to-small', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.92', 'Anastomosis
- intestine
-- small-to-rectal stump
45.92 small-to-rectal stump', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.93', 'Anastomosis
- ileorectal
45.93 ileorectal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.94', 'Anastomosis
- intestine
-- large-to-large
45.94 large-to-large', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('45.95', 'anus (with formation of endorectal
-- pouch)
45.95 pouch)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.01', 'Enterostomy NEC
- duodenum
-- loop
46.01 loop', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.02', 'Resection colon
- intestine (partial) NEC
-- small intestine
46.02 small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.03', 'Colostomy (ileo-ascending) (ileotransverse)
- loop
46.03 loop', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.04', 'of
---- Mikulicz operation (exteriorization of intestine)
----- second stage
46.04 second stage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.10', 'Colostomy (ileo-ascending) (ileotransverse)
- (perineal) (transverse)
46.10 (perineal) (transverse)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.11', 'Colostomy (ileo-ascending) (ileotransverse)
- temporary
46.11 temporary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.13', 'Colostomy (ileo-ascending) (ileotransverse)
- permanent (magnetic)
46.13 permanent (magnetic)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.14', 'Colostomy (ileo-ascending) (ileotransverse)
- delayed opening
46.14 delayed opening', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.20', 'Enterostomy NEC
- ileum (Brooke) (Dragstedt)
46.20 ileum (Brooke) (Dragstedt)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.21', 'Hendon (temporary)
46.21 Hendon (temporary)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.22', 'continent (permanent)
46.22 continent (permanent)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.23', 'permanent
46.23 permanent', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.24', 'delayed opening
46.24 delayed opening', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.31', 'Enterostomy NEC
- delayed opening
46.31 delayed opening', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.32', 'Enterostomy NEC
- feeding NEC
-- percutaneous (endoscopic)
46.32 percutaneous (endoscopic)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.39', 'Enterostomy NEC
46.39 Enterostomy NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.40', 'Enlargement ---Cont
- intestinal stoma
46.40 intestinal stoma', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.41', 'Enlargement ---Cont
- intestinal stoma
-- small intestine
46.41 small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.42', 'rod
- 35.52
----- colostomy
46.42 colostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.43', 'Enlargement ---Cont
- intestinal stoma
-- large intestine
46.43 large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.50', 'enterostomy
46.50 enterostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.51', 'duodenostomy
46.51 duodenostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.52', 'cecostomy
46.52 cecostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.60', 'intestine
46.60 intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.61', 'duodenum
- to abdominal wall
46.61 to abdominal wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.62', 'Cecoplication
46.62 Cecoplication', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.63', 'Cecocoloplicopexy
46.63 Cecocoloplicopexy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.64', 'Cecofixation
46.64 Cecofixation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.71', 'Suture (laceration)
- duodenum
46.71 duodenum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.72', 'vessel thorax
- TO PROCEDURES (FY10)
---- Closure fistula
----- duodenum
46.72 duodenum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.73', 'Enterorrhaphy
- small intestine
46.73 small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.74', 'Excision
- fistula
-- ileorectal
46.74 ileorectal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.75', 'Cecorrhaphy
46.75 Cecorrhaphy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.76', 'fistula
- cecosigmoidal
46.76 cecosigmoidal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.79', 'ulcer (bleeding) (peptic) (perforated)
- intestine (perforated)
46.79 intestine (perforated)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.80', 'Correction
- intestinal malrotation
46.80 intestinal malrotation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.81', 'Correction
- intestinal malrotation
-- small
46.81 small', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.82', 'Correction
- intestinal malrotation
-- large
46.82 large', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.85', 'intestine
- endoscopic (balloon)
46.85 endoscopic (balloon)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.86', 'colon (endoscopic) (balloon)
- endoscopic
46.86 endoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.87', 'colon (endoscopic) (balloon)
- other
46.87 other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.91', 'Other operations on intestine
- Other operations on intestines
-- Myotomy of sigmoid colon 46.91
46.91 Myotomy of sigmoid colon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.92', 'Other operations on intestine
- Other operations on intestines
-- Myotomy of other parts of colon 46.92
46.92 Myotomy of other parts of colon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.93', 'anastomosis
- intestine
46.93 intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.94', 'Other operations on intestine
- Other operations on intestines
-- Revision of anastomosis of large intestine 46.94
46.94 Revision of anastomosis of large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.95', 'intestine (large) (local)
- small
46.95 small', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.96', 'intestine (large) (local)
46.96 intestine (large) (local)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.97', 'Other operations on intestine
- Other operations on intestines
-- Transplant of intestine 46.97
46.97 Transplant of intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('46.99', 'Enteroentectropy
46.99 Enteroentectropy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('47.01', 'Drainage
- abscess
-- with appendectomy
--- laparoscopic
47.01 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('47.09', 'Drainage
- abscess
-- with appendectomy
47.09 with appendectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('47.11', 'Operations on appendix
- Incidental appendectomy
-- Laparoscopic incidental appendectomy 47.11
47.11 Laparoscopic incidental appendectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('47.19', 'tract) cerebral (intracranial)
- TO PROCEDURES (FY10)
---- incidental
47.19 incidental', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('47.2', 'Drainage
- abscess
-- appendix
47.2 appendix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('47.91', 'Fistulization
- appendix
47.91 appendix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('47.92', 'fistula
- appendix
47.92 appendix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('47.99', 'appendix
47.99 appendix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.0', 'Correction
- atresia
-- rectum
48.0 rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.1', 'Proctostomy
48.1 Proctostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.21', 'Proctoscopy
- transabdominal approach
48.21 transabdominal approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.22', 'Proctoscopy
- through stoma (artificial)
48.22 through stoma (artificial)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.23', 'Exploration
- rectum
48.23 rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.24', 'Biopsy
- rectum
48.24 rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.25', 'Biopsy
- rectum
-- open
48.25 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.26', 'Operations on rectum, rectosigmoid and perirectal tissue
- Diagnostic procedures on rectum, rectosigmoid and perirectal
-- Biopsy of perirectal tissue 48.26
48.26 Biopsy of perirectal tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.29', '(for dental
- TO PROCEDURES (FY10)
---- Procedure -diagnostic
----- perirectal tissue
48.29 perirectal tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.31', 'Operations on rectum, rectosigmoid and perirectal tissue
- Local excision or destruction of lesion or tissue of rectum
-- Radical electrocoagulation of rectal lesion or tissue 48.31
48.31 Radical electrocoagulation of rectal lesion or tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.32', 'Operations on rectum, rectosigmoid and perirectal tissue
- Local excision or destruction of lesion or tissue of rectum
-- Other electrocoagulation of rectal lesion or tissue 48.32
48.32 Other electrocoagulation of rectal lesion or tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.33', 'eyelid electrocoagulation
----- laser (Argon)
48.33 laser (Argon)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.34', 'Operations on rectum, rectosigmoid and perirectal tissue
- Local excision or destruction of lesion or tissue of rectum
-- Destruction of rectal lesion or tissue by cryosurgery 48.34
48.34 Destruction of rectal lesion or tissue by cryosurgery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.35', 'Excision lesion -pituitary
- rectum
48.35 rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.36', 'Excision lesion -pituitary
- rectum
-- polyp (endoscopic)
48.36 polyp (endoscopic)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.40', 'Proctectomy (partial)
- not otherwise specified
48.40 not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.41', 'Operation
- endorectal pull-through
48.41 endorectal pull-through', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.42', 'Proctectomy (partial)
- laparoscopic
48.42 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.43', 'Proctectomy (partial)
- open
48.43 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.49', 'Altemeier operation (perineal rectal
- pull-through)
48.49 pull-through)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.50', 'Hemorrhoidectomy
- excision 48.50
48.50 Hemorrhoidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.51', 'laparoscopic
48.51 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.52', 'open
48.52 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.59', 'other
48.59 other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.61', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Rectosigmoidectomy
----- transsacral
48.61 transsacral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.62', 'Colostomy (ileo-ascending) (ileotransverse)
- with anterior rectal resection
48.62 with anterior rectal resection', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.63', '(BLVR) for collapse of lung
----- anterior
48.63 anterior', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.64', 'von Kraske (proctectomy)
48.64 von Kraske (proctectomy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.65', 'Duhamel operation (abdominoperineal
- pull-through)
48.65 pull-through)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.69', 'Proctectomy (partial)
- rectum
48.69 rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.71', 'Proctorrhaphy
48.71 Proctorrhaphy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.72', 'stoma
- rectum
48.72 rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.73', 'fistula
- anorectal
48.73 anorectal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.74', 'Rectorectostomy
48.74 Rectorectostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.75', 'Proctopexy (Delorme)
- abdominal (Ripstein)
48.75 abdominal (Ripstein)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.76', 'Operation
- Pemberton
-- rectum (mobilization and fixation
--- prolapse repair)
48.76 prolapse repair)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.79', 'Proctoplasty
48.79 Proctoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.81', 'Incision (and drainage)
- rectovaginal septum
48.81 rectovaginal septum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.82', 'Excision lesion -pituitary
- rectovaginal septum
48.82 rectovaginal septum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.91', 'Incision (and drainage)
- rectum
-- stricture
48.91 stricture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.92', 'anorectal
48.92 anorectal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.93', 'Closure fistula
-- perirectal
48.93 perirectal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('48.99', 'Formation
- fistula
-- rectovaginal
48.99 rectovaginal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.01', 'ischiorectal tissue
- abscess
49.01 abscess', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.02', 'undercutting
49.02 undercutting', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.03', 'perianal tissue
- skin tags
49.03 skin tags', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.04', 'perianal tissue
49.04 perianal tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.11', 'Operations on anus
- Incision or excision of anal fistula
-- Anal fistulotomy 49.11
49.11 Anal fistulotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.12', 'Excision
- fistula
-- anal
49.12 anal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.21', 'Anoscopy
49.21 Anoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.22', 'Operations on anus
- Diagnostic procedures on anus and perianal tissue
-- Biopsy of perianal tissue 49.22
49.22 Biopsy of perianal tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.23', 'Operations on anus
- Diagnostic procedures on anus and perianal tissue
-- Biopsy of anus 49.23
49.23 Biopsy of anus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.29', 'only), eye muscle (oblique) (rectus)
- and amnion
----- anus
49.29 anus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.31', 'Cryptectomy (anus)
- endoscopic
49.31 endoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.39', 'Cryptectomy (anus)
49.39 Cryptectomy (anus)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.41', 'fracture, fracture dislocation
----- hemorrhoids (manual)
49.41 hemorrhoids (manual)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.42', 'Destruction
- hemorrhoids
-- sclerotherapy
49.42 sclerotherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.43', 'Operations on anus
- Procedures on hemorrhoids
-- Cauterization of hemorrhoids 49.43
49.43 Cauterization of hemorrhoids', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.44', 'Cryotherapy
- hemorrhoids
49.44 hemorrhoids', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.45', 'Ligation
- hemorrhoids
49.45 hemorrhoids', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.46', 'with hemorrhoidectomy
49.46 with hemorrhoidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.47', 'Operations on anus
- Procedures on hemorrhoids
-- Evacuation of thrombosed hemorrhoids 49.47
49.47 Evacuation of thrombosed hemorrhoids', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.49', 'Destruction
- hemorrhoids
49.49 hemorrhoids', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.51', 'radical
- TO PROCEDURES (FY10)
---- Division
----- left lateral
49.51 left lateral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.52', 'radical
- TO PROCEDURES (FY10)
---- Division
----- posterior
49.52 posterior', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.59', 'radical
- TO PROCEDURES (FY10)
---- Division
----- anal (external) (internal)
49.59 anal (external) (internal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.6', 'Operations on anus
- Excision of anus 49.6
49.6 Excision of anus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.71', 'Repair -aneurysm -by or with
- anus
-- laceration (by suture)
49.71 laceration (by suture)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.72', 'Cerclage
- anus
49.72 anus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.73', 'fistula
- anus
49.73 anus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.74', 'Transplant, transplantation
- gracilis muscle (for)
-- anal incontinence
49.74 anal incontinence', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.75', 'anal sphincter
- with revision
49.75 with revision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.76', 'anal sphincter
- without revision
49.76 without revision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.79', 'Anoplasty
49.79 Anoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.91', 'Bypass, perisplenic
----- septum
49.91 septum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.92', 'Operations on anus
- Other operations on anus
-- Insertion of subcutaneous electrical anal stimulator 49.92
49.92 Insertion of subcutaneous electrical anal stimulator', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.93', 'Removal -foreign body
-- by incision
49.93 by incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.94', 'prolapse
- anus (operative)
49.94 anus (operative)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.95', 'hemorrhage
- anus (postoperative)
49.95 anus (postoperative)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('49.99', 'Operation
- anus NEC
49.99 anus NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50', 'Therapy
- radiation
-- low voltage (1
50 low voltage (1', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.0', 'liver
50.0 liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.11', 'liver
50.11 liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.12', 'liver
- open
50.12 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.13', 'liver
- transjugular
50.13 transjugular', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.14', 'liver
- laparoscopic
50.14 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.19', 'Procedure -diagnostic
- hepatic
50.19 hepatic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.21', 'Marsupialization
- cyst
-- liver
50.21 liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.22', 'liver (partial) (wedge)
50.22 liver (partial) (wedge)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.23', 'Ablation
- lesion
-- open
50.23 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.24', 'Ablation
- lesion
-- percutaneous
50.24 percutaneous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.25', 'Ablation
- lesion
-- laparoscopic
50.25 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.26', 'Ablation
- lesion
-- liver
50.26 liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.29', 'Destruction -lesion (local) --- Cont.
- liver
50.29 liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.3', 'liver (partial) (wedge)
- lobe (total)
50.3 lobe (total)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.4', 'liver (partial) (wedge)
- total
50.4 total', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.51', 'Operations on liver
- Liver transplant
-- Auxiliary liver transplant 50.51
50.51 Auxiliary liver transplant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.59', 'Operations on liver
- Liver transplant
-- Other transplant of liver 50.59
50.59 Other transplant of liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.61', 'Repair hernia -ventral
- liver NEC
-- laceration
50.61 laceration', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.69', 'Kehr operation (hepatopexy)
50.69 Kehr operation (hepatopexy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.91', 'liver
- by aspiration
50.91 by aspiration', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.92', 'Assistance
- hepatic, extracorporeal
50.92 hepatic, extracorporeal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.93', 'liver, localized
50.93 liver, localized', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.94', 'Operations on liver
- Other operations on liver
-- Other injection of therapeutic substance into liver 50.94
50.94 Other injection of therapeutic substance into liver', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('50.99', 'Littlewood (forequarter amputation)
- liver NEC
50.99 liver NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.01', 'gallbladder
- by
-- aspiration
51.01 aspiration', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.02', 'Operations on gallbladder and biliary tract
- Cholecystotomy and cholecystostomy
-- Trocar cholecystostomy 51.02
51.02 Trocar cholecystostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.03', 'Operations on gallbladder and biliary tract
- Cholecystotomy and cholecystostomy
-- Other cholecystostomy 51.03
51.03 Other cholecystostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.04', 'Bobb operation (cholelithotomy)
51.04 Bobb operation (cholelithotomy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.10', 'biliary tract (operative)
- by retrograde cholangiopancreatography
-- (ERCP)
51.10 (ERCP)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.11', 'biliary tract (operative)
51.11 biliary tract (operative)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.12', 'Operations on gallbladder and biliary tract
- Diagnostic procedures on biliary tract
-- Percutaneous biopsy of gallbladder or bile ducts 51.12
51.12 Percutaneous biopsy of gallbladder or bile ducts', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.13', 'Biopsy
- sphincter of Oddi
-- open
51.13 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.14', 'Biopsy
- sphincter of Oddi
51.14 sphincter of Oddi', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.15', 'Operations on gallbladder and biliary tract
- Diagnostic procedures on biliary tract
-- Pressure measurement of sphincter of Oddi 51.15
51.15 Pressure measurement of sphincter of Oddi', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.19', 'Procedure -diagnostic
- gallbladder
51.19 gallbladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.21', 'Operations on gallbladder and biliary tract
- Cholecystectomy
-- Other partial cholecystectomy 51.21
51.21 Other partial cholecystectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.22', 'Resection colon
- gallbladder (total)
51.22 gallbladder (total)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.23', 'Operations on gallbladder and biliary tract
- Cholecystectomy
-- Laparoscopic cholecystectomy 51.23
51.23 Laparoscopic cholecystectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.24', 'Operations on gallbladder and biliary tract
- Cholecystectomy
-- Laparoscopic partial cholecystectomy 51.24
51.24 Laparoscopic partial cholecystectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.31', 'Anastomosis
- gallbladder
-- hepatic ducts
51.31 hepatic ducts', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.32', 'Anastomosis
- gallbladder
-- intestine
51.32 intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.33', 'Anastomosis
- gallbladder
-- pancreas
51.33 pancreas', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.34', 'Anastomosis
- gallbladder
-- stomach
51.34 stomach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.35', 'Anastomosis
- gallbladder
51.35 gallbladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.36', 'Roux-en-Y
- bile duct
51.36 bile duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.37', 'Kasai portoenterostomy
51.37 Kasai portoenterostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.39', 'bile ducts
51.39 bile ducts', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.41', 'bile duct(s)
- common duct
-- removal of calculus
51.41 removal of calculus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.42', 'common bile duct
51.42 common bile duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.43', 'common bile duct
- by intubation
51.43 by intubation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.49', 'bile duct(s)
- for relief of obstruction
51.49 for relief of obstruction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.51', 'bile duct(s)
- common duct
51.51 common duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.59', 'bile duct(s)
51.59 bile duct(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.61', 'cystic
- duct remnant
51.61 duct remnant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.62', 'diverticulum
- ampulla of Vater
51.62 ampulla of Vater', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.63', 'bile duct NEC
- common duct NEC
51.63 common duct NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.64', 'Ablation
- biliary tract (lesion) by ERCP
51.64 biliary tract (lesion) by ERCP', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.69', 'Excision
- bile duct
51.69 bile duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.71', 'bile duct NEC
- laceration (by suture) NEC
-- common bile duct
51.71 common bile duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.72', 'stoma
- common duct
51.72 common duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.79', 'Anastomosis
- intrahepatic
51.79 intrahepatic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.81', 'Operations on gallbladder and biliary tract
- Other operations on biliary ducts and sphincter of Oddi
-- Dilation of sphincter of Oddi 51.81
51.81 Dilation of sphincter of Oddi', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.82', 'Incision (and drainage)
- sphincter of Oddi
51.82 sphincter of Oddi', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.83', 'Operations on gallbladder and biliary tract
- Other operations on biliary ducts and sphincter of Oddi
-- Pancreatic sphincteroplasty 51.83
51.83 Pancreatic sphincteroplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.84', 'bile duct(s)
- common duct
-- relief of obstruction
--- endoscopic
51.84 endoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.85', 'Incision (and drainage)
- sphincter of Oddi
-- endoscopic
51.85 endoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.86', 'femoral tibial component
- TO PROCEDURES (FY10)
---- Insertion tube
----- nasobiliary (drainage)
51.86 nasobiliary (drainage)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.87', 'common bile duct
- by intubation
-- endoscopic
51.87 endoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.88', 'bile duct(s)
- common duct
-- removal of calculus
--- endoscopic
51.88 endoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.89', 'Operation
- sphincter of Oddi NEC
51.89 sphincter of Oddi NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.91', 'Repair -fracture
- gallbladder
51.91 gallbladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.92', 'cholecystostomy
51.92 cholecystostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.93', 'fistula
- cholecystocolic
51.93 cholecystocolic', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.98', 'common bile duct
- by intubation
-- percutaneous
51.98 percutaneous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('51.99', 'Cannulation
- ampulla of Vater
51.99 ampulla of Vater', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.01', 'pancreatic cyst
52.01 pancreatic cyst', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.09', 'Exploration
- pancreas
52.09 pancreas', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.11', 'Operations on pancreas
- Diagnostic procedures on pancreas
-- Closed [aspiration] [needle] [percutaneous] biopsy of pancreas 52.11
52.11 Closed [aspiration] [needle] [percutaneous] biopsy of pancreas', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.12', 'Operations on pancreas
- Diagnostic procedures on pancreas
-- Open biopsy of pancreas 52.12
52.12 Open biopsy of pancreas', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.13', 'ERP (endoscopic retrograde
- pancreatography)
52.13 pancreatography)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.14', 'Operations on pancreas
- Diagnostic procedures on pancreas
-- Closed [endoscopic] biopsy of pancreatic duct 52.14
52.14 Closed [endoscopic] biopsy of pancreatic duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.19', '(for dental
- TO PROCEDURES (FY10)
---- Procedure -diagnostic
----- pancreas
52.19 pancreas', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.21', 'Operations on pancreas
- Local excision or destruction of pancreas and pancreatic duct
-- Endoscopic excision or destruction of lesion or tissue of pancreatic 52.21
52.21 Endoscopic excision or destruction of lesion or tissue of pancreatic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.22', 'Operations on pancreas
- Local excision or destruction of pancreas and pancreatic duct
-- Other excision or destruction of lesion or tissue of pancreas or 52.22
52.22 Other excision or destruction of lesion or tissue of pancreas or', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.3', 'Marsupialization
- cyst
-- pancreas
52.3 pancreas', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.4', 'Pancreaticocystoenterostomy
52.4 Pancreaticocystoenterostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.51', 'Excision -pancreas
- partial NEC
-- proximal (head) (with part of
--- duodenectomy)
52.51 duodenectomy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.53', 'Child operation (radical subtotal
- pancreatectomy)
52.53 pancreatectomy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.59', 'Excision -pancreas
- partial NEC
52.59 partial NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.6', 'Pancreatectomy (total) (with synchronous
- duodenectomy)
52.6 duodenectomy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.7', 'Pancreatectomy (total) (with synchronous
- radical
52.7 radical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.80', 'Operations on pancreas
- Transplant of pancreas
-- Pancreatic transplant, not otherwise specified 52.80
52.80 Pancreatic transplant, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.81', 'Reimplantation
- pancreatic tissue
52.81 pancreatic tissue', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.92', 'Cannulation
- pancreatic duct
52.92 pancreatic duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.93', 'pancreatic duct
- endoscopic
52.93 endoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.94', 'anus) pancreatic duct
----- endoscopic
52.94 endoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.95', 'Closure fistula
-- pancreaticoduodenal
52.95 pancreaticoduodenal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.96', 'pancreas (by catheter)
- by anastomosis
52.96 by anastomosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.98', 'pancreatic duct
- endoscopic
52.98 endoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('52.99', 'pancreatic duct
52.99 pancreatic duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.00', 'Repair -hernia
- Ferguson
53.00 Ferguson', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.01', 'rod
- TO PROCEDURES (FY10)
---- Repair hernia -inguinal
----- other and open
53.01 other and open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.02', 'rod
- TO PROCEDURES (FY10)
---- Repair hernia -inguinal
----- other and open
53.02 other and open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.03', 'rod
- TO PROCEDURES (FY10)
---- Repair hernia -inguinal
----- with prosthesis or graft
53.03 with prosthesis or graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.04', 'rod
- TO PROCEDURES (FY10)
---- Repair hernia -inguinal
----- with prosthesis or graft
53.04 with prosthesis or graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.05', 'Repair -hernia
- inguinal (unilateral)
-- with prosthesis or graft
53.05 with prosthesis or graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.10', 'Repair -hernia
- inguinal (unilateral)
-- bilateral
53.10 bilateral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.11', 'Repair -hernia
- inguinal (unilateral)
-- bilateral
--- other and open
53.11 other and open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.12', 'Repair -hernia
- inguinal (unilateral)
-- bilateral
--- other and open
53.12 other and open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.13', 'Repair -hernia
- inguinal (unilateral)
-- bilateral
--- other and open
53.13 other and open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.17', 'Repair -hernia
- inguinal (unilateral)
-- bilateral
--- with prosthesis or graft
53.17 with prosthesis or graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.21', 'Repair -hernia
- femoral (unilateral)
-- with prosthesis or graft
53.21 with prosthesis or graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.29', 'Dissection
- femoral hernia
53.29 femoral hernia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.31', 'Repair -hernia
- femoral (unilateral)
-- with prosthesis or graft
53.31 with prosthesis or graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.39', 'Repair -hernia
- femoral (unilateral)
-- bilateral
53.39 bilateral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.41', 'Repair of hernia
- Repair of umbilical hernia
-- Other and open repair of umbilical hernia with graft or prosthesis 53.41
53.41 Other and open repair of umbilical hernia with graft or prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.42', 'Mayo
- herniorrhaphy
-- with graft or prosthesis
53.42 with graft or prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.43', 'Mayo
- herniorrhaphy
-- laparoscopic
53.43 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.49', 'Mayo
- other open
53.49 other open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.51', 'Cattell operation (herniorrhaphy)
53.51 Cattell operation (herniorrhaphy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.59', 'Repair -hernia
- epigastric
53.59 epigastric', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.63', 'rod
- 35.52
----- laparoscopic
53.63 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.69', 'Repair -hernia
- epigastric
-- with prosthesis or graft
53.69 with prosthesis or graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.71', 'Repair -hernia
- diaphragmatic
-- abdominal approach
--- laparoscopic
53.71 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.72', 'Repair -hernia
- diaphragmatic
-- abdominal approach
--- other and open
53.72 other and open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.75', 'Repair -hernia
- diaphragmatic
-- abdominal approach
--- unspecified
53.75 unspecified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.80', 'Collis-Nissen operation (hiatal hernia
- with esophagogastroplasty)
53.80 with esophagogastroplasty)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.81', 'Repair of hernia
- Repair of diaphragmatic hernia, thoracic approach
-- Plication of the diaphragm 53.81
53.81 Plication of the diaphragm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.82', 'graft parasternal
53.82 graft parasternal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.83', 'Repair -hernia
- diaphragmatic
-- thoracic, thoracoabdominal
--- laparoscopic
53.83 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.84', 'Repair -hernia
- diaphragmatic
-- thoracic, thoracoabdominal
--- other and open
53.84 other and open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('53.9', 'Enterocelectomy
53.9 Enterocelectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.0', 'extraperitoneal
54.0 extraperitoneal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.11', 'Laparotomy 54.11
54.11 Exploratory laparotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.12', 'Incision (and drainage) -hematoma
- laparotomy site
54.12 laparotomy site', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.19', 'hemorrhage
- abdominal cavity
54.19 abdominal cavity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.21', 'Abdominoscopy
54.21 Abdominoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.22', 'Other operations on abdominal region
- Diagnostic procedures of abdominal region
-- Biopsy of abdominal wall or umbilicus 54.22
54.22 Biopsy of abdominal wall or umbilicus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.23', 'mesentery
54.23 mesentery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.24', 'Biopsy
- retroperitoneal tissue
54.24 retroperitoneal tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.25', 'peritoneal (diagnostic)
54.25 peritoneal (diagnostic)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.29', 'Procedure -diagnostic
- omentum
54.29 omentum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.3', 'cyst
- urachal (bladder)
-- abdominal wall
54.3 abdominal wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.4', 'Excision
- gastrocolic ligament
54.4 gastrocolic ligament', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.51', 'Enterolysis
- laparoscopic
54.51 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.59', 'Enterolysis
54.59 Enterolysis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.61', 'abdominal wall
54.61 abdominal wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.62', 'Other operations on abdominal region
- Suture of abdominal wall and peritoneum
-- Delayed closure of granulating abdominal wound 54.62
54.62 Delayed closure of granulating abdominal wound', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.63', 'Laparorrhaphy
54.63 Laparorrhaphy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.64', 'peritoneum NEC
- by suture
54.64 by suture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.71', 'Repair -fracture
- gastroschisis
54.71 gastroschisis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.72', 'Other operations on abdominal region
- Other repair of abdominal wall and peritoneum
-- Other repair of abdominal wall 54.72
54.72 Other repair of abdominal wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.73', 'peritoneum NEC
54.73 peritoneum NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.74', 'Omentofixation
54.74 Omentofixation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.75', 'of
---- Mesenteriopexy
54.75 Mesenteriopexy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.91', 'Abdominocentesis
54.91 Abdominocentesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.92', 'Removal -foreign body
- peritoneal cavity
54.92 peritoneal cavity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.93', 'Formation
- fistula
-- cutaneoperitoneal
54.93 cutaneoperitoneal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.94', 'Shunt
- peritoneal-jugular
54.94 peritoneal-jugular', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.95', 'Exploration
- shunt
-- peritoneal site
54.95 peritoneal site', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.96', 'peritoneal cavity
- air
54.96 air', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.98', 'cordis cannula
54.98 cordis cannula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('54.99', 'Operation
- omentum NEC
54.99 omentum NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.01', 'kidney (by incision)
55.01 kidney (by incision)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.02', 'code
- TO PROCEDURES (FY10)
---- Insertion
----- kidney
55.02 kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.03', 'Extraction -
- kidney stone(s), percutaneous
55.03 kidney stone(s), percutaneous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.04', 'Operations on kidney
- Nephrotomy and nephrostomy
-- Percutaneous nephrostomy with fragmentation 55.04
55.04 Percutaneous nephrostomy with fragmentation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.11', 'Calycotomy (renal)
55.11 Calycotomy (renal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.12', 'Pelviostomy
55.12 Pelviostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.21', 'Nephroscopy
55.21 Nephroscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.22', 'on
----- pelvis
55.22 pelvis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.23', 'Biopsy
- kidney 55.23
55.23 Closed [percutaneous] [needle] biopsy of kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.24', 'kidney
- open
55.24 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.29', 'Procedure -diagnostic
- kidney
55.29 kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.31', 'Destruction -lesion (local) --- Cont.
- kidney
-- by marsupialization
55.31 by marsupialization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.32', 'Ablation
- lesion
-- renal
--- open
55.32 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.33', 'Ablation
- lesion
-- renal
--- percutaneous
55.33 percutaneous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.34', 'Ablation
- lesion
-- renal
--- laparoscopic
55.34 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.35', 'Ablation
- lesion
-- renal
55.35 renal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.39', 'Cavernotomy, kidney
55.39 Cavernotomy, kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.4', 'Calicectomy (renal)
55.4 Calicectomy (renal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.51', 'Nephrectomy
- partial 55.51
55.51 Nephroureterectomy with bladder cuff', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.52', 'Nephrectomy (complete) (total) (unilateral)
- remaining or solitary kidney
55.52 remaining or solitary kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.53', 'Nephrectomy (complete) (total) (unilateral)
- removal transplanted kidney
55.53 removal transplanted kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.54', 'Nephrectomy (complete) (total) (unilateral)
- bilateral
55.54 bilateral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.61', 'Reimplantation
- kidney
55.61 kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.69', 'Renotransplantation NEC
55.69 Renotransplantation NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.7', 'Nephrocolopexy
55.7 Nephrocolopexy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.81', 'Nephrorrhaphy
55.81 Nephrorrhaphy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.82', 'stoma
- kidney
55.82 kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.83', 'Closure fistula
-- renal
55.83 renal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.84', 'Detorsion
- kidney
55.84 kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.85', 'isthmus
- horseshoe kidney
55.85 horseshoe kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.86', 'Anastomosis
- kidney (pelvis)
55.86 kidney (pelvis)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.87', 'Culp-Deweerd operation (spiral
- pyeloplasty)
55.87 pyeloplasty)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.89', 'Nephroplasty
55.89 Nephroplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.91', 'Capsulectomy
- kidney
55.91 kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.92', 'kidney (percutaneous)
55.92 kidney (percutaneous)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.93', 'Reinsertion
- nephrostomy tube
55.93 nephrostomy tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.94', 'Reinsertion
- pyelostomy tube
55.94 pyelostomy tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.95', 'kidney, local
55.95 kidney, local', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.96', 'renal pelvis (cyst)
55.96 renal pelvis (cyst)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.97', 'kidney, mechanical
55.97 kidney, mechanical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.98', 'Operations on kidney
- Other operations on kidney
-- Removal of mechanical kidney 55.98
55.98 Removal of mechanical kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('55.99', 'Operation
- kidney NEC
55.99 kidney NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.0', 'Ureterotomy 56.0
56.0 Transurethral removal of obstruction from ureter and renal pelvis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.1', 'Removal -foreign body
- renal pelvis (transurethral)
-- by incision
56.1 by incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.2', 'Drainage
- ureter (by catheter)
-- incision
56.2 incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.31', 'Ureteroscopy
56.31 Ureteroscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.32', 'Operations on ureter
- Diagnostic procedures on ureter
-- Closed percutaneous biopsy of ureter 56.32
56.32 Closed percutaneous biopsy of ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.33', 'with biopsy
56.33 with biopsy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.34', 'Operations on ureter
- Diagnostic procedures on ureter
-- Open biopsy of ureter 56.34
56.34 Open biopsy of ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.35', 'retina Curettage (with packing) (with secondary
- TO PROCEDURES (FY10)
---- Cystoscopy (transurethral)
----- ileal conduit
56.35 ileal conduit', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.39', 'Procedure -diagnostic
-- ureter
56.39 ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.40', 'Excision
- ureter, ureteral
56.40 ureter, ureteral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.41', 'Excision
- ureter, ureteral
-- partial
56.41 partial', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.42', 'Excision
- ureter, ureteral
-- total
56.42 total', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.51', 'ileal bladder (open)
56.51 ileal bladder (open)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.52', 'Revision -CRT-P
- conduit, urinary
56.52 conduit, urinary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.61', 'Diversion
- urinary
-- cutaneous
56.61 cutaneous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.62', 'Repair
- stoma
-- ureter
56.62 ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.71', 'Diversion
- urinary
-- internal NEC
56.71 internal NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.72', 'Operations on ureter
- Other anastomosis or bypass of ureter
-- Revision of ureterointestinal anastomosis 56.72
56.72 Revision of ureterointestinal anastomosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.73', 'Nephrocystanastomosis NEC
56.73 Nephrocystanastomosis NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.74', 'Boari operation (bladder flap)
56.74 Boari operation (bladder flap)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.75', 'Transureteroureterostomy
56.75 Transureteroureterostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.79', 'Drainage
- ureter (by catheter)
-- anastomosis NEC
---- Anastomosis, ureter
56.79 Anastomosis, ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.81', 'Operations on ureter
- Repair of ureter
-- Lysis of intraluminal adhesions of ureter 56.81
56.81 Lysis of intraluminal adhesions of ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.82', 'ureter NEC
- laceration (by suture)
56.82 laceration (by suture)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.83', 'stoma
- ureter
56.83 ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.84', 'Closure fistula
-- rectoureteral
56.84 rectoureteral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.85', 'Operations on ureter
- Repair of ureter
-- Ureteropexy 56.85
56.85 Ureteropexy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.86', 'Operations on ureter
- Repair of ureter
-- Removal of ligature from ureter 56.86
56.86 Removal of ligature from ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.89', 'ureter NEC
56.89 ureter NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.91', 'Operations on ureter
- Other operations on ureter
-- Dilation of ureteral meatus 56.91
56.91 Dilation of ureteral meatus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.92', 'great
----- ureter
56.92 ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.93', 'Operations on ureter
- Other operations on ureter
-- Replacement of electronic ureteral stimulator 56.93
56.93 Replacement of electronic ureteral stimulator', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.94', 'electronic
- stimulator
-- ureter
56.94 ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.95', 'Ligation
- ureter
56.95 ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('56.99', 'ureter NEC
56.99 ureter NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.0', 'bladder (catheter)
57.0 bladder (catheter)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.11', 'bladder (catheter)
- percutaneous (needle)
57.11 percutaneous (needle)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.17', 'bladder, indwelling
- percutaneous (cystostomy)
57.17 percutaneous (cystostomy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.18', 'bladder, indwelling
- suprapubic NEC
57.18 suprapubic NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.19', 'Cystolithotomy
57.19 Cystolithotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.21', 'Formation
- fistula
-- with bladder flap
57.21 with bladder flap', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.22', 'vesicostomy
57.22 vesicostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.31', 'bladder
- through stoma (artificial)
57.31 through stoma (artificial)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.32', 'bladder
57.32 bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.33', 'Operations on urinary bladder
- Diagnostic procedures on bladder
-- Closed [transurethral] biopsy of bladder 57.33
57.33 Closed [transurethral] biopsy of bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.34', 'Operations on urinary bladder
- Diagnostic procedures on bladder
-- Open biopsy of bladder 57.34
57.34 Open biopsy of bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.39', 'Procedure -diagnostic
-- vesical
57.39 vesical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.41', 'Operations on urinary bladder
- Transurethral excision or destruction of bladder tissue
-- Transurethral lysis of intraluminal adhesions 57.41
57.41 Transurethral lysis of intraluminal adhesions', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.49', 'Diverticulectomy
- bladder (suprapubic)
-- transurethral approach
57.49 transurethral approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.51', 'Closure fistula
-- umbilicourinary
57.51 umbilicourinary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.59', 'Cryotherapy
- bladder
57.59 bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.6', 'urinary (partial) (subtotal)
57.6 urinary (partial) (subtotal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.71', 'urinary (partial) (subtotal)
- radical
57.71 radical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.79', 'urinary (partial) (subtotal)
- total (with urethrectomy)
57.79 total (with urethrectomy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.81', 'Cystorrhaphy
57.81 Cystorrhaphy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.82', 'cystostomy
57.82 cystostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.83', 'Closure fistula
-- rectovesical
57.83 rectovesical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.84', 'fistula
- bladder NEC
57.84 bladder NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.85', 'bladder neck (V-Y)
57.85 bladder neck (V-Y)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.86', 'bladder NEC
- exstrophy
57.86 exstrophy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.87', 'bladder NEC
- with
-- colon (sigmoid)
57.87 colon (sigmoid)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.88', 'bladder NEC
57.88 bladder NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.89', 'Cystopexy NEC
57.89 Cystopexy NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.91', 'Incision (and drainage)
- bladder
-- neck (transurethral)
57.91 neck (transurethral)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.92', 'Operations on urinary bladder
- Other operations on bladder
-- Dilation of bladder neck 57.92
57.92 Dilation of bladder neck', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.93', 'hemorrhage
- bladder (postoperative)
57.93 bladder (postoperative)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.94', 'Cystostomy
- suprapubic 57.94
57.94 Insertion of indwelling urinary catheter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.95', 'Replacement
- catheter
-- bladder (indwelling)
57.95 bladder (indwelling)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.96', 'Operations on urinary bladder
- Other operations on bladder
-- Implantation of electronic bladder stimulator 57.96
57.96 Implantation of electronic bladder stimulator', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.97', 'Operations on urinary bladder
- Other operations on bladder
-- Replacement of electronic bladder stimulator 57.97
57.97 Replacement of electronic bladder stimulator', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.98', 'electronic
- stimulator
-- bladder
57.98 bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('57.99', 'vesical (bladder) NEC
57.99 vesical (bladder) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.0', 'Formation
- fistula
-- urethrovaginal
58.0 urethrovaginal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.1', 'of
---- Meatotomy
----- urethra
58.1 urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.21', 'Operations on urethra
- Diagnostic procedures on urethra
-- Perineal urethroscopy 58.21
58.21 Perineal urethroscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.22', 'tract)
----- urethra
58.22 urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.23', 'Operations on urethra
- Diagnostic procedures on urethra
-- Biopsy of urethra 58.23
58.23 Biopsy of urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.24', 'Operations on urethra
- Diagnostic procedures on urethra
-- Biopsy of periurethral tissue 58.24
58.24 Biopsy of periurethral tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.29', 'Procedure -diagnostic
-- urethra
58.29 urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.31', 'Operations on urethra
- Excision or destruction of lesion or tissue of urethra
-- Endoscopic excision or destruction of lesion or tissue of urethra 58.31
58.31 Endoscopic excision or destruction of lesion or tissue of urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.39', 'Operations on urethra
- Excision or destruction of lesion or tissue of urethra
-- Other local excision or destruction of lesion or tissue of urethra 58.39
58.39 Other local excision or destruction of lesion or tissue of urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.41', 'urethra NEC
- laceration (by suture)
58.41 laceration (by suture)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.42', 'stoma
- urethra
58.42 urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.43', 'Closure fistula
-- perineourethroscrotal
58.43 perineourethroscrotal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.44', 'artery) skin
----- urethra (end-to-end)
58.44 urethra (end-to-end)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.45', 'Repair hernia -ventral
- hypospadias
58.45 hypospadias', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.46', 'urethra
58.46 urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.47', 'urethra NEC
- meatus
58.47 meatus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.49', 'Repair
- stoma
-- urethra
58.49 urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.5', 'urethral stricture
58.5 urethral stricture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.6', 'Operations on urethra
- Dilation of urethra 58.6
58.6 Dilation of urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.91', 'Incision (and drainage)
- bulbourethral gland
58.91 bulbourethral gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.92', 'Excision
- bulbourethral gland
58.92 bulbourethral gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.93', 'bladder sphincter, artificial
- with replacement
58.93 with replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('58.99', 'Correction
- hydraulic pressure, open surgery
-- urinary artificial sphincter
58.99 urinary artificial sphincter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.00', 'Dissection
- retroperitoneal NEC
59.00 retroperitoneal NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.02', 'Other operations on urinary tract
- Dissection of retroperitoneal tissue
-- Other lysis of perirenal or periureteral adhesions 59.02
59.02 Other lysis of perirenal or periureteral adhesions', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.03', 'Other operations on urinary tract
- Dissection of retroperitoneal tissue
-- Laparoscopic lysis of perirenal or periureteral adhesions 59.03
59.03 Laparoscopic lysis of perirenal or periureteral adhesions', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.09', 'Exploration
- perinephric area
59.09 perinephric area', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.11', 'Other operations on urinary tract
- Incision of perivesical tissue
-- Other lysis of perivesical adhesions 59.11
59.11 Other lysis of perivesical adhesions', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.12', 'Other operations on urinary tract
- Incision of perivesical tissue
-- Laparoscopic lysis of perivesical adhesions 59.12
59.12 Laparoscopic lysis of perivesical adhesions', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.19', 'Exploration
- perivesical tissue
59.19 perivesical tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.21', 'Other operations on urinary tract
- Diagnostic procedures on perirenal and perivesical tissue
-- Biopsy of perirenal or perivesical tissue 59.21
59.21 Biopsy of perirenal or perivesical tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.29', '(for dental
- TO PROCEDURES (FY10)
---- Procedure -diagnostic
----- perirenal tissue
59.29 perirenal tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.3', 'Kelly (-Kennedy) operation
- (urethrovesical plication)
59.3 (urethrovesical plication)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.4', 'Goebel-Frangenheim-Stoeckel operation
- (urethrovesical suspension)
59.4 (urethrovesical suspension)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.5', 'Burch procedure (retropubic urethral
- incontinence)
59.5 incontinence)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.6', 'Repair
- stress incontinence (urinary) NEC
-- paraurethral suspension (Pereyra)
59.6 paraurethral suspension (Pereyra)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.71', 'Repair
- stress incontinence (urinary) NEC
-- cystourethropexy (with levator
---- muscle sling)
59.71 muscle sling)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.72', 'urethra
- for repair of urinary stress incontinence
-- collagen
59.72 collagen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.79', 'Rosen prosthesis (for urinary
-- incontinence)
59.79 incontinence)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.8', 'Urethroplasty 59.8
59.8 Urethral catheterization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.91', 'perirenal tissue
59.91 perirenal tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.92', 'Other operations on urinary tract
- Other operations on urinary system
-- Other operations on perirenal or perivesical tissue 59.92
59.92 Other operations on perirenal or perivesical tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.93', 'or
----- ureterostomy tube
59.93 ureterostomy tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.94', 'Reinsertion
- cystostomy tube
59.94 cystostomy tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.95', 'ultrasonic
- stones, urinary (Kock pouch)
59.95 stones, urinary (Kock pouch)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('59.99', 'urinary system NEC
59.99 urinary system NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.0', 'Exploration
- prostate
60.0 prostate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.11', 'Operations on prostate and seminal vesicles
- Diagnostic procedures on prostate and seminal vesicles
-- Closed [percutaneous] [needle] biopsy of prostate 60.11
60.11 Closed [percutaneous] [needle] biopsy of prostate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.12', 'Operations on prostate and seminal vesicles
- Diagnostic procedures on prostate and seminal vesicles
-- Open biopsy of prostate 60.12
60.12 Open biopsy of prostate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.13', 'Biopsy
- seminal vesicle NEC
60.13 seminal vesicle NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.14', 'Biopsy
- seminal vesicle NEC
-- open
60.14 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.15', 'Operations on prostate and seminal vesicles
- Diagnostic procedures on prostate and seminal vesicles
-- Biopsy of periprostatic tissue 60.15
60.15 Biopsy of periprostatic tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.18', '(for dental
- TO PROCEDURES (FY10)
---- Procedure -diagnostic
----- periprostatic tissue
60.18 periprostatic tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.19', '(for dental
- TO PROCEDURES (FY10)
---- Procedure -diagnostic
----- seminal vesicle
60.19 seminal vesicle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.21', 'Destruction --- Cont.
- prostate (prostatic tissue)
-- TULIP (transurethral (ultrasound)
--- prostatectomy)
60.21 prostatectomy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.29', 'TEVAP (transurethral electrovaporization
- of prostate)
60.29 of prostate)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.3', 'Alexander operation
- prostatectomy
-- suprapubic
60.3 suprapubic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.4', 'retropubic
60.4 retropubic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.5', 'NEC renal vessel, aberrant
----- with radical prostatectomy
60.5 with radical prostatectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.61', 'Excision lesion -pituitary
- prostate (transurethral)
60.61 prostate (transurethral)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.62', 'Alexander operation
- prostatectomy
-- perineal
60.62 perineal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.69', 'prostate NEC
60.69 prostate NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.71', 'Operations on prostate and seminal vesicles
- Operations on seminal vesicles
-- Percutaneous aspiration of seminal vesicle 60.71
60.71 Percutaneous aspiration of seminal vesicle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.72', 'Incision (and drainage)
- seminal vesicle
60.72 seminal vesicle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.73', 'cyst
- mullerian duct
60.73 mullerian duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.79', 'Operations on prostate and seminal vesicles
- Operations on seminal vesicles
-- Other operations on seminal vesicles 60.79
60.79 Other operations on seminal vesicles', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.81', 'Exploration
- periprostatic tissue
60.81 periprostatic tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.82', 'periprostatic tissue
60.82 periprostatic tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.91', 'Operations on prostate and seminal vesicles
- Other operations on prostate
-- Percutaneous aspiration of prostate 60.91
60.91 Percutaneous aspiration of prostate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.92', 'prostate
60.92 prostate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.93', 'also hand
- TO PROCEDURES (FY10)
---- Repair
----- prostate
60.93 prostate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.94', 'prostatic bed
60.94 prostatic bed', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.96', 'Destruction --- Cont.
- prostate (prostatic tissue)
-- microwave
60.96 microwave', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.97', 'Destruction --- Cont.
- prostate (prostatic tissue)
-- radiofrequency
60.97 radiofrequency', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('60.99', 'with pulmonary artery anastomosis)
- 83.75 Printen and Mason (high gastric bypass)
----- specified type
60.99 specified type', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.0', 'Drainage
- tunica vaginalis
61.0 tunica vaginalis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.11', 'Biopsy
- scrotum
61.11 scrotum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.19', 'Procedure -diagnostic
-- tunica vaginalis
61.19 tunica vaginalis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.2', 'Excision
- hydrocele
-- tunica vaginalis
61.2 tunica vaginalis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.3', 'Excision lesion -pituitary
- scrotum
61.3 scrotum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.41', 'tunica vaginalis
- laceration (by suture)
61.41 laceration (by suture)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.42', 'Closure fistula
-- scrotum
61.42 scrotum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.49', 'tunica vaginalis
61.49 tunica vaginalis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.91', 'Aspiration
- tunica vaginalis (hydrocele)
-- (percutaneous)
61.91 (percutaneous)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.92', 'Excision
- hematocele, tunica vaginalis
61.92 hematocele, tunica vaginalis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('61.99', 'tunica vaginalis NEC
61.99 tunica vaginalis NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.0', 'Orchidotomy
62.0 Orchidotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.11', 'Biopsy
- testis NEC
62.11 testis NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.12', 'Biopsy
- testis NEC
-- open
62.12 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.19', '(for dental
- TO PROCEDURES (FY10)
---- Procedure -diagnostic
----- testicle
62.19 testicle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.2', 'cyst
- Morgagni
-- male
62.2 male', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.3', 'Cryptorchidectomy (unilateral)
62.3 Cryptorchidectomy (unilateral)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.41', 'male
62.41 male', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.42', 'Orchidectomy (with epididymectomy)
- remaining or solitary testis
62.42 remaining or solitary testis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.5', 'Detorsion
- spermatic cord
-- with orchiopexy
62.5 with orchiopexy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.61', 'Orchidorrhaphy
62.61 Orchidorrhaphy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.69', 'Orchidoplasty
62.69 Orchidoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.7', 'nerve total repair of tetralogy of Fallot
----- testicular (bilateral) (unilateral)
62.7 testicular (bilateral) (unilateral)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.91', 'Aspiration
- testis
62.91 testis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.92', 'Operations on testes
- Other operations on testes
-- Injection of therapeutic substance into testis 62.92
62.92 Injection of therapeutic substance into testis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('62.99', 'Operations on testes
- Other operations on testes
-- Other 62.99
62.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.01', 'Biopsy
- spermatic cord
63.01 spermatic cord', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.09', 'Procedure -diagnostic
-- vas deferens
63.09 vas deferens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.1', 'Excision
- hydrocele
-- male
63.1 male', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.2', 'cyst
- epididymis
63.2 epididymis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.3', 'Excision lesion -pituitary
- spermatic cord
63.3 spermatic cord', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.4', 'stones
---- Enlargement
----- Epididymectomy
63.4 Epididymectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.51', 'Suture (laceration)
- epididymis (and)
-- spermatic cord
63.51 spermatic cord', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.52', 'Detorsion
- spermatic cord
63.52 spermatic cord', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.53', 'Operations on spermatic cord, epididymis, and vas deferens
- Repair of spermatic cord and epididymis
-- Transplantation of spermatic cord 63.53
63.53 Transplantation of spermatic cord', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.59', 'stones
---- Enlargement
----- Epididymoplasty
63.59 Epididymoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.6', 'Operations on spermatic cord, epididymis, and vas deferens
- Vasotomy 63.6
63.6 Vasotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.70', 'Operation
- sterilization NEC
-- male
63.70 male', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.71', 'Division
- vas deferens
63.71 vas deferens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.72', 'Ligation
- spermatic
-- cord
63.72 cord', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.73', 'also
----- Vasectomy (complete) (partial)
63.73 Vasectomy (complete) (partial)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.81', 'Suture
- vas deferens
63.81 vas deferens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.82', 'vas deferens, surgically divided
63.82 vas deferens, surgically divided', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.83', 'Operations on spermatic cord, epididymis, and vas deferens
- Repair of vas deferens and epididymis
-- Epididymovasostomy 63.83
63.83 Epididymovasostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.84', 'Operations on spermatic cord, epididymis, and vas deferens
- Repair of vas deferens and epididymis
-- Removal of ligature from vas deferens 63.84
63.84 Removal of ligature from vas deferens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.85', 'valve
- vas deferens
63.85 vas deferens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.89', 'Operations on spermatic cord, epididymis, and vas deferens
- Repair of vas deferens and epididymis
-- Other repair of vas deferens and epididymis 63.89
63.89 Other repair of vas deferens and epididymis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.91', 'Operations on spermatic cord, epididymis, and vas deferens
- Other operations on spermatic cord, epididymis, and vas
-- Aspiration of spermatocele 63.91
63.91 Aspiration of spermatocele', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.92', 'Removal -foreign body
-- epididymis
63.92 epididymis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.93', 'Incision (and drainage)
- spermatic cord
63.93 spermatic cord', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.94', 'Operations on spermatic cord, epididymis, and vas deferens
- Other operations on spermatic cord, epididymis, and vas
-- Lysis of adhesions of spermatic cord 63.94
63.94 Lysis of adhesions of spermatic cord', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.95', 'femoral tibial component
- TO PROCEDURES (FY10)
---- Insertion tube
----- vas deferens
63.95 vas deferens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('63.99', 'Operation
- epididymis NEC
63.99 epididymis NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.0', 'Circumcision (male)
64.0 Circumcision (male)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.11', 'Operations on penis
- Diagnostic procedures on the penis
-- Biopsy of penis 64.11
64.11 Biopsy of penis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.19', '(for dental
- TO PROCEDURES (FY10)
---- Procedure -diagnostic
----- penis
64.19 penis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.2', 'Operations on penis
- Local excision or destruction of lesion of penis 64.2
64.2 Local excision or destruction of lesion of penis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.3', 'Penectomy
64.3 Penectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.41', 'penis NEC
- laceration
64.41 laceration', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.42', 'Correction
- chordee
64.42 chordee', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.43', 'penis (rib graft) (skin graft)
-- (myocutaneous flap)
64.43 (myocutaneous flap)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.44', 'Insertion -prosthesis
- penis (internal) (noninflatable)
-- reconstruction
64.44 reconstruction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.45', 'Reattachment-extremity
- penis (amputated)
64.45 penis (amputated)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.49', 'Balanoplasty
64.49 Balanoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.5', 'Operations on penis
- Operations for sex transformation, not elsewhere classified 64.5
64.5 Operations for sex transformation, not elsewhere classified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.91', 'Preputiotomy
64.91 Preputiotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.92', 'Exploration
- penis
64.92 penis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.93', 'radical
- TO PROCEDURES (FY10)
---- Division
----- penile adhesions
64.93 penile adhesions', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('64.99', 'genital organ NEC
- male
64.99 male', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.01', 'ovary (aspiration)
- laparoscopic
65.01 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.09', 'ovary (aspiration)
- by incision
65.09 by incision', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.14', '(for dental
- TO PROCEDURES (FY10)
---- Procedure -diagnostic
----- laparoscopic
65.14 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.19', '(for dental
- TO PROCEDURES (FY10)
---- Procedure -diagnostic
----- ovary
65.19 ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.21', 'Marsupialization
- cyst
-- ovary
65.21 ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.22', 'ovary
- wedge
65.22 wedge', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.23', 'Marsupialization
- cyst
-- laparoscopic
65.23 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.24', 'ovary
- wedge
-- laparoscopic
65.24 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.25', 'ovary
- laparoscopic
65.25 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.29', 'Excision
- ovary
-- local
--- other 65.29
65.29 Other local excision or destruction of ovary', '[{"type":"includes","text":"Wedge resection of ovary"},{"type":"excludes","text":"biopsy of ovary (65.11-65.13)"}]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.31', 'Gonadectomy
- ovary
-- laparoscopic
65.31 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.39', 'Oophorectomy
- unilateral
-- abdominal approach 65.39
65.39 Other unilateral oophorectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.41', 'unilateral (total)
- with
-- laparoscopic
65.41 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.49', 'Salpingo-oophorectomy
- unilateral
-- abdominal approach 65.49
65.49 Other unilateral salpingo-oophorectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.51', 'Oophorectomy
- bilateral 65.51
65.51 Other bilateral oophorectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.52', 'Operations on ovary
- Bilateral oophorectomy
-- Other removal of remaining ovary 65.52
65.52 Other removal of remaining ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.53', 'female (oophorectomy, bilateral)
- laparoscopic
65.53 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.54', 'Operations on ovary
- Bilateral oophorectomy
-- Laparoscopic removal of remaining ovary 65.54
65.54 Laparoscopic removal of remaining ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.61', 'Salpingo-oophorectomy
- bilateral
-- abdominal approach 65.61
65.61 Other bilateral salpingo-oophorectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.62', 'remaining or solitary tube
- with ovary
65.62 with ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.63', 'with oophorectomy
- laparoscopic
65.63 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.64', 'remaining or solitary tube
- with ovary
-- laparoscopic
65.64 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.71', 'ovary
65.71 ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.72', 'Reimplantation
- ovary
65.72 ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.73', 'ovary
- with tube
65.73 with tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.74', 'ovary
- laparoscopic
65.74 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.75', 'Reimplantation
- ovary
-- laparoscopic
65.75 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.76', 'ovary
- with tube
-- laparoscopic
65.76 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.79', 'ovary
65.79 ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.81', 'Operations on ovary
- Lysis of adhesions of ovary and fallopian tube
-- Laparoscopic lysis of adhesions of ovary and fallopian tube 65.81
65.81 Laparoscopic lysis of adhesions of ovary and fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.89', 'Operations on ovary
- Lysis of adhesions of ovary and fallopian tube
-- Other lysis of adhesions of ovary and fallopian tube 65.89
65.89 Other lysis of adhesions of ovary and fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.91', 'Destruction -lesion (local) --- Cont.
- ovary
-- aspiration
65.91 aspiration', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.92', 'Operations on ovary
- Other operations on ovary
-- Transplantation of ovary 65.92
65.92 Transplantation of ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.93', 'Destruction -lesion (local) --- Cont.
- ovary
-- cyst by rupture (manual)
65.93 cyst by rupture (manual)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.94', 'Denervation
- ovarian
65.94 ovarian', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.95', 'Detorsion
- ovary
65.95 ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('65.99', 'Drilling
- ovary
65.99 ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.01', 'Salpingotomy
66.01 Salpingotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.02', 'Salpingostomy (for removal of non-ruptured
- ectopic pregnancy)
66.02 ectopic pregnancy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.11', 'Operations on fallopian tubes
- Diagnostic procedures on fallopian tubes
-- Biopsy of fallopian tube 66.11
66.11 Biopsy of fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.19', 'Procedure -diagnostic
- fallopian tube
66.19 fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.22', 'Destruction
- fallopian tube
-- division (and ligation)
--- by endoscopy (culdoscopy)
---- (peritoneoscopy)
66.22 (peritoneoscopy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.29', 'partial (unilateral)
- bilateral
-- by endoscopy
66.29 by endoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.31', 'Destruction
- fallopian tube
-- crushing (and ligation)
66.31 crushing (and ligation)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.32', 'Destruction
- fallopian tube
-- division (and ligation)
66.32 division (and ligation)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.39', 'Destruction
- fallopian tube
66.39 fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.4', 'unilateral (total)
66.4 unilateral (total)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.51', 'Salpingectomy (bilateral) (total)
- (transvaginal)
66.51 (transvaginal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.52', 'remaining or solitary tube
66.52 remaining or solitary tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.61', 'fallopian tube
66.61 fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.62', 'Operations on fallopian tubes
- Other salpingectomy
-- Salpingectomy with removal of tubal pregnancy 66.62
66.62 Salpingectomy with removal of tubal pregnancy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.63', 'Resection colon
- cornual (fallopian tube) (unilateral)
-- bilateral
66.63 bilateral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.69', 'partial (unilateral)
66.69 partial (unilateral)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.71', 'fallopian tube (with prosthesis)
- by
-- suture
66.71 suture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.72', 'fallopian tube (with prosthesis)
- by
-- ovary
66.72 ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.73', 'Anastomosis
- fallopian tube
66.73 fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.74', 'Implant, implantation
- fallopian tube (Mulligan hood) (silastic
-- into uterus
66.74 into uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.79', 'Anastomosis
- fallopian tube
-- by reanastomosis
66.79 by reanastomosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.8', 'fallopian tube
66.8 fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.91', 'Needling
- fallopian tube
66.91 fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.92', 'Ligation
- fallopian tube (bilateral) (remaining)
-- unilateral
66.92 unilateral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.93', 'Implant, implantation
- fallopian tube (Mulligan hood) (silastic
-- tube) (stent)
66.93 tube) (stent)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.94', 'Removal
- silastic tubes
-- fallopian tubes
66.94 fallopian tubes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.95', 'Operations on fallopian tubes
- Other operations on fallopian tubes
-- Insufflation of therapeutic agent into fallopian tubes 66.95
66.95 Insufflation of therapeutic agent into fallopian tubes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.96', 'fallopian tube
66.96 fallopian tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('66.99', 'with globe
----- fallopian tube NEC
66.99 fallopian tube NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.0', 'cervix (canal)
67.0 cervix (canal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.11', 'Operations on cervix
- Diagnostic procedures on cervix
-- Endocervical biopsy 67.11
67.11 Endocervical biopsy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.12', 'Biopsy -bone
- cervix (punch)
67.12 cervix (punch)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.19', 'gastric cervix
67.19 gastric cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.2', 'Biopsy -bone
- cervix (punch)
-- conization (sharp)
67.2 conization (sharp)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.31', 'Marsupialization
- cyst
-- cervical (nabothian)
67.31 cervical (nabothian)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.32', 'cervix
67.32 cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.33', 'Cryotherapy
- cervix
67.33 cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.39', 'cyst
- cervix
67.39 cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.4', 'Amputation (cineplastic) (closed flap)
- cervix
67.4 cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.51', 'Cerclage
- cervix
67.51 cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.59', 'Cerclage
- cervix
-- transvaginal
67.59 transvaginal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.61', 'Operation
- Emmet (cervix)
67.61 Emmet (cervix)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.62', 'fistula
- cervicosigmoidal
67.62 cervicosigmoidal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('67.69', 'Cervicoplasty
67.69 Cervicoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.0', 'Abdominouterotomy
68.0 Abdominouterotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.11', 'Other incision and excision of uterus
- Diagnostic procedures on uterus and supporting structures
-- Digital examination of uterus 68.11
68.11 Digital examination of uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.12', 'stones
----- uterus
68.12 uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.13', 'Other incision and excision of uterus
- Diagnostic procedures on uterus and supporting structures
-- Open biopsy of uterus 68.13
68.13 Open biopsy of uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.14', 'Other incision and excision of uterus
- Diagnostic procedures on uterus and supporting structures
-- Open biopsy of uterine ligaments 68.14
68.14 Open biopsy of uterine ligaments', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.15', 'Laparoscopy
- with
-- uterine ligaments
68.15 uterine ligaments', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.16', 'Laparoscopy
- with
-- uterus
68.16 uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.19', 'Procedure -diagnostic
- ligament
-- uterine
68.19 uterine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.21', 'endometrial synechiae
68.21 endometrial synechiae', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.22', 'Operation
- Strassman (metroplasty)
-- uterus
68.22 uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.23', 'Ablation
- endometrial (hysteroscopic)
68.23 endometrial (hysteroscopic)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.29', 'Myomectomy (uterine)
68.29 Myomectomy (uterine)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.31', 'Other incision and excision of uterus
- Subtotal abdominal hysterectomy
-- Laparoscopic supracervical hysterectomy [LSH] 68.31
68.31 Laparoscopic supracervical hysterectomy [LSH]', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.39', 'Other incision and excision of uterus
- Subtotal abdominal hysterectomy
-- Other and unspecified subtotal abdominal hysterectomy, NOS 68.39
68.39 Other and unspecified subtotal abdominal hysterectomy, NOS', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.41', 'Abdominohysterectomy
- laparoscopic
68.41 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.49', 'Abdominohysterectomy
68.49 Abdominohysterectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.51', 'Other incision and excision of uterus
- Vaginal hysterectomy
-- Laparoscopically assisted vaginal hysterectomy (LAVH) 68.51
68.51 Laparoscopically assisted vaginal hysterectomy (LAVH)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.59', 'Colpohysterectomy
68.59 Colpohysterectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.61', 'Wertheim operation (radical hysterectomy)
- laparoscopic
68.61 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.69', 'Other incision and excision of uterus
- Radical abdominal hysterectomy
-- Other and unspecified radical abdominal hysterectomy 68.69
68.69 Other and unspecified radical abdominal hysterectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.71', 'Schauta (-Amreich) operation (radical
- laparoscopic
68.71 laparoscopic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.79', 'Schauta (-Amreich) (radical vaginal
-- hysterectomy)
68.79 hysterectomy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.8', 'Evisceration
- pelvic (anterior) (posterior) (partial)
-- (total) (female)
68.8 (total) (female)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('68.9', 'Other incision and excision of uterus
- Other and unspecified hysterectomy 68.9
68.9 Other and unspecified hysterectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.01', 'abortion
- by
-- D and C
69.01 D and C', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.02', 'Evacuation
- retained placenta
-- with curettage
69.02 with curettage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.09', 'Other operations on uterus and supporting structures
- Dilation and curettage of uterus
-- Other dilation and curettage 69.09
69.09 Other dilation and curettage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.19', 'broad ligament
69.19 broad ligament', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.21', 'Interposition operation
- uterine suspension
69.21 uterine suspension', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.22', 'Alexander-Adams operation (shortening
- round ligaments)
69.22 round ligaments)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.23', 'Repair hernia -ventral
- inverted uterus NEC
-- vaginal approach
69.23 vaginal approach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.29', 'Repair hernia -ventral
- inverted uterus NEC
69.29 inverted uterus NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.3', 'Denervation
- paracervical uterine
69.3 paracervical uterine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.41', 'uterus, uterine
- laceration (by suture)
69.41 laceration (by suture)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.42', 'Closure fistula
-- uteroenteric
69.42 uteroenteric', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.49', 'Operation
- Strassman (metroplasty)
69.49 Strassman (metroplasty)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.51', 'curettage, uterus
- to terminate pregnancy
69.51 to terminate pregnancy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.52', 'curettage, uterus
- after abortion or delivery
69.52 after abortion or delivery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.59', 'curettage, uterus
69.59 curettage, uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.6', 'Extraction -
- menstrual, menses
69.6 menstrual, menses', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.7', 'Other operations on uterus and supporting structures
- Insertion of intrauterine contraceptive device 69.7
69.7 Insertion of intrauterine contraceptive device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.91', 'tampon
- uterus
69.91 uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.92', 'insemination
69.92 insemination', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.93', 'laminaria, cervix
69.93 laminaria, cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.94', 'Repair hernia -ventral
- inverted uterus NEC
-- nonobstetric
69.94 nonobstetric', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.95', 'Incision (and drainage)
- cervix
69.95 cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.96', 'Removal
- cerclage material, cervix
69.96 cerclage material, cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.97', 'Removal -foreign body
-- penetrating
69.97 penetrating', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.98', 'Manipulation
- uterus NEC
69.98 uterus NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('69.99', 'cervix NEC
69.99 cervix NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.0', 'cul-de-sac (abscess)
70.0 cul-de-sac (abscess)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.11', 'Hymenotomy
70.11 Hymenotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.12', 'Culdotomy
70.12 Culdotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.13', 'Operations on vagina and cul-de-sac
- Incision of vagina and cul-de-sac
-- Lysis of intraluminal adhesions of vagina 70.13
70.13 Lysis of intraluminal adhesions of vagina', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.14', 'Division
- vaginal septum
70.14 vaginal septum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.21', 'Vaginoscopy
70.21 Vaginoscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.22', 'Culdoscopy (exploration) (removal
- foreign body or lesion)
70.22 foreign body or lesion)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.23', 'Biopsy -bone
- cul-de-sac
70.23 cul-de-sac', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.24', 'Operations on vagina and cul-de-sac
- Diagnostic procedures on vagina and cul-de-sac
-- Vaginal biopsy 70.24
70.24 Vaginal biopsy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.29', 'Procedure -diagnostic
-- vagina
70.29 vagina', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.31', 'Hymenectomy
70.31 Hymenectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.32', 'Destruction -lesion (local) --- Cont.
- cul-de-sac
70.32 cul-de-sac', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.33', 'Cauterization
- vagina
70.33 vagina', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.4', 'Colpectomy
70.4 Colpectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.50', 'Repair
- cystocele
-- and rectocele
70.50 and rectocele', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.51', 'Colpoperineoplasty
- with repair of urethrocele
70.51 with repair of urethrocele', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.52', 'rectocele NEC
70.52 rectocele NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.53', 'Colpoperineoplasty
- with graft or prosthesis
70.53 with graft or prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.54', 'Repair
- cystocele
-- with graft or prosthesis
70.54 with graft or prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.55', 'vagina, vaginal (cuff) (wall) NEC
- rectocele
-- with graft or prosthesis
70.55 with graft or prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.61', 'Abbe operation
- construction of vagina
70.61 construction of vagina', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.62', 'vagina
70.62 vagina', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.63', 'Abbe operation
- with graft or prosthesis
70.63 with graft or prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.64', 'vagina
- with graft or prosthesis
70.64 with graft or prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.71', 'Colpoperineorrhaphy
70.71 Colpoperineorrhaphy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.72', 'fistula
- colovaginal
70.72 colovaginal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.73', 'fistula
- anovaginal
70.73 anovaginal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.74', 'Closure fistula
-- sigmoidovaginal
70.74 sigmoidovaginal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.75', 'Fistulectomy
- vagina
70.75 vagina', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.76', 'Hymenoplasty
70.76 Hymenoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.77', 'Colpopexy
70.77 Colpopexy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.78', 'Colpopexy
- with graft or prosthesis
70.78 with graft or prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.79', 'Colpoperineoplasty
70.79 Colpoperineoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.8', 'vagina
70.8 vagina', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.91', 'Operation
- hymen NEC
70.91 hymen NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.92', 'Culdoplasty
70.92 Culdoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.93', 'Culdoplasty
- with graft or prosthesis
70.93 with graft or prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.94', '[GAP] sculpturing
- 85.75 trimming
----- biological
70.94 biological', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('70.95', 'Insertion -prosthesis
- vagina
-- synthetic
70.95 synthetic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.01', 'Operations on vulva and perineum
- Incision of vulva and perineum
-- Lysis of vulvar adhesions 71.01
71.01 Lysis of vulvar adhesions', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.09', 'Exploration
- perineum (female)
71.09 perineum (female)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.11', 'Biopsy -bone
- clitoris
71.11 clitoris', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.19', 'Procedure -diagnostic
- labia
71.19 labia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.21', 'Bartholin''s
-- gland(cyst)(percutaneous)
71.21 gland(cyst)(percutaneous)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.22', 'Operations on vulva and perineum
- Operations on Bartholin''s gland
-- Incision of Bartholin''s gland (cyst) 71.22
71.22 Incision of Bartholin''s gland (cyst)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.23', 'Marsupialization
- cyst
-- Bartholin''s
71.23 Bartholin''s', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.24', 'Excision
- Bartholin''s gland
71.24 Bartholin''s gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.3', 'Cauterization
- vulva
71.3 vulva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.4', 'Amputation (cineplastic) (closed flap)
- clitoris
71.4 clitoris', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.5', 'Bassett operation (vulvectomy with
- lymph node dissection)
71.5 lymph node dissection)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.61', 'Labiectomy (bilateral)
- unilateral
71.61 unilateral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.62', 'Labiectomy (bilateral)
71.62 Labiectomy (bilateral)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.71', 'perineum (female)
- laceration (by suture)
71.71 laceration (by suture)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.72', 'Closure fistula
-- perineum
71.72 perineum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.79', 'pelvic floor
71.79 pelvic floor', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.8', 'vulva NEC
71.8 vulva NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('71.9', 'genital organ NEC
- female
71.9 female', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.0', 'Forceps, vacuum, and breech delivery
- Low forceps operation 72.0
72.0 Low forceps operation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.1', 'Forceps delivery
- low 72.1
72.1 Low forceps operation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.21', 'Forceps, vacuum, and breech delivery
- Mid forceps operation
-- Mid forceps operation with episiotomy 72.21
72.21 Mid forceps operation with episiotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.29', 'Forceps, vacuum, and breech delivery
- Mid forceps operation
-- Other mid forceps operation 72.29
72.29 Other mid forceps operation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.31', 'High forceps delivery
- with episiotomy
72.31 with episiotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.39', 'High forceps delivery
72.39 High forceps delivery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.4', 'Forceps, vacuum, and breech delivery
- Forceps rotation of fetal head 72.4
72.4 Forceps rotation of fetal head', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.51', 'Forceps, vacuum, and breech delivery
- Breech extraction
-- Partial breech extraction with forceps to aftercoming head 72.51
72.51 Partial breech extraction with forceps to aftercoming head', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.52', 'breech (partial)
72.52 breech (partial)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.53', 'Forceps, vacuum, and breech delivery
- Breech extraction
-- Total breech extraction with forceps to aftercoming head 72.53
72.53 Total breech extraction with forceps to aftercoming head', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.54', 'breech (partial)
- total
72.54 total', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.6', 'Forceps, vacuum, and breech delivery
- Forceps application to aftercoming head 72.6
72.6 Forceps application to aftercoming head', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.71', 'Extraction -
- Malstrom''s
-- with episiotomy
72.71 with episiotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.79', 'Extraction -
- Malstrom''s
72.79 Malstrom''s', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.8', 'Forceps, vacuum, and breech delivery
- Other specified instrumental delivery 72.8
72.8 Other specified instrumental delivery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('72.9', 'Forceps, vacuum, and breech delivery
- Unspecified instrumental delivery 72.9
72.9 Unspecified instrumental delivery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.01', 'Amniotomy
- to induce labor
73.01 to induce labor', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.09', 'Amniotomy
73.09 Amniotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.1', 'cervix (canal)
- obstetrical
73.1 obstetrical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.21', 'Other procedures inducing or assisting delivery
- Internal and combined version and extraction
-- Internal and combined version without extraction 73.21
73.21 Internal and combined version without extraction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.22', 'Other procedures inducing or assisting delivery
- Internal and combined version and extraction
-- Internal and combined version with extraction 73.22
73.22 Internal and combined version with extraction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.3', 'Failed (trial) forceps
73.3 Failed (trial) forceps', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.4', 'labor
- medical
73.4 medical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.51', 'device tibial component
- head at peritoneal site
----- manual
73.51 manual', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.59', 'Delivery
- manually assisted 73.59
73.59 Other manually assisted delivery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.6', 'stones
---- Enlargement
----- Episioproctotomy
73.6 Episioproctotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.8', 'Basiotripsy
73.8 Basiotripsy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.91', 'Other procedures inducing or assisting delivery
- Other operations assisting delivery
-- External version 73.91
73.91 External version', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.92', 'Other procedures inducing or assisting delivery
- Other operations assisting delivery
-- Replacement of prolapsed umbilical cord 73.92
73.92 Replacement of prolapsed umbilical cord', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.93', 'Incision (and drainage)
- cervix
-- assist delivery
73.93 assist delivery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.94', 'to assist delivery
73.94 to assist delivery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('73.99', '- 37.33
---- Accouchement forcé
73.99 Accouchement forcé', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('74.0', 'Caesarean section
- classical 74.0
74.0 Classical caesarean section', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('74.1', 'Caesarean section
- low cervical 74.1
74.1 Low cervical caesarean section', '[{"type":"includes","text":"Classical caesarean section"},{"type":"includes","text":"Low cervical caesarean section"}]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('74.2', 'cesarean section
74.2 cesarean section', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('74.3', 'Cesarean section and removal of fetus
- Removal of extratubal ectopic pregnancy 74.3
74.3 Removal of extratubal ectopic pregnancy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('74.4', 'Cesarean section and removal of fetus
- Cesarean section of other specified type 74.4
74.4 Cesarean section of other specified type', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('74.91', '- 20.79
----- hysterotomy
74.91 hysterotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('74.99', 'Caesarean section
- other 74.99
74.99 Other caesarean section of unspecified type', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.0', '- 20.79
----- intra-amniotic injection (saline)
75.0 intra-amniotic injection (saline)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.2', 'Other obstetric operations
- Intrauterine transfusion 75.2
75.2 Intrauterine transfusion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.31', 'Amnioscopy, internal
75.31 Amnioscopy, internal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.32', 'fetal (scalp), intrauterine
75.32 fetal (scalp), intrauterine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.33', 'Sampling, blood for genetic determination
- of fetus
75.33 of fetus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.34', 'Amniocentesis 75.34
75.34 Other fetal monitoring', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.35', 'Examination (for)
- fetus, intrauterine
75.35 fetus, intrauterine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.36', 'Correction
- fetal defect
75.36 fetal defect', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.37', 'Amnioinfusion
75.37 Amnioinfusion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.38', 'Other obstetric operations
- Other intrauterine operations on fetus and amnion
-- Fetal pulse oximetry 75.38
75.38 Fetal pulse oximetry', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.4', 'Evacuation
- retained placenta
-- manual
75.4 manual', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.50', 'uterus, uterine
- laceration (by suture)
-- obstetric (current)
75.50 obstetric (current)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.51', 'Repair
- cervix
-- obstetric (current)
75.51 obstetric (current)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.52', 'obstetric laceration NEC
- corpus uteri
75.52 corpus uteri', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.61', 'bladder NEC
- laceration (by suture)
-- obstetric (current)
75.61 obstetric (current)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.62', 'Repair -aneurysm -by or with
- anus
-- obstetric (current)
75.62 obstetric (current)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.69', 'Colpoperineorrhaphy
- following delivery
75.69 following delivery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.7', 'Other obstetric operations
- Manual exploration of uterine cavity, postpartum 75.7
75.7 Manual exploration of uterine cavity, postpartum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.8', 'Insertion
- bag, cervix (nonobstetrical)
-- after delivery or abortion
75.8 after delivery or abortion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.91', 'Incision (and drainage) -hematoma
- vagina (cuff)
-- episotomy site
75.91 episotomy site', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.92', 'Incision (and drainage) -hematoma
- vagina (cuff)
-- obstetrical NEC
75.92 obstetrical NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.93', 'Incision (and drainage)
- cervix
-- replace inverted uterus
75.93 replace inverted uterus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.94', 'Manipulation
- uterus NEC
-- manual replacement (following
---- delivery)
75.94 delivery)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('75.99', 'Manipulation
- uterus NEC
-- gravid
75.99 gravid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.01', 'bone
- facial
76.01 facial', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.09', 'Incision (and drainage)
- bone
-- facial
76.09 facial', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.11', 'Operations on facial bones and joints
- Diagnostic procedures on facial bones and joints
-- Biopsy of facial bone 76.11
76.11 Biopsy of facial bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.19', 'Procedure -diagnostic
- joint (capsule) (ligament) (structure)
-- facial
76.19 facial', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.2', 'Excision -lesion -artery
- bone
-- facial
76.2 facial', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.31', 'Excision
- bone (ends) (partial), except facial
-- mandible
76.31 mandible', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.39', 'Excision
- bone (ends) (partial), except facial
-- facial NEC
76.39 facial NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.41', 'Excision
- bone (ends) (partial), except facial
-- total
--- with reconstruction
76.41 with reconstruction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.42', 'Excision
- bone (ends) (partial), except facial
-- total
76.42 total', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.43', 'mandible
76.43 mandible', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.44', 'Excision
- bone (ends) (partial), except facial
-- total
--- with reconstruction
76.44 with reconstruction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.45', 'Excision
- bone (ends) (partial), except facial
-- total
76.45 total', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.46', 'Operations on facial bones and joints
- Excision and reconstruction of facial bones
-- Other reconstruction of other facial bone 76.46
76.46 Other reconstruction of other facial bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.5', 'fusion) with prosthetic implant
----- temporomandibular
76.5 temporomandibular', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.61', 'mandible (segmental) (subapical)
- angle (open)
-- closed
76.61 closed', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.62', 'mandible (segmental) (subapical)
- angle (open)
76.62 angle (open)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.63', 'mandible (segmental) (subapical)
- body
76.63 body', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.64', 'mandible NEC
- orthognathic
76.64 orthognathic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.65', 'maxilla (segmental)
76.65 maxilla (segmental)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.66', 'maxilla (segmental)
- total
76.66 total', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.67', 'Operations on facial bones and joints
- Other facial bone repair and orthognathic surgery
-- Reduction genioplasty 76.67
76.67 Reduction genioplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.68', 'Operations on facial bones and joints
- Other facial bone repair and orthognathic surgery
-- Augmentation genioplasty 76.68
76.68 Augmentation genioplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.69', 'Operation
- orthognathic NEC
76.69 orthognathic NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.70', 'Reduction-fracture --Cont.
-- facial (bone) NEC
76.70 facial (bone) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.71', 'Reduction-fracture --Cont.
-- malar (closed)
76.71 malar (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.72', 'Reduction-fracture --Cont.
-- open
76.72 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.73', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- maxilla (closed)
76.73 maxilla (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.74', 'Reduction-fracture --Cont.
-- open
76.74 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.75', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- mandible (closed)
76.75 mandible (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.76', 'Reduction-fracture --Cont.
-- open
76.76 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.77', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- open
76.77 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.78', 'Reduction-fracture --Cont.
-- closed
76.78 closed', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.79', 'Elevation
- bone fragments (fractured)
-- orbit
76.79 orbit', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.91', 'Operations on facial bones and joints
- Other operations on facial bones and joints
-- Bone graft to facial bone 76.91
76.91 Bone graft to facial bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.92', 'Insertion -electrode(s)
- facial bone implant (alloplastic)
-- (synthetic)
76.92 (synthetic)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.93', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- temporomandibular (closed)
76.93 temporomandibular (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.94', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- open
76.94 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.95', 'Mobilization
- mandible
76.95 mandible', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.96', 'Operations on facial bones and joints
- Other operations on facial bones and joints
-- Injection of therapeutic substance into temporomandibular joint 76.96
76.96 Injection of therapeutic substance into temporomandibular joint', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.97', 'Operations on facial bones and joints
- Other operations on facial bones and joints
-- Removal of internal fixation device from facial bone 76.97
76.97 Removal of internal fixation device from facial bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('76.99', 'Operation
- joint (capsule) (ligament) (structure)
-- facial NEC
76.99 facial NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.00', 'Excision
- bone (ends) (partial), except facial
-- necrotic
---- bone
77.00 bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.01', 'bone
- clavicle
77.01 clavicle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.02', 'bone
- humerus
77.02 humerus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.03', 'bone
- radius
77.03 radius', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.04', 'bone
- carpals, metacarpals
77.04 carpals, metacarpals', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.05', 'bone
- femur
77.05 femur', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.06', 'bone
- patella
77.06 patella', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.07', 'bone
- fibula
77.07 fibula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.08', 'bone
- tarsals, metatarsals
77.08 tarsals, metatarsals', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.09', 'bone
- pelvic
77.09 pelvic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.10', 'Drilling
- bone
77.10 bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.11', 'Incision (and drainage)
- bone
-- clavicle
77.11 clavicle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.12', 'Incision (and drainage)
- bone
-- humerus
77.12 humerus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.13', 'Incision (and drainage)
- bone
-- radius
77.13 radius', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.14', 'Incision (and drainage)
- bone
-- carpals, metacarpals
77.14 carpals, metacarpals', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.15', 'Incision (and drainage)
- bone
-- femur
77.15 femur', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.16', 'Incision (and drainage)
- bone
-- patella
77.16 patella', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.17', 'Incision (and drainage)
- bone
-- fibula
77.17 fibula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.18', 'Incision (and drainage)
- bone
-- tarsals, metatarsals
77.18 tarsals, metatarsals', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.19', 'Incision (and drainage)
- bone
-- pelvic
77.19 pelvic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.21', 'clavicle
- wedge
77.21 wedge', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.22', 'humerus
- wedge
77.22 wedge', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.23', 'radius
- wedge
77.23 wedge', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.24', 'carpals, metacarpals
- wedge
77.24 wedge', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.25', 'Gant operation (wedge osteotomy
- trochanter)
77.25 trochanter)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.26', 'patella
- wedge
77.26 wedge', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.27', 'fibula
- wedge
77.27 wedge', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.28', 'Elmslie-Cholmeley operation (tarsal
- wedge osteotomy)
77.28 wedge osteotomy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.29', 'pelvic
- wedge
77.29 wedge', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.30', 'Operation
- Irwin
77.30 Irwin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.31', 'Clavicotomy
77.31 Clavicotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.32', 'humerus
77.32 humerus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.33', 'radius
77.33 radius', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.34', 'carpals, metacarpals
77.34 carpals, metacarpals', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.35', 'Schanz (femoral osteotomy)
77.35 Schanz (femoral osteotomy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.36', 'patella
77.36 patella', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.37', 'fibula
77.37 fibula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.38', 'metatarsal
77.38 metatarsal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.39', 'Operation
- Pemberton
-- osteotomy of ilium
77.39 osteotomy of ilium', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.40', '81.82 gastrojejunostomy)
---- Biopsy
----- bone
77.40 bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.41', 'Biopsy -bone
-- scapula
77.41 scapula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.42', '81.82 gastrojejunostomy)
---- Biopsy
----- humerus
77.42 humerus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.43', 'Biopsy -bone
-- radius
77.43 radius', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.44', '81.82 gastrojejunostomy)
---- Biopsy
----- carpal, metacarpal
77.44 carpal, metacarpal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.45', '81.82 gastrojejunostomy)
---- Biopsy
----- femur
77.45 femur', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.46', 'Biopsy -bone
-- patella
77.46 patella', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.47', 'Biopsy -bone
-- tibia
77.47 tibia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.48', 'Biopsy -bone
-- tarsal, metatarsal
77.48 tarsal, metatarsal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.49', 'Biopsy -bone
-- pelvic
77.49 pelvic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.51', 'Lapidus operation (bunionectomy
- metatarsal osteotomy)
77.51 metatarsal osteotomy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.52', 'Bunionectomy
- with
-- arthrodesis
77.52 arthrodesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.53', 'Bunionectomy
- with
-- soft tissue correction NEC
77.53 soft tissue correction NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.54', 'Correction
- bunionette (with osteotomy)
77.54 bunionette (with osteotomy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.56', 'Arthrodesis
- toe NEC
-- hammer toe repair
77.56 hammer toe repair', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.57', 'Arthrodesis
- toe NEC
-- claw toe repair
77.57 claw toe repair', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.58', 'Arthrodesis
- toe NEC
77.58 toe NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.59', 'Bunionectomy
77.59 Bunionectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.60', 'Craterization, bone
- lesion, bone
77.60 lesion, bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.61', 'Excision -lesion -artery
- bone
-- clavicle
77.61 clavicle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.62', 'Excision -lesion -artery
- bone
-- humerus
77.62 humerus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.63', 'Excision -lesion -artery
- bone
-- radius
77.63 radius', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.64', 'Excision -lesion -artery
- bone
-- carpal, metacarpal
77.64 carpal, metacarpal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.65', 'Excision -lesion -artery
- bone
-- femur
77.65 femur', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.66', 'Excision -lesion -artery
- bone
-- patella
77.66 patella', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.67', 'Excision -lesion -artery
- bone
-- fibula
77.67 fibula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.68', 'Excision -lesion -artery
- bone
-- tarsal, metatarsal
77.68 tarsal, metatarsal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.69', 'Excision -lesion -artery
- bone
-- pelvic
77.69 pelvic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.7', 'Excision
- bone (ends) (partial), except facial
-- for graft (autograft) (homograft)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.8', 'Excision
- bone (ends) (partial), except facial', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.81', 'Claviculectomy (partial)
77.81 Claviculectomy (partial)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.83', 'radius (head) (partial)
77.83 radius (head) (partial)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.84', '09.81 by magnet extraction
----- Carpectomy (partial)
77.84 Carpectomy (partial)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.85', 'Girdlestone
- resection of femoral head and
-- prosthesis)
77.85 prosthesis)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.86', 'patella (complete)
- partial
77.86 partial', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.88', 'inguinal Bobb (cholelithotomy)
- 43.19 vaginalis)
----- and bases of phalanges)
77.88 and bases of phalanges)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.89', 'Facetectomy
77.89 Facetectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.9', 'Ostectomy (partial), except facial
- total, except facial', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.91', 'Claviculectomy (partial)
- total
77.91 total', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.93', 'radius (head) (partial)
- total
77.93 total', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.94', '09.81 by magnet extraction
----- total
77.94 total', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.96', 'patella (complete)
77.96 patella (complete)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.98', 'Sesamoidectomy
77.98 Sesamoidectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('77.99', 'Ruiz-Mora (proximal phalangectomy
-- hammer toe)
77.99 hammer toe)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.00', 'Transplant, transplantation
- bone
78.00 bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.01', 'Eden-Hybinette operation (glenoid
- bone block)
78.01 bone block)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.02', 'patella fibula
----- humerus
78.02 humerus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.03', 'Graft, grafting bone
- radius
78.03 radius', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.04', 'Russe (bone graft of scaphoid)
78.04 Russe (bone graft of scaphoid)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.05', 'Operation
- Albee
-- bone peg, femoral neck
78.05 bone peg, femoral neck', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.06', 'Operation
- Albee
-- graft for slipping patella
78.06 graft for slipping patella', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.07', 'Graft, grafting bone
- tibia
78.07 tibia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.08', 'Graft, grafting bone
- tarsal, metatarsal
78.08 tarsal, metatarsal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.09', 'Graft, grafting bone
- specified site NEC
78.09 specified site NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.1', 'Application
- minifixator device (bone)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.10', 'Application
- external fixator device (bone)
78.10 external fixator device (bone)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.11', 'Application
- external fixator device (bone)
-- clavicle
78.11 clavicle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.12', 'Application
- external fixator device (bone)
-- humerus
78.12 humerus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.13', 'Application
- external fixator device (bone)
-- radius
78.13 radius', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.14', 'Application
- external fixator device (bone)
-- carpal, metacarpal
78.14 carpal, metacarpal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.15', 'Application
- external fixator device (bone)
-- femur
78.15 femur', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.16', 'Application
- external fixator device (bone)
-- patella
78.16 patella', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.17', 'Application
- external fixator device (bone)
-- fibula
78.17 fibula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.18', 'Application
- external fixator device (bone)
-- tarsal, metatarsal
78.18 tarsal, metatarsal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.19', 'Application
- external fixator device (bone)
-- pelvic
78.19 pelvic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.2', 'shortening
78.2 shortening', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.20', 'Fusion
- epiphyseal-diaphyseal
-- bone growth
78.20 bone growth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.22', 'Stapling
- epiphyseal plate
-- humerus
78.22 humerus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.23', 'Arrest -bone growth
- ulna
78.23 ulna', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.24', 'periosteum
- carpal, metacarpal
78.24 carpal, metacarpal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.25', 'femoral shortening(with blade plate)
- by epiphyseal stapling
78.25 by epiphyseal stapling', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.27', 'Arrest -bone growth
- tibia
78.27 tibia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.28', 'periosteum
- tarsal, metatarsal
78.28 tarsal, metatarsal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.29', 'Stapling
- epiphyseal plate
-- specified site NEC
78.29 specified site NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.3', 'lengthening
78.3 lengthening', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.30', 'bone (with bone graft)
78.30 bone (with bone graft)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.33', 'bone (with bone graft)
- ulna
78.33 ulna', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.35', 'bone (with bone graft)
- femur
78.35 femur', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.37', 'bone (with bone graft)
- tibia
78.37 tibia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.39', 'bone (with bone graft)
- specified site NEC
-- 78.3,
78.39 78.3,', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.4', 'Other operations on bones, except facial bones
- Other repair or plastic operations on bone  78.4
78.4 Other repair or plastic operations on bone ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.40', '45.50 tonsillar fossa
---- Fusion
----- bone
78.40 bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.41', 'Green (scapulopexy)
78.41 Green (scapulopexy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.42', 'artery window
- release
----- humerus
78.42 humerus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.43', 'ulna
78.43 ulna', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.44', 'artery window
- release
----- carpal, metacarpal
78.44 carpal, metacarpal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.45', 'artery window
- release
----- femur
78.45 femur', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.46', 'Patellapexy
78.46 Patellapexy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.47', 'tibia
78.47 tibia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.48', 'artery window
- release
----- tarsal, metatarsal
78.48 tarsal, metatarsal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.49', 'vertebra NEC
78.49 vertebra NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.50', 'Reinsertion
- fixation device (internal)
-- bone, internal
78.50 bone, internal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.51', 'bone
- internal(without fracture reduction)
-- clavicle
78.51 clavicle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.52', 'bone
- internal(without fracture reduction)
-- humerus
78.52 humerus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.53', 'bone
- internal(without fracture reduction)
-- radius
78.53 radius', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.54', 'bone
- internal(without fracture reduction)
-- carpal, metacarpal
78.54 carpal, metacarpal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.55', 'bone
- internal(without fracture reduction)
-- femur
78.55 femur', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.56', 'bone
- internal(without fracture reduction)
-- patella
78.56 patella', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.57', 'bone
- internal(without fracture reduction)
-- fibula
78.57 fibula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.58', 'bone
- internal(without fracture reduction)
-- tarsal, metatarsal
78.58 tarsal, metatarsal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.59', 'bone
- internal(without fracture reduction)
-- pelvic
78.59 pelvic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.6', 'electronic
- stimulator
-- bone
78.6 bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.60', '03.93 fetus, ectopic
----- internal
78.60 internal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.61', '03.93 fetus, ectopic
----- clavicle
78.61 clavicle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.62', '83.92 humerus
78.62 83.92 humerus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.63', '83.92 humerus
----- radius
78.63 radius', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.64', '03.93 fetus, ectopic
----- carpal, metacarpal
78.64 carpal, metacarpal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.65', '03.93 fetus, ectopic
----- femur
78.65 femur', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.66', '83.92 humerus
----- patella
78.66 patella', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.67', '03.93 fetus, ectopic
----- fibula
78.67 fibula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.68', '83.92 humerus
----- tarsal, metatarsal
78.68 tarsal, metatarsal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.69', '83.92 humerus
----- pelvic
78.69 pelvic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.70', 'artery window
- 81.23 tendon transfer (biceps)
----- Osteoclasis
78.70 Osteoclasis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.71', 'artery window
- 81.23 tendon transfer (biceps)
----- clavicle
78.71 clavicle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.72', 'artery window
- 16.09 humerus
78.72 16.09 humerus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.73', 'artery window
- 16.09 humerus
----- radius
78.73 radius', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.74', 'artery window
- 81.23 tendon transfer (biceps)
----- carpal, metacarpal
78.74 carpal, metacarpal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.75', 'artery window
- 81.23 tendon transfer (biceps)
----- femur
78.75 femur', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.76', 'artery window
- 16.09 humerus
----- patella
78.76 patella', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.77', 'artery window
- 81.23 tendon transfer (biceps)
----- fibula
78.77 fibula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.78', 'artery window
- 16.09 humerus
----- tarsal, metatarsal
78.78 tarsal, metatarsal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.79', 'artery window
- 16.09 humerus
----- pelvic
78.79 pelvic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.80', 'only), eye muscle (oblique) (rectus)
- and amnion
-- site appendix
----- bone
78.80 bone', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.81', 'only), eye muscle (oblique) (rectus)
- and amnion
-- site appendix
----- clavicle
78.81 clavicle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.82', 'only), eye muscle (oblique) (rectus)
- and amnion
-- of femur
----- humerus
78.82 humerus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.83', 'only), eye muscle (oblique) (rectus)
- and amnion
-- of femur
----- radius
78.83 radius', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.84', 'only), eye muscle (oblique) (rectus)
- and amnion
-- site appendix
----- carpal, metacarpal
78.84 carpal, metacarpal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.85', 'only), eye muscle (oblique) (rectus)
- and amnion
-- of femur
78.85 of femur', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.86', 'only), eye muscle (oblique) (rectus)
- and amnion
-- of femur
----- patella
78.86 patella', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.87', 'only), eye muscle (oblique) (rectus)
- and amnion
-- of femur
----- fibula
78.87 fibula', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.88', 'only), eye muscle (oblique) (rectus)
- and amnion
-- of femur
----- tarsal, metatarsal
78.88 tarsal, metatarsal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.89', 'only), eye muscle (oblique) (rectus)
- and amnion
-- of femur
----- pelvic
78.89 pelvic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('78.9', 'Insertion
- bone growth stimulator (invasive)
-- (percutaneous) (semi-invasive)
78.9 (percutaneous) (semi-invasive)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.00', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- traction device) (closed)
79.00 traction device) (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.01', 'Reduction-fracture --Cont.
-- humerus (closed)
79.01 humerus (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.02', 'Reduction-fracture --Cont.
-- arm (closed) NEC
79.02 arm (closed) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.03', 'Reduction-fracture --Cont.
-- carpal, metacarpal (closed)
79.03 carpal, metacarpal (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.04', 'leg phalanges
----- hand (closed)
79.04 hand (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.05', 'Reduction-fracture --Cont.
-- femur (closed)
79.05 femur (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.06', 'Reduction-fracture --Cont.
-- fibula (closed)
79.06 fibula (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.07', 'Reduction-fracture --Cont.
-- foot (closed) NEC
79.07 foot (closed) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.08', 'leg phalanges
----- foot (closed)
79.08 foot (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.09', 'leg phalanges
- orbit
----- specified site (closed) NEC
79.09 specified site (closed) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.10', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- with internal fixation
79.10 with internal fixation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.11', 'Reduction-fracture --Cont.
-- with internal fixation
79.11 with internal fixation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.12', 'Reduction-fracture --Cont.
-- with internal fixation
79.12 with internal fixation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.13', 'Reduction-fracture --Cont.
-- with internal fixation
79.13 with internal fixation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.14', 'leg phalanges
- orbit
----- with internal fixation
79.14 with internal fixation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.15', 'Insertion -electrode(s)
- Harris pin
79.15 Harris pin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.16', 'Reduction-fracture --Cont.
-- with internal fixation
79.16 with internal fixation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.17', 'Reduction-fracture --Cont.
-- with internal fixation
79.17 with internal fixation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.18', 'leg phalanges
----- with internal fixation
79.18 with internal fixation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.19', 'leg phalanges
- orbit
----- with internal fixation
79.19 with internal fixation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.20', 'Reduction-fracture --Cont.
-- open
79.20 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.21', 'Reduction-fracture --Cont.
-- open
79.21 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.22', 'Reduction-fracture --Cont.
-- open
79.22 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.23', 'Reduction-fracture --Cont.
-- open
79.23 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.24', 'leg phalanges
- orbit
----- open
79.24 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.25', 'Reduction-fracture --Cont.
-- open
79.25 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.26', 'Reduction-fracture --Cont.
-- open
79.26 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.27', 'Reduction-fracture --Cont.
-- open
79.27 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.28', 'leg phalanges
----- open
79.28 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.29', 'Reduction-fracture --Cont.
-- specified site NEC
79.29 specified site NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.30', 'Reduction-fracture --Cont.
-- with internal fixation
79.30 with internal fixation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.31', 'Reduction-fracture --Cont.
-- open
--- with internal fixation
79.31 with internal fixation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.32', 'Reduction-fracture --Cont.
-- open
--- with internal fixation
79.32 with internal fixation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.33', 'Reduction-fracture --Cont.
-- open
--- with internal fixation
79.33 with internal fixation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.34', 'leg phalanges
- orbit
----- with internal fixation
79.34 with internal fixation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.35', 'Reduction
- fracture
-- femur
--- open 79.35
79.35 Open reduction of fracture of femur with internal fixation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.36', 'Reduction
- fracture
-- tibia
--- open 79.36
79.36 Open reduction of fracture of tibia and fibula with internal fixation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.37', 'Reduction-fracture --Cont.
-- open
--- with internal fixation
79.37 with internal fixation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.38', 'leg phalanges
----- with internal fixation
79.38 with internal fixation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.39', 'Reduction-fracture --Cont.
-- specified site NEC
--- with internal fixation
79.39 with internal fixation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.4', 'separation, epiphysis (with internal
- specified site (closed) NEC
-- category
79.4 category', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.40', 'separation, epiphysis (with internal
-- fixation) (closed)
79.40 fixation) (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.41', 'separation, epiphysis (with internal
- humerus (closed)
79.41 humerus (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.45', 'separation, epiphysis (with internal
- femur (closed)
79.45 femur (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.46', 'separation, epiphysis (with internal
- fibula (closed)
79.46 fibula (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.5', 'separation, epiphysis (with internal
- specified site (closed) NEC
-- open
79.5 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.50', 'separation, epiphysis (with internal
- open
79.50 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.51', 'separation, epiphysis (with internal
- humerus (closed)
-- open
79.51 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.55', 'separation, epiphysis (with internal
- femur (closed)
-- open
79.55 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.56', 'separation, epiphysis (with internal
- fibula (closed)
-- open
79.56 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.70', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- (closed)
79.70 (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.71', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- shoulder (closed)
79.71 shoulder (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.72', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- elbow (closed)
79.72 elbow (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.73', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- wrist (closed)
79.73 wrist (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.74', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- finger (closed)
79.74 finger (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.75', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- hip (closed)
79.75 hip (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.76', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- knee (closed)
79.76 knee (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.77', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- diastasis, ankle mortise (closed)
79.77 diastasis, ankle mortise (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.78', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- foot (closed)
79.78 foot (closed)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.79', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- specified site (closed) NEC
79.79 specified site (closed) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.80', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- internal fixation)
79.80 internal fixation)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.81', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- open
79.81 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.82', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- open
79.82 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.83', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- open
79.83 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.84', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- open
79.84 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.85', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- open
79.85 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.86', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- open
79.86 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.87', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- open
79.87 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.88', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- open
79.88 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.89', '(with mucous membrane
- TO PROCEDURES (FY10)
---- Reduction
----- specified site NEC
79.89 specified site NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('79.9', 'inguinal Bobb (cholelithotomy)
-- for facial
----- injury NEC
79.9 injury NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.00', '80.10 prosthesis
----- unspecified site
80.00 unspecified site', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.01', '80.10 prosthesis
----- shoulder
80.01 shoulder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.02', '80.10 prosthesis
----- elbow
80.02 elbow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.03', '80.10 prosthesis
----- wrist
80.03 wrist', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.04', '80.10 prosthesis
----- hand and finger
80.04 hand and finger', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.05', 'Girdlestone operation
- resection of hip prosthesis
80.05 resection of hip prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.06', '80.10 prosthesis
----- knee
80.06 knee', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.07', '80.10 prosthesis
----- ankle
80.07 ankle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.08', '80.10 prosthesis
----- foot and toe
80.08 foot and toe', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.09', 'code cyst
----- spine
80.09 spine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.10', 'bone fragment (chip)
- joint
80.10 joint', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.11', 'shoulder
80.11 shoulder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.12', 'fusion) with prosthetic implant
---- Arthrotomy
----- elbow
80.12 elbow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.13', 'wrist
80.13 wrist', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.14', 'fusion) with prosthetic implant
- 81.72
----- hand and finger
80.14 hand and finger', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.15', 'hip
80.15 hip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.16', 'knee
80.16 knee', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.17', 'fusion) with prosthetic implant
---- Arthrotomy
----- ankle
80.17 ankle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.18', 'fusion) with prosthetic implant
---- Arthrotomy
----- foot and toe
80.18 foot and toe', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.19', 'specified site NEC
80.19 specified site NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.20', 'fusion) with prosthetic implant
---- Arthroscopy
80.20 Arthroscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.21', 'fusion) with prosthetic implant
---- Arthroscopy
----- shoulder
80.21 shoulder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.22', 'fusion) with prosthetic implant
---- Arthroscopy
----- elbow
80.22 elbow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.23', 'fusion) with prosthetic implant
---- Arthroscopy
----- wrist
80.23 wrist', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.24', 'fusion) with prosthetic implant
---- Arthroscopy
----- finger
80.24 finger', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.25', 'fusion) with prosthetic implant
---- Arthroscopy
----- hip
80.25 hip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.26', 'fusion) with prosthetic implant
---- Arthroscopy
----- knee
80.26 knee', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.27', 'fusion) with prosthetic implant
---- Arthroscopy
----- ankle
80.27 ankle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.28', 'fusion) with prosthetic implant
---- Arthroscopy
----- foot
80.28 foot', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.29', 'fusion) with prosthetic implant
---- Arthroscopy
----- specified site NEC
80.29 specified site NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.30', '81.82 gastrojejunostomy)
---- Biopsy
----- joint structure (aspiration)
80.30 joint structure (aspiration)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.31', 'Biopsy -joint structure
- shoulder
80.31 shoulder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.32', 'Biopsy -joint structure
- elbow
80.32 elbow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.33', 'Biopsy -joint structure
- wrist
80.33 wrist', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.34', 'Biopsy -joint structure
- hand and finger
80.34 hand and finger', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.35', 'Biopsy -joint structure
- hip
80.35 hip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.36', 'Biopsy -joint structure
- knee
80.36 knee', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.37', '81.82 gastrojejunostomy)
---- Biopsy
----- ankle
80.37 ankle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.38', 'Biopsy -joint structure
- foot and toe
80.38 foot and toe', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.39', 'Biopsy -joint structure
- specified site NEC
80.39 specified site NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.40', 'joint capsule
80.40 joint capsule', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.41', 'joint capsule
- shoulder
80.41 shoulder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.42', 'joint capsule
- elbow
80.42 elbow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.43', 'joint capsule
- wrist
80.43 wrist', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.44', 'joint capsule
- hand and finger
80.44 hand and finger', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.45', 'joint capsule
- hip
80.45 hip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.46', 'joint capsule
- knee
80.46 knee', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.47', 'joint capsule
- ankle
80.47 ankle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.48', 'joint capsule
- foot and toe
80.48 foot and toe', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.49', 'joint capsule
- specified site NEC
80.49 specified site NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.5', 'Chondrectomy---Cont
- spine
80.5 spine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.50', 'disc, intervertebral NOS
80.50 disc, intervertebral NOS', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.51', 'Diskectomy(discectomy),intervertebral
- herniated (nucleus pulposus)
80.51 herniated (nucleus pulposus)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.52', 'spinal (canal) NEC
- proteolytic enzyme (chymodiactin)
-- (chymopapain)
80.52 (chymopapain)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.53', 'Repair -aneurysm -by or with
- anular disc
-- with graft or prosthesis
80.53 with graft or prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.54', 'Repair -aneurysm -by or with
- anular disc
80.54 anular disc', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.59', 'Diskectomy(discectomy),intervertebral
- percutaneous
80.59 percutaneous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.6', 'Chondrectomy---Cont
- semilunar cartilage (knee)
80.6 semilunar cartilage (knee)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.70', 'Resection
- synovial membrane (complete)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.71', 'vessel hand and finger
----- shoulder
80.71 shoulder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.72', '44.40 ulcer (bleeding) (perforated)
- 44.40 cervical
----- elbow
80.72 elbow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.73', 'vessel hand and finger
----- wrist
80.73 wrist', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.74', 'vessel hand and finger
80.74 vessel hand and finger', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.75', 'vessel hand and finger
----- hip
80.75 hip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.76', 'vessel hand and finger
----- knee
80.76 knee', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.77', '44.40 ulcer (bleeding) (perforated)
- 44.40 cervical
----- ankle
80.77 ankle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.78', '44.40 ulcer (bleeding) (perforated)
- 44.40 cervical
----- foot and toe
80.78 foot and toe', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.79', 'vessel hand and finger
----- specified site NEC
80.79 specified site NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.80', 'Excision lesion
-- joint
80.80 joint', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.81', 'Excision lesion
-- shoulder
80.81 shoulder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.82', 'Excision lesion
-- elbow
80.82 elbow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.83', 'Excision lesion
-- wrist
80.83 wrist', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.84', 'Excision lesion
-- hand and finger
80.84 hand and finger', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.85', 'Excision lesion
-- hip
80.85 hip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.86', 'Excision lesion
-- knee
80.86 knee', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.87', 'Excision lesion
-- ankle
80.87 ankle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.88', 'Excision lesion
-- foot and toe
80.88 foot and toe', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.89', 'Excision lesion
-- specified site NEC
80.89 specified site NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.90', 'Capsulectomy
- joint
80.90 joint', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.91', 'Chondrectomy---Cont
- shoulder
80.91 shoulder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.92', '38.40
---- elbow
80.92 elbow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.93', 'Chondrectomy---Cont
- wrist
80.93 wrist', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.94', '38.40
---- hand and finger
80.94 hand and finger', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.95', '38.40
---- hip
80.95 hip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.96', '38.64 intervertebral disc
---- knee
80.96 knee', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.97', 'Removal -gallstones
- joint (structure) NOS
-- ankle
80.97 ankle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.98', '38.40
---- foot and toe
80.98 foot and toe', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('80.99', 'Chondrectomy---Cont
- specified site NEC
80.99 specified site NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.00', 'Fusion
- spinal (with graft) (with internal
-- (with instrumentation)
81.00 (with instrumentation)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.01', 'spinal, cervical (C2 level or below) NEC
----- C1-C2 level (anterior)(posterior)
81.01 C1-C2 level (anterior)(posterior)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.02', 'spinal, cervical (C2 level or below) NEC
81.02 spinal, cervical (C2 level or below) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.03', 'spinal, cervical (C2 level or below) NEC
----- technique
81.03 technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.04', 'spinal, cervical (C2 level or below) NEC
----- technique
81.04 technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.05', 'spinal, cervical (C2 level or below) NEC
----- dorsal, dorsolumbar NEC
81.05 dorsal, dorsolumbar NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.06', 'Arthrodesis
- lumbosacral, lumbar NEC
-- anterior (interbody), anterolateral
--- technique
81.06 technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.08', 'Arthrodesis
- lumbosacral, lumbar NEC
81.08 lumbosacral, lumbar NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.11', 'Arthrodesis
- pantalar
81.11 pantalar', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.12', 'Arthrodesis
- triple
81.12 triple', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.13', 'Arthrodesis
- subtalar
81.13 subtalar', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.14', 'Arthrodesis
- midtarsal
81.14 midtarsal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.15', 'Arthrodesis
- tarsometatarsal
81.15 tarsometatarsal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.16', 'Arthrodesis
- metatarsophalangeal
81.16 metatarsophalangeal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.17', 'Fusion
- joint (with bone graft)
-- foot NEC
81.17 foot NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.18', 'Arthroereisis, subtalar joint
81.18 Arthroereisis, subtalar joint', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.20', 'Fusion
- joint (with bone graft)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.21', 'Fusion
- joint (with bone graft)
-- hip
81.21 hip', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.22', 'Arthrodesis
- knee
81.22 knee', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.23', 'Arthrodesis
- shoulder
81.23 shoulder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.24', 'Repair and plastic operations on joint structures
- Arthrodesis of other joint
-- Arthrodesis of elbow 81.24
81.24 Arthrodesis of elbow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.25', 'Gill-Stein operation (carporadial
- arthrodesis)
81.25 arthrodesis)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.26', 'Arthrodesis
- metacarpocarpal
81.26 metacarpocarpal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.27', 'Arthrodesis
- metacarpophalangeal
81.27 metacarpophalangeal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.28', 'Fusion
- joint (with bone graft)
-- interphalangeal, finger
81.28 interphalangeal, finger', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.29', 'Arthrodesis
- specified joint NEC
81.29 specified joint NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.30', 'Repair and plastic operations on joint structures
- Refusion of spine
-- Refusion of spine, not otherwise specified 81.30
81.30 Refusion of spine, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.31', 'Fusion
- spinal (with graft) (with internal
-- for pseudarthrosis
81.31 for pseudarthrosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.32', 'spinal, cervical (C2 level or below) NEC
----- for pseudarthrosis
81.32 for pseudarthrosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.33', 'spinal, cervical (C2 level or below) NEC
----- for pseudarthrosis
81.33 for pseudarthrosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.34', 'spinal, cervical (C2 level or below) NEC
----- for pseudarthrosis
81.34 for pseudarthrosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.35', 'spinal, cervical (C2 level or below) NEC
----- for pseudarthrosis
81.35 for pseudarthrosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.36', 'spinal, cervical (C2 level or below) NEC
----- for pseudarthrosis
81.36 for pseudarthrosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.37', 'spinal, cervical (C2 level or below) NEC
----- for pseudarthrosis
81.37 for pseudarthrosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.38', 'Repair and plastic operations on joint structures
- Refusion of spine
-- Refusion of lumbar and lumbosacral spine, posterior technique 81.38
81.38 Refusion of lumbar and lumbosacral spine, posterior technique', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.39', 'Refusion --Cont
-- refusion NEC
81.39 refusion NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.40', 'Arthroplasty (with fixation device)
- femoral head NEC
81.40 femoral head NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.42', 'Five-in-one repair, knee
81.42 Five-in-one repair, knee', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.43', 'Repair hernia -ventral
- knee (joint) NEC
-- triad
81.43 triad', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.44', 'Ellison operation (reinforcement
- collateral ligament)
81.44 collateral ligament)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.45', 'Campbell operation
- reconstruction of anterior cruciate
-- ligament
81.45 ligament', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.46', 'Repair hernia -ventral
- knee (joint) NEC
-- collateral ligaments
81.46 collateral ligaments', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.47', 'Repair hernia -ventral
- knee (joint) NEC
81.47 knee (joint) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.49', 'Arthroplasty (with fixation device)
- ankle
81.49 ankle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.51', 'Arthroplasty
- hip (total) 81.51
81.51 Total hip replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.52', 'Arthroplasty (with fixation device)
- cup (partial hip)
81.52 cup (partial hip)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.53', 'Implant -joint femoral- revision
- hip (partial)
-- revision NOS
81.53 revision NOS', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.54', 'Arthroplasty
- knee (total) 81.54
81.54 Total knee replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.55', 'Implant -joint femoral- revision
- knee (partial) (total)
-- revision NOS
81.55 revision NOS', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.56', 'Repair and plastic operations on joint structures
- Joint replacement of lower extremity
-- Total ankle replacement 81.56
81.56 Total ankle replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.57', 'Implant -joint femoral- revision
- toe
81.57 toe', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.59', 'Implant -joint femoral- revision
- toe
-- revision
81.59 revision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.64', 'spinal,
----- number of vertebrae
81.64 number of vertebrae', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.65', 'Insertion
- bone void filler
-- that with percutaneous
--- vertebroplasty
81.65 vertebroplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.66', 'Insertion
- bone void filler
-- that with percutaneous vertebral
--- augmentation
81.66 augmentation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.71', 'Arthroplasty (with fixation device)
- finger(s)
-- with prosthetic implant
81.71 with prosthetic implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.72', 'Arthroplasty (with fixation device)
- Carroll and Taber (proximal
-- interphalangeal joint)
81.72 interphalangeal joint)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.73', 'Implant -joint femoral- revision
- wrist (partial)
-- total replacement
81.73 total replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.74', 'Arthroplasty (with fixation device)
- carpals
-- with prosthetic implant
81.74 with prosthetic implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.75', 'Arthroplasty (with fixation device)
- carpals
81.75 carpals', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.80', 'Glenoplasty, shoulder
- with
-- total replacement
81.80 total replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.81', 'Glenoplasty, shoulder
- with
-- partial replacement
81.81 partial replacement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.82', 'Glenoplasty, shoulder
- for recurrent dislocation
81.82 for recurrent dislocation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.83', 'Glenoplasty, shoulder
81.83 Glenoplasty, shoulder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.84', 'Arthroplasty (with fixation device)
- elbow
-- with prosthetic replacement
--- (total)
81.84 (total)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.85', 'Arthroplasty (with fixation device)
- elbow
81.85 elbow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.91', 'joint
81.91 joint', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.92', 'Injection (into) (hypodermically)
- costochondral junction
81.92 costochondral junction', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.96', 'Arthroplasty (with fixation device)
- traction)
81.96 traction)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.97', 'Implant -joint femoral- revision
- hand (metacarpophalangeal)
-- revision
81.97 revision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.98', 'Procedure -diagnostic
- joint (capsule) (ligament) (structure)
-- NEC
81.98 NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('81.99', 'Repair and plastic operations on joint structures
- Other operations on joint structures
-- Other 81.99
81.99 Other', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.01', 'tendon (sheath)
- hand
82.01 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.02', 'muscle
- hand
82.02 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.03', 'bursa
- hand
82.03 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.04', 'midpalmar space
82.04 midpalmar space', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.09', 'Incision (and drainage)
- soft tissue NEC
-- hand
82.09 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.11', 'Tenotomy
- hand
82.11 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.12', 'fascia
- hand
82.12 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.19', 'muscle
- hand
82.19 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.21', 'Excision
- bone (ends) (partial), except facial
-- tendon
--- hand
82.21 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.22', 'Excision
- bone (ends) (partial), except facial
-- muscle
--- hand
82.22 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.29', 'cyst
- hand
82.29 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.31', 'Bursectomy
- hand
82.31 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.32', 'Excision
- tendon (sheath)
-- hand
82.32 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.33', 'Excision
- tendon (sheath)
-- hand
82.33 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.34', 'Excision
- fascia
-- hand
82.34 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.35', 'excision of palmar fascia
82.35 excision of palmar fascia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.36', 'hand
82.36 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.39', 'Resection
- soft tissue NEC
-- hand
82.39 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.41', 'also hand
- NEC with free graft
----- hand
82.41 hand', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.45', 'also hand
- NEC with free graft
----- hand
82.45 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.46', 'hand
82.46 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.51', 'site
- 28.6 vaccine
---- profundus tendon (Wagner)
82.51 profundus tendon (Wagner)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.52', 'Recession
- tendon
-- hand
82.52 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.53', 'Reattachment-extremity
- tendon (to tendon)
-- hand
82.53 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.54', 'Reattachment-extremity
- muscle
-- hand
82.54 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.55', 'muscle
- hand
82.55 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.56', 'Bunnell (tendon transfer)
82.56 Bunnell (tendon transfer)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.57', 'tendon NEC
- hand
82.57 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.58', 'or graft lung NEC
----- hand
82.58 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.59', 'muscle NEC
- hand
82.59 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.61', 'Graft, grafting -skin
-- free (autogenous) NEC
--- thumb
---- for
----- pollicization
82.61 pollicization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.69', 'Graft, grafting -skin
-- free (autogenous) NEC
--- thumb
---- for
----- reconstruction
82.69 reconstruction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.71', 'tendon pulley(with graft)(with local
- for opponensplasty
82.71 for opponensplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.72', 'fascia
- hand
82.72 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.79', 'fascia
- by or with
-- graft (fascial) (muscle)
--- hand
82.79 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.81', 'digital (to replace absent thumb)
- finger (to thumb) (same hand)
-- finger, except thumb
82.81 finger, except thumb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.82', 'Barsky operation(closure of cleft hand)
82.82 Barsky operation(closure of cleft hand)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.83', 'size
- finger (macrodactyly repair)
82.83 finger (macrodactyly repair)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.84', 'mallet finger
82.84 mallet finger', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.85', 'Reattachment-extremity
- tendon (to tendon)
-- hand
82.85 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.86', 'Tenosuspension
- hand
82.86 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.89', 'hand
82.89 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.91', 'Operations on muscle, tendon, and fascia of hand
- Other operations on muscle, tendon, and fascia of hand
-- Lysis of adhesions of hand 82.91
82.91 Lysis of adhesions of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.92', 'bursa (percutaneous)
- hand
82.92 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.93', 'Aspiration
- tendon
-- hand
82.93 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.94', 'Injection (into) (hypodermically)
- bursa (therapeutic agent)
-- hand
82.94 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.95', 'Operations on muscle, tendon, and fascia of hand
- Other operations on muscle, tendon, and fascia of hand
-- Injection of therapeutic substance into tendon of hand 82.95
82.95 Injection of therapeutic substance into tendon of hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.96', 'soft tissue
- hand
82.96 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('82.99', 'hand
82.99 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.01', 'tendon (sheath)
83.01 tendon (sheath)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.02', 'muscle
83.02 muscle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.03', 'Bursotomy
83.03 Bursotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.09', 'Incision (and drainage)
- soft tissue NEC
83.09 soft tissue NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.11', 'achillotenotomy
83.11 achillotenotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.12', 'Tenotomy
- adductor (hip) (subcutaneous)
83.12 adductor (hip) (subcutaneous)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.13', 'thoracic outlet
- by
-- tenotomy
83.13 tenotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.14', 'Campbell operation
- fasciotomy (iliac crest)
83.14 fasciotomy (iliac crest)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.19', 'thoracic outlet
- by
-- myotomy (division of scalenus
--- anticus muscle)
83.19 anticus muscle)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.21', 'Biopsy -bone
- bursa
83.21 bursa', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.29', 'Procedure -diagnostic
- fascia (any site)
83.29 fascia (any site)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.31', 'Excision
- bone (ends) (partial), except facial
-- tendon
83.31 tendon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.32', 'Excision
- bone (ends) (partial), except facial
-- muscle
83.32 muscle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.39', 'cyst
- Baker''s (popliteal)
83.39 Baker''s (popliteal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.41', 'Excision
- tendon (sheath)
-- for graft
83.41 for graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.42', 'Excision
- tendon (sheath)
83.42 tendon (sheath)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.43', 'Excision
- fascia
-- for graft
83.43 for graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.44', 'Excision
- fascia
83.44 fascia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.45', 'Myectomy
83.45 Myectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.49', 'Resection
- soft tissue NEC
83.49 soft tissue NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.5', 'Bursectomy
83.5 Bursectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.61', 'also hand
- NEC with free graft
----- sheath (direct suture)
83.61 sheath (direct suture)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.62', '- 37.33
---- Achillorrhaphy
----- delayed
83.62 delayed', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.63', 'also hand
----- musculotendinous cuff, shoulder
83.63 musculotendinous cuff, shoulder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.64', 'Suture (laceration)
- aponeurosis
83.64 aponeurosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.65', 'Myorrhaphy
83.65 Myorrhaphy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.71', 'site
- 28.6 vaccine
---- tendon
83.71 tendon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.72', 'Recession
- tendon
83.72 tendon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.73', 'Reattachment-extremity
- tendon (to tendon)
83.73 tendon (to tendon)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.74', 'Reattachment-extremity
- muscle
83.74 muscle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.75', 'Barr operation (transfer of tibialis
- tendon)
83.75 tendon)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.76', 'tendon NEC
83.76 tendon NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.77', 'Operation
- Steindler
-- flexorplasty (elbow)
83.77 flexorplasty (elbow)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.79', 'muscle NEC
83.79 muscle NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.81', 'fascia
- by or with
-- graft (fascial) (muscle)
--- tendon
83.81 tendon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.82', 'fascia
83.82 fascia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.83', 'tendon pulley(with graft)(with local
-- tissue)
83.83 tissue)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.84', 'Correction
- clubfoot NEC
83.84 clubfoot NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.85', 'hamstring NEC
83.85 hamstring NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.86', 'Operations on muscle, tendon, fascia, and bursa, except
- Other plastic operations on muscle, tendon, and fascia
-- Quadricepsplasty 83.86
83.86 Quadricepsplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.87', 'or graft lung NEC
----- muscle NEC
83.87 muscle NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.88', 'Ellis Jones operation (repair of peroneal
- tendon)
83.88 tendon)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.89', 'Fasciodesis
83.89 Fasciodesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.91', 'Operations on muscle, tendon, fascia, and bursa, except
- Other operations on muscle, tendon, fascia, and bursa
-- Lysis of adhesions of muscle, tendon, fascia, and barsa 83.91
83.91 Lysis of adhesions of muscle, tendon, fascia, and barsa', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.92', 'skeletal muscle stimulator
83.92 skeletal muscle stimulator', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.93', 'electronic
- stimulator
-- skeletal muscle
83.93 skeletal muscle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.94', 'bursa (percutaneous)
83.94 bursa (percutaneous)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.95', 'Aspiration
- tendon
83.95 tendon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.96', 'Injection (into) (hypodermically)
- bursa (therapeutic agent)
83.96 bursa (therapeutic agent)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.97', 'Operations on muscle, tendon, fascia, and bursa, except
- Other operations on muscle, tendon, fascia, and bursa
-- Injection of therapeutic substance into tendon 83.97
83.97 Injection of therapeutic substance into tendon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.98', 'soft tissue
83.98 soft tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('83.99', 'Myoclasis
83.99 Myoclasis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.00', 'Amputation (cineplastic) (closed flap)
- arm NEC
84.00 arm NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.01', 'site
- 28.6 vaccine
---- Amputation
----- finger, except thumb
84.01 finger, except thumb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.02', 'thumb
84.02 thumb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.03', 'Amputation (cineplastic) (closed flap)
- arm NEC
-- carpals
84.03 carpals', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.04', 'Amputation (cineplastic) (closed flap)
- arm NEC
-- wrist (disarticulation)
84.04 wrist (disarticulation)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.05', 'Amputation (cineplastic) (closed flap)
- arm NEC
-- forearm
84.05 forearm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.06', 'Amputation (cineplastic) (closed flap)
- arm NEC
-- elbow (disarticulation)
84.06 elbow (disarticulation)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.07', 'Amputation (cineplastic) (closed flap)
- above-elbow
84.07 above-elbow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.08', 'Amputation (cineplastic) (closed flap)
- arm NEC
-- shoulder (disarticulation)
84.08 shoulder (disarticulation)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.09', 'Littlewood operation (forequarter
- amputation)
84.09 amputation)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.10', 'Other procedures on musculoskeletal system
- Amputation of lower limb
-- Lower limb amputation, not otherwise specified 84.10
84.10 Lower limb amputation, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.11', 'site
- 28.6 vaccine
-- of forefoot
----- hallux
84.11 hallux', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.12', 'Amputation (cineplastic) (closed flap)
- Chopart''s (midtarsal)
84.12 Chopart''s (midtarsal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.13', 'Amputation (cineplastic) (closed flap)
- ankle (disarticulation)
84.13 ankle (disarticulation)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.14', 'supramalleolar, foot
84.14 supramalleolar, foot', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.15', 'Amputation (cineplastic) (closed flap)
- below-knee (BK) NEC
84.15 below-knee (BK) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.16', 'Amputation (cineplastic) (closed flap)
- Batch-Spittler-McFaddin(knee
-- disarticu-lation)
84.16 disarticu-lation)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.17', 'Amputation (cineplastic) (closed flap)
- above-knee (AK)
84.17 above-knee (AK)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.18', 'Amputation (cineplastic) (closed flap)
- Boyd (hip disarticulation)
84.18 Boyd (hip disarticulation)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.19', 'Amputation (cineplastic) (closed flap)
- abdominopelvic
84.19 abdominopelvic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.21', 'Reattachment-extremity
-- thumb
84.21 thumb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.22', 'Reattachment-extremity
-- fingers, except thumb
84.22 fingers, except thumb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.23', 'Reattachment-extremity
-- forearm
84.23 forearm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.24', 'Reattachment-extremity
-- arm (upper) NEC
84.24 arm (upper) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.25', 'Reattachment-extremity
-- toe
84.25 toe', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.26', 'Reattachment-extremity
-- foot
84.26 foot', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.27', 'Reattachment-extremity
-- leg (lower) NEC
84.27 leg (lower) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.28', 'Reattachment-extremity
-- thigh
84.28 thigh', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.29', 'Other procedures on musculoskeletal system
- Reattachment of extremity
-- Other reattachment 84.29
84.29 Other reattachment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.3', 'Trimming, amputation stump
84.3 Trimming, amputation stump', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.40', 'Cineplasty, cineplastic prosthesis
- extremity
84.40 extremity', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.44', 'Cineplasty, cineplastic prosthesis
- arm
84.44 arm', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.48', 'Cineplasty, cineplastic prosthesis
- extremity
-- lower
84.48 lower', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.51', 'assist eyeball)
----- interbody spinal fusion device
84.51 interbody spinal fusion device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.52', 'lining) (OP- ) (recombinant) (rhBMP)
84.52 lining) (OP- ) (recombinant) (rhBMP)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.53', 'limb lengthening device, internal,
- with kinetic distraction
84.53 with kinetic distraction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.55', 'Insertion
- bone void filler
84.55 bone void filler', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.56', 'Replacement prosthesis
- spacer (cement) (joint)
-- (methylmethacrylate)
84.56 (methylmethacrylate)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.57', 'Other procedures on musculoskeletal system
- Implantation of other musculoskeletal devices and substances
-- Removal of (cement) spacer 84.57
84.57 Removal of (cement) spacer', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.59', 'Insertion -prosthesis
- spine
-- other device
84.59 other device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.60', 'Insertion -prosthesis
- spine
-- artificial disc, NOS
84.60 artificial disc, NOS', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.61', 'Insertion -prosthesis
- spine
-- cervical
--- nucleus
84.61 nucleus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.62', 'Insertion -prosthesis
- spine
-- cervical
84.62 cervical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.63', 'Insertion -prosthesis
- spine
-- thoracic (partial)(total)
84.63 thoracic (partial)(total)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.64', 'Insertion -prosthesis
- spine
-- lumbar, lumbosacral
--- nucleus
84.64 nucleus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.65', 'Insertion -prosthesis
- spine
-- lumbar, lumbosacral
84.65 lumbar, lumbosacral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.66', 'artery aortocoronary (catheter stent)(with
----- cervical
84.66 cervical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.67', 'artery aortocoronary (catheter stent)(with
----- thoracic
84.67 thoracic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.68', 'artery aortocoronary (catheter stent)(with
----- lumbar, lumbosacral
84.68 lumbar, lumbosacral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.69', 'artery aortocoronary (catheter stent)(with
----- NOS
84.69 NOS', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.71', 'Other procedures on musculoskeletal system
- Adjunct codes for external fixator devices
-- Application of external fixator device, monoplanar system 84.71
84.71 Application of external fixator device, monoplanar system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.72', 'Application
- external fixator device (bone)
-- Ilizarov type
84.72 Ilizarov type', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.73', 'Application
- external fixator device (bone)
-- hybrid device or system
84.73 hybrid device or system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.8', 'Other procedures on musculoskeletal system
- Insertion, replacement and revision of posterior spinal motion 84.8
84.8 Insertion, replacement and revision of posterior spinal motion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.80', 'Other procedures on musculoskeletal system
- Insertion, replacement and revision of posterior spinal motion
-- Insertion or replacement of interspinous process device(s)  84.80
84.80 Insertion or replacement of interspinous process device(s) ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.81', 'device tibial component
- (skin) total (all components)
----- interspinous process device(s)
84.81 interspinous process device(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.82', 'Dynesys®
84.82 Dynesys®', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.83', 'device tibial component
- or pedicle-based dynamic stabilization
----- device(s)
84.83 device(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.84', 'Replacement prosthesis
- spinal motion preservation device
-- facet replacement device(s)
84.84 facet replacement device(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('84.85', 'device tibial component
- (skin) total (all components)
----- facet replacement device(s)
84.85 facet replacement device(s)', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.0', 'breast
85.0 breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.11', 'Biopsy -bone
- breast
85.11 breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.12', 'Biopsy -bone
- breast
-- open
85.12 open', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.19', 'Procedure -diagnostic
- nipple
85.19 nipple', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.20', 'Destruction
- breast
85.20 breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.21', 'Excision
- breast
-- wedge
85.21 wedge', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.22', 'breast
- quadrant
85.22 quadrant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.23', 'Excision
- breast
-- segmental
85.23 segmental', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.24', 'Excision
- breast
-- aberrant tissue
85.24 aberrant tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.25', 'Excision
- breast
-- nipple
85.25 nipple', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.31', 'amputative (reduction) (bilateral)
- unilateral
85.31 unilateral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.32', 'reduction (bilateral)
85.32 reduction (bilateral)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.33', 'subcutaneous (unilateral)
- with synchronous implant
85.33 with synchronous implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.34', 'subcutaneous (unilateral)
85.34 subcutaneous (unilateral)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.35', 'subcutaneous (unilateral)
- bilateral
-- with synchronous implant
85.35 with synchronous implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.36', 'subcutaneous (unilateral)
- bilateral
85.36 bilateral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.41', 'Excision
- breast
85.41 breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.42', 'Operations on the breast
- Mastectomy
-- Bilateral simple mastectomy 85.42
85.42 Bilateral simple mastectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.43', 'Operations on the breast
- Mastectomy
-- Unilateral extended simple mastectomy 85.43
85.43 Unilateral extended simple mastectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.44', 'Mastectomy (complete) (prophylactic)
- with
-- bilateral
85.44 bilateral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.45', 'dissection
- breast
-- unilateral
85.45 unilateral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.46', 'dissection
- breast
-- bilateral
85.46 bilateral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.47', 'Urban (mastectomy) (unilateral)
85.47 Urban (mastectomy) (unilateral)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.48', 'Urban (mastectomy) (unilateral)
- bilateral
85.48 bilateral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.50', 'augmentation
85.50 augmentation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.51', 'Injection (into) (hypodermically)
- breast (therapeutic agent)
-- unilateral
85.51 unilateral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.53', 'Operations on the breast
- Augmentation mammoplasty
-- Unilateral breast implant 85.53
85.53 Unilateral breast implant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.54', 'Insertion
- breast implant (for augmentation)
-- (bilateral)
85.54 (bilateral)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.6', 'breast (pendulous)
85.6 breast (pendulous)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.70', 'Operations on the breast
- Total reconstruction of breast
-- Total reconstruction of breast, not otherwise specified  85.70
85.70 Total reconstruction of breast, not otherwise specified ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.71', 'Graft, grafting -skin
-- breast
--- latissimus dorsi myocutaneous
----- flap
85.71 flap', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.72', 'Graft, grafting -skin
-- breast
--- transverse rectus abdominis
----- pedicled
85.72 pedicled', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.73', 'Graft, grafting -skin
-- free (autogenous) NEC
--- breast
---- transverse rectus abdominis
----- flap, free
85.73 flap, free', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.74', 'Operations on the breast
- Total reconstruction of breast
-- Deep inferior epigastric artery perforator (DIEP) flap, free  85.74
85.74 Deep inferior epigastric artery perforator (DIEP) flap, free ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.75', 'Operations on the breast
- Total reconstruction of breast
-- Superficial inferior epigastric artery (SIEA) flap, free  85.75
85.75 Superficial inferior epigastric artery (SIEA) flap, free ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.76', 'Graft, grafting -skin
-- free (autogenous) NEC
--- breast
---- gluteal artery perforator
----- flap, free
85.76 flap, free', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.79', 'Operations on the breast
- Total reconstruction of breast
-- Other total reconstruction of breast  85.79
85.79 Other total reconstruction of breast ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.81', 'Suture (laceration)
- breast (skin)
85.81 breast (skin)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.82', 'with
- split-thickness graft
85.82 split-thickness graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.83', 'Graft, grafting -skin
-- breast
85.83 breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.84', 'Graft, grafting -skin
-- breast
85.84 breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.85', 'with
- muscle flap
85.85 muscle flap', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.86', 'nipple
85.86 nipple', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.87', 'Mammilliplasty
85.87 Mammilliplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.89', 'breast
85.89 breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.91', 'breast
85.91 breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.92', 'Injection (into) (hypodermically)
- breast (therapeutic agent)
85.92 breast (therapeutic agent)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.93', 'prosthesis
- breast
85.93 breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.94', 'Removal -gallstones
- implant
-- breast
85.94 breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.95', 'tissue expander (skin) NEC
- breast
85.95 breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.96', 'Operations on the breast
- Other operations on the breast
-- Removal of breast tissue expander 85.96
85.96 Removal of breast tissue expander', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('85.99', 'breast NEC
85.99 breast NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.01', 'Operations on skin and subcutaneous tissue
- Incision of skin and subcutaneous tissue
-- Aspiration of skin and subcutaneous tissue 86.01
86.01 Aspiration of skin and subcutaneous tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.02', 'Operations on skin and subcutaneous tissue
- Incision of skin and subcutaneous tissue
-- Injection or tattooing of skin lesion or defect 86.02
86.02 Injection or tattooing of skin lesion or defect', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.03', 'Exploration
- pilonidal sinus
86.03 pilonidal sinus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.04', 'groin region(abdominal wall) (inguinal)
- skin
86.04 skin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.05', 'Removal -foreign body
-- by incision
86.05 by incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.06', 'pump, infusion
86.06 pump, infusion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.07', 'device
- vascular access
86.07 vascular access', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.09', 'Escharotomy
86.09 Escharotomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.11', 'Biopsy
- skin (punch)
86.11 skin (punch)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.19', 'Procedure -diagnostic
- nail
86.19 nail', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.21', 'pilonidal cyst or sinus (open) (with
-- partial closure)
86.21 partial closure)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.22', 'Escharectomy
86.22 Escharectomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.23', 'Evulsion
- nail (bed) (fold)
86.23 nail (bed) (fold)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.24', 'Chemical peel, skin
86.24 Chemical peel, skin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.25', 'Dermabrasion (laser)
86.25 Dermabrasion (laser)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.26', 'Excision
- supernumerary
-- digits
86.26 digits', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.28', 'Dermabrasion (laser)
- for wound debridement
86.28 for wound debridement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.3', 'Cryotherapy
- skin
86.3 skin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.4', 'Excision lesion -pituitary
- skin
-- radical (wide) (involving underlying
--- closure)
86.4 closure)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.51', 'Operations on skin and subcutaneous tissue
- Suture or other closure of skin and subcutaneous tissue
-- Replantation of scalp 86.51
86.51 Replantation of scalp', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.59', 'skin (V-Y type)
86.59 skin (V-Y type)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.60', 'Graft, grafting -skin
-- free (autogenous) NEC
86.60 free (autogenous) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.61', 'Graft, grafting -skin
-- hand
86.61 hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.62', 'Graft, grafting -skin
-- free (autogenous) NEC
--- thumb
86.62 thumb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.63', 'Graft, grafting -skin
-- full-thickness
86.63 full-thickness', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.64', 'hair-bearing skin
86.64 hair-bearing skin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.65', 'Graft, grafting -skin
-- heterograft
86.65 heterograft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.66', 'Graft, grafting -skin
-- homograft
86.66 homograft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.67', 'dermal regenerative
86.67 dermal regenerative', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.69', 'dermal-fat
86.69 dermal-fat', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.70', 'Graft, grafting -skin
-- island flap
86.70 island flap', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.71', 'Elevation
- pedicle graft
86.71 pedicle graft', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.72', 'Graft, grafting -skin
-- advancement
86.72 advancement', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.73', 'Graft, grafting -skin
-- attachment to site (advanced)(double)
--- thumb
86.73 thumb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.74', 'Graft, grafting -skin
-- attachment to site (advanced)(double)
---- (rotating) (sliding)
86.74 (rotating) (sliding)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.75', 'Graft, grafting -skin
-- defatting
86.75 defatting', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.81', 'fascial (fascia lata)
- for facial weakness (trigeminal
-- paralysis)
86.81 paralysis)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.82', 'Face lift
86.82 Face lift', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.83', 'Abdominoplasty
86.83 Abdominoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.84', 'web contracture (skin)
86.84 web contracture (skin)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.85', 'also laparoscopic
- TO PROCEDURES (FY10)
---- Corpectomy, (vertebral)
----- syndactyly
86.85 syndactyly', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.86', 'Onychoplasty
86.86 Onychoplasty', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.89', 'Enlargement ---Cont
- sinus tract (skin)
86.89 sinus tract (skin)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.92', 'Depilation, skin
86.92 Depilation, skin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.93', 'tissue expander (skin) NEC
86.93 tissue expander (skin) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.94', 'Removal neurostimulator electrodes
- pulse generator (single array, dual
-- single array
86.94 single array', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.95', 'Removal neurostimulator electrodes
- pulse generator (single array, dual
-- dual array
86.95 dual array', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.96', 'Operations on skin and subcutaneous tissue
- Other operations on skin and subcutaneous tissue
-- Insertion or replacement of other neurostimulator pulse generator 86.96
86.96 Insertion or replacement of other neurostimulator pulse generator', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.97', 'Removal neurostimulator electrodes
- pulse generator (single array, dual
-- single array
--- rechargeable
86.97 rechargeable', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.98', 'Removal neurostimulator electrodes
- pulse generator (single array, dual
-- dual array
--- rechargeable
86.98 rechargeable', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('86.99', 'Incision (and drainage)
- skin
-- subcutaneous tunnel for pulse
--- generator lead wire
86.99 generator lead wire', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.01', 'Diagnostic Radiology
- Soft tissue x-ray of face, head, and neck
-- Pneumoencephalogram 87.01
87.01 Pneumoencephalogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.02', 'posterior fossa
87.02 posterior fossa', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.03', 'Scan
- CT
-- head 87.03
87.03 Computerized axial tomography of head', '[{"type":"includes","text":"Computerized axial tomography of head NOS"}]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.04', 'Diagnostic Radiology
- Soft tissue x-ray of face, head, and neck
-- Other tomography of head 87.04
87.04 Other tomography of head', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.05', 'Radiography (diagnostic) NEC
- contrast (air) (gas) (radio-opaque
-- nasolacrimal ducts
87.05 nasolacrimal ducts', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.06', 'Nasopharyngogram
- contrast
87.06 contrast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.07', 'Radiography (diagnostic) NEC
- contrast (air) (gas) (radio-opaque
-- larynx
87.07 larynx', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.09', 'Nasopharyngogram
87.09 Nasopharyngogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.11', 'teeth NEC
- full-mouth
87.11 full-mouth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.12', 'Cephalogram
- dental
87.12 dental', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.13', 'Arthrogram, arthrography
- temporomandibular
87.13 temporomandibular', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.14', 'Radiography (diagnostic) NEC
- contrast (air) (gas) (radio-opaque
-- orbit
87.14 orbit', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.15', 'Radiography (diagnostic) NEC
- contrast (air) (gas) (radio-opaque
-- nasal sinuses
87.15 nasal sinuses', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.16', 'mandible
87.16 mandible', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.17', 'Cephalogram
87.17 Cephalogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.21', 'Radiography (diagnostic) NEC
- contrast (air) (gas) (radio-opaque
-- intervertebral disc(s)
87.21 intervertebral disc(s)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.22', 'spine NEC
- cervical
87.22 cervical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.23', 'spine NEC
- thoracic
87.23 thoracic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.24', 'spine NEC
- lumbosacral
87.24 lumbosacral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.29', 'spine NEC
87.29 spine NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.31', 'Radiography (diagnostic) NEC
- contrast (air) (gas) (radio-opaque
-- endotracheal
87.31 endotracheal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.32', 'Tracheography
87.32 Tracheography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.33', 'Radiography (diagnostic) NEC
- contrast (air) (gas) (radio-opaque
-- mediastinum
87.33 mediastinum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.35', 'Ductogram, mammary
87.35 Ductogram, mammary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.36', 'Xerography, breast
87.36 Xerography, breast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.37', 'Examination (for)
- breast
-- radiographic NEC
87.37 radiographic NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.38', 'Radiography (diagnostic) NEC
- contrast (air) (gas) (radio-opaque
-- chest wall
87.38 chest wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.39', 'Radiography (diagnostic) NEC
- chest (routine)
-- wall NEC
87.39 wall NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.41', 'Scan
- CT
-- thorax 87.41
87.41 Computerized axial tomography of thorax', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.42', 'Diagnostic Radiology
- Other x-ray of thorax
-- Other tomography of thorax 87.42
87.42 Other tomography of thorax', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.43', 'Examination (for)
- cervical rib (by x-ray)
87.43 cervical rib (by x-ray)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.44', 'Radiography
- chest (routine) 87.44
87.44 Routine chest X-ray', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.49', 'Radiography (diagnostic) NEC
- bronchus
87.49 bronchus', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.54', 'Radiography (diagnostic) NEC
- contrast (air) (gas) (radio-opaque
-- bile ducts NEC
87.54 bile ducts NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.59', 'Radiography (diagnostic) NEC
- contrast (air) (gas) (radio-opaque
-- gallbladder NEC
87.59 gallbladder NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.61', 'Barium swallow
87.61 Barium swallow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.62', 'Diagnostic Radiology
- Other x-ray of digestive system
-- Upper GI series 87.62
87.62 Upper GI series', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.63', 'Small bowel series (x-ray)
87.63 Small bowel series (x-ray)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.64', 'Diagnostic Radiology
- Other x-ray of digestive system
-- Lower GI series 87.64
87.64 Lower GI series', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.65', 'Diagnostic Radiology
- Other x-ray of digestive system
-- Other x-ray of intestine 87.65
87.65 Other x-ray of intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.66', 'artery window
- release
----- subtotal 52.53Pancreatogram
87.66 subtotal 52.53Pancreatogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.69', 'Diagnostic Radiology
- Other x-ray of digestive system
-- Other digestive tract x-ray 87.69
87.69 Other digestive tract x-ray', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.71', 'Diagnostic Radiology
- X-ray of urinary system
-- Computerized axial tomography of kidney 87.71
87.71 Computerized axial tomography of kidney', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.72', 'Diagnostic Radiology
- X-ray of urinary system
-- Other nephrotomogram 87.72
87.72 Other nephrotomogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.73', 'Ureteropyelography (intravenous)
- infusion)
87.73 infusion)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.74', 'ureter (to kidney)
- for retrograde pyelogram
87.74 for retrograde pyelogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.75', 'percutaneous
87.75 percutaneous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.77', 'Cystogram, cystography NEC
87.77 Cystogram, cystography NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.78', 'Ileoloopogram
87.78 Ileoloopogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.79', 'KUB (kidney-ureter-bladder)
87.79 KUB (kidney-ureter-bladder)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.81', 'Amniography
87.81 Amniography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.82', 'Radiography (diagnostic) NEC
- contrast (air) (gas) (radio-opaque
-- gas
87.82 gas', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.83', 'Radiography (diagnostic) NEC
- contrast (air) (gas) (radio-opaque
-- opaque dye
87.83 opaque dye', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.84', 'bone laparoscopic [LRVH]
----- percutaneous
87.84 percutaneous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.85', 'uterus NEC
87.85 uterus NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.89', 'Diagnostic Radiology
- X-ray of female genital organs
-- Other x-ray of female genital organs 87.89
87.89 Other x-ray of female genital organs', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.91', 'Diagnostic Radiology
- X-ray of male genital organs
-- Contrast seminal vesiculogram 87.91
87.91 Contrast seminal vesiculogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.92', 'prostate NEC
87.92 prostate NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.93', 'Radiography (diagnostic) NEC
- contrast (air) (gas) (radio-opaque
-- epididymis
87.93 epididymis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.94', 'Diagnostic Radiology
- X-ray of male genital organs
-- Contrast vasogram 87.94
87.94 Contrast vasogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.95', 'vas deferens NEC
87.95 vas deferens NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('87.99', 'Diagnostic Radiology
- X-ray of male genital organs
-- Other x-ray of male genital organs 87.99
87.99 Other x-ray of male genital organs', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.01', 'Scan
- CT
-- abdomen 88.01
88.01 Computerized axial tomography of abdomen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.02', 'Other diagnostic radiology and related techniques
- Soft tissue x-ray of abdomen
-- Other abdomen tomography 88.02
88.02 Other abdomen tomography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.03', 'Radiography (diagnostic) NEC
- contrast (air) (gas) (radio-opaque
-- abdominal wall
88.03 abdominal wall', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.09', 'Radiography (diagnostic) NEC
- abdomen, abdominal (flat plate)
-- wall (soft tissue) NEC
88.09 wall (soft tissue) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.11', 'Other diagnostic radiology and related techniques
- Other x-ray of abdomen
-- Pelvic opaque dye contrast radiography 88.11
88.11 Pelvic opaque dye contrast radiography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.12', 'only), eye muscle (oblique) (rectus)
---- Pneumoperitoneum(surgically-induced)
----- pelvic
88.12 pelvic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.13', 'only), eye muscle (oblique) (rectus)
---- Pneumogram, pneumography
----- pelvic
88.13 pelvic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.14', 'Other diagnostic radiology and related techniques
- Other x-ray of abdomen
-- Retroperitoneal fistulogram 88.14
88.14 Retroperitoneal fistulogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.15', 'Other diagnostic radiology and related techniques
- Other x-ray of abdomen
-- Retroperitoneal pneumogram 88.15
88.15 Retroperitoneal pneumogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.16', 'retroperitoneum NEC
88.16 retroperitoneum NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.19', 'pelvis (skeletal)
- soft tissue
88.19 soft tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.21', 'shoulder (skeletal)
88.21 shoulder (skeletal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.22', 'Other diagnostic radiology and related techniques
- Skeletal x-ray of extremities and pelvis
-- Skeletal x-ray of elbow and forearm 88.22
88.22 Skeletal x-ray of elbow and forearm', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.23', 'wrist
88.23 wrist', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.24', 'upper limb (skeletal) NEC
88.24 upper limb (skeletal) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.25', 'pelvic (manual)
- instrumental (by pelvimeter)
88.25 instrumental (by pelvimeter)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.26', 'pelvis (skeletal)
88.26 pelvis (skeletal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.27', 'lower leg (skeletal)
88.27 lower leg (skeletal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.28', 'Radiography (diagnostic) NEC
- ankle (skeletal)
88.28 ankle (skeletal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.29', 'lower limb (skeletal) NEC
88.29 lower limb (skeletal) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.31', 'Radiography (diagnostic) NEC
- bone survey
88.31 bone survey', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.32', 'Arthrogram, arthrography
88.32 Arthrogram, arthrography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.33', 'skeletal NEC
88.33 skeletal NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.35', 'shoulder (skeletal)
- soft tissue
88.35 soft tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.37', 'Radiography (diagnostic) NEC
- ankle (skeletal)
-- soft tissue
88.37 soft tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.38', 'C.A.T.
- C.A.T.
88.38 C.A.T.', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.39', 'Radiography (diagnostic) NEC
88.39 Radiography (diagnostic) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.40', 'Angiography (arterial)
- Arteriography
88.40 Arteriography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.41', 'Angiography (arterial)
- basilar
88.41 basilar', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.42', 'Translumbar aortogram
88.42 Translumbar aortogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.43', 'Other diagnostic radiology and related techniques
- Arteriography using contrast material
-- Arteriography of pulmonary arteries 88.43
88.43 Arteriography of pulmonary arteries', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.44', 'Angiography (arterial)
- intrathoracic vessels NEC
88.44 intrathoracic vessels NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.45', 'Other diagnostic radiology and related techniques
- Arteriography using contrast material
-- Arteriography of renal arteries 88.45
88.45 Arteriography of renal arteries', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.46', 'Angiography (arterial)
- placenta
88.46 placenta', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.47', 'Angiography (arterial)
- celiac
88.47 celiac', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.48', 'Angiography (arterial)
- femoral
88.48 femoral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.49', 'Angiography (arterial)
- brachial
88.49 brachial', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.50', 'Angiocardiography (selective)
88.50 Angiocardiography (selective)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.51', 'Angiocardiography (selective)
- vena cava (inferior) (superior)
88.51 vena cava (inferior) (superior)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.52', 'also
- TO PROCEDURES (FY10)
---- Ventriculogram, ventriculography
----- right ventricle (outflow tract)
88.52 right ventricle (outflow tract)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.53', 'Angiocardiography (selective)
- left heart (aortic valve) (atrium)
-- (ventricular outflow tract)
88.53 (ventricular outflow tract)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.54', 'Angiocardiography (selective)
- combined right and left heart
88.54 combined right and left heart', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.56', 'coronary (direct) (selective) NEC
- double catheter technique (Judkins)
-- (Ricketts and Abrams)
88.56 (Ricketts and Abrams)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.57', 'Angiography (arterial)
- coronary NEC
88.57 coronary NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.58', 'device tibial component
- head at peritoneal site
----- cardiac, negative contrast
88.58 cardiac, negative contrast', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.59', 'Angiocardiography (selective)
- SPY
88.59 SPY', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.61', 'Phlebography (contrast) (retrograde)
- head
88.61 head', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.62', 'Phlebography (contrast) (retrograde)
- pulmonary
88.62 pulmonary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.63', 'Phlebography (contrast) (retrograde)
- intrathoracic NEC
88.63 intrathoracic NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.64', 'Phlebography (contrast) (retrograde)
- hepatic
88.64 hepatic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.65', 'Phlebography (contrast) (retrograde)
- adrenal
88.65 adrenal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.66', 'Phlebography (contrast) (retrograde)
- femoral
88.66 femoral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.67', 'Phlebography (contrast) (retrograde)
- specified site NEC
88.67 specified site NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.68', 'Phlebography (contrast) (retrograde)
- impedance
88.68 impedance', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.71', 'Dopplergram, Doppler flow mapping
- head and neck
88.71 head and neck', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.72', 'Echocardiography 88.72
88.72 Echocardiography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.73', 'Dopplergram, Doppler flow mapping
- aortic arch
88.73 aortic arch', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.74', 'Ultrasonography
- biliary tract
88.74 biliary tract', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.75', 'Ultrasonography
- urinary system
88.75 urinary system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.76', 'Ultrasonography
- abdomen 88.76
88.76 Ultrasonography of abdomen and retroperitoneum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.77', 'Ultrasonography
- deep vein thrombosis
88.77 deep vein thrombosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.78', 'Ultrasonography
- gravid uterus 88.78
88.78 Gravid uterus ultrasonography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.79', 'Echogynography
88.79 Echogynography', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.85', 'Examination (for)
- breast
-- thermographic
88.85 thermographic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.86', 'Other diagnostic radiology and related techniques
- Thermography
-- Blood vessel thermography 88.86
88.86 Blood vessel thermography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.89', 'root Take-down
- 35.81 Temperature gradient study
----- Thermography
88.89 Thermography', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('88.98', 'bone mineral density
88.98 bone mineral density', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.01', 'Interview (evaluation) (diagnostic)
- medical, except psychiatric
-- brief (abbreviated history)
89.01 brief (abbreviated history)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.02', 'Interview (evaluation) (diagnostic)
- medical, except psychiatric
-- limited (interval history)
89.02 limited (interval history)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.03', 'Interview (evaluation) (diagnostic)
- medical, except psychiatric
-- comprehensive (history and evaluation
--- of new problem)
89.03 of new problem)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.04', 'Interview (evaluation) (diagnostic)
- medical, except psychiatric
-- specified type NEC
89.04 specified type NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.05', 'Interview (evaluation) (diagnostic)
- medical, except psychiatric
89.05 medical, except psychiatric', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.06', 'limited (single organ system)
89.06 limited (single organ system)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.07', 'comprehensive
89.07 comprehensive', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.08', 'specified type NEC
89.08 specified type NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.09', 'Consultation
89.09 Consultation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.10', 'Wada (hemispheric function)
89.10 Wada (hemispheric function)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.11', 'Examination
- psychiatric NEC 89.11
89.11 Comprehensive psychiatric evaluation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.12', 'Rhinomanometry
89.12 Rhinomanometry', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.13', 'neurologic
89.13 neurologic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.14', 'Electroencephalogram (EEG) 89.14
89.14 Electroencephalogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.15', 'Manometry
- spinal fluid
89.15 spinal fluid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.16', 'Transillumination
- skull (newborn)
89.16 skull (newborn)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.17', 'Polysomnogram
89.17 Polysomnogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.18', 'Interview, evaluation, consultation, and examination
- Anatomic and physiologic measurements and manual
-- Other sleep disorder function tests 89.18
89.18 Other sleep disorder function tests', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.19', 'Monitoring
- electroencephalographic
89.19 electroencephalographic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.21', 'Manometry
- urinary
89.21 urinary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.22', 'Cystometrogram
89.22 Cystometrogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.23', 'Interview, evaluation, consultation, and examination
- Anatomic and physiologic measurements and manual
-- Urethral sphincter electromyogram 89.23
89.23 Urethral sphincter electromyogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.24', 'UFR (uroflowmetry)
89.24 UFR (uroflowmetry)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.25', 'Urethral pressure profile (UPP)
89.25 Urethral pressure profile (UPP)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.26', 'Examination (for)
- gynecological
89.26 gynecological', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.29', 'Calibration, urethra
89.29 Calibration, urethra', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.31', 'Occlusal molds (dental)
89.31 Occlusal molds (dental)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.32', 'Manometry
- esophageal
89.32 esophageal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.33', 'Examination (for)
- colostomy stoma (digital)
89.33 colostomy stoma (digital)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.34', 'Interview, evaluation, consultation, and examination
- Other anatomic and physiologic measurements and manual
-- Digital examination of rectum 89.34
89.34 Digital examination of rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.35', 'Transillumination
- nasal sinuses
89.35 nasal sinuses', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.36', 'Examination (for)
- breast
-- manual
89.36 manual', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.37', 'Spirometry 89.37
89.37 Spirometry', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.38', 'Expiratory flow rate
89.38 Expiratory flow rate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.39', 'gastric
89.39 gastric', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.45', 'pacemaker, artificial (cardiac)(function)
-- (interrogation only)(rate)
89.45 (interrogation only)(rate)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.46', 'pacemaker, artificial (cardiac)(function)
- artifact wave form
89.46 artifact wave form', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.47', 'pacemaker, artificial (cardiac)(function)
- electrode impedance
89.47 electrode impedance', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.48', 'pacemaker, artificial (cardiac)(function)
- amperage threshold
89.48 amperage threshold', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.49', 'device interrogation only without arrhythmia
- induction (bedside check) 89.45-
89.49 induction (bedside check) 89.45-', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.50', 'Monitoring
- cardiac output (by)
-- ambulatory (ACM)
89.50 ambulatory (ACM)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.52', 'Electrocardiogram (with 12 or more leads) 89.52
89.52 Electrocardiogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.53', 'with vectorcardiogram
89.53 with vectorcardiogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.54', 'Monitoring
- cardiac output (by)
-- electrographic
89.54 electrographic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.56', 'Interview, evaluation, consultation, and examination
- Other nonoperative cardiac and vascular diagnostic procedures
-- Carotid pulse tracing with ECG lead 89.56
89.56 Carotid pulse tracing with ECG lead', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.57', 'Apexcardiogram (with ECG lead)
89.57 Apexcardiogram (with ECG lead)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.58', 'Plethysmogram (carotid)
89.58 Plethysmogram (carotid)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.59', 'Ballistocardiography
89.59 Ballistocardiography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.60', 'sensor(lead)
- intra-arterial, for continuous blood
-- gas monitoring
89.60 gas monitoring', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.61', 'of
----- pressure
89.61 pressure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.62', 'central venous pressure
89.62 central venous pressure', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.63', 'Interview, evaluation, consultation, and examination
- Circulatory monitoring
-- Pulmonary artery pressure monitoring 89.63
89.63 Pulmonary artery pressure monitoring', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.64', 'Swan-Ganz (pulmonary)
89.64 Swan-Ganz (pulmonary)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.65', 'Measurement
- arterial blood gases 89.65
89.65 Measurement of arterial blood gases', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.66', 'arterial blood gases
- blood gases
-- venous
89.66 venous', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.67', 'cardiac output (by)
- Fick method
89.67 Fick method', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.68', 'transesophageal
- monitoring (Doppler)(ultrasound)
89.68 monitoring (Doppler)(ultrasound)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.69', 'coronary blood flow
89.69 coronary blood flow', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.7', 'Examination (for)
- general physical
89.7 general physical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('89.8', 'Necropsy
89.8 Necropsy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.0', 'Examination -microscopic
- nerve
90.0 nerve', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.1', 'Examination -microscopic
- parathyroid gland
90.1 parathyroid gland', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.2', 'Microscopic examination-I
- Microscopic examination of specimen from eye  90.2
90.2 Microscopic examination of specimen from eye ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.29', 'Examination
- urine
-- culture 90.29
90.29 Urine culture and sensitivity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.3', 'Examination -microscopic
- nose
90.3 nose', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.4', 'Examination -microscopic
- pleura (fluid)
90.4 pleura (fluid)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.41', 'Examination
- sputum
-- microbiological NEC 90.41
90.41 Sputum microbiological examination', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.5', 'Microscopic examination-I
- Microscopic examination of blood  90.5
90.5 Microscopic examination of blood ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.54', 'Examination
- blood
-- culture 90.54
90.54 Blood culture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.59', 'Examination
- blood
-- chemical 90.59
90.59 Other blood chemistry', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.6', 'Examination -microscopic
- spleen
90.6 spleen', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.7', 'Microscopic examination-I
- Microscopic examination of specimen from lymph node and of 90.7
90.7 Microscopic examination of specimen from lymph node and of', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.8', 'Examination -microscopic
- stomach
90.8 stomach', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('90.9', 'Examination -microscopic
- rectum
90.9 rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91', 'Microscopic examination-II
91 Microscopic examination-II', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.0', 'Examination -microscopic
- pancreas
91.0 pancreas', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.1', 'Examination -microscopic
- omentum
91.1 omentum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.2', 'Examination -microscopic
- perirenal tissue
91.2 perirenal tissue', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.3', 'Examination -microscopic
- penis
91.3 penis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.31', 'Examination
- urine
-- microscopic NEC 91.31
91.31 Urine microscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.4', 'Examination -microscopic
- ovary
91.4 ovary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.49', 'Examination
- tissue
-- histological NEC (biopsy) 91.49
91.49 Other histological examination', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.5', 'Examination -microscopic
- muscle
91.5 muscle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.6', 'Examination -microscopic
- nails
91.6 nails', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.61', 'Examination
- blood
-- serological NEC 91.61
91.61 Other serological examination', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.7', 'Examination -microscopic
- operative wound
91.7 operative wound', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.71', 'Examination
- blood
-- count 91.71
91.71 Hematologic examination', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.8', 'Examination -microscopic
- specified site NEC
91.8 specified site NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('91.9', 'Microscopic examination-II
- Microscopic examination of specimen from unspecified site  91.9
91.9 Microscopic examination of specimen from unspecified site ', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.01', 'Scan, scanning
-- protein-bound iodine
92.01 protein-bound iodine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.02', 'Nuclear medicine
- Radioisotope scan and function study
-- Liver scan and radioisotope function study 92.02
92.02 Liver scan and radioisotope function study', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.03', 'Renogram
92.03 Renogram', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.04', 'Nuclear medicine
- Radioisotope scan and function study
-- Gastrointestinal scan and radioisotope function study 92.04
92.04 Gastrointestinal scan and radioisotope function study', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.05', 'Regional blood flow study
92.05 Regional blood flow study', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.09', 'Nuclear medicine
- Radioisotope scan and function study
-- Other radioisotope function studies 92.09
92.09 Other radioisotope function studies', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.11', 'Positrocephalogram
92.11 Positrocephalogram', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.15', 'Scan, scanning
-- pulmonary
92.15 pulmonary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.16', 'Nuclear medicine
- Other radioisotope scan
-- Scan of lymphatic system 92.16
92.16 Scan of lymphatic system', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.17', 'Scan, scanning
-- placenta
92.17 placenta', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.18', 'Scan, scanning
-- total body
92.18 total body', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.19', 'Scan, scanning
-- specified site NEC
92.19 specified site NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.20', 'Nuclear medicine
- Therapeutic radiology and nuclear medicine
-- Infusion of liquid brachytherapy radioisotope 92.20
92.20 Infusion of liquid brachytherapy radioisotope', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.21', 'Therapy
- radiation
-- contact (150 KVP or less)
92.21 contact (150 KVP or less)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.22', 'Therapy
- radiation
-- deep (200-300 KVP)
92.22 deep (200-300 KVP)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.23', 'cobalt-60
92.23 cobalt-60', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.24', 'Therapy
- radiation
-- megavoltage
92.24 megavoltage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.25', 'root Take-down
---- Teleradiotherapy
----- beta particles
92.25 beta particles', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.26', 'Therapy
- radiation
-- particle source NEC
92.26 particle source NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.27', 'radioactive isotope
92.27 radioactive isotope', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.28', 'radioimmunoconjugate
92.28 radioimmunoconjugate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.29', 'Therapy
- radiation
92.29 radiation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.30', 'brain
- by
-- stereotactic radiosurgery
92.30 stereotactic radiosurgery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.31', 'Destruction --- Cont.
- neuroma
-- by stereotactic radiosurgery
--- single source photon
92.31 single source photon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.32', 'Ablation
- pituitary
-- Cobalt-60
92.32 Cobalt-60', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.33', 'Destruction --- Cont.
- neuroma
-- by stereotactic radiosurgery
--- particle beam
92.33 particle beam', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.39', 'Destruction --- Cont.
- neuroma
-- by stereotactic radiosurgery
--- radiosurgery NEC
92.39 radiosurgery NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('92.41', 'IOERT (intra-operative electron radiation
- therapy)
92.41 therapy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.01', 'Evaluation (of)
- functional (physical therapy)
93.01 functional (physical therapy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.02', 'Evaluation (of)
- orthotic (for brace fitting)
93.02 orthotic (for brace fitting)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.04', 'free
----- Grip, strength
93.04 Grip, strength', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.05', 'Physical therapy, respiratory therapy, rehabilitation, and
- Diagnostic physical therapy
-- Range of motion testing 93.05
93.05 Range of motion testing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.06', 'limb length
93.06 limb length', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.07', 'body
93.07 body', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.08', 'Physical therapy, respiratory therapy, rehabilitation, and
- Diagnostic physical therapy
-- Electromyography 93.08
93.08 Electromyography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.09', 'Therapy
- physical NEC
-- diagnostic NEC
93.09 diagnostic NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.11', 'assisting
93.11 assisting', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.12', 'active musculoskeletal NEC
93.12 active musculoskeletal NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.13', 'resistive
93.13 resistive', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.14', 'Physical therapy, respiratory therapy, rehabilitation, and
- Physical therapy exercises
-- Training in joint movements 93.14
93.14 Training in joint movements', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.15', 'Mobilization
- spine
93.15 spine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.16', 'Mobilization
- joint NEC
93.16 joint NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.17', 'musculoskeletal
- passive NEC
93.17 passive NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.18', 'breathing
93.18 breathing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.19', 'Exercise (physical therapy) NEC
93.19 Exercise (physical therapy) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.21', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other physical therapy musculoskeletal manipulation
-- Manual and mechanical traction 93.21
93.21 Manual and mechanical traction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.22', 'Gait training
93.22 Gait training', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.23', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other physical therapy musculoskeletal manipulation
-- Fitting of orthotic device 93.23
93.23 Fitting of orthotic device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.24', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other physical therapy musculoskeletal manipulation
-- Training in use of prosthetic or orthotic device 93.24
93.24 Training in use of prosthetic or orthotic device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.25', 'Hyperextension, joint
93.25 Hyperextension, joint', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.26', 'Arthrolysis
93.26 Arthrolysis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.27', 'muscle
93.27 muscle', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.28', 'fascia
93.28 fascia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.29', 'Correction
- forcible, of musculoskeletal deformity
-- NEC
93.29 NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.31', 'assisting
- in pool
93.31 in pool', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.32', 'Hydrotherapy
- whirlpool
93.32 whirlpool', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.33', 'Hydrotherapy
93.33 Hydrotherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.34', 'eyelid electrocoagulation
----- Diathermy
93.34 Diathermy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.35', 'with smouldering moxa
93.35 with smouldering moxa', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.36', 'cardiac
93.36 cardiac', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.37', 'Bandage
93.37 Bandage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.38', 'Therapy
- physical NEC
-- combined (without mention of
--- components)
93.38 components)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.39', 'Effleurage
93.39 Effleurage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.41', 'Physical therapy, respiratory therapy, rehabilitation, and
- Skeletal traction and other traction
-- Spinal traction using skull device 93.41
93.41 Spinal traction using skull device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.42', 'Physical therapy, respiratory therapy, rehabilitation, and
- Skeletal traction and other traction
-- Other spinal traction 93.42
93.42 Other spinal traction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.43', 'bone
- external, without reduction
-- intermittent
93.43 intermittent', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.44', 'Application
- Dunlop''s traction
93.44 Dunlop''s traction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.45', 'Physical therapy, respiratory therapy, rehabilitation, and
- Skeletal traction and other traction
-- Thomas'' splint traction 93.45
93.45 Thomas'' splint traction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.46', 'Physical therapy, respiratory therapy, rehabilitation, and
- Skeletal traction and other traction
-- Other skin traction of limbs 93.46
93.46 Other skin traction of limbs', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.51', 'Application
- plaster jacket
93.51 plaster jacket', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.52', 'Application
- Minerva jacket
93.52 Minerva jacket', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.53', 'Casting (for immobilization) NEC
93.53 Casting (for immobilization) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.54', 'bone
- external, without reduction
-- splint
93.54 splint', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.55', 'Ligation
- tooth
93.55 tooth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.56', 'elastic
93.56 elastic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.57', 'Burn dressing
93.57 Burn dressing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.58', 'Physical therapy, respiratory therapy, rehabilitation, and
- Other immobilization, pressure, and attention to wound
-- Application of pressure trousers 93.58
93.58 Application of pressure trousers', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.59', 'Application
- elastic stockings
93.59 elastic stockings', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.71', 'Physical therapy, respiratory therapy, rehabilitation, and
- Speech and reading rehabilitation and rehabilitation of the blind
-- Dyslexia training 93.71
93.71 Dyslexia training', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.72', 'Physical therapy, respiratory therapy, rehabilitation, and
- Speech and reading rehabilitation and rehabilitation of the blind
-- Dysphasia training 93.72
93.72 Dysphasia training', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.73', 'Esophageal voice training
- (postlaryngectomy)
93.73 (postlaryngectomy)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.74', 'speech NEC
- for correction of defect
93.74 for correction of defect', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.75', 'speech NEC
93.75 speech NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.76', 'use of lead dog for the blind
93.76 use of lead dog for the blind', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.77', 'Physical therapy, respiratory therapy, rehabilitation, and
- Speech and reading rehabilitation and rehabilitation of the blind
-- Training in braille or Moon 93.77
93.77 Training in braille or Moon', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.78', 'Blind rehabilitation therapy NEC
93.78 Blind rehabilitation therapy NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.81', 'Diversional therapy
93.81 Diversional therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.82', 'Educational therapy (bed-bound
- children) (handicapped)
93.82 children) (handicapped)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.83', 'Domestic tasks therapy
93.83 Domestic tasks therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.84', 'Music therapy
93.84 Music therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.85', 'Assessment
- vocational
93.85 vocational', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.89', 'organized
93.89 organized', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.90', 'Continuous positive airway pressure
- [CPAP] (non-invasive)
93.90 [CPAP] (non-invasive)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.91', 'Intermittent positive pressure breathing
- (IPPB)
93.91 (IPPB)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.93', 'manual
93.93 manual', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.94', 'Nebulization (respiratory) 93.94
93.94 Nebulization respiratory therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.95', 'Hyperbaric oxygenation
93.95 Hyperbaric oxygenation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.96', 'Oxygen therapy (supplemental) 93.96
93.96 Other oxygen enrichment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.97', 'atmospheric pressure and composition
- decompression chamber
93.97 decompression chamber', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.98', 'atmospheric pressure and composition
-- NEC
93.98 NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('93.99', 'Cuirass
93.99 Cuirass', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.01', 'intelligence test or scale (Stanford-Binet)
-- (Wechsler) (adult) (children)
94.01 (Wechsler) (adult) (children)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.02', 'Benton Visual Retention test
94.02 Benton Visual Retention test', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.03', 'character
94.03 character', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.08', 'Drawing test
94.08 Drawing test', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.09', 'Determination
- mental status (clinical) (medico-legal)
-- psychologic NEC
94.09 psychologic NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.11', 'Assessment
- fitness to testify
94.11 fitness to testify', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.12', 'device tibial component
- head at peritoneal site
----- psychiatric visit
94.12 psychiatric visit', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.13', 'Evaluation (of)
- psychiatric NEC
-- commitment
94.13 commitment', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.19', 'Evaluation (of)
- psychiatric NEC
94.19 psychiatric NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.21', 'Narcoanalysis
94.21 Narcoanalysis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.22', 'ithium
94.22 ithium', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.23', 'Procedures related to the psyche
- Psychiatric somatotherapy
-- Neuroleptic therapy 94.23
94.23 Neuroleptic therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.24', 'chemical
94.24 chemical', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.25', 'Antabuse
94.25 Antabuse', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.26', 'subconvulsive
94.26 subconvulsive', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.27', 'electroconvulsive
94.27 electroconvulsive', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.29', 'Procedures related to the psyche
- Psychiatric somatotherapy
-- Other psychiatric somatotherapy 94.29
94.29 Other psychiatric somatotherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.31', 'psychologic
94.31 psychologic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.32', 'Hypnodrama, psychiatric
94.32 Hypnodrama, psychiatric', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.33', 'Behavior modification
94.33 Behavior modification', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.34', 'Procedures related to the psyche
- Individual psychotherapy
-- Individual therapy for psychosexual dysfunction 94.34
94.34 Individual therapy for psychosexual dysfunction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.35', 'also laparoscopic
- TO PROCEDURES (FY10)
---- Crisis intervention
94.35 Crisis intervention', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.36', 'psychotherapy
94.36 psychotherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.37', 'Procedures related to the psyche
- Individual psychotherapy
-- Exploratory verbal psychotherapy 94.37
94.37 Exploratory verbal psychotherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.38', 'Procedures related to the psyche
- Individual psychotherapy
-- Supportive verbal psychotherapy 94.38
94.38 Supportive verbal psychotherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.39', 'transactional
- individual
94.39 individual', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.41', 'Procedures related to the psyche
- Other psychotherapy and counselling
-- Group therapy for psychosexual dysfunction 94.41
94.41 Group therapy for psychosexual dysfunction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.42', 'therapy
94.42 therapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.43', 'Procedures related to the psyche
- Other psychotherapy and counselling
-- Psychodrama 94.43
94.43 Psychodrama', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.44', 'transactional
- group
94.44 group', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.45', 'also laparoscopic
- TO PROCEDURES (FY10)
---- Corpectomy, (vertebral)
----- drug addiction
94.45 drug addiction', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.46', 'also laparoscopic
- TO PROCEDURES (FY10)
---- Corpectomy, (vertebral)
----- alcoholism
94.46 alcoholism', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.49', 'counselling (medical) (social)
94.49 counselling (medical) (social)', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.61', 'Rehabilitation programs NEC
- alcohol
94.61 alcohol', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.62', 'Detoxification therapy
- alcohol
94.62 alcohol', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.63', 'Detoxification therapy
- alcohol
-- with rehabilitation
94.63 with rehabilitation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.64', 'Rehabilitation programs NEC
- drug
94.64 drug', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.65', 'eyelid electrocoagulation
----- drug
94.65 drug', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.66', 'Rehabilitation programs NEC
- drug
-- with detoxification
94.66 with detoxification', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.67', 'Rehabilitation programs NEC
- alcohol
-- combined alcohol and drug
94.67 combined alcohol and drug', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.68', 'Detoxification therapy
- alcohol
-- combined alcohol and drug
94.68 combined alcohol and drug', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('94.69', 'Detoxification therapy
- alcohol
-- with rehabilitation
94.69 with rehabilitation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.01', 'Examination (for)
- eye
-- limited (with prescription of
--- spectacles)
95.01 spectacles)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.02', 'Examination (for)
- eye
-- comprehensive
95.02 comprehensive', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.03', 'Examination (for)
- glaucoma
95.03 glaucoma', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.04', 'Examination (for)
- eye
-- under anesthesia
95.04 under anesthesia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.05', 'Campimetry
95.05 Campimetry', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.06', 'Examination (for)
- eye
-- color vision
95.06 color vision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.07', 'Examination (for)
- eye
-- dark adaptation
95.07 dark adaptation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.09', 'vision NEC
95.09 vision NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.11', 'region Pharyngorrhaphy
---- Phlebectomy
----- fundus
95.11 fundus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.12', 'Angiography (arterial)
- eye (fluorescein)
95.12 eye (fluorescein)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.13', 'Ultrasonography
- eye
95.13 eye', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.14', 'Ophthalmologic and otologic diagnosis and treatment
- Examinations of form and structure of eye
-- X-ray study of eye 95.14
95.14 X-ray study of eye', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.15', 'spinal female
- TO PROCEDURES (FY10)
---- Study ---Cont
----- ocular motility
95.15 ocular motility', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.16', 'Ophthalmologic and otologic diagnosis and treatment
- Examinations of form and structure of eye
-- P32 and other tracer studies of eye 95.16
95.16 P32 and other tracer studies of eye', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.21', 'ERG (electroretinogram)
95.21 ERG (electroretinogram)', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.26', 'Tonography
95.26 Tonography', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.31', 'spectacles
95.31 spectacles', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.32', 'Dispensing (with fitting)
- contact lens
95.32 contact lens', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.33', 'Dispensing (with fitting)
- low vision aids NEC
95.33 low vision aids NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.34', 'Ophthalmologic and otologic diagnosis and treatment
- Special vision services
-- Ocular prosthetics 95.34
95.34 Ocular prosthetics', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.35', 'Ophthalmologic and otologic diagnosis and treatment
- Special vision services
-- Orthoptic training 95.35
95.35 Orthoptic training', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.36', 'also laparoscopic
- TO PROCEDURES (FY10)
---- Corpectomy, (vertebral)
----- ophthalmologic (with instruction)
95.36 ophthalmologic (with instruction)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.41', 'Ophthalmologic and otologic diagnosis and treatment
- Nonoperative procedures related to hearing
-- Audiometry 95.41
95.41 Audiometry', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.42', 'tuning fork (hearing)
95.42 tuning fork (hearing)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.43', 'Equiloudness balance
95.43 Equiloudness balance', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.44', 'vestibular function NEC
- thermal
95.44 thermal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.45', 'Ophthalmologic and otologic diagnosis and treatment
- Nonoperative procedures related to hearing
-- Rotation tests 95.45
95.45 Rotation tests', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.46', 'vestibular function NEC
95.46 vestibular function NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.47', 'Examination (for)
- hearing
95.47 hearing', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.48', 'Ophthalmologic and otologic diagnosis and treatment
- Nonoperative procedures related to hearing
-- Fitting of hearing aid 95.48
95.48 Fitting of hearing aid', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('95.49', 'cochlear prosthetic device (external
-- components)
95.49 components)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96', 'Therapy
- respiratory NEC
-- for less than
96 for less than', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.01', 'Nonoperative intubation and irrigation
- Nonoperative intubation of gastrointestinal and respiratory
-- Insertion of nasopharyngeal airway 96.01
96.01 Insertion of nasopharyngeal airway', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.02', 'Nonoperative intubation and irrigation
- Nonoperative intubation of gastrointestinal and respiratory
-- Insertion of oropharyngeal airway 96.02
96.02 Insertion of oropharyngeal airway', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.03', 'code esophageal obturator
96.03 code esophageal obturator', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.04', 'Intubation
- endotracheal 96.04
96.04 Insertion of endotracheal tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.05', 'bronchus
96.05 bronchus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.06', 'Insertion
- Blakemore-Sengstaken tube
96.06 Blakemore-Sengstaken tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.07', 'gastric
96.07 gastric', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.08', 'intestine
96.08 intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.09', 'Replacement prosthesis
- rectal tube
96.09 rectal tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.11', 'Insertion -pacemaker
- pack
-- auditory canal, external
96.11 auditory canal, external', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.14', 'Insertion -pacemaker
- pack
-- vagina (nonobstetrical)
96.14 vagina (nonobstetrical)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.15', 'mold, vagina
96.15 mold, vagina', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.16', 'Enlargement ---Cont
- introitus
96.16 introitus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.17', 'code
- TO PROCEDURES (FY10)
---- Insertion
----- diaphragm, vagina
96.17 diaphragm, vagina', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.18', 'Insertion -pacemaker
- pessary
-- cervix
96.18 cervix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.19', 'Insertion -pacemaker
- pack
-- rectum
96.19 rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.21', 'frontonasal duct
96.21 frontonasal duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.22', 'rectum
96.22 rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.23', 'sphincter
- anal
96.23 anal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.24', 'colostomy stoma
96.24 colostomy stoma', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.25', 'Distention, bladder (therapeutic)
- (intermittent)
96.25 (intermittent)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.26', 'prolapse
- rectum (manual)
96.26 rectum (manual)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.27', 'fracture, fracture dislocation
----- manual
96.27 manual', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.28', 'prolapse
- colostomy (manual)
96.28 colostomy (manual)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.29', 'fracture, fracture dislocation
----- fluoroscopy
96.29 fluoroscopy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.31', 'also laparoscopic
- TO PROCEDURES (FY10)
---- Cooling, gastric
96.31 Cooling, gastric', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.32', 'gastric
96.32 gastric', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.33', 'gastric
96.33 gastric', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.34', 'NEC stomach
----- nasogastric NEC
96.34 nasogastric NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.35', 'Nonoperative intubation and irrigation
- Nonoperative alimentary tract irrigation, cleaning, and local
-- Gastric gavage 96.35
96.35 Gastric gavage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.36', 'Nonoperative intubation and irrigation
- Nonoperative alimentary tract irrigation, cleaning, and local
-- Irrigation of gastrostomy or enterostomy 96.36
96.36 Irrigation of gastrostomy or enterostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.37', 'Proctoclysis
96.37 Proctoclysis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.38', 'Removal -gallstones
- impacted
-- feces (rectum)(by flushing)(manual)
96.38 feces (rectum)(by flushing)(manual)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.39', 'stones
---- Enema (transanal) NEC
96.39 Enema (transanal) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.41', 'Nonoperative intubation and irrigation
- Nonoperative irrigation, cleaning, and local instillation of other
-- Irrigation of cholecystostomy and other biliary tube 96.41
96.41 Irrigation of cholecystostomy and other biliary tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.42', 'NEC stomach
----- pancreatic
96.42 pancreatic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.43', 'Enteroclysis (small bowel)
96.43 Enteroclysis (small bowel)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.44', 'Douche, vagina
96.44 Douche, vagina', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.45', 'Nonoperative intubation and irrigation
- Nonoperative irrigation, cleaning, and local instillation of other
-- Irrigation of nephrostomy and pyelostomy 96.45
96.45 Irrigation of nephrostomy and pyelostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.46', 'catheter
- ureter
96.46 ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.47', 'Nonoperative intubation and irrigation
- Nonoperative irrigation, cleaning, and local instillation of other
-- Irrigation of cystostomy 96.47
96.47 Irrigation of cystostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.48', 'catheter
- urinary, indwelling NEC
96.48 urinary, indwelling NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.49', 'abortion
- by
-- insertion of prostaglandin
--- suppository
96.49 suppository', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.51', 'Nonoperative intubation and irrigation
- Other nonoperative irrigation and cleaning
-- Irrigation of eye 96.51
96.51 Irrigation of eye', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.52', 'Removal
- cerumen, ear
96.52 cerumen, ear', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.53', 'Nonoperative intubation and irrigation
- Other nonoperative irrigation and cleaning
-- Irrigation of nasal passages 96.53
96.53 Irrigation of nasal passages', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.54', '(for dental
- TO PROCEDURES (FY10)
---- Procedure -diagnostic
----- Prophylaxis, dental(scaling)(polishing)
96.54 Prophylaxis, dental(scaling)(polishing)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.55', 'Nonoperative intubation and irrigation
- Other nonoperative irrigation and cleaning
-- Tracheostomy toilette 96.55
96.55 Tracheostomy toilette', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.56', 'bronchus
- with lavage
96.56 with lavage', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.57', 'catheter
- vascular
96.57 vascular', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.58', 'catheter
- wound
96.58 wound', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.59', 'Cleaning, wound
96.59 Cleaning, wound', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.6', 'nasogastric tube
- for
-- feeding
96.6 feeding', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.7', 'delivered by
- tracheostomy
96.7 tracheostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.70', 'Ventilation
- mechanical
-- continuous 96.70
96.70 Continuous invasive mechanical ventilation', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.71', 'Ventilation
- mechanical
-- continuous
--- less than 96 consecutive hours 96.71
96.71 Continuous invasive mechanical ventilation for less than 96 consecutive hours', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('96.72', 'Ventilation
- mechanical
-- continuous
--- 96+ consecutive hours 96.72
96.72 Continuous invasive mechanical ventilation for 96+ consecutive hours', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.01', 'Replacement prosthesis
- tube
-- esophagostomy
97.01 esophagostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.02', 'Replacement prosthesis
- tube
-- gastrostomy
97.02 gastrostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.03', '(BiV ICD)
- (BiV
----- small intestine
97.03 small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.04', 'Replacement prosthesis
- tube
-- large intestine
97.04 large intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.05', 'Replacement
- cannula
-- pancreatic duct
97.05 pancreatic duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.11', 'Removal
- cast
-- upper limb
97.11 upper limb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.12', 'Removal
- cast
-- lower limb
97.12 lower limb', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.13', 'Removal
- cast
-- with reapplication
97.13 with reapplication', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.14', 'Replacement prosthesis
- splint
97.14 splint', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.15', 'Replacement
- catheter
-- wound
97.15 wound', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.16', 'Replacement and removal of therapeutic appliances
- Nonoperative replacement of musculoskeletal and integumentary
-- Replacement of wound packing or drain 97.16
97.16 Replacement of wound packing or drain', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.21', 'lead only
- TO PROCEDURES (FY10)
---- Replacement
----- nose
97.21 nose', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.22', 'lead only
- TO PROCEDURES (FY10)
---- Replacement
----- teeth, tooth
97.22 teeth, tooth', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.23', 'Replacement and removal of therapeutic appliances
- Other nonoperative replacement
-- Replacement of tracheostomy tube 97.23
97.23 Replacement of tracheostomy tube', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.24', 'also hand
- TO PROCEDURES (FY10)
---- Replacement
----- diaphragm, vagina
97.24 diaphragm, vagina', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.25', 'lead only
- TO PROCEDURES (FY10)
---- Replacement
----- pessary, vagina NEC
97.25 pessary, vagina NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.26', 'Replacement and removal of therapeutic appliances
- Other nonoperative replacement
-- Replacement of vaginal or vulvar packing or drain 97.26
97.26 Replacement of vaginal or vulvar packing or drain', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.31', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from head and neck
-- Removal of eye prosthesis 97.31
97.31 Removal of eye prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.32', 'pack, packing
- nasal
97.32 nasal', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.33', 'arch bars (orthodontic)
- immobilization device
97.33 immobilization device', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.34', 'pack, packing
- dental
97.34 dental', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.35', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from head and neck
-- Removal of dental prosthesis 97.35
97.35 Removal of dental prosthesis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.36', 'code cyst
----- mandibular NEC
97.36 mandibular NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.37', 'tube
- tracheostomy
97.37 tracheostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.38', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from head and neck
-- Removal of sutures from head and neck 97.38
97.38 Removal of sutures from head and neck', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.39', 'code cyst
----- head and neck NEC
97.39 head and neck NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.41', 'tube
- pleural cavity
97.41 pleural cavity', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.42', 'tube
- mediastinum
97.42 mediastinum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.43', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from thorax
-- Removal of sutures from thorax 97.43
97.43 Removal of sutures from thorax', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.44', 'Removal -gallstones
- heart assist system
-- nonoperative
97.44 nonoperative', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.49', 'code cyst
----- thorax NEC
97.49 thorax NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.51', 'tube
- gastrostomy
97.51 gastrostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.52', 'tube
- small intestine
97.52 small intestine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.53', 'tube
- appendix
97.53 appendix', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.54', 'tube
- cholecystostomy
97.54 cholecystostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.55', 'T-tube (bile duct)
97.55 T-tube (bile duct)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.56', 'tube
- pancreas
97.56 pancreas', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.59', 'pack, packing
- rectum
97.59 rectum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.61', 'tube
- nephrostomy
97.61 nephrostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.62', 'Removal
- catheter (indwelling)
-- ureter
97.62 ureter', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.63', 'tube
- cystostomy
97.63 cystostomy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.64', 'Removal
- catheter (indwelling)
-- bladder
97.64 bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.65', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from urinary system
-- Removal of urethral stent 97.65
97.65 Removal of urethral stent', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.69', 'code cyst
- 02.42 trunk NEC
----- urinary system NEC
97.69 urinary system NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.71', 'code cyst
----- intrauterine contraceptive
97.71 intrauterine contraceptive', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.72', 'pack, packing
- intrauterine
97.72 intrauterine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.73', 'code cyst
- 02.42 trunk NEC
----- diaphragm, vagina
97.73 diaphragm, vagina', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.74', 'Replacement and removal of therapeutic appliances
- Nonoperative removal of therapeutic device from genital system
-- Removal of other vaginal pessary 97.74
97.74 Removal of other vaginal pessary', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.75', 'pack, packing
- vagina
97.75 vagina', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.79', 'code cyst
----- genital tract NEC
97.79 genital tract NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.81', 'tube
- retroperitoneum
97.81 retroperitoneum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.82', 'tube
- peritoneum
97.82 peritoneum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.83', 'Replacement and removal of therapeutic appliances
- Other nonoperative removal of therapeutic device
-- Removal of abdominal wall sutures 97.83
97.83 Removal of abdominal wall sutures', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.84', 'Replacement and removal of therapeutic appliances
- Other nonoperative removal of therapeutic device
-- Removal of sutures from trunk, not elsewhere classified 97.84
97.84 Removal of sutures from trunk, not elsewhere classified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.85', 'pack, packing
- trunk NEC
97.85 trunk NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.86', 'code cyst
----- abdomen NEC
97.86 abdomen NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.87', 'code cyst
- 02.42 trunk NEC
97.87 02.42 trunk NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.88', 'brace
97.88 brace', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('97.89', 'code cyst
----- device (therapeutic) NEC
97.89 device (therapeutic) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.01', 'Removal -foreign body
- mouth (intraluminal)
98.01 mouth (intraluminal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.02', 'Removal -foreign body
-- esophagus (intraluminal)
98.02 esophagus (intraluminal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.03', 'Removal -foreign body
-- duodenum
98.03 duodenum', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.04', 'of
- also hand
----- large (intraluminal)
98.04 large (intraluminal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.05', 'Removal -foreign body
-- anus (intraluminal)
98.05 anus (intraluminal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.11', 'Removal -foreign body
-- ear (intraluminal)
98.11 ear (intraluminal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.12', 'Removal -foreign body
- nose (intraluminal)
98.12 nose (intraluminal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.13', 'Removal -foreign body
- pharynx (intraluminal)
98.13 pharynx (intraluminal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.14', 'Nonoperative removal of foreign body or calculus
- Removal of intraluminal foreign body from other sites without
-- Removal of intraluminal foreign body from larynx without incision 98.14
98.14 Removal of intraluminal foreign body from larynx without incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.15', 'Removal -foreign body
-- bronchus (intraluminal)
98.15 bronchus (intraluminal)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.16', 'Removal -foreign body
-- cervix (intraluminal) NEC
98.16 cervix (intraluminal) NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.17', 'Nonoperative removal of foreign body or calculus
- Removal of intraluminal foreign body from other sites without
-- Removal of intraluminal foreign body from vagina without incision 98.17
98.17 Removal of intraluminal foreign body from vagina without incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.19', 'Nonoperative removal of foreign body or calculus
- Removal of intraluminal foreign body from other sites without
-- Removal of intraluminal foreign body from urethra without incision 98.19
98.19 Removal of intraluminal foreign body from urethra without incision', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.20', 'Nonoperative removal of foreign body or calculus
- Removal of other foreign body without incision
-- Removal of foreign body, not otherwise specified 98.20
98.20 Removal of foreign body, not otherwise specified', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.21', 'foreign body
- eye, eyeball NEC
98.21 eye, eyeball NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.22', 'foreign body
- conjunctiva
98.22 conjunctiva', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.23', 'Removal -foreign body
- perineum (female)
98.23 perineum (female)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.24', 'Removal -foreign body
- penis
98.24 penis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.25', 'Removal -foreign body
- perineum (female)
-- male
98.25 male', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.26', 'of
- also hand
98.26 also hand', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.27', 'Removal -foreign body
-- antecubital fossa
98.27 antecubital fossa', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.28', 'of
----- foot
98.28 foot', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.29', 'Removal -foreign body
- popliteal space
98.29 popliteal space', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.51', 'shockwave lithotripsy (ESWL) NEC
- bladder
98.51 bladder', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.52', 'shockwave lithotripsy (ESWL) NEC
- bile duct
98.52 bile duct', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('98.59', 'shockwave lithotripsy (ESWL) NEC
- specified site NEC
98.59 specified site NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.00', 'transfusion
- autologous
-- intraoperative
99.00 intraoperative', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.01', 'transfusion
- exchange
99.01 exchange', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.02', 'transfusion
- autologous
-- collected prior to surgery
99.02 collected prior to surgery', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.03', 'transfusion
- hemodilution
99.03 hemodilution', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.04', 'Transfusion
- blood 99.04
99.04 Transfusion of packed cells', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.05', 'transfusion
- platelets
99.05 platelets', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.06', 'transfusion
- antihemophilic factor
99.06 antihemophilic factor', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.07', 'transfusion
- plasma
99.07 plasma', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.08', 'transfusion
- blood expander
99.08 blood expander', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.09', 'transfusion
- blood surrogate
99.09 blood surrogate', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.10', 'Activase®
99.10 Activase®', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.11', 'Transfusion
- blood
-- whole 99.11
99.11 Transfusion of whole blood', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.12', 'Desensitization
- allergy
99.12 allergy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.13', 'Immunization
- autoimmune disease
99.13 autoimmune disease', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.14', 'Other nonoperative procedures
- Injection or infusion of therapeutic or prophylactic substance
-- Injection or infusion of gamma globulin 99.14
99.14 Injection or infusion of gamma globulin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.15', 'Injection
- albumin 99.15
99.15 Parenteral infusion of concentrated nutritional substances', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.16', 'Injection (into) (hypodermically)
- antidote NEC
99.16 antidote NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.17', 'Other nonoperative procedures
- Injection or infusion of therapeutic or prophylactic substance
-- Injection of insulin 99.17
99.17 Injection of insulin', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.18', 'Injection (into) (hypodermically)
- electrolytes
99.18 electrolytes', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.19', 'Injection (into) (hypodermically)
- anticoagulant
99.19 anticoagulant', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.20', 'Abciximab, infusion
99.20 Abciximab, infusion', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.21', 'Injection (into) (hypodermically)
- antibiotic
99.21 antibiotic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.22', 'Injection (into) (hypodermically)
- anti-infective NEC
99.22 anti-infective NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.23', 'Implant, implantation
- estradiol (pellet)
99.23 estradiol (pellet)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.24', 'for
- hormone therapy NEC
99.24 hormone therapy NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.25', 'Chemoembolization
99.25 Chemoembolization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.26', 'Other nonoperative procedures
- Injection or infusion of other therapeutic or prophylactic
-- Injection of tranquilizer 99.26
99.26 Injection of tranquilizer', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.27', 'Galvanoionization
99.27 Galvanoionization', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.28', 'Proleukin® (low-dose)
99.28 Proleukin® (low-dose)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.29', 'Alimentation, parenteral
99.29 Alimentation, parenteral', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.31', 'Immunization
- cholera
99.31 cholera', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.32', 'Immunization
- TAB
99.32 TAB', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.33', 'Immunization
- BCG
99.33 BCG', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.34', 'Immunization
- plague
99.34 plague', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.35', 'Immunization
- tularemia
99.35 tularemia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.36', 'Immunization
- diphtheria
99.36 diphtheria', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.37', 'Immunization
- pertussis
99.37 pertussis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.38', 'Immunization
- tetanus
99.38 tetanus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.39', 'Immunization
- DPT
99.39 DPT', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.41', 'Immunization
- poliomyelitis
99.41 poliomyelitis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.42', 'Immunization
- smallpox
99.42 smallpox', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.43', 'Immunization
- yellow fever
99.43 yellow fever', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.44', 'Immunization
- rabies
99.44 rabies', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.45', 'Immunization
- measles
99.45 measles', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.46', 'Immunization
- epidemic parotitis
99.46 epidemic parotitis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.47', 'Immunization
- German measles
99.47 German measles', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.48', 'Immunization
- triple vaccine
99.48 triple vaccine', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.51', 'Vaccination (prophylactic) (against)
- common cold
99.51 common cold', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.52', 'Immunization
- Hemophilus influenzae
99.52 Hemophilus influenzae', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.54', 'Vaccination (prophylactic) (against)
- disease NEC
-- arthropod-borne viral NEC
99.54 arthropod-borne viral NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.55', 'Immunization
- brucellosis
99.55 brucellosis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.56', 'antitoxins NEC
- tetanus
99.56 tetanus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.57', 'antitoxins NEC
- botulism
99.57 botulism', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.58', 'antitoxins NEC
99.58 antitoxins NEC', '[]');
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
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.64', 'spinal female
----- carotid sinus
99.64 carotid sinus', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.69', 'also laparoscopic
- TO PROCEDURES (FY10)
---- Conversion
----- cardiac rhythm NEC
99.69 cardiac rhythm NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.71', 'Ultrafiltration
- therapeutic plasmapheresis
99.71 therapeutic plasmapheresis', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.72', '(for Laryngotracheoscopy
- TO PROCEDURES (FY10)
---- Leukopheresis, therapeutic
99.72 Leukopheresis, therapeutic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.74', 'Plateletpheresis, therapeutic
99.74 Plateletpheresis, therapeutic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.75', 'neuroprotective agent
99.75 neuroprotective agent', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.77', 'adhesion barrier substance
99.77 adhesion barrier substance', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.78', 'Ultrafiltration
99.78 Ultrafiltration', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.79', 'bone marrow (for biopsy)
- stem cell
99.79 stem cell', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.81', 'Other nonoperative procedures
- Miscellaneous physical procedures
-- Hypothermia (central) (local) 99.81
99.81 Hypothermia (central) (local)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.82', '- (Y) Actinotherapy
99.82 (Y) Actinotherapy', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.83', 'Photochemotherapy NEC
99.83 Photochemotherapy NEC', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.84', 'NEC stomach
---- Isolation
----- after contact with infectious disease
99.84 after contact with infectious disease', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.85', 'Other nonoperative procedures
- Miscellaneous physical procedures
-- Hyperthermia for treatment of cancer 99.85
99.85 Hyperthermia for treatment of cancer', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.86', 'Other nonoperative procedures
- Miscellaneous physical procedures
-- Non-invasive placement of bone growth stimulator 99.86
99.86 Non-invasive placement of bone growth stimulator', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.88', 'photopheresis, therapeutic
99.88 photopheresis, therapeutic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.91', 'for anesthesia
99.91 for anesthesia', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.92', 'Acupuncture
99.92 Acupuncture', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.93', 'Massage
- rectal (for levator spasm)
99.93 rectal (for levator spasm)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.94', 'Massage
- prostatic
99.94 prostatic', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.95', 'foreskin (newborn)
99.95 foreskin (newborn)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.96', 'Collection, sperm for artificial
- insemination
99.96 insemination', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.97', 'dental
99.97 dental', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.98', 'Extraction -
- milk from lactating breast (manual)
-- (pump)
99.98 (pump)', '[]');
INSERT OR REPLACE INTO icd9_paths (code, path, vol1) VALUES ('99.99', 'Other nonoperative procedures
- Other miscellaneous procedures
-- Other 99.99
99.99 Other', '[]');