// known-paths.js — ICD-10 & ICD-9-CM Vol.3 Index Paths
// Format: code → { path: "Vol.3 index", vol1: [{type, text}] }
// vol1: ONLY confirmed official Vol.1 text — [] if not confirmed
// Total: 307 entries, 45 with Vol.1 notes

const KNOWN_PATHS = {
  'O36.4': { path: `Death
- fetus, fetal
-- (near term) O36.4
O36.4 Maternal care for intrauterine death`, vol1: [{"type": "includes", "text": "Intrauterine death NOS after 20 completed weeks of gestation"}] },
  'O43.0': { path: `Syndrome
- transfusion
-- feto-fetal O43.0
O43.0 Placental transfusion syndromes`, vol1: [{"type": "includes", "text": "Feto-fetal transfusion syndrome"}, {"type": "includes", "text": "Fetofetal transfusion syndrome"}] },
  'O30.0': { path: `Pregnancy
- complicated by
-- multiple gestation
--- twin O30.0
O30.0 Twin pregnancy`, vol1: [] },
  'O60.1': { path: `Labour
- premature
-- with delivery O60.1
O60.1 Preterm labour with preterm delivery`, vol1: [{"type": "includes", "text": "Preterm labour with preterm delivery NOS"}] },
  'O60.0': { path: `Labour
- premature O60.0
O60.0 Preterm labour without delivery`, vol1: [{"type": "includes", "text": "False labour before 37 completed weeks of gestation"}, {"type": "excludes", "text": "false labour at or after 37 completed weeks of gestation (O47.1)"}] },
  'O34.2': { path: `Section
- cesarean (for)
-- previous
--- cesarean section O34.2
O34.2 Maternal care due to uterine scar from previous surgery`, vol1: [{"type": "includes", "text": "Uterine scar from previous surgery NOS"}] },
  'O03.5': { path: `Abortion
- spontaneous
-- complicated by
--- genital tract and pelvic infection O03.5
O03.5 Spontaneous abortion, complete, complicated by genital tract and pelvic infection`, vol1: [] },
  'O03.0': { path: `Abortion
- spontaneous
-- complicated by
--- genital tract and pelvic infection O03.0
O03.0 Spontaneous abortion, incomplete, complicated by genital tract and pelvic infection`, vol1: [] },
  'O03.9': { path: `Abortion
- spontaneous
-- unspecified O03.9
O03.9 Spontaneous abortion, unspecified`, vol1: [] },
  'O03.4': { path: `Abortion
- spontaneous
-- incomplete, without complication O03.4
O03.4 Spontaneous abortion, incomplete, without complication`, vol1: [] },
  'O08.0': { path: `Complications
- following
-- abortion and ectopic and molar pregnancy
--- infection O08.0
O08.0 Genital tract and pelvic infection following abortion and ectopic and molar pregnancy`, vol1: [] },
  'O00.1': { path: `Pregnancy
- ectopic
-- tubal
--- ruptured O00.1
O00.1 Tubal pregnancy`, vol1: [{"type": "includes", "text": "Rupture of (fallopian) tube due to pregnancy"}, {"type": "includes", "text": "Tubal abortion"}] },
  'Z37.3': { path: `Outcome of delivery
- twins
-- one liveborn one stillborn Z37.3
Z37.3 Twins, one liveborn and one stillborn`, vol1: [{"type": "includes", "text": "Twins, one liveborn and one stillborn"}] },
  'Z37.0': { path: `Outcome of delivery
- single
-- liveborn Z37.0
Z37.0 Single liveborn infant`, vol1: [{"type": "includes", "text": "Single liveborn infant, born in hospital or elsewhere"}] },
  'Z37.1': { path: `Outcome
- delivery
-- single
--- stillborn Z37.1
Z37.1 Single stillbirth`, vol1: [{"type": "includes", "text": "Single stillborn infant"}] },
  'Z37.2': { path: `Outcome
- delivery
-- twins
--- both liveborn Z37.2
Z37.2 Twins, both liveborn`, vol1: [{"type": "includes", "text": "Twins, both liveborn"}] },
  'Z37.4': { path: `Outcome
- delivery
-- twins
--- both stillborn Z37.4
Z37.4 Twins, both stillborn`, vol1: [{"type": "includes", "text": "Twins, both stillborn"}] },
  'N83.2': { path: `Cyst
- ovary, ovarian N83.2
N83.2 Other and unspecified ovarian cysts`, vol1: [] },
  'S72.3': { path: `Fracture
- femur
-- shaft S72.3
S72.3 Fracture of shaft of femur`, vol1: [] },
  'S72.0': { path: `Fracture
- femur
-- neck S72.0
S72.0 Fracture of neck of femur`, vol1: [] },
  'S72.1': { path: `Fracture
- femur
-- pertrochanteric S72.1
S72.1 Pertrochanteric fracture`, vol1: [] },
  'S72.9': { path: `Fracture
- femur S72.9
S72.9 Fracture of femur, unspecified`, vol1: [] },
  '79.05': { path: `Reduction
- fracture
-- femur
--- closed 79.05
79.05 Closed reduction of fracture without internal fixation, femur`, vol1: [] },
  '79.15': { path: `Reduction
- fracture
-- femur
--- open
---- with internal fixation 79.15
79.15 Open reduction of fracture with internal fixation, femur`, vol1: [] },
  '79.35': { path: `Nailing
- intramedullary
-- femur 79.35
79.35 Open reduction of fracture with internal fixation, femur`, vol1: [] },
  '79.36': { path: `Nailing
- intramedullary
-- tibia 79.36
79.36 Open reduction of fracture with internal fixation, tibia and fibula`, vol1: [] },
  '00.66': { path: `Angioplasty
- coronary (balloon) 00.66
00.66 Percutaneous transluminal coronary angioplasty`, vol1: [{"type": "includes", "text": "Balloon angioplasty of coronary artery"}, {"type": "includes", "text": "PTCA NOS"}, {"type": "note", "text": "Code also any: insertion of coronary artery stent (36.06-36.07)"}] },
  '36.06': { path: `Insertion
- stent
-- coronary artery 36.06
36.06 Insertion of coronary artery stent`, vol1: [] },
  '36.07': { path: `Insertion
- stent
-- coronary artery
--- drug-eluting 36.07
36.07 Insertion of drug-eluting coronary artery stent`, vol1: [{"type": "includes", "text": "Drug-eluting coronary artery stent"}, {"type": "note", "text": "Code also any open chest coronary artery angioplasty (36.03)"}] },
  '36.01': { path: `Bypass
- coronary artery 36.01
36.01 Single coronary artery bypass using saphenous vein graft`, vol1: [] },
  '14.24': { path: `Photocoagulation
- retina
-- for
--- destruction of lesion
---- laser 14.24
14.24 Destruction of chorioretinal lesion by laser photocoagulation`, vol1: [] },
  '14.25': { path: `Photocoagulation
- retina
-- for
--- destruction of lesion
---- unspecified type 14.25
14.25 Destruction of chorioretinal lesion by photocoagulation of unspecified type`, vol1: [] },
  '14.23': { path: `Photocoagulation
- retina
-- for
--- destruction of lesion
---- xenon arc 14.23
14.23 Destruction of chorioretinal lesion by xenon arc photocoagulation`, vol1: [] },
  '14.26': { path: `Photocoagulation
- retina
-- for
--- destruction of lesion
---- cryotherapy 14.26
14.26 Destruction of chorioretinal lesion by cryotherapy`, vol1: [] },
  '16.49': { path: `Enucleation
- eyeball 16.49
16.49 Enucleation of eyeball`, vol1: [] },
  '08.36': { path: `Repair
- eyelid
-- blepharoplasty 08.36
08.36 Eyelid reconstruction`, vol1: [] },
  'I50.0': { path: `Failure
- heart
-- congestive I50.0
I50.0 Congestive heart failure`, vol1: [{"type": "includes", "text": "Congestive heart failure NOS"}, {"type": "includes", "text": "Right ventricular failure (secondary to left heart failure)"}] },
  'I50.1': { path: `Failure
- heart
-- left I50.1
I50.1 Left ventricular failure`, vol1: [] },
  'I50.9': { path: `Failure
- heart
-- unspecified I50.9
I50.9 Heart failure, unspecified`, vol1: [] },
  'I48': { path: `Fibrillation
- atrial I48
I48 Atrial fibrillation and flutter`, vol1: [{"type": "includes", "text": "Atrial fibrillation and flutter NOS"}] },
  'I47.1': { path: `Tachycardia
- ventricular I47.1
I47.1 Supraventricular tachycardia`, vol1: [] },
  'I47.2': { path: `Tachycardia
- ventricular I47.2
I47.2 Ventricular tachycardia`, vol1: [] },
  'I49.0': { path: `Fibrillation
- ventricular I49.0
I49.0 Ventricular fibrillation and flutter`, vol1: [] },
  'I11.0': { path: `Hypertension
- heart disease
-- with heart failure I11.0
I11.0 Hypertensive heart disease with heart failure`, vol1: [] },
  'I11.9': { path: `Hypertension
- heart disease
-- without heart failure I11.9
I11.9 Hypertensive heart disease without heart failure`, vol1: [] },
  'I13.1': { path: `Hypertension
- cardiorenal disease
-- with renal failure I13.1
I13.1 Hypertensive heart and renal disease with renal failure`, vol1: [] },
  'I20.0': { path: `Angina
- unstable I20.0
I20.0 Unstable angina`, vol1: [{"type": "includes", "text": "Crescendo angina"}, {"type": "includes", "text": "Intermediate coronary syndrome"}, {"type": "includes", "text": "Preinfarction syndrome"}] },
  'I20.9': { path: `Angina
- pectoris
-- unspecified I20.9
I20.9 Angina pectoris, unspecified`, vol1: [] },
  'I21.2': { path: `Infarction
- myocardial
-- acute
--- lateral I21.2
I21.2 Acute transmural myocardial infarction of lateral wall`, vol1: [] },
  'I21.3': { path: `Infarction
- myocardial
-- acute
--- unspecified site I21.3
I21.3 Acute transmural myocardial infarction of unspecified site`, vol1: [] },
  'I25.1': { path: `Disease
- coronary
-- artery
--- atherosclerotic heart disease I25.1
I25.1 Atherosclerotic heart disease`, vol1: [] },
  'I25.2': { path: `Infarction
- myocardial
-- old I25.2
I25.2 Old myocardial infarction`, vol1: [] },
  'I26.9': { path: `Embolism
- pulmonary
-- without mention of acute cor pulmonale I26.9
I26.9 Pulmonary embolism without mention of acute cor pulmonale`, vol1: [] },
  'I27.0': { path: `Hypertension
- pulmonary
-- primary I27.0
I27.0 Primary pulmonary hypertension`, vol1: [] },
  'I35.0': { path: `Stenosis
- aortic valve I35.0
I35.0 Aortic stenosis`, vol1: [] },
  'I34.0': { path: `Regurgitation
- mitral valve I34.0
I34.0 Mitral valve regurgitation`, vol1: [] },
  'R57.0': { path: `Shock
- cardiogenic R57.0
R57.0 Cardiogenic shock`, vol1: [] },
  'J45.0': { path: `Asthma
- predominantly allergic J45.0
J45.0 Predominantly allergic asthma`, vol1: [] },
  'J45.1': { path: `Asthma
- nonallergic J45.1
J45.1 Nonallergic asthma`, vol1: [] },
  'J45.9': { path: `Asthma
- unspecified J45.9
J45.9 Asthma, unspecified`, vol1: [] },
  'J46': { path: `Status
- asthmaticus J46
J46 Status asthmaticus`, vol1: [] },
  'J15.7': { path: `Pneumonia
- due to
-- Mycoplasma pneumoniae J15.7
J15.7 Pneumonia due to Mycoplasma pneumoniae`, vol1: [] },
  'J22': { path: `Infection
- respiratory
-- lower
--- acute J22
J22 Unspecified acute lower respiratory infection`, vol1: [] },
  'J90': { path: `Effusion
- pleural J90
J90 Pleural effusion, not elsewhere classified`, vol1: [] },
  'J93.1': { path: `Pneumothorax
- spontaneous J93.1
J93.1 Other spontaneous pneumothorax`, vol1: [{"type": "includes", "text": "Spontaneous tension pneumothorax"}] },
  'J93.9': { path: `Pneumothorax
- unspecified J93.9
J93.9 Pneumothorax, unspecified`, vol1: [] },
  'A15.0': { path: `Tuberculosis
- pulmonary
-- confirmed by sputum smear A15.0
A15.0 Tuberculosis of lung, confirmed by sputum smear with or without culture`, vol1: [] },
  'A15.3': { path: `Tuberculosis
- pulmonary
-- confirmed histologically A15.3
A15.3 Tuberculosis of lung, confirmed histologically`, vol1: [] },
  'A16.2': { path: `Tuberculosis
- pulmonary
-- without mention of bacteriological or histological confirmation A16.2
A16.2 Tuberculosis of lung, without mention of bacteriological or histological confirmation`, vol1: [] },
  'J96.9': { path: `Failure
- respiratory
-- unspecified J96.9
J96.9 Respiratory failure, unspecified`, vol1: [] },
  'J96.0': { path: `Failure
- respiratory
-- acute J96.0
J96.0 Acute respiratory failure`, vol1: [{"type": "includes", "text": "Acute respiratory failure NOS"}] },
  'J96.1': { path: `Failure
- respiratory
-- chronic J96.1
J96.1 Chronic respiratory failure`, vol1: [] },
  'K25.0': { path: `Ulcer
- gastric
-- acute
--- with haemorrhage K25.0
K25.0 Gastric ulcer, acute with haemorrhage`, vol1: [] },
  'K25.9': { path: `Ulcer
- gastric
-- unspecified K25.9
K25.9 Gastric ulcer, unspecified`, vol1: [] },
  'K26.9': { path: `Ulcer
- duodenal
-- unspecified K26.9
K26.9 Duodenal ulcer, unspecified`, vol1: [] },
  'K29.7': { path: `Gastritis
- unspecified K29.7
K29.7 Gastritis, unspecified`, vol1: [] },
  'K40.9': { path: `Hernia
- inguinal
-- without obstruction or gangrene K40.9
K40.9 Unilateral or unspecified inguinal hernia, without obstruction or gangrene`, vol1: [] },
  'K40.3': { path: `Hernia
- inguinal
-- unilateral
--- with obstruction K40.3
K40.3 Unilateral or unspecified inguinal hernia, with obstruction, without gangrene`, vol1: [] },
  'K56.7': { path: `Ileus
- unspecified K56.7
K56.7 Ileus, unspecified`, vol1: [] },
  'K56.6': { path: `Obstruction
- intestinal
-- unspecified K56.6
K56.6 Other and unspecified intestinal obstruction`, vol1: [] },
  'K70.3': { path: `Cirrhosis
- liver
-- alcoholic K70.3
K70.3 Alcoholic cirrhosis of liver`, vol1: [] },
  'K74.6': { path: `Cirrhosis
- liver
-- unspecified K74.6
K74.6 Other and unspecified cirrhosis of liver`, vol1: [] },
  'K72.0': { path: `Failure
- liver
-- acute K72.0
K72.0 Acute and subacute hepatic failure`, vol1: [] },
  'K72.9': { path: `Failure
- liver
-- unspecified K72.9
K72.9 Hepatic failure, unspecified`, vol1: [] },
  'B18.1': { path: `Hepatitis
- B
-- chronic B18.1
B18.1 Chronic viral hepatitis B without delta-agent`, vol1: [] },
  'B18.2': { path: `Hepatitis
- C
-- chronic B18.2
B18.2 Chronic viral hepatitis C`, vol1: [] },
  'K80.2': { path: `Calculus
- gallbladder
-- without cholecystitis K80.2
K80.2 Calculus of gallbladder without cholecystitis`, vol1: [] },
  'K81.0': { path: `Cholecystitis
- acute K81.0
K81.0 Acute cholecystitis`, vol1: [] },
  'K85': { path: `Pancreatitis
- acute K85
K85 Acute pancreatitis`, vol1: [] },
  'K86.1': { path: `Pancreatitis
- chronic K86.1
K86.1 Other chronic pancreatitis`, vol1: [] },
  'I63.0': { path: `Infarction
- cerebral
-- due to thrombosis I63.0
I63.0 Cerebral infarction due to thrombosis of precerebral arteries`, vol1: [] },
  'I63.3': { path: `Infarction
- cerebral
-- due to thrombosis of cerebral arteries I63.3
I63.3 Cerebral infarction due to thrombosis of cerebral arteries`, vol1: [] },
  'I63.4': { path: `Infarction
- cerebral
-- due to embolism I63.4
I63.4 Cerebral infarction due to embolism of cerebral arteries`, vol1: [] },
  'I61.0': { path: `Haemorrhage
- cerebral
-- subcortical I61.0
I61.0 Nontraumatic intracerebral haemorrhage in hemisphere, subcortical`, vol1: [{"type": "includes", "text": "Nontraumatic intracerebral haemorrhage in hemisphere, subcortical"}, {"type": "note", "text": "Subcortical = ganglia basalia, thalamus, kapsula interna"}] },
  'I61.3': { path: `Haemorrhage
- cerebral
-- brain stem I61.3
I61.3 Nontraumatic intracerebral haemorrhage in brain stem`, vol1: [] },
  'I62.9': { path: `Haemorrhage
- intracranial
-- unspecified I62.9
I62.9 Nontraumatic intracranial haemorrhage, unspecified`, vol1: [] },
  'G40.9': { path: `Epilepsy
- unspecified G40.9
G40.9 Epilepsy, unspecified`, vol1: [{"type": "includes", "text": "Epilepsy NOS"}, {"type": "includes", "text": "Epileptic convulsions, fits or seizures NOS"}] },
  'G41.0': { path: `Status
- epilepticus
-- grand mal G41.0
G41.0 Grand mal status epilepticus`, vol1: [] },
  'G41.9': { path: `Status
- epilepticus
-- unspecified G41.9
G41.9 Status epilepticus, unspecified`, vol1: [] },
  'G00.9': { path: `Meningitis
- bacterial
-- unspecified G00.9
G00.9 Bacterial meningitis, unspecified`, vol1: [] },
  'G03.9': { path: `Meningitis
- unspecified G03.9
G03.9 Meningitis, unspecified`, vol1: [] },
  'G61.0': { path: `Syndrome
- Guillain-Barre G61.0
G61.0 Guillain-Barre syndrome`, vol1: [] },
  'G35': { path: `Sclerosis
- multiple G35
G35 Multiple sclerosis`, vol1: [] },
  'G43.9': { path: `Migraine
- unspecified G43.9
G43.9 Migraine, unspecified`, vol1: [] },
  'R55': { path: `Syncope
- and collapse R55
R55 Syncope and collapse`, vol1: [] },
  'N10': { path: `Nephritis
- tubulo-interstitial
-- acute N10
N10 Acute tubulo-interstitial nephritis`, vol1: [] },
  'N11.9': { path: `Nephritis
- tubulo-interstitial
-- chronic
--- unspecified N11.9
N11.9 Chronic tubulo-interstitial nephritis, unspecified`, vol1: [] },
  'N17.9': { path: `Failure
- renal
-- acute
--- unspecified N17.9
N17.9 Acute renal failure, unspecified`, vol1: [{"type": "includes", "text": "Acute renal failure NOS"}, {"type": "excludes", "text": "posttraumatic renal failure (T79.5)"}] },
  'N18.0': { path: `Failure
- renal
-- end-stage N18.0
N18.0 End-stage renal disease`, vol1: [] },
  'N18.9': { path: `Failure
- renal
-- chronic
--- unspecified N18.9
N18.9 Chronic renal failure, unspecified`, vol1: [{"type": "includes", "text": "Chronic renal failure NOS"}] },
  'N19': { path: `Failure
- renal
-- unspecified N19
N19 Unspecified renal failure`, vol1: [] },
  'N20.0': { path: `Calculus
- kidney N20.0
N20.0 Calculus of kidney`, vol1: [] },
  'N20.1': { path: `Calculus
- ureter N20.1
N20.1 Calculus of ureter`, vol1: [] },
  'N20.2': { path: `Calculus
- kidney
-- with ureter N20.2
N20.2 Calculus of kidney with calculus of ureter`, vol1: [] },
  'N23': { path: `Colic
- renal N23
N23 Unspecified renal colic`, vol1: [] },
  'N30.0': { path: `Cystitis
- acute N30.0
N30.0 Acute cystitis`, vol1: [] },
  'N30.9': { path: `Cystitis
- unspecified N30.9
N30.9 Cystitis, unspecified`, vol1: [] },
  'N39.0': { path: `Infection
- urinary tract N39.0
N39.0 Urinary tract infection, site not specified`, vol1: [] },
  'N40': { path: `Hyperplasia
- prostate N40
N40 Hyperplasia of prostate`, vol1: [] },
  'N13.5': { path: `Hydronephrosis
- with ureteral obstruction N13.5
N13.5 Kinking and stricture of ureter without hydronephrosis`, vol1: [] },
  'E10.9': { path: `Diabetes
- type 1
-- without complications E10.9
E10.9 Type 1 diabetes mellitus without complications`, vol1: [] },
  'E11.0': { path: `Diabetes
- type 2
-- with coma E11.0
E11.0 Type 2 diabetes mellitus with coma`, vol1: [] },
  'E11.1': { path: `Diabetes
- type 2
-- with ketoacidosis E11.1
E11.1 Type 2 diabetes mellitus with ketoacidosis`, vol1: [{"type": "includes", "text": "Type 2 diabetes mellitus with ketoacidosis NOS"}, {"type": "includes", "text": "Type 2 diabetes mellitus with ketoacidotic coma"}] },
  'E11.6': { path: `Diabetes
- type 2
-- with other specified complications E11.6
E11.6 Type 2 diabetes mellitus with other specified complications`, vol1: [] },
  'E11.7': { path: `Diabetes
- type 2
-- with multiple complications E11.7
E11.7 Type 2 diabetes mellitus with multiple complications`, vol1: [] },
  'E14.9': { path: `Diabetes
- unspecified
-- without complications E14.9
E14.9 Unspecified diabetes mellitus without complications`, vol1: [] },
  'E05.0': { path: `Hyperthyroidism
- with diffuse goitre E05.0
E05.0 Thyrotoxicosis with diffuse goitre`, vol1: [] },
  'E05.9': { path: `Hyperthyroidism
- unspecified E05.9
E05.9 Thyrotoxicosis, unspecified`, vol1: [] },
  'E03.9': { path: `Hypothyroidism
- unspecified E03.9
E03.9 Hypothyroidism, unspecified`, vol1: [] },
  'E27.1': { path: `Insufficiency
- adrenocortical
-- primary E27.1
E27.1 Primary adrenocortical insufficiency`, vol1: [] },
  'E24.0': { path: `Syndrome
- Cushing
-- pituitary-dependent E24.0
E24.0 Pituitary-dependent Cushing disease`, vol1: [] },
  'E16.0': { path: `Hypoglycaemia
- with coma E16.0
E16.0 Drug-induced hypoglycaemia without coma`, vol1: [] },
  'E87.0': { path: `Hypernatraemia
- E87.0
E87.0 Hyperosmolality and hypernatraemia`, vol1: [] },
  'E87.1': { path: `Hyponatraemia
- E87.1
E87.1 Hyponatraemia`, vol1: [] },
  'E87.5': { path: `Hyperkalaemia
- E87.5
E87.5 Hyperkalaemia`, vol1: [] },
  'E87.6': { path: `Hypokalaemia
- E87.6
E87.6 Hypokalaemia`, vol1: [] },
  'O10.0': { path: `Hypertension
- pre-existing
-- essential
--- complicating pregnancy O10.0
O10.0 Pre-existing essential hypertension complicating pregnancy, childbirth and the puerperium`, vol1: [] },
  'O13': { path: `Hypertension
- gestational
-- without significant proteinuria O13
O13 Gestational hypertension without significant proteinuria`, vol1: [] },
  'O14.0': { path: `Pre-eclampsia
- mild O14.0
O14.0 Mild to moderate pre-eclampsia`, vol1: [] },
  'O14.1': { path: `Pre-eclampsia
- severe O14.1
O14.1 Severe pre-eclampsia`, vol1: [{"type": "includes", "text": "Severe pre-eclampsia NOS"}] },
  'O15.0': { path: `Eclampsia
- in pregnancy O15.0
O15.0 Eclampsia in pregnancy`, vol1: [{"type": "excludes", "text": "eclampsia in labour (O15.1)"}, {"type": "excludes", "text": "eclampsia in the puerperium (O15.2)"}] },
  'O15.9': { path: `Eclampsia
- unspecified O15.9
O15.9 Eclampsia, unspecified as to time period`, vol1: [] },
  'O20.0': { path: `Abortion
- threatened O20.0
O20.0 Threatened abortion`, vol1: [] },
  'O21.0': { path: `Vomiting
- pregnancy
-- mild O21.0
O21.0 Mild hyperemesis gravidarum`, vol1: [] },
  'O21.1': { path: `Vomiting
- pregnancy
-- hyperemesis with metabolic disturbance O21.1
O21.1 Hyperemesis gravidarum with metabolic disturbance`, vol1: [] },
  'O00.0': { path: `Pregnancy
- ectopic
-- abdominal O00.0
O00.0 Abdominal pregnancy`, vol1: [] },
  'O00.9': { path: `Pregnancy
- ectopic
-- unspecified O00.9
O00.9 Ectopic pregnancy, unspecified`, vol1: [] },
  'O08.1': { path: `Haemorrhage
- following
-- abortion O08.1
O08.1 Delayed or excessive haemorrhage following abortion and ectopic and molar pregnancy`, vol1: [] },
  'O08.9': { path: `Complications
- following
-- abortion
--- unspecified O08.9
O08.9 Unspecified complication following abortion and ectopic and molar pregnancy`, vol1: [] },
  'O42.0': { path: `Rupture
- membranes
-- premature
--- labour within 24 hours O42.0
O42.0 Premature rupture of membranes, onset of labour within 24 hours`, vol1: [{"type": "includes", "text": "Premature rupture of membranes with onset of labour within 24 hours"}] },
  'O42.9': { path: `Rupture
- membranes
-- premature
--- unspecified O42.9
O42.9 Premature rupture of membranes, unspecified`, vol1: [] },
  'O72.1': { path: `Haemorrhage
- postpartum
-- other immediate O72.1
O72.1 Other immediate postpartum haemorrhage`, vol1: [] },
  'O82.0': { path: `Delivery
- caesarean section
-- elective O82.0
O82.0 Delivery by elective caesarean section`, vol1: [{"type": "includes", "text": "Delivery by elective caesarean section NOS"}] },
  'O82.1': { path: `Delivery
- caesarean section
-- emergency O82.1
O82.1 Delivery by emergency caesarean section`, vol1: [{"type": "includes", "text": "Delivery by emergency caesarean section NOS"}] },
  'O99.0': { path: `Anaemia
- complicating pregnancy, childbirth and the puerperium O99.0
O99.0 Anaemia complicating pregnancy, childbirth and the puerperium`, vol1: [{"type": "includes", "text": "The listed conditions when complicating pregnancy, childbirth or the puerperium"}, {"type": "note", "text": "Code first underlying condition"}] },
  'S02.0': { path: `Fracture
- skull
-- vault S02.0
S02.0 Fracture of vault of skull`, vol1: [] },
  'S06.3': { path: `Injury
- intracranial
-- focal S06.3
S06.3 Focal brain injury`, vol1: [] },
  'S22.0': { path: `Fracture
- vertebra
-- thoracic S22.0
S22.0 Fracture of thoracic vertebra`, vol1: [] },
  'S32.0': { path: `Fracture
- vertebra
-- lumbar S32.0
S32.0 Fracture of lumbar vertebra`, vol1: [] },
  'S42.2': { path: `Fracture
- humerus
-- upper end S42.2
S42.2 Fracture of upper end of humerus`, vol1: [] },
  'S42.3': { path: `Fracture
- humerus
-- shaft S42.3
S42.3 Fracture of shaft of humerus`, vol1: [] },
  'S52.2': { path: `Fracture
- radius
-- shaft S52.2
S52.2 Fracture of shaft of radius`, vol1: [] },
  'S52.5': { path: `Fracture
- radius
-- lower end S52.5
S52.5 Fracture of lower end of radius`, vol1: [] },
  'S62.3': { path: `Fracture
- metacarpal S62.3
S62.3 Fracture of other metacarpal bone`, vol1: [] },
  'S82.1': { path: `Fracture
- tibia
-- upper end S82.1
S82.1 Fracture of upper end of tibia`, vol1: [] },
  'S82.2': { path: `Fracture
- tibia
-- shaft S82.2
S82.2 Fracture of shaft of tibia`, vol1: [] },
  'S82.6': { path: `Fracture
- fibula
-- lateral malleolus S82.6
S82.6 Fracture of lateral malleolus`, vol1: [] },
  'S92.0': { path: `Fracture
- calcaneus S92.0
S92.0 Fracture of calcaneus`, vol1: [] },
  'M16.1': { path: `Osteoarthritis
- hip
-- primary M16.1
M16.1 Primary osteoarthritis, hip`, vol1: [] },
  'M17.1': { path: `Osteoarthritis
- knee
-- primary M17.1
M17.1 Primary osteoarthritis, knee`, vol1: [] },
  'M54.5': { path: `Pain
- low back M54.5
M54.5 Low back pain`, vol1: [] },
  'M54.4': { path: `Lumbago
- with sciatica M54.4
M54.4 Lumbago with sciatica`, vol1: [] },
  '54.11': { path: `Laparotomy
- exploratory 54.11
54.11 Exploratory laparotomy`, vol1: [] },
  '54.19': { path: `Laparotomy
- other 54.19
54.19 Other laparotomy`, vol1: [] },
  '46.10': { path: `Colostomy
- temporary 46.10
46.10 Colostomy, not otherwise specified`, vol1: [] },
  '46.13': { path: `Colostomy
- permanent 46.13
46.13 Permanent colostomy`, vol1: [] },
  '45.73': { path: `Resection
- bowel
-- right hemicolectomy 45.73
45.73 Right hemicolectomy`, vol1: [] },
  '45.75': { path: `Resection
- bowel
-- left hemicolectomy 45.75
45.75 Left hemicolectomy`, vol1: [] },
  '51.22': { path: `Cholecystectomy
- laparoscopic 51.22
51.22 Laparoscopic cholecystectomy`, vol1: [] },
  '51.23': { path: `Cholecystectomy
- other 51.23
51.23 Other cholecystectomy`, vol1: [] },
  '52.7': { path: `Pancreatectomy
- total 52.7
52.7 Radical pancreaticoduodenectomy`, vol1: [] },
  '53.00': { path: `Repair
- hernia
-- inguinal
--- unilateral 53.00
53.00 Unilateral repair of inguinal hernia, not otherwise specified`, vol1: [] },
  '53.05': { path: `Repair
- hernia
-- inguinal
--- laparoscopic 53.05
53.05 Repair of inguinal hernia, laparoscopic approach`, vol1: [] },
  '57.6': { path: `Cystectomy
- total 57.6
57.6 Total cystectomy`, vol1: [] },
  '60.5': { path: `Prostatectomy
- transurethral 60.5
60.5 Transurethral prostatectomy`, vol1: [] },
  '60.29': { path: `Prostatectomy
- other 60.29
60.29 Other transurethral prostatectomy`, vol1: [] },
  '77.35': { path: `Division
- bone
-- femur 77.35
77.35 Other division of bone, femur`, vol1: [] },
  '81.54': { path: `Replacement
- hip
-- total 81.54
81.54 Total hip replacement`, vol1: [] },
  '81.55': { path: `Replacement
- knee
-- total 81.55
81.55 Total knee replacement`, vol1: [] },
  '87.03': { path: `Scan
- CT
-- head 87.03
87.03 Computerized axial tomography of head`, vol1: [{"type": "includes", "text": "Computerized axial tomography of head NOS"}] },
  '87.41': { path: `Scan
- CT
-- thorax 87.41
87.41 Computerized axial tomography of thorax`, vol1: [] },
  '88.01': { path: `Scan
- CT
-- abdomen 88.01
88.01 Computerized axial tomography of abdomen`, vol1: [] },
  '88.38': { path: `Tomography
- computerized axial
-- lumbar spine 88.38
88.38 Computerized axial tomography of lumbar spine`, vol1: [] },
  '88.91': { path: `Imaging
- magnetic resonance
-- brain 88.91
88.91 Magnetic resonance imaging of brain`, vol1: [] },
  '88.92': { path: `Imaging
- magnetic resonance
-- chest 88.92
88.92 Magnetic resonance imaging of chest`, vol1: [] },
  '88.93': { path: `Imaging
- magnetic resonance
-- spinal canal 88.93
88.93 Magnetic resonance imaging of spinal canal`, vol1: [] },
  '88.94': { path: `Imaging
- magnetic resonance
-- musculoskeletal 88.94
88.94 Magnetic resonance imaging of musculoskeletal`, vol1: [] },
  '44.13': { path: `Gastroscopy
- other 44.13
44.13 Other gastroscopy`, vol1: [] },
  '45.13': { path: `Endoscopy
- large intestine
-- colonoscopy 45.13
45.13 Colonoscopy`, vol1: [] },
  '45.23': { path: `Endoscopy
- small bowel 45.23
45.23 Other endoscopy of small intestine`, vol1: [] },
  '52.14': { path: `ERCP
- pancreatography 52.14
52.14 Endoscopic retrograde pancreatography`, vol1: [] },
  '51.11': { path: `Cholangiography
- endoscopic retrograde 51.11
51.11 Endoscopic retrograde cholangiography`, vol1: [] },
  '37.21': { path: `Catheterization
- heart
-- right 37.21
37.21 Right heart cardiac catheterization`, vol1: [] },
  '37.22': { path: `Catheterization
- heart
-- left 37.22
37.22 Left heart cardiac catheterization`, vol1: [] },
  '87.62': { path: `Angiography
- coronary 87.62
87.62 Other heart angiography`, vol1: [] },
  '89.14': { path: `Electroencephalogram
- EEG 89.14
89.14 Electroencephalogram`, vol1: [] },
  '89.37': { path: `Spirometry
- 89.37
89.37 Vital capacity determination`, vol1: [] },
  '92.18': { path: `Scan
- bone 92.18
92.18 Other bone scan`, vol1: [] },
  'I21.1': { path: `Infarction
- myocardial
-- acute
--- inferior I21.1
I21.1 Acute transmural myocardial infarction of inferior wall`, vol1: [{"type": "includes", "text": "Acute transmural myocardial infarction of inferior wall NOS"}, {"type": "includes", "text": "Inferolateral transmural (Q wave) infarction (acute)"}] },
  'I21.0': { path: `Infarction
- myocardial
-- acute
--- anterior I21.0
I21.0 Acute transmural myocardial infarction of anterior wall`, vol1: [{"type": "includes", "text": "Acute transmural myocardial infarction of anterior wall NOS"}] },
  'I21.9': { path: `Infarction
- myocardial
-- acute I21.9
I21.9 Acute myocardial infarction, unspecified`, vol1: [] },
  'I21.4': { path: `Infarction
- myocardial
-- acute
--- subendocardial I21.4
I21.4 Acute subendocardial myocardial infarction`, vol1: [] },
  'I63.9': { path: `Infarction
- cerebral I63.9
I63.9 Cerebral infarction, unspecified`, vol1: [{"type": "includes", "text": "Cerebral infarction NOS"}] },
  'I61.9': { path: `Haemorrhage
- intracranial I61.9
I61.9 Nontraumatic intracranial haemorrhage, unspecified`, vol1: [] },
  'I10': { path: `Hypertension
- essential I10
I10 Essential (primary) hypertension`, vol1: [{"type": "includes", "text": "High blood pressure"}, {"type": "includes", "text": "Hypertension (arterial)(benign)(essential)(malignant)(primary)(systemic)"}, {"type": "excludes", "text": "hypertension involving vessels of brain (I60-I69)"}, {"type": "excludes", "text": "hypertension involving vessels of eye (H35.0)"}] },
  'E11.9': { path: `Diabetes
- type 2 E11.9
E11.9 Type 2 diabetes mellitus without complications`, vol1: [{"type": "includes", "text": "Type 2 diabetes mellitus without complications NOS"}] },
  'E11.3': { path: `Diabetes
- type 2
-- with
--- ophthalmic complication E11.3
E11.3 Type 2 diabetes mellitus with ophthalmic complications`, vol1: [{"type": "note", "text": "Use additional code to identify the complication"}] },
  'E11.2': { path: `Diabetes
- type 2
-- with
--- renal complication E11.2
E11.2 Type 2 diabetes mellitus with renal complications`, vol1: [] },
  'E11.4': { path: `Diabetes
- type 2
-- with
--- neurological complication E11.4
E11.4 Type 2 diabetes mellitus with neurological complications`, vol1: [] },
  'E11.5': { path: `Diabetes
- type 2
-- with
--- peripheral circulatory complication E11.5
E11.5 Type 2 diabetes mellitus with peripheral circulatory complications`, vol1: [] },
  'H36.0': { path: `Retinopathy
- diabetic H36.0
H36.0 Diabetic retinopathy`, vol1: [{"type": "note", "text": "Use additional code (E10-E14 with common fourth character .3) to identify the underlying disease"}] },
  'J13': { path: `Pneumonia
- due to
-- Streptococcus pneumoniae J13
J13 Pneumonia due to Streptococcus pneumoniae`, vol1: [] },
  'J14': { path: `Pneumonia
- due to
-- Haemophilus influenzae J14
J14 Pneumonia due to Haemophilus influenzae`, vol1: [] },
  'J15.0': { path: `Pneumonia
- due to
-- Klebsiella pneumoniae J15.0
J15.0 Pneumonia due to Klebsiella pneumoniae`, vol1: [] },
  'J15.2': { path: `Pneumonia
- due to
-- Staphylococcus J15.2
J15.2 Pneumonia due to staphylococcus`, vol1: [] },
  'J18.1': { path: `Pneumonia
- lobar J18.1
J18.1 Lobar pneumonia, unspecified`, vol1: [{"type": "includes", "text": "Bronchopneumonia NOS"}] },
  'J18.9': { path: `Pneumonia
- unspecified J18.9
J18.9 Pneumonia, unspecified`, vol1: [] },
  'J44.0': { path: `Disease
- pulmonary
-- chronic obstructive
--- with acute lower respiratory infection J44.0
J44.0 Chronic obstructive pulmonary disease with acute lower respiratory infection`, vol1: [] },
  'J44.1': { path: `Disease
- pulmonary
-- chronic obstructive
--- with acute exacerbation J44.1
J44.1 Chronic obstructive pulmonary disease with acute exacerbation`, vol1: [{"type": "includes", "text": "Decompensated COPD"}, {"type": "excludes", "text": "COPD with acute lower respiratory infection (J44.0)"}] },
  'J44.9': { path: `Disease
- pulmonary
-- chronic obstructive
--- unspecified J44.9
J44.9 Chronic obstructive pulmonary disease, unspecified`, vol1: [] },
  'K35.2': { path: `Appendicitis
- acute
-- with peritonitis K35.2
K35.2 Acute appendicitis with generalized peritonitis`, vol1: [{"type": "includes", "text": "Ruptured appendix NOS"}, {"type": "includes", "text": "Acute appendicitis with generalized (diffuse) peritonitis following rupture or perforation of appendix"}] },
  'K35.3': { path: `Appendicitis
- acute
-- with peritoneal abscess K35.3
K35.3 Acute appendicitis with peritoneal abscess`, vol1: [{"type": "includes", "text": "Acute appendicitis with peritoneal abscess"}, {"type": "includes", "text": "Abscess of appendix"}] },
  'K35.8': { path: `Appendicitis
- acute
-- without mention of peritonitis K35.8
K35.8 Other and unspecified acute appendicitis`, vol1: [] },
  'K36': { path: `Appendicitis
- other K36
K36 Other appendicitis`, vol1: [] },
  'K37': { path: `Appendicitis
- unspecified K37
K37 Unspecified appendicitis`, vol1: [] },
  '47.01': { path: `Appendectomy
- laparoscopic 47.01
47.01 Laparoscopic appendectomy`, vol1: [] },
  '47.09': { path: `Appendectomy
- other 47.09
47.09 Other appendectomy`, vol1: [] },
  '47.2': { path: `Drainage
- appendiceal abscess 47.2
47.2 Drainage of appendiceal abscess`, vol1: [] },
  'B95.3': { path: `Streptococcus
- pneumoniae
-- as cause of disease classified elsewhere B95.3
B95.3 Streptococcus pneumoniae as the cause of diseases classified elsewhere`, vol1: [] },
  'B96.1': { path: `Klebsiella
- pneumoniae
-- as cause of disease classified elsewhere B96.1
B96.1 Klebsiella pneumoniae as the cause of diseases classified elsewhere`, vol1: [] },
  'B96.2': { path: `Escherichia
- coli
-- as cause of disease classified elsewhere B96.2
B96.2 Escherichia coli as the cause of diseases classified elsewhere`, vol1: [] },
  '87.44': { path: `X-ray
- chest
-- routine 87.44
87.44 Routine chest x-ray`, vol1: [] },
  '87.49': { path: `X-ray
- chest
-- other 87.49
87.49 Other x-ray of chest`, vol1: [] },
  '88.76': { path: `Ultrasonography
- abdominal 88.76
88.76 Abdominal ultrasonography`, vol1: [] },
  '88.78': { path: `Ultrasonography
- gravid uterus 88.78
88.78 Diagnostic ultrasound of gravid uterus`, vol1: [] },
  '88.72': { path: `Echocardiography
- cardiac 88.72
88.72 Diagnostic ultrasound of heart`, vol1: [] },
  '89.52': { path: `Electrocardiogram
- routine ECG 89.52
89.52 Electrocardiogram`, vol1: [] },
  '89.65': { path: `Measurement
- arterial blood gases 89.65
89.65 Measurement of arterial blood gases`, vol1: [] },
  '93.94': { path: `Therapy
- nebulizer 93.94
93.94 Respiratory medication administered by nebulizer`, vol1: [] },
  '93.96': { path: `Oxygenation
- other oxygen enrichment 93.96
93.96 Other oxygen enrichment`, vol1: [] },
  '93.91': { path: `Breathing
- intermittent positive pressure (IPPB) 93.91
93.91 Intermittent positive pressure breathing`, vol1: [] },
  '33.22': { path: `Bronchoscopy
- diagnostic 33.22
33.22 Fiber-optic bronchoscopy`, vol1: [] },
  '33.23': { path: `Bronchoscopy
- therapeutic 33.23
33.23 Other bronchoscopy`, vol1: [] },
  '96.04': { path: `Intubation
- endotracheal 96.04
96.04 Insertion of endotracheal tube`, vol1: [] },
  '96.70': { path: `Ventilation
- mechanical
-- continuous 96.70
96.70 Continuous invasive mechanical ventilation`, vol1: [] },
  '90.59': { path: `Examination
- blood
-- chemical 90.59
90.59 Other blood chemistry`, vol1: [] },
  '90.41': { path: `Examination
- sputum
-- culture 90.41
90.41 Bacteriological examination of sputum`, vol1: [] },
  '90.54': { path: `Examination
- blood
-- culture 90.54
90.54 Blood culture`, vol1: [] },
  '91.31': { path: `Examination
- urine
-- routine 91.31
91.31 Urinalysis`, vol1: [] },
  '91.49': { path: `Examination
- histological
-- other 91.49
91.49 Other histological examination`, vol1: [] },
  'H25.1': { path: `Cataract
- senile
-- nuclear H25.1
H25.1 Senile nuclear cataract`, vol1: [] },
  'H25.2': { path: `Cataract
- senile
-- morgagnian H25.2
H25.2 Morgagnian cataract`, vol1: [] },
  'H25.9': { path: `Cataract
- senile
-- unspecified H25.9
H25.9 Senile cataract, unspecified`, vol1: [{"type": "includes", "text": "Senile cataract NOS"}] },
  'H26.0': { path: `Cataract
- infantile
-- and juvenile H26.0
H26.0 Infantile and juvenile cataract`, vol1: [] },
  'H26.1': { path: `Cataract
- senile
-- immature H26.1
H26.1 Cataract, senile, immature`, vol1: [] },
  'H26.9': { path: `Cataract
- unspecified H26.9
H26.9 Cataract, unspecified`, vol1: [] },
  '13.41': { path: `Extraction
- lens
-- phacoemulsification
--- without IOL 13.41
13.41 Phacoemulsification and aspiration of cataract`, vol1: [] },
  '13.71': { path: `Extraction
- lens
-- extracapsular
--- by temporal inferior route 13.71
13.71 Extracapsular extraction of lens by temporal inferior route`, vol1: [] },
  '13.72': { path: `Extraction
- lens
-- phacoemulsification
--- with insertion of intraocular lens prosthesis 13.72
13.72 Phacoemulsification and insertion of intraocular lens prosthesis`, vol1: [{"type": "includes", "text": "Phacoemulsification with insertion of intraocular lens prosthesis (posterior chamber)"}] },
  '74.1': { path: `Caesarean section
- low cervical 74.1
74.1 Low cervical caesarean section`, vol1: [{"type": "includes", "text": "Classical caesarean section"}, {"type": "includes", "text": "Low cervical caesarean section"}] },
  '65.29': { path: `Excision
- ovary
-- local
--- other 65.29
65.29 Other local excision or destruction of ovary`, vol1: [{"type": "includes", "text": "Wedge resection of ovary"}, {"type": "excludes", "text": "biopsy of ovary (65.11-65.13)"}] },
  '65.31': { path: `Salpingo-oophorectomy
- unilateral 65.31
65.31 Unilateral salpingo-oophorectomy`, vol1: [] },
  '65.39': { path: `Oophorectomy
- unilateral 65.39
65.39 Other unilateral oophorectomy`, vol1: [] },
  '65.51': { path: `Oophorectomy
- bilateral 65.51
65.51 Other bilateral oophorectomy`, vol1: [] },
  '65.61': { path: `Salpingo-oophorectomy
- bilateral 65.61
65.61 Bilateral salpingo-oophorectomy`, vol1: [] },
  '73.59': { path: `Delivery
- other manually assisted 73.59
73.59 Other manually assisted delivery`, vol1: [] },
  '75.34': { path: `Monitoring
- fetal
-- intrapartum 75.34
75.34 Other fetal monitoring`, vol1: [] },
  'S00.0': { path: `Injury
- superficial
-- scalp S00.0
S00.0 Superficial injury of scalp`, vol1: [] },
  'S00.1': { path: `Contusion
- eyelid S00.1
S00.1 Contusion of eyelid and periocular area`, vol1: [] },
  'S09.9': { path: `Injury
- head
-- unspecified S09.9
S09.9 Unspecified injury of head`, vol1: [] },
  'S06.0': { path: `Concussion
- S06.0
S06.0 Concussion`, vol1: [] },
  'S06.1': { path: `Injury
- intracranial
-- oedema S06.1
S06.1 Traumatic cerebral oedema`, vol1: [] },
  'S06.4': { path: `Injury
- intracranial
-- epidural haemorrhage S06.4
S06.4 Epidural haemorrhage`, vol1: [] },
  'S06.5': { path: `Haemorrhage
- subdural
-- traumatic S06.5
S06.5 Traumatic subdural haemorrhage`, vol1: [] },
  'S06.6': { path: `Haemorrhage
- subarachnoid
-- traumatic S06.6
S06.6 Traumatic subarachnoid haemorrhage`, vol1: [] },
  'S10.9': { path: `Injury
- superficial
-- neck
--- unspecified S10.9
S10.9 Superficial injury of neck, unspecified`, vol1: [] },
  'S20.0': { path: `Contusion
- breast S20.0
S20.0 Contusion of breast`, vol1: [] },
  'S20.2': { path: `Contusion
- thorax S20.2
S20.2 Contusion of thorax`, vol1: [] },
  'S30.1': { path: `Contusion
- abdominal wall S30.1
S30.1 Contusion of abdominal wall`, vol1: [] },
  'S40.0': { path: `Contusion
- shoulder S40.0
S40.0 Contusion of shoulder and upper arm`, vol1: [] },
  'S50.0': { path: `Contusion
- elbow S50.0
S50.0 Contusion of elbow`, vol1: [] },
  'S60.0': { path: `Contusion
- finger
-- without nail damage S60.0
S60.0 Contusion of finger without damage to nail`, vol1: [] },
  'S70.0': { path: `Contusion
- hip S70.0
S70.0 Contusion of hip`, vol1: [] },
  'S70.1': { path: `Contusion
- thigh S70.1
S70.1 Contusion of thigh`, vol1: [] },
  'S80.0': { path: `Contusion
- knee S80.0
S80.0 Contusion of knee`, vol1: [] },
  'S80.1': { path: `Contusion
- lower leg S80.1
S80.1 Contusion of other and unspecified parts of lower leg`, vol1: [] },
  'S90.3': { path: `Contusion
- toe S90.3
S90.3 Contusion of toe`, vol1: [] },
  'T07': { path: `Injury
- multiple
-- unspecified T07
T07 Unspecified multiple injuries`, vol1: [] },
  'T14.0': { path: `Injury
- superficial
-- unspecified body region T14.0
T14.0 Superficial injury of unspecified body region`, vol1: [] },
  'T14.1': { path: `Wound
- open
-- unspecified body region T14.1
T14.1 Open wound of unspecified body region`, vol1: [] },
  'V29.9': { path: `Accident
- motor vehicle
-- motorcycle
--- unspecified V29.9
V29.9 Motorcycle rider injured in unspecified transport accident`, vol1: [] },
  'V49.9': { path: `Accident
- motor vehicle
-- car occupant
--- unspecified V49.9
V49.9 Car occupant injured in unspecified traffic accident`, vol1: [] },
  'V19.9': { path: `Accident
- pedal cycle
-- unspecified V19.9
V19.9 Pedal cyclist injured in unspecified transport accident`, vol1: [] },
  'W19': { path: `Fall
- unspecified W19
W19 Unspecified fall`, vol1: [] },
  'W18': { path: `Fall
- same level
-- other W18
W18 Other fall on same level`, vol1: [] },
  'X59.9': { path: `Exposure
- unspecified factors
-- unspecified X59.9
X59.9 Exposure to unspecified factor`, vol1: [] },
  'Y92.4': { path: `Place
- occurrence
-- street and highway Y92.4
Y92.4 Street and highway as the place of occurrence`, vol1: [] },
};

// Helper: get path string (backward compat)
function getKnownPath(code) {
  const entry = KNOWN_PATHS[code];
  if (!entry) return null;
  if (typeof entry === "string") return { path: entry, vol1: [] };
  return entry;
}
