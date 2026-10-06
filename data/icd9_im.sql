CREATE TABLE IF NOT EXISTS icd9_im_entries (
 entry_id TEXT PRIMARY KEY, code TEXT NOT NULL, kind TEXT NOT NULL,
 title_extracted TEXT NOT NULL, raw_text TEXT NOT NULL,
 explicit_im_marker INTEGER NOT NULL CHECK (explicit_im_marker IN (0,1)),
 source_file TEXT NOT NULL, source_sha256 TEXT NOT NULL,
 pdf_page INTEGER NOT NULL, review_status TEXT NOT NULL DEFAULT 'draft'
 CHECK (review_status IN ('draft','reviewed'))
);
CREATE INDEX IF NOT EXISTS idx_icd9_im_code ON icd9_im_entries(code);

INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('00.4','category','Adjunct Vascular System Procedures','00.4 Adjunct Vascular System Procedures
Note: These codes can apply to both coronary and peripheral vessels. These codes are to be used in
conjunction with other therapeutic procedure codes to provide additional information on the number of
vessels upon which a procedure was performed and/or the number of stents inserted. As
appropriate, code both the number of vessels operated on (00.40-00.43), and the number of
stents inserted (00.45-00.48).
Code also any:
angioplasty or atherectomy (00.61-00.62, 00.66, 39.50)
endarterectomy (38.10-38.18)
insertion of vascular stent(s) (00.55, 00.63-00.65, 36.06-36.07, 39.90)
other removal of coronary artery obstruction (36.09)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',2,'draft',0,'f2af7b857c690de1d970b484');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('00.45','procedure','Insertion of one vascular stent','00.45 Insertion of one vascular stent
Number of stents, unspecified','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',2,'draft',0,'5ca7e2414c80c88545b2df7a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('00.450','procedure','Insertion of one vascular drug eluting or coated baloon (IM)','00.450 Insertion of one vascular drug eluting or coated baloon (IM)
Number of drug eluting or coated baloon, unspecified (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',2,'draft',1,'7bce468e58ce479782fc50d9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('00.46','procedure','Insertion of two vascular stents','00.46 Insertion of two vascular stents','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',2,'draft',0,'04634ad868198995d829c95a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('00.460','procedure','Insertion of two vascular drug eluting or coated baloon (IM)','00.460 Insertion of two vascular drug eluting or coated baloon (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',2,'draft',1,'fc3f0823d09a412da863b861');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('00.47','procedure','Insertion of three vascular stents','00.47 Insertion of three vascular stents','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',2,'draft',0,'6414f5174d4bd666ddc5db0e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('00.470','procedure','Insertion of three vascular drug eluting or coated baloon (IM)','00.470 Insertion of three vascular drug eluting or coated baloon (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',2,'draft',1,'a8b19aa4785b032e1c7839a1');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('00.48','procedure','Insertion of four or more vascular stents','00.48 Insertion of four or more vascular stents','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',2,'draft',0,'b322609d1643d75c31f777ab');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('00.480','procedure','Insertion of four or more drug eluting or coated baloon (IM)','00.480 Insertion of four or more drug eluting or coated baloon (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',2,'draft',1,'65dcb3c4356eb1798d6f17a6');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('00.6','category','Procedures on blood vessels','00.6 Procedures on blood vessels','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',2,'draft',0,'7042ee0b232f976275b4172a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('00.66','procedure','Percutaneous transluminal coronary angioplasty [PTCA] or coronary atherectomy','00.66 Percutaneous transluminal coronary angioplasty [PTCA] or coronary atherectomy
Balloon angioplasty of coronary artery
Coronary atherectomy
Percutaneous coronary angioplasty NOS
PTCA NOS
Coronary wiring (IM)
Parcutaneous transluminal coronary angioplasty (PTCA) without stenting (IM)
Angioplasty with IVUS guided (IM)
Coronary angioplasty without stenting (IM)
Failed angioplasty (IM)
Intra Coronary or intra vascular wiring (IM)
Rotational atherectomy with rotablation (IM)
Angioplasty with OCT guided (optical coherence tomography) (IM)
Code also any:
injection or infusion of thrombolytic agent (99.10)
insertion of coronary artery stent(s) (36.06-36.07)
intracoronary artery thrombolytic infusion (36.04)
number of vascular stents inserted (00.45-00.48)
number of vessels treated (00.40-00.43)
procedure on vessel bifurcation (00.44)
SuperSaturated oxygen therapy (00.49)
1. OPERATIONS ON THE NERVOUS SYSTEM (01-05)
01      Incision and excision of skull, brain, and cerebral meninges','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',2,'draft',1,'ed4c67cea16b71be1eaffe0f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('01.0','category','Cranial puncture','01.0    Cranial puncture','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',4,'draft',0,'6be1e3eab43a36bf236f1752');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('01.09','procedure','Other cranial puncture','01.09   Other cranial puncture
Aspiration of:
subarachnoid space
subdural space
Cranial aspiration NOS
Puncture of anterior fontanel
Subdural tap (through fontanel)
Endoscopic procedure to establish ventricular drainage (IM)
Endoscopic lavage for ventricular empyema/hemorhage (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',4,'draft',1,'a83c609e37411d57ff389b04');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('01.20','procedure','Cranial implantation or replacement of neurostimulator pulse generator (IM)','01.20   Cranial implantation or replacement of neurostimulator pulse generator (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',4,'draft',1,'e387446d71d007d7d08fdcbe');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('01.24','procedure','Other craniotomy','01.24   Other craniotomy
Cranial:
decompression
exploration
trephination
Craniotomy NOS
Craniotomy with removal of:
epidural abscess
extradural hematoma
foreign body of skull
Excludes: removal of foreign body with incision into brain (01.39)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',4,'draft',0,'1458cba96830d1bdd08804da');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('01.240','procedure','Awake craniotomy(IM)','01.240 Awake craniotomy(IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',4,'draft',1,'bdb096837d2d7f3dc5aefff5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('01.33','procedure','Other incision of brain, evacuation or aspiration of hematoma with endoscopic','01.33   Other incision of brain, evacuation or aspiration of hematoma with endoscopic
assisted(IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',4,'draft',1,'975f234cccb4f96dc2585d90');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('01.34','procedure','Other incision of brain, evacuation or aspiration of hematoma with stereotactic','01.34   Other incision of brain, evacuation or aspiration of hematoma with stereotactic
assisted(IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',4,'draft',1,'55bb1dc2e51e63026ec84f97');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('01.54','procedure','Awake surgery removal brain tumor(IM)','01.54   Awake surgery removal brain tumor(IM)
02      Other operations on skull, brain, and cerebral meninges','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',4,'draft',1,'b17592a3468a58a6b37290ee');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('02.1','category','Repair of cerebral meninges','02.1    Repair of cerebral meninges','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',4,'draft',0,'c63930ba8cd9c8b7980c34ef');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('02.12','procedure','Other repair of cerebral meninges','02.12  Other repair of cerebral meninges
Closure of fistula of cerebrospinal fluid
Dural graft
Repair of encephalocele including synchronous cranioplasty
Repair of meninges NOS
Subdural patch
Repair of encephalocele (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',4,'draft',1,'8e2a7689868d8f4869025fb4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('02.2','category','Ventriculostomy','02.2 Ventriculostomy
Anastomosis of ventricle to:
cervical subarachnoid space
cisterna magna
Insertion of Holter valve
Ventriculocisternal intubation','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',4,'draft',0,'166edabde383813d0661a22c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('02.20','procedure','Endoscopic ventriculostomy (IM)','02.20 Endoscopic ventriculostomy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',5,'draft',1,'fc1c8a308d56cf7a47a36621');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('02.93','procedure','Implantation or replacement of intracranial neurostimulator lead(s)','02.93 Implantation or replacement of intracranial neurostimulator lead(s)
Implantation, insertion, placement, or replacement of intracranial:
brain pacemaker [neuropacemaker]
depth electrodes
epidural pegs
electroencephalographic receiver
foramen ovale electrodes
intracranial electrostimulator
subdural grids
subdural strips
Code also any:
insertion of cranial implantation or replacement of neurostimulator pulse generator
(01.20)
insertion of subcutaneous neurostimulator pulse generator (86.94-86.98)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',5,'draft',0,'2fb42796a6066a8cb038a43a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('02.930','procedure','Implantation of neurostimulator lead into vagus nerve (IM)','02.930 Implantation of neurostimulator lead into vagus nerve (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',5,'draft',1,'873bed3bc19567f74aa4078a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('02.931','procedure','Implantation or replacement of spinal neurostimulator lead(s)(IM)','02.931 Implantation or replacement of spinal neurostimulator lead(s)(IM)
03       Operations on spinal cord and spinal canal structures
Code also any application or administration of an adhesion barrier substance (99.77)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',5,'draft',1,'d28e6e170d0402666f41ef98');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('03.0','category','Exploration and decompression of spinal canal structures','03.0     Exploration and decompression of spinal canal structures','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',5,'draft',0,'51743a116f82fd8fb99684a4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('03.01','procedure','Removal of foreign body from spinal canal','03.01     Removal of foreign body from spinal canal
Endoscopic procedure to establish ventricular drainage (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',5,'draft',1,'1596acb2500e8a5ff29f7eff');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('03.1','category','Division of intraspinal nerve root','03.1     Division of intraspinal nerve root
Rhizotomy
Selective dorsal rhizotomy (IM)
04       Operations on cranial and peripheral nerves','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',5,'draft',1,'b04a1dfb5ba10f358dd50a99');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('04.1','category','Diagnostic procedures on peripheral nervous system','04.1     Diagnostic procedures on peripheral nervous system','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',5,'draft',0,'2d958425501b535adfdabc45');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('04.11','procedure','Closed [percutaneous] [needle] biopsy of cranial or peripheral nerve or','04.11    Closed [percutaneous] [needle] biopsy of cranial or peripheral nerve or
ganglion
Endoscopic biopsy for intraventricular tumor (IM)
Endoscopic biopsy for pineal tumor (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',5,'draft',1,'21407e10676d6994d3ced900');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('04.4','category','Lysis of adhesions and decompression of cranial and peripheral nerves','04.4     Lysis of adhesions and decompression of cranial and peripheral nerves','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',5,'draft',0,'eea696e4f1a71a656bf37947');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('04.41','procedure','Decompression of trigeminal nerve root','04.41     Decompression of trigeminal nerve root','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',5,'draft',0,'f9230c4cea8c00ade15a5d0c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('04.42','procedure','Other cranial nerve decompression','04.42     Other cranial nerve decompression','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',5,'draft',0,'744895f24e5ee2ab4c462f63');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('04.420','procedure','Decompression of optic nerve (IM)','04.420 Decompression of optic nerve (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',5,'draft',1,'ac8aa536c6ba1474691974bf');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('04.421','procedure','Decompression of facial nerve with or without graft (IM)','04.421 Decompression of facial nerve with or without graft (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',6,'draft',1,'aefe623b06b0a0199d18dbca');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('04.7','category','Other cranial or peripheral neuroplasty','04.7     Other cranial or peripheral neuroplasty','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',6,'draft',0,'f9a9cd63704cd8dbfa19113e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('04.74','procedure','Other anastomosis of cranial or peripheral nerve','04.74   Other anastomosis of cranial or peripheral nerve
Anastomose vaskuler ekstracranial (IM)
05       Operations on sympathetic nerves or ganglia
Excludes: paracervical uterine denervation (69.3)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',6,'draft',1,'6aa214013c40958046559442');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('05.1','category','Diagnostic procedures on sympathetic nerves or ganglia','05.1     Diagnostic procedures on sympathetic nerves or ganglia','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',6,'draft',0,'0a2fe18dbe4e0c05bb7e3602');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('05.19','procedure','Other diagnostic procedures on sympathetic nerves or ganglia','05.19   Other diagnostic procedures on sympathetic nerves or ganglia
SSR (Simpaphetic Skin response) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',6,'draft',1,'db491ac0b85fb7ef95588d6c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('05.2','category','Sympathectomy','05.2     Sympathectomy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',6,'draft',0,'83734dc7fddf4ffe8a3cce11');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('05.22','procedure','Cervical sympathectomy','05.22   Cervical sympathectomy
Thoracal Sympathectomy (Bilateral) (IM)
2. OPERATIONS ON THE ENDOCRINE SYSTEM (06-07)
06       Operations on thyroid and parathyroid glands','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',6,'draft',1,'c725802e0ef1c6d55724e5af');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('06.3','category','Other partial thyroidectomy','06.3     Other partial thyroidectomy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',7,'draft',0,'ef5a7c6aca725dca35c50f89');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('06.32','procedure','Endoscopic thyroidectomy (IM)','06.32   Endoscopic thyroidectomy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',7,'draft',1,'fba8bd4a48353e9068ba6f5d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('06.9','category','Other operations on thyroid (region) and parathyroid','06.9     Other operations on thyroid (region) and parathyroid','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',7,'draft',0,'301051786b45e8f2c8e3e508');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('06.96','procedure','Percutaneous ablation of thyroid lesion or tissue (IM)','06.96   Percutaneous ablation of thyroid lesion or tissue (IM)
3. OPERATIONS ON THE EYE (08-16)
12       Operations on iris, ciliary body, sclera, and anterior chamber
Excludes: operations on cornea (11.0-11.99)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',7,'draft',1,'da1959099af1d24176187a3e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('12.7','category','Other procedures for relief of elevated intraocular pressure','12.7     Other procedures for relief of elevated intraocular pressure','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',7,'draft',0,'4a44badcca7026796274260a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('12.71','procedure','Cyclodiathermy','12.71   Cyclodiathermy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',7,'draft',0,'ef65a37394510df0086fe2ea');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('12.72','procedure','Cyclocryotherapy','12.72   Cyclocryotherapy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',7,'draft',0,'77c1333bcf81b9769f43085a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('12.73','procedure','Cyclophotocoagulation','12.73   Cyclophotocoagulation','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',7,'draft',0,'f2306d3e0477c631d3c60a57');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('12.74','procedure','Diminution of ciliary body, not otherwise specified','12.74   Diminution of ciliary body, not otherwise specified','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',7,'draft',0,'03a3f9599ceec259cff17e55');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('12.75','procedure','Glaucoma implant (IM)','12.75   Glaucoma implant (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',7,'draft',1,'1d75ccba82d04b665413189f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('12.79','procedure','Other glaucoma procedures','12.79   Other glaucoma procedures
3A. OTHER MISCELLANEOUS DIAGNOSTIC AND THERAPEUTIC PROCEDURES (17)
17       Other miscellaneous procedures','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',7,'draft',0,'636089f30e7ebd2d7fd3e0e6');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('17.2','category','Laparoscopic bilateral repair of inguinal hernia','17.2     Laparoscopic bilateral repair of inguinal hernia
Excludes: other and open bilateral repair of hernia (53.10-53.17)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',7,'draft',0,'c6435f7a17d646cdd59e37a8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('17.25','procedure','Laparoscopic repair inguinal hernia (IM)','17.25   Laparoscopic repair inguinal hernia (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',7,'draft',1,'840671e48795e621a3bd910c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('17.6','category','Laser interstitial thermal therapy [LITT] under guidance','17.6     Laser interstitial thermal therapy [LITT] under guidance
Focused laser interstitial thermal therapy [f-LITT] under MRI guidance
MRI-guided LITT','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',7,'draft',0,'5e18bd4782a71a77fff221ce');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('17.69','procedure','Laser interstitial thermal therapy (LITT) of lesion or tissue of other and','17.69   Laser interstitial thermal therapy (LITT) of lesion or tissue of other and
unspecified site under guidance
Focused laser interstitial thermal therapy [f-LITT] under MRI guidance
MRI-guided LITT of lesion or tissue of breast
MRI-guided LITT of lesion or tissue of lung
MRI-guided LITT of lesion or tissue of prostate
Magnetic resonance imaging (spectroscopy) of breast (IM)
Magnetic resonance imaging (diffusion weighted imaging) of breast (IM)
Excludes: laser interstitial thermal therapy [LITT] of lesion or tissue of brain under
guidance (17.61)
laser interstitial thermal therapy [LITT] of lesion or tissue of head and neck
under guidance (17.62)
laser interstitial thermal therapy [LITT] of lesion or tissue of liver under
guidance (17.63)
4. OPERATIONS ON THE EAR (18-20)
18       Operations on external ear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',7,'draft',1,'f4f0b2966dc09964f0243cf4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('18.1','category','Diagnostic procedures on external ear','18.1     Diagnostic procedures on external ear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',9,'draft',0,'00b123b5f65a566987986513');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('18.13','procedure','Microscopic examination of external ear (IM)','18.13   Microscopic examination of external ear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',9,'draft',1,'5866107c34995276b01df8e0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('18.14','procedure','Endoscopic examination of external ear (IM)','18.14   Endoscopic examination of external ear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',9,'draft',1,'e7a9f7aaf3a5b696d8afa6d6');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('18.2','category','Excision or destruction of lesion of external ear','18.2     Excision or destruction of lesion of external ear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',9,'draft',0,'d9d1441bf6cac9c1a6d8cee4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('18.22','procedure','Extraction of external cholesteatoma (IM)','18.22   Extraction of external cholesteatoma (IM)
20       Other operations on middle and inner ear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',9,'draft',1,'317257eeb04df3cc63191118');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('20.3','category','Diagnostic procedures on middle and inner ear','20.3     Diagnostic procedures on middle and inner ear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',9,'draft',0,'a7cde13aac50d59a100406e7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('20.33','procedure','Electrical evoked auditory brain stem response (IM)','20.33   Electrical evoked auditory brain stem response (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',9,'draft',1,'4ec8933efa4d3d71ac4f333a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('20.34','procedure','Electrical compound action potential (IM)','20.34   Electrical compound action potential (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',9,'draft',1,'39790f5db2db9555da925b2c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('20.35','procedure','Electrical stapedial reflex threshold (IM)','20.35   Electrical stapedial reflex threshold (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',9,'draft',1,'eb77f6717e88f1c5ba8dc489');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('20.7','category','Incision, excision, and destruction of inner ear','20.7     Incision, excision, and destruction of inner ear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',9,'draft',0,'40a3ead4faf1c592011a8098');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('20.73','procedure','Temporal bone resection (IM)','20.73   Temporal bone resection (IM)
5. OPERATIONS ON THE NOSE, MOUTH, AND PHARYNX (21-29)
21       Operations on nose','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',9,'draft',1,'beb18173afcee853a1821ee7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('21.2','category','Diagnostic procedures on nose','21.2     Diagnostic procedures on nose','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',10,'draft',0,'4c0ec6966965a86c938200b0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('21.21','procedure','Rhinoscopy','21.21    Rhinoscopy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',10,'draft',0,'cbcf776d6e662d2b2e602f6f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('21.22','procedure','Biopsy of nose','21.22    Biopsy of nose','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',10,'draft',0,'8a9540f57f8a7f892af73b9f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('21.23','procedure','Nasoendoskopi (IM)','21.23    Nasoendoskopi (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',10,'draft',1,'a3203d72eeaa305c3533e9e3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('21.29','procedure','Other diagnostic procedures on nose','21.29 Other diagnostic procedures on nose
Excludes: microscopic examination of specimen from nose (90.31-90.39)
nasal:
function study (89.12)
x-ray (87.16)
rhinomanometry (89.12)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',10,'draft',0,'feca331a4533aea31b4c14bd');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('21.290','procedure','Peak nasal inspiratory flowmetry (PNIF) (IM)','21.290 Peak nasal inspiratory flowmetry (PNIF) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',10,'draft',1,'7e6c1a42b2065cb48e4b30c2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('21.291','procedure','Smell test (IM)','21.291 Smell test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',10,'draft',1,'3d46e621f14708523d96410f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('21.292','procedure','Blue light fluorescein test (IM)','21.292 Blue light fluorescein test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',10,'draft',1,'c3a72447b111b5ef7579476a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('21.5','category','Submucous resection of nasal septum','21.5     Submucous resection of nasal septum','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',10,'draft',0,'32e561bcd5d9795eb75adb15');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('21.50','procedure','Functional septoplasty (IM)','21.50 Functional septoplasty (IM)
22       Operations on nasal sinuses','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',10,'draft',1,'4aa3dde7132c3c17425e8663');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.2','category','Intranasal antrotomy','22.2     Intranasal antrotomy
Excludes: antrotomy with external approach (22.31-22.39)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',10,'draft',0,'9ed366deee45d29e747f593e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.20','procedure','Uncinectomy (IM)','22.20 Uncinectomy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',10,'draft',1,'f30af0659d54decc7a8f425e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.200','procedure','Uncinectomy sinistra (IM)','22.200 Uncinectomy sinistra (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',10,'draft',1,'e00ada6f8ad68f720b0afdcd');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.201','procedure','Uncinectomy dextra (IM)','22.201 Uncinectomy dextra (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',10,'draft',1,'39f35bd2516754a6aa93cec6');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.4','category','Frontal sinusotomy and sinusectomy','22.4     Frontal sinusotomy and sinusectomy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',10,'draft',0,'a6da53436856f36d9ae5eb67');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.41','procedure','Frontal sinusotomy','22.41    Frontal sinusotomy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',10,'draft',0,'1ca36ba8e8a6c8bf834c949c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.410','procedure','Frontal sinusotomy sinistra (IM)','22.410 Frontal sinusotomy sinistra (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',10,'draft',1,'90d079295625bf1e373a47ae');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.411','procedure','Frontal sinusotomy dextra (IM)','22.411 Frontal sinusotomy dextra (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',10,'draft',1,'2baa089b6454da2acd61a3ab');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.42','procedure','Frontal sinusectomy','22.42    Frontal sinusectomy
Excision of lesion of frontal sinus
Obliteration of frontal sinus (with fat)
Excludes: biopsy of nasal sinus (22.11-22.12)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',10,'draft',0,'8ae79df3891aa84c9b156016');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.420','procedure','Frontal sinusectomy sinistra (IM)','22.420 Frontal sinusectomy sinistra (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',10,'draft',1,'387d0435b7f2a192ae38f2d5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.421','procedure','Frontal sinusectomy dextra (IM)','22.421 Frontal sinusectomy dextra (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',10,'draft',1,'98917f2dbb8d0e4a353f35ee');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.5','category','Other nasal sinusotomy','22.5     Other nasal sinusotomy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',10,'draft',0,'79d90df457fb397d1162a4e2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.51','procedure','Ethmoidotomy','22.51   Ethmoidotomy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',0,'dcb5e7e1454e7ba84ee4db5d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.510','procedure','Ethmoidotomy sinistra (IM)','22.510 Ethmoidotomy sinistra (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',1,'80cd974b2091dd9b2fbe8b5d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.511','procedure','Ethmoidotomy dextra (IM)','22.511 Ethmoidotomy dextra (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',1,'e48a5ba3f365013dd48cd518');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.52','procedure','Sphenoidotomy','22.52   Sphenoidotomy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',0,'fa1929e23b6a27ccc0c9a5e4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.520','procedure','Sphenoidotomy sinistra (IM)','22.520 Sphenoidotomy sinistra (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',1,'25e611aae383bc4941c09548');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.521','procedure','Sphenoidotomy dextra (IM)','22.521 Sphenoidotomy dextra (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',1,'9c6b6bf457cc26d004ba8b4c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.6','category','Other nasal sinusectomy','22.6     Other nasal sinusectomy
Includes: that with incidental turbinectomy
Excludes: biopsy of nasal sinus (22.11-22.12)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',0,'3d850e264d61526a82582ed6');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.63','procedure','Ethmoidectomy','22.63   Ethmoidectomy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',0,'cfc4c7bdff1be7b936fe95b8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.630','procedure','Ethmoidectomy sinistra (IM)','22.630 Ethmoidectomy sinistra (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',1,'3f5947d6898713ceb7e249f6');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.631','procedure','Ethmoidectomy dextra (IM)','22.631 Ethmoidectomy dextra (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',1,'9467b8231b874a667d2fa7ff');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.64','procedure','Sphenoidectomy','22.64   Sphenoidectomy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',0,'ec350d3b48d19b657924d7bc');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.640','procedure','Sphenoidectomy sinistra (IM)','22.640 Sphenoidectomy sinistra (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',1,'55680176fa3d7b3c1cb60f79');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('22.641','procedure','Sphenoidectomy dextra (IM)','22.641 Sphenoidectomy dextra (IM)
23       Removal and restoration of teeth','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',1,'effe28ba3f48c089afe1fedf');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('23.1','category','Surgical removal of tooth','23.1     Surgical removal of tooth','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',0,'43e0666f22fd051577d38339');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('23.12','procedure','Odontectomy NOS (IM)','23.12   Odontectomy NOS (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',1,'c966eda39b661f0c12ee6677');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('23.13','procedure','Removal of impacted tooth (IM)','23.13   Removal of impacted tooth (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',1,'9052748b0b0d7e4a868e99d8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('23.14','procedure','Tooth extraction with elevationof mucoperiosteal flap (IM)','23.14   Tooth extraction with elevationof mucoperiosteal flap (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',1,'e80e17c7f1c08650397612e7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('23.19','procedure','Other surgical extraction of tooth','23.19   Other surgical extraction of tooth
Odontectomy NOS(IM) to 23.12
Removal of impacted tooth(IM) to 23.13
Tooth extraction with elevation of mucoperiosteal flap (IM) to 23.14
27       Other operations on mouth and face','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',1,'3865e962e5358272ef43c912');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('27.7','category','Operations on uvula','27.7     Operations on uvula','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',0,'a2455eb27e8ccc6a9901c795');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('27.74','procedure','Uvuloplasty (IM)','27.74   Uvuloplasty (IM)
29       Operations on pharynx','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',1,'07c699119023108e45fbb5e1');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('29.1','category','Diagnostic procedures on pharynx','29.1     Diagnostic procedures on pharynx','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',0,'fc1ff3a6dc23a1e4b3348987');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('29.13','procedure','Flexible endoscopic evaluation of swallowing (FEES) (IM)','29.13   Flexible endoscopic evaluation of swallowing (FEES) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',1,'c82657b28f39ad12e72c637c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('29.9','category','Other operations on pharynx','29.9     Other operations on pharynx','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',0,'34c9945dc4549257c5ba6c99');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('29.91','procedure','Dilation of pharynx','29.91   Dilation of pharynx
Dilation of nasopharynx','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',11,'draft',0,'f2c76cd4ab2c11b2625930ac');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('29.910','procedure','Repair of choanal atresia intranasal (IM)','29.910 Repair of choanal atresia intranasal (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',12,'draft',1,'07d51486726f37496183b40a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('29.911','procedure','Repair of choanal atresia transpalatal (IM)','29.911 Repair of choanal atresia transpalatal (IM)
6. OPERATIONS ON THE RESPIRATORY SYSTEM (30-34)
31       Other operations on larynx and trachea','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',12,'draft',1,'468b7123890e84f16791df2e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('31.4','category','Diagnostic procedures on larynx and trachea','31.4     Diagnostic procedures on larynx and trachea','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',13,'draft',0,'3b88403faef9b56bc2a53e8c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('31.42','procedure','Laryngoscopy and other tracheoscopy','31.42   Laryngoscopy and other tracheoscopy
Excludes: that with biopsy (31.43-31.44)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',13,'draft',0,'fa827977826adf91c1e04726');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('31.420','procedure','Stroboscopy (IM)','31.420 Stroboscopy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',13,'draft',1,'1d1da14dcd5db708a180052d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('31.421','procedure','Microlaryngoscopy (IM)','31.421 Microlaryngoscopy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',13,'draft',1,'e9e97d453cdccb516a1a4228');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('31.5','category','Local excision or destruction of lesion or tissue of trachea','31.5     Local excision or destruction of lesion or tissue of trachea
Excludes: biopsy of trachea (31.44-31.45)
laryngotracheal fistulectomy (31.62)
tracheoesophageal fistulectomy (31.73)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',13,'draft',0,'f1787100f2116dd468727f8e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('31.50','procedure','Excision tracheal stenosis and anastomosis; cervical (IM)','31.50 Excision tracheal stenosis and anastomosis; cervical (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',13,'draft',1,'1bce66e84ac046af022b2b3d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('31.51','procedure','Excision tracheal stenosis and anastomosis; cervicothoracic (IM)','31.51 Excision tracheal stenosis and anastomosis; cervicothoracic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',13,'draft',1,'6adcd3abfa4357708567f542');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('31.52','procedure','Excision of tracheal tumor or carcinoma; cervical (IM)','31.52 Excision of tracheal tumor or carcinoma; cervical (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',13,'draft',1,'ddc39c143f4835331ee27706');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('31.53','procedure','Excision of tracheal tumor or carcinoma; thoracic (IM)','31.53 Excision of tracheal tumor or carcinoma; thoracic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',13,'draft',1,'bd09087f7073642f6b58f7b5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('31.7','category','Repair and plastic operations on trachea','31.7     Repair and plastic operations on trachea','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',13,'draft',0,'c66b8b23a7f1b8e53df85613');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('31.71','procedure','Suture of laceration of trachea','31.71   Suture of laceration of trachea','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',13,'draft',0,'29792197ac0afccc521ac176');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('31.711','procedure','Suture of tracheal wound or injury; cervical (IM)','31.711 Suture of tracheal wound or injury; cervical (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',13,'draft',1,'6af3a32de1c5870ca1f7c4cd');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('31.712','procedure','Suture of tracheal wound or injury; intrathoracic (IM)','31.712 Suture of tracheal wound or injury; intrathoracic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',13,'draft',1,'bdadcd524625d677daa31f69');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('31.76','procedure','Tracheoplasty; intrathoracic (IM)','31.76   Tracheoplasty; intrathoracic (IM)
33       Other operations on lung and bronchus','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',13,'draft',1,'5e902cf1c15ee1343f789a5c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('33.23','procedure','Other bronchoscopy','33.23   Other bronchoscopy
Excludes: that for:
aspiration (96.05)
biopsy (33.24, 33.27)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',13,'draft',0,'e5d9e56f568ed53c9c043925');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('33.230','procedure','Rigid bronchoscopy procedure (IM)','33.230 Rigid bronchoscopy procedure (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',13,'draft',1,'d0736131abc731468f053ba3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('33.24','procedure','Closed [endoscopic] biopsy of bronchus','33.24   Closed [endoscopic] biopsy of bronchus
Bronchoscopy (fiberoptic) (rigid) with:
brush biopsy of "lung"
brushing or washing for specimen collection
excision (bite) biopsy
Diagnostic bronchoalveolar lavage (BAL)
Transbronchoscopic needle aspiration [TBNA] of bronchus
Excludes: closed biopsy of lung, other than brush biopsy of "lung" (33.26, 33.27)
mini-bronchoalveolar lavage [mini-BAL] (33.29)
whole lung lavage (33.99)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',13,'draft',0,'950673cc84898d6535613d5e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('33.240','procedure','Endobronchoscopy ultrasound during bronchoscopic theurapetic','33.240 Endobronchoscopy ultrasound during bronchoscopic theurapetic
intervention or diagnostic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',14,'draft',1,'87f8fea14a9380d2f7ef5089');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('33.4','category','Repair and plastic operation on lung and bronchus','33.4     Repair and plastic operation on lung and bronchus','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',14,'draft',0,'949ae0a81c676343f237fa4a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('33.48','procedure','Other repair and plastic operations on bronchus','33.48   Other repair and plastic operations on bronchus
Note : Bronchoplasty; excision stenosis and anastomosis','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',14,'draft',0,'62ca05b67c3ef6085219319c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('33.481','procedure','Carinal reconstruction (IM)','33.481 Carinal reconstruction (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',14,'draft',1,'d4d2d3f3b881d1ad1ebba7a9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('33.9','category','Other operations on lung and bronchus','33.9     Other operations on lung and bronchus','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',14,'draft',0,'94b021592acc26c663ae0ea8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('33.94','procedure','Bronchial dilatation with bronchoscopy (rigid) with or without balloon (IM)','33.94   Bronchial dilatation with bronchoscopy (rigid) with or without balloon (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',14,'draft',1,'897061965982b0798768bb06');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('33.95','procedure','Insertion or replacement of bronchial stent using bronchoscopy (IM)','33.95   Insertion or replacement of bronchial stent using bronchoscopy (IM)
34       Operations on chest wall, pleura, mediastinum, and diaphragm','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',14,'draft',1,'e510d630b4296dc610d48d2a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('34.0','category','Incision of chest wall and pleura','34.0     Incision of chest wall and pleura','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',14,'draft',0,'b7b86b1c43d4b92b06df0dbc');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('34.04','procedure','Insertion of intercostal catheter for drainage','34.04   Insertion of intercostal catheter for drainage
Chest tube
Closed chest drainage
Revision of intercostal catheter (chest tube) (with lysis of adhesions)
Excludes: thoracoscopic drainage of pleural cavity (34.06)
Note : Insertion of indwelling tunneled pleural catheter','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',14,'draft',0,'f566e25a910ca706dee4116d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('34.28','procedure','Other diagnostic procedures on chest wall, pleura, and diaphragm','34.28   Other diagnostic procedures on chest wall, pleura, and diaphragm
Excludes: angiocardiography (88.50-88.58)
aortography (88.42)
arteriography of:
intrathoracic vessels NEC (88.44)
pulmonary arteries (88.43)
microscopic examination of specimen from chest wall, pleura, and diaphragm
(90.41-90.49)
phlebography of:
intrathoracic vessels NEC (88.63)
pulmonary veins (88.62)
radiological examinations of thorax:
C.A.T. scan (87.41)
diaphragmatic x-ray (87.49)
intrathoracic lymphangiogram (87.34)
routine chest x-ray (87.44)
sinogram of chest wall (87.38)
soft tissue x-ray of chest wall NEC (87.39)
tomogram of thorax NEC (87.42)
ultrasonography of thorax 88.73)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',14,'draft',0,'98ebba97629b5e3006cc29b8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('34.281','procedure','Thoracoscopy, surgical; with removal of intrapleural foreign body or','34.281 Thoracoscopy, surgical; with removal of intrapleural foreign body or
fibrin deposit (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',14,'draft',1,'6f6e15cadbcd0de07e50e962');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('34.282','procedure','Thoracoscopy, surgical; with thoracic sympathectomy (IM)','34.282 Thoracoscopy, surgical; with thoracic sympathectomy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',14,'draft',1,'3a0c4edfc79e211c566b17b4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('34.283','procedure','Thoracoscopy, surgical; with pleurodesis (e.g., mechanical or chemical)','34.283 Thoracoscopy, surgical; with pleurodesis (e.g., mechanical or chemical)
(IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',14,'draft',1,'52abbf0014140ff01e1270bf');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('34.284','procedure','Thoracoscopy, surgical; with control of traumatic hemorrhage (IM)','34.284 Thoracoscopy, surgical; with control of traumatic hemorrhage (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',14,'draft',1,'ca7bad40616825bdeae8fc7d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('34.285','procedure','Thoracoscopy, diagnostic; mediastinal space, with biopsy (IM)','34.285 Thoracoscopy, diagnostic; mediastinal space, with biopsy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',15,'draft',1,'72caed6ab46a73e054a06b8a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('34.286','procedure','Thoracoscopy, surgical; with excision of mediastinal cyst, tumor, or','34.286 Thoracoscopy, surgical; with excision of mediastinal cyst, tumor, or
mass (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',15,'draft',1,'a975cdff84a8a1d4d49f4412');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('34.29','procedure','Other diagnostic procedures on mediastinum','34.29   Other diagnostic procedures on mediastinum
Excludes: mediastinal:
pneumogram (87.33)
x-ray NEC (87.49)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',15,'draft',0,'fadd4952acc8705aa29e99f8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('34.291','procedure','Mediastinotomy with exploration or biopsy; cervical approach (IM)','34.291 Mediastinotomy with exploration or biopsy; cervical approach (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',15,'draft',1,'d6442a63063e7973c293e93f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('34.292','procedure','Mediastinotomy with exploration or biopsy; transthoracic approach (IM)','34.292 Mediastinotomy with exploration or biopsy; transthoracic approach (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',15,'draft',1,'8e77c643822cfa7f4aa622d2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('34.3','category','Excision or destruction of lesion or tissue of mediastinum','34.3    Excision or destruction of lesion or tissue of mediastinum
Note : Excision of mediastinal tumor (open, transthoracic approach (thoracotomy/sternotomy))
Excludes: biopsy of mediastinum (34.25-34.26)
mediastinal fistulectomy (34.73)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',15,'draft',0,'244e29f831d6dda246642b6a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('34.4','category','Excision or destruction of lesion of chest wall','34.4    Excision or destruction of lesion of chest wall
Excision of lesion of chest wall NOS (with excision of ribs)
Note : Excision of chest wall tumor involving ribs, with reconstruction
Excludes: biopsy of chest wall (34.23)
costectomy not incidental to thoracic procedure (77.91)
excision of lesion of:
breast (85.20-85.25)
cartilage (80.89)
skin (86.2-86.3)
fistulectomy (34.73)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',15,'draft',0,'3c271984844aa9c9c316b481');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('34.41','procedure','Radical resection of sternum (IM)','34.41 Radical resection of sternum (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',15,'draft',1,'de5b72a7a418a899587a83cc');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('34.7','category','Repair of chest wall','34.7     Repair of chest wall','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',15,'draft',0,'dc33c1afbcf659a21e0c1e09');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('34.74','procedure','Repair of pectus deformity','34.74  Repair of pectus deformity
Repair of:
pectus carinatum (with implant)
pectus excavatum (with implant)
Note : Reconstructive repair of pectus excavatum or carinatum; open
Reconstructive repair of pectus, minimally invasive approach (Nuss procedure),
without thoracoscopy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',15,'draft',0,'61b97301febcb55fbe83bff3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('34.75','procedure','Reconstructive repair of pectus, minimally invasive approach (nuss procedure),','34.75   Reconstructive repair of pectus, minimally invasive approach (nuss procedure),
with thoracoscopy (IM)
7. OPERATIONS ON THE CARDIOVASCULAR SYSTEM (35-39)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',15,'draft',1,'2ceca266011362320e9b6db7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('35.2','category','Replacement of heart valve','35.2     Replacement of heart valve','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',16,'draft',0,'d80490c5489f084c86e874b7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('35.21','procedure','Replacement of aortic valve with tissue graft','35.21    Replacement of aortic valve with tissue graft
Repair of aortic valve with tissue graft (autograft) (heterograft) (homograft)
Surgical procedure of the Aortic Root with Valve Procedure (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',16,'draft',1,'d1c67c8781297464b33e193b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('35.22','procedure','Other replacement of aortic valve','35.22    Other replacement of aortic valve
Repair of aortic valve with replacement:
NOS
prosthetic (partial) (synthetic) (total)
Pulmonary valve replacement percutaneous (IM)
TAVI percutaneous (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',16,'draft',1,'5c40e1bef2858c108c73e5e2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('35.24','procedure','Other replacement of mitral valve','35.24    Other replacement of mitral valve
Repair of mitral valve with replacement:
NOS
prosthetic (partial) (synthetic) (total)
Mitral clipping percutaneus (IM)
Mitral valve replacement percutaneus (IM)
Excludes: percutaneous repair with implant or leaflet clip (35.97)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',16,'draft',1,'2cd7ba2afcb8b16d81d157db');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('35.29','procedure','Multiple valve repair / replacement (IM)','35.29      Multiple valve repair / replacement (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',16,'draft',1,'bb1b0e840a8fbd88f304b8a2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('35.3','category','Operations on structures adjacent to heart valves','35.3     Operations on structures adjacent to heart valves','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',16,'draft',0,'de7f0d7d50faffc6bc1d5738');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('35.34','procedure','Infundibulectomy','35.34    Infundibulectomy
Right ventricular infundibulectomy
Resection of Intracardiac Mass (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',16,'draft',1,'0c02916c6c84ac80e06ac582');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('35.4','category','Production of septal defect in heart','35.4     Production of septal defect in heart','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',16,'draft',0,'1497d77e73a6766dc5b06533');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('35.41','procedure','Enlargement of existing atrial septal defect','35.41    Enlargement of existing atrial septal defect
Rashkind procedure
Septostomy (atrial) (balloon)
Balloon Atrial Septostomy (BAS) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',16,'draft',1,'537028c0cc51a2ab0c439f95');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('35.5','category','Repair of atrial and ventricular septa with prosthesis','35.5     Repair of atrial and ventricular septa with prosthesis','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',16,'draft',0,'bd73e1cc8feff4633a526fd3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('35.52','procedure','Repair of atrial septal defect with prosthesis, closed technique','35.52    Repair of atrial septal defect with prosthesis, closed technique
Insertion of atrial septal umbrella [King-Mills]
Atrial Septal Defect closure with device (IM)
Atrial Septal Stenting (IM)
Patent Foramen Ovale closure with device (IM)
Sinus Valsava Repair (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',16,'draft',1,'279f4ccbcf701cb4349d99fa');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('35.55','procedure','Repair of ventricular septal defect with prosthesis, closed technique','35.55    Repair of ventricular septal defect with prosthesis, closed technique
VSD closure with device','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',16,'draft',0,'b29ab56850d513eaa9994f6b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('35.7','category','Other and unspecified repair of atrial and ventricular septa','35.7     Other and unspecified repair of atrial and ventricular septa','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',16,'draft',0,'058c8f370f508ada107bdd9a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('35.71','procedure','Other and unspecified repair of atrial septal defect','35.71  Other and unspecified repair of atrial septal defect
Repair NOS:
atrial septum
foramen ovale (patent)
ostium secundum defect
Replacement of unspecified heart valve with Sinus Valsava Repair (IM)
Excludes: that associated with repair of:
atrial septal defect associated with valvular ventricular septal defects (35.73)
endocardial cushion defect (35.73)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',16,'draft',1,'651dc17746c88c323b38f002');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('35.72','procedure','Other and unspecified repair of ventricular septal defect','35.72   Other and unspecified repair of ventricular septal defect
Repair NOS:
supracristal defect
ventricular septum
Repair of :
Ventricular Septal defect with prosthesis open technique with Sinus Valsava
Repair (IM)
Ventricular septal defect and resection and anastomosis of aorta (IM)
Excludes: that associated with repair of:
endocardial cushion defect (35.73)
ventricular septal defect associated with valvular and atrial septal defects (35.73)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',17,'draft',1,'f7f54da3a1ce74d8f63f4228');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('35.9','category','Other operations on valves and septa of heart','35.9     Other operations on valves and septa of heart','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',17,'draft',0,'579b7134d39cb437b10125bb');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('35.92','procedure','Creation of conduit between right ventricle and pulmonary artery','35.92   Creation of conduit between right ventricle and pulmonary artery
Creation of shunt between right ventricle and (distal) pulmonary artery
Rastelli''s Procedure (IM)
Excludes: that associated with total repair of truncus arteriosus (35.83)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',17,'draft',1,'668d0ec2ae8b5112144f221f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('35.94','procedure','Creation of conduit between atrium and pulmonary artery','35.94   Creation of conduit between atrium and pulmonary artery
Fontan’s procedure (IM)
Norwood''s Procedure (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',17,'draft',1,'782eeb1cb4dc3a27418229db');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('35.96','procedure','Percutaneous balloon valvuloplasty','35.96   Percutaneous balloon valvuloplasty
Balloon dilation of valve
Balloon Aorta Valvulopasty (IM)
Balloon Mitral Valvuloplasty (IM)
Balloon Pulmonal Valvuloplasty
Transcatheter Pulmonary Valvotomy & Balloon Dilation (IM)
36       Operations on vessels of heart','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',17,'draft',1,'0d15633d911a27e0852d545b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('36.05','procedure','Insertion Of Drug eluting or coated Balloon (IM)','36.05 Insertion Of Drug eluting or coated Balloon (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',17,'draft',1,'57c646fe7efd2ac9e1374586');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('36.050','procedure','Insertion Of Drug eluting or coated Balloon of Coronary (IM)','36.050 Insertion Of Drug eluting or coated Balloon of Coronary (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',17,'draft',1,'0507c063336e36777458d936');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('36.051','procedure','Insertion Of Drug eluting or coated Balloon of Non Coronary (IM)','36.051 Insertion Of Drug eluting or coated Balloon of Non Coronary (IM)
Code also any:
number of vascular stents inserted (00.45-00.48) (IM)
number of vessels treated (00.40-00.43) (IM)
open chest coronary artery angioplasty (36.03) (IM)
percutaneous transluminal coronary angioplasty [PTCA] or coronary atherectomy
(00.66) (IM)
procedure on vessel bifurcation (00.44) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',17,'draft',1,'c5be3a0122155d0040077c10');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('36.07','procedure','Insertion of drug-eluting coronary artery stent(s)','36.07   Insertion of drug-eluting coronary artery stent(s)
Endograft(s)
Endovascular graft(s)
Stent graft(s)
Complex chronic total occlusion procedures antegrade approached (IM)
Complex chronic total occlusion procedures retrograde approached (IM)
Coronary bifurcation procedures (IM)
Drug eluting or coated Balloon angioplasty (IM)
Code also any:
number of vascular stents inserted (00.45-00.48)
number of vessels treated (00.40-00.43)
open chest coronary artery angioplasty (36.03)
percutaneous transluminal coronary angioplasty [PTCA] or coronary atherectomy
(00.66)
procedure on vessel bifurcation (00.44)
Excludes: drug-coated stents, e.g., heparin coated (36.06)
insertion of non-drug-eluting coronary artery stent(s) (36.06)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',17,'draft',1,'a24d2b64139e38099873a9f7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('36.1','category','Bypass anastomosis for heart revascularization','36.1     Bypass anastomosis for heart revascularization','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',18,'draft',0,'b1e80574f4f10239b01764f7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('36.10','procedure','Aortocoronary bypass for heart revascularization, not otherwise specified','36.10     Aortocoronary bypass for heart revascularization, not otherwise specified
Direct revascularization:
cardiac with catheter stent, prosthesis, or vein graft
coronary with catheter stent, prosthesis, or vein graft
heart muscle with catheter stent, prosthesis, or vein graft
myocardial with catheter stent, prosthesis, or vein graft
Heart revascularization NOS','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',18,'draft',0,'ece0fbbd288dfed18035fab6');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('36.100','procedure','Aortocoronary bypass for heart revascularization with surgical','36.100 Aortocoronary bypass for heart revascularization with surgical
ventricular restoration (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',18,'draft',1,'09b463646d2f43a3d68a6b1a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('36.101','procedure','Aortocoronary bypass for heart revascularization with IVS Rupture','36.101 Aortocoronary bypass for heart revascularization with IVS Rupture
Repair (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',18,'draft',1,'4966b65b601ae1c521d23462');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('36.18','procedure','Aortocoronary bypass for heart revascularization with valve procedure (IM)','36.18     Aortocoronary bypass for heart revascularization with valve procedure (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',18,'draft',1,'ae3971f71f94bd39bcd3482a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('36.2','category','Heart revascularization by arterial implant','36.2     Heart revascularization by arterial implant
Implantation of:
aortic branches [ascending aortic branches] into heart muscle
blood vessels into myocardium
internal mammary artery [internal thoracic artery] into:
heart muscle
myocardium
ventricle
ventricular wall
Indirect heart revascularization NOS
Surgical procedure of the Aortic Root with bypass anastomosis for heart revascularization
(IM)
Extracorporeal Shockwafe Myocardial Revascularization (ESMR) (IM)
37       Other operations on heart and pericardium','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',18,'draft',1,'85f8efdd471490a4e8fe736e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.2','category','Diagnostic procedures on heart and pericardium','37.2     Diagnostic procedures on heart and pericardium','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',18,'draft',0,'a3f8389543048176d78a2c4d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.25','procedure','Biopsy of heart','37.25     Biopsy of heart
Biopsy of heart with general anaesthesia (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',18,'draft',1,'e72afc01f8dddac7fa113073');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.27','procedure','Cardiac mapping','37.27     Cardiac mapping
Cardiac mapping, with general anaesthesia (IM)
Other nonoperative cardiac diagnostic procedure ( Ajmaline) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',18,'draft',1,'e5529bf6d5b90a377414cc98');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.3','category','Pericardiectomy and excision of lesion of heart','37.3     Pericardiectomy and excision of lesion of heart','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',19,'draft',0,'2ac92c3486ca61c3cb847691');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.33','procedure','Excision or destruction of other lesion or tissue of heart, open approach','37.33    Excision or destruction of other lesion or tissue of heart, open approach
Ablation or incision of heart tissue (cryoablation) (electrocurrent) (laser)
(microwave) (radiofrequency) (resection) (ultrasound), open chest
approach
Cox-maze procedure
Maze procedure
That by median sternotomy
That by thoracotomy without use of thoracoscope
Surgical Ablation for Atrial Fibrillation (MAZE) (IM)
Excludes: ablation, excision or destruction of lesion or tissue of heart:
endovascular approach (37.34)
thoracoscopic approach (37.37)
excision or destruction of left atrial appendage (LAA) (37.36)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',19,'draft',1,'59339bf3611db940c5dc5939');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.34','procedure','Excision or destruction of other lesion or tissue of heart, endovascular','37.34     Excision or destruction of other lesion or tissue of heart, endovascular
approach
Ablation of heart tissue (cryoablation) (electrocurrent) (laser) (microwave)
(radiofrequency) (ultrasound), via peripherally inserted catheter
Modified maze procedure, percutaneous approach
Endovenous ablation :
Endovenous Ablation for Arteriovenous Malformation (IM)
Endovenous Ablation for Varicose Veins (IM)
Excludes: ablation, excision or destruction of lesion or tissue of heart:
open approach (37.33)
thoracoscopic approach (37.37)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',19,'draft',1,'96974630d486172ad9870eda');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.340','procedure','Catheter based invasive electrophysiologic 3-dimensional cryo-','37.340 Catheter based invasive electrophysiologic 3-dimensional cryo-
ablation (IM)
Catheter based invasive electrophysiologic 3-dimensional cryo-ablation
with general anaesthesia(IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',19,'draft',1,'f399c77e6ac773b75a2afec5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.341','procedure','Catheter based invasive electrophysiologic 3-dimensional','37.341 Catheter based invasive electrophysiologic 3-dimensional
radiofrequency ablation (IM)
Catheter based invasive electrophysiologic 3-dimensional
radiofrequency ablation with general anaesthesia (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',19,'draft',1,'0dfdf85c89206a2f731cab24');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.342','procedure','Catheter based invasive electrophysiologic cryo-ablation (IM)','37.342 Catheter based invasive electrophysiologic cryo-ablation (IM)
Catheter based invasive electrophysiologic cryo-ablation with general
anaesthesia (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',19,'draft',1,'6886ea35d25cd3547918a9a1');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.7','category','Insertion, revision, replacement, and removal of leads; insertion of temporary','37.7 Insertion, revision, replacement, and removal of leads; insertion of temporary
pacemaker system; or revision of cardiac device pocket
Code also any insertion and replacement of pacemaker device (37.80-37.87)
Excludes: implantation or replacement of transvenous lead [electrode] into left
ventricular cardiac venous system (00.52)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',19,'draft',0,'aefafd6f0facd02464b16e57');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.70','procedure','Initial insertion of lead [electrode], not otherwise specified','37.70    Initial insertion of lead [electrode], not otherwise specified
Initial insertion of leadless pacemaker (IM)
Initial insertion of leadless pacemaker, with general anaesthesia (IM)
Excludes: insertion of temporary transvenous pacemaker system (37.78)
replacement of atrial and/or ventricular lead(s) (37.76)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',19,'draft',1,'29780ed7390ecd949e2a2ab4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.76','procedure','Replacement of transvenous atrial and/or ventricular lead(s) [electrode]','37.76    Replacement of transvenous atrial and/or ventricular lead(s) [electrode]
Removal or abandonment of existing transvenous or epicardial lead(s) with
transvenous lead(s) replacement
Removal of lead(s) (electrodes) with replacement (IM)
Removal of lead(s) (electrodes) with replacement and general anaesthesia (IM)
Excludes: replacement of epicardial lead [electrode] (37.74)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',19,'draft',1,'ff40b0949328acdf97071d6c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.77','procedure','Removal of lead(s) [electrode] without replacement','37.77   Removal of lead(s) [electrode] without replacement
Removal:
epicardial lead (transthoracic approach)
transvenous lead(s)
lead(s) (electrodes) without replacement, with general anaesthesia (IM)
Excludes: removal of temporary transvenous pacemaker system -- omit code
that with replacement of:
atrial and/or ventricular lead(s) [electrode] (37.76)
epicardial lead [electrode] (37.74)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',20,'draft',1,'c37b69164210d88bb733d28a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.78','procedure','Insertion of temporary transvenous pacemaker system (TPM)','37.78   Insertion of temporary transvenous pacemaker system (TPM)
TPM in neonatus (IM)
TPM in pediatrik (IM)
Excludes: intraoperative cardiac pacemaker (39.64)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',20,'draft',1,'8a65dfdfefcbeb273461d947');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.79','procedure','Revision or relocation of cardiac device pocket','37.79    Revision or relocation of cardiac device pocket
Debridement and reforming pocket (skin and subcutaneous tissue)
Insertion of loop recorder
Relocation of pocket [creation of new pocket] pacemaker or CRT-P
Removal of cardiac device/pulse generator without replacement
Removal of the implantable hemodynamic pressure sensor (lead) and monitor
device
Removal without replacement of cardiac resynchronization defibrillator device
Repositioning of implantable hemodynamic pressure sensor (lead) and monitor
device
Repositioning of pulse generator
Revision of cardioverter/defibrillator (automatic) pocket
Revision of pocket for intracardiac hemodynamic monitoring
Revision or relocation of CRT-D pocket
Revision or relocation of pacemaker, defibrillator, or other implanted cardiac device
pocket
Insertion of implantable loop recorder (ILR) (IM)
Insertion of implantable loop recorder (ILR), with general anaesthesia (IM)
revision or relocation of cardiac device procedure include ILR (IM)
Revision or relocation of pacemaker pocket, with general anaesthesia (IM)
Revision or removal of pacemaker device, with general anaesthesia (IM)
Excludes: removal of loop recorder (86.05)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',20,'draft',1,'308f59907eab1139a2f650f6');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.8','category','Insertion, replacement, removal, and revision of pacemaker device','37.8   Insertion, replacement, removal, and revision of pacemaker device
Note: Device testing during procedure - omit code
Code also any lead insertion, lead replacement, lead removal and/or lead revision (37.70-37.77)
Excludes: implantation of cardiac resynchronization pacemaker [CRT-P] (00.50)
implantation or replacement of cardiac resynchronization pacemaker pulse generator only
[CRT-P] (00.53)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',20,'draft',0,'6f28b7a2a68dfa46857559ea');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.81','procedure','Initial insertion of single-chamber device, not specified as rate responsive','37.81   Initial insertion of single-chamber device, not specified as rate responsive
Initial insertion of single chamber leadless (IM)
Excludes: replacement of existing pacemaker device (37.85-37.87)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',20,'draft',1,'d22532f9af84b1843ea65519');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.82','procedure','Initial insertion of single-chamber device, rate responsive','37.82   Initial insertion of single-chamber device, rate responsive
Rate responsive to physiologic stimuli other than atrial rate
Initial insertion of single chamber pacemaker , MRI (IM)
Initial insertion of single-chamber pacemaker, rate-responsive, MRI-level (IM)
Initial insertion of single-chamber pacemaker, rate-responsive, MRI-level with
general anaesthesia (IM)
Initial insertion of single-chamber pacemaker, rate-responsive, with general
anaesthesia (IM)
Excludes: replacement of existing pacemaker device (37.85-37.87)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',21,'draft',1,'f39ff1faed6e4de8f08aed66');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.83','procedure','Initial insertion of dual-chamber device','37.83   Initial insertion of dual-chamber device
Atrial ventricular sequential device
Initial insertion of dual-chamber device (Initial insertion of dual-chamber
pacemaker, with general anaesthesia) (IM)
initial insertion dual chamber pacemaker, MRI (IM)
Initial insertion of dual-chamber pacemaker, MRI-level (IM)
Initial insertion of dual-chamber pacemaker, MRI-level, with general anaesthesia
(IM)
Excludes: replacement of existing pacemaker device (37.85-37.87)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',21,'draft',1,'45733b1ed26186e0331d36fe');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.85','procedure','Replacement of any type pacemaker device with single-chamber device, not','37.85   Replacement of any type pacemaker device with single-chamber device, not
specified as rate responsive
Replacement of any type of pacemaker device with single-chamber devive, rate
responsive, with general anaesthesia (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',21,'draft',1,'3d90cb289b23e40bc2927e3a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.87','procedure','Replacement of any type pacemaker device with dual-chamber device','37.87   Replacement of any type pacemaker device with dual-chamber device
Atrial ventricular sequential device
Replacement of any type of pacemaker device with dual-chamber device, MRI-level
(IM)
Replacement of any type of pacemaker device with dual-chamber device, MRI-level,
with general anaesthesia (IM)
Replacement of any type of pacemaker device with dual-chamber device, MRI-level,
with general anaesthesia (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',21,'draft',1,'00481be25d72b88ffc955a46');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.9','category','Other operations on heart and pericardium','37.9     Other operations on heart and pericardium','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',21,'draft',0,'dfe841efe91a5d5dc17acd1a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.90','procedure','Insertion of left atrial appendage device','37.90   Insertion of left atrial appendage device
Left atrial filter
Left atrial occluder
Transseptal catheter technique
Insertion of left atrial appendage device, with general anaesthesia (IM)
Insertion of left atrial appendage device, with transesophageal echocardiography (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',21,'draft',1,'b02792b1b668f7bc007b2937');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.94','procedure','Implantation or replacement of automatic cardioverter/defibrillator, total system','37.94   Implantation or replacement of automatic cardioverter/defibrillator, total system
[AICD]
Implantation of defibrillator with leads (epicardial patches), formation of pocket
(abdominal fascia) (subcutaneous), any transvenous leads, intraoperative
procedures for evaluation of lead signals, and obtaining defibrillator threshold
measurements
Techniques:
lateral thoracotomy
medial sternotomy
subxiphoid procedure
Implantation of automatic cardioverter/defibrillator pulse generator only, with general
anaesthesia (IM)
Implantation of dual chamber cardioverter/defibrillator (IM)
Implantation of subcutaneous cardioverter/defibrillator (IM)
Implantation of subcutaneous cardioverter/defibrillator, with general anaesthesia (IM)
Implantation or replacement of automatic cardioverter/ defibrillator, total system
(AICD), with general (IM)
initial insertion of dual chamber ICD *(IM)
initial insertion of subcutaenus defibrilator ICD *(IM)
Implantation or replacement of transvenous lead (electrode) into left ventricular
coronary venous system, with general anaesthesia (IM)
Note: Device testing during procedure - omit code
Code also extracorporeal circulation, if performed (39.61)
Code also any concomitant procedure [e.g., coronary bypass (36.10-36.19) or CCM, total
system (17.51)]
Excludes: implantation of cardiac resynchronization defibrillator, total system [CRT-
D] (00.51)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',21,'draft',1,'56694379ffa56ea185f2d4d2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('37.96','procedure','Implantation of automatic cardioverter/defibrillator pulse generator only','37.96   Implantation of automatic cardioverter/defibrillator pulse generator only
Implantation of dual chamber cardioverter/defibrillator, with general anaesthesia (IM)
Note: Device testing during procedure - omit code
Excludes: implantation or replacement of cardiac resynchronization defibrillator,
pulse generator
device only [CRT-D] (00.54)
38        Incision, excision, and occlusion of vessels','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',22,'draft',1,'b2b45d43587f81c2c74c9956');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.0','category','Incision of vessel','38.0      Incision of vessel
[0-9]
Embolectomy
Thrombectomy
Hybrid Procedure (IM)
Intraarterial thrombolysis (IM)
Hybrid phlebectomy and endovenous ablation (IM)
Excludes: endovascular removal of obstruction from head and neck vessel(s) (39.74)
puncture or catheterization of any:
artery (38.91, 38.98)
vein (38.92-38.95, 38.99)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',23,'draft',1,'b4473fddaaa824cac5f3d780');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.3','category','Resection of vessel with anastomosis','38.3      Resection of vessel with anastomosis
[0-9]
Angiectomy
Excision of:
aneurysm (arteriovenous) with anastomosis
blood vessel (lesion) with anastomosis','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',23,'draft',0,'1b86b4322af21bd8fb5d5a71');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.300','procedure','Resection of vessel with anastomosis, unspecified site, without clip (IM)','38.300 Resection of vessel with anastomosis, unspecified site, without clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',23,'draft',1,'5e1fe3b0ce0cf086b66c95e2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.301','procedure','Resection of vessel with anastomosis, unspecified site, with clip (IM)','38.301 Resection of vessel with anastomosis, unspecified site, with clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',23,'draft',1,'9ab0307ed1f69758f38cbe73');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.310','procedure','Resection of intracranial vessels with anastomosis, without clip (IM)','38.310 Resection of intracranial vessels with anastomosis, without clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',23,'draft',1,'0e23796e8f044cfd84e7bd2c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.311','procedure','Resection of intracranial vessels with anastomosis, with clip (IM)','38.311 Resection of intracranial vessels with anastomosis, with clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',23,'draft',1,'41a05936d049c253447bed54');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.320','procedure','Resection of other vessels of head and neck with anastomosis, without','38.320 Resection of other vessels of head and neck with anastomosis, without
clip IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',23,'draft',0,'5e44f519d789001f4dbc6429');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.321','procedure','Resection of other vessels of head and neck with anastomosis, with','38.321 Resection of other vessels of head and neck with anastomosis, with
clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',23,'draft',1,'c37f3ef15cbae776488081e7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.330','procedure','Resection of upper limb vessels with anastomosis, without clip (IM)','38.330 Resection of upper limb vessels with anastomosis, without clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',23,'draft',1,'d77de6766171ff6d21bddc44');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.331','procedure','Resection of intracranial vessels with anastomosis, with clip (IM)','38.331 Resection of intracranial vessels with anastomosis, with clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',23,'draft',1,'f7a5b8135e5ec63eb39ed6ac');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.340','procedure','Resection of aorta with anastomosis, without clip (IM)','38.340 Resection of aorta with anastomosis, without clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',23,'draft',1,'a45fdc849b30c0e50298d7e2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.341','procedure','Resection of aorta with anastomosis, with clip (IM)','38.341 Resection of aorta with anastomosis, with clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',23,'draft',1,'afcba2fd64f09bc59bdffeb5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.350','procedure','Resection of other thoracic vessels with anastomosis, without clip (IM)','38.350 Resection of other thoracic vessels with anastomosis, without clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',23,'draft',1,'d4f7a23f81770f50a59f6061');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.351','procedure','Resection of other thoracic vessels with anastomosis, with clip (IM)','38.351 Resection of other thoracic vessels with anastomosis, with clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',23,'draft',1,'9678659919fa9d2d5f681303');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.360','procedure','Resection of abdominal arteries with anastomosis, without clip (IM)','38.360 Resection of abdominal arteries with anastomosis, without clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',23,'draft',1,'20853d07d2b36a0a6e863c2c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.361','procedure','Resection of abdominal arteries with anastomosis, with clip (IM)','38.361 Resection of abdominal arteries with anastomosis, with clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',23,'draft',1,'4c437dfef7aed39cb3bd6dcb');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.370','procedure','Resection of abdominal veins with anastomosis, without clipclip (IM)','38.370 Resection of abdominal veins with anastomosis, without clipclip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',23,'draft',1,'90da74f894d9d236367d91c3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.371','procedure','Resection of abdominal veins with anastomosis, with clip (IM)','38.371 Resection of abdominal veins with anastomosis, with clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',23,'draft',1,'eaa4f3bf9d6eb414939ed515');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.380','procedure','Resection of lower limb arteries with anastomosis, without clip (IM)','38.380 Resection of lower limb arteries with anastomosis, without clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',23,'draft',1,'101d24f80e1e2cd2d79e0880');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.381','procedure','Resection of lower limb arteries with anastomosis, with clip (IM)','38.381 Resection of lower limb arteries with anastomosis, with clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',23,'draft',1,'37e1f9031d4e838d3c21f8e6');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.390','procedure','Resection of lower limb veins with anastomosis, without clip (IM)','38.390 Resection of lower limb veins with anastomosis, without clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',1,'5e50033bc23f68f4b6d26422');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.391','procedure','Resection of lower limb veins with anastomosis, with clip (IM)','38.391 Resection of lower limb veins with anastomosis, with clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',1,'4178dc02bb818ac6f1627fa2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.6','category','Other excision of vessel','38.6      Other excision of vessel
[0-9]
Excision of blood vessel (lesion) NOS
Phlebectomy
Excludes: excision of vessel for aortocoronary bypass (36.10-36.14)
excision with:
anastomosis (38.30-38.39)
graft replacement (38.40-38.49)
implant (38.40-38.49)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',0,'023c9340b440d688f9a02307');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.600','procedure','Other excision of vessels, unspecified site, without clip (IM)','38.600 Other excision of vessels, unspecified site, without clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',1,'c323345db9300911fbb1d1b3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.601','procedure','Other excision of vessels, unspecified site, with clip (IM)','38.601 Other excision of vessels, unspecified site, with clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',1,'9479ee51d8da90e86a7a7428');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.610','procedure','Other excision of vessels, intracranial vessels, without clip (IM)','38.610 Other excision of vessels, intracranial vessels, without clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',1,'ab40ce83e20cdd2d6eb5264b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.611','procedure','Other excision of vessels, intracranial vessels, with clipclip (IM)','38.611 Other excision of vessels, intracranial vessels, with clipclip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',1,'4f3559e8e4b6e387b6bf4e9d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.620','procedure','Other excision of vessels, other vessels of head and neck , without clip','38.620 Other excision of vessels, other vessels of head and neck , without clip
(IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',1,'5dfa0e1f5c2cee2c1921a069');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.621','procedure','Other excision of vessels, other vessels of head and neck, with clip (IM)','38.621 Other excision of vessels, other vessels of head and neck, with clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',1,'6fa6505d918c20361dd58a47');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.630','procedure','Other excision of vessels, upper limb vessels, without clip (IM)','38.630 Other excision of vessels, upper limb vessels, without clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',1,'0805f793a7a4785b16eacecb');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.631','procedure','Other excision of vessels, upper limb vessels, with clip (IM)','38.631 Other excision of vessels, upper limb vessels, with clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',1,'9ef7e3badab9be91f60d9705');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.640','procedure','Other excision of vessels, aorta,abdominal, without clip (IM)','38.640 Other excision of vessels, aorta,abdominal, without clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',1,'4020bfa3277dc39e7982a5c8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.641','procedure','Other excision of vessels, aorta,abdominal, with clip (IM)','38.641 Other excision of vessels, aorta,abdominal, with clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',1,'60b261dfe65d64e675f3ebad');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.650','procedure','Other excision of vessels, thoracic vessels, without clip (IM)','38.650 Other excision of vessels, thoracic vessels, without clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',1,'72ba28efade308663d7b98ee');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.651','procedure','Other excision of vessels, thoracic vessels, with clip (IM)','38.651 Other excision of vessels, thoracic vessels, with clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',1,'599cbef7db048796b4abaf50');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.660','procedure','Other excision of vessels, abdominal arteries, without clip (IM)','38.660 Other excision of vessels, abdominal arteries, without clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',1,'d4e432c1eac6a8aff2f65410');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.661','procedure','Other excision of vessels, abdominal arteries, with clip (IM)','38.661 Other excision of vessels, abdominal arteries, with clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',1,'7dbb6f7ffac0f32f85f43138');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.670','procedure','Other excision of vessels, abdominal veins, without clip (IM)','38.670 Other excision of vessels, abdominal veins, without clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',1,'27fcbf047f3c2458e0c4aa3c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.671','procedure','Other excision of vessels, abdominal veins, with clip (IM)','38.671 Other excision of vessels, abdominal veins, with clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',1,'2de531904806a8c55e6903d9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.680','procedure','Other excision of vessels, lower limb arteries, without clip (IM)','38.680 Other excision of vessels, lower limb arteries, without clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',1,'a828284aeba6accc1c198c13');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.681','procedure','Other excision of vessels, lower limb arteries, with clip (IM)','38.681 Other excision of vessels, lower limb arteries, with clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',1,'2d9179e8bada04f9438683ac');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.690','procedure','Other excision of vessels, lower limb veins, without clip (IM)','38.690 Other excision of vessels, lower limb veins, without clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',1,'7cc49cadbaf0e693463ceefb');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.691','procedure','Other excision of vessels, lower limb veins, with clip (IM)','38.691 Other excision of vessels, lower limb veins, with clip (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',1,'4b5d8fb075c942ac9f55da4a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.7','category','Interruption of the vena cava','38.7      Interruption of the vena cava
Insertion of implant or sieve in vena cava
Ligation of vena cava (inferior) (superior)
Plication of vena cava
Insertion of Vena Cava Filter (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',24,'draft',1,'6c68e0777a54980fcf3870ee');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.8','category','Other surgical occlusion of vessels','38.8      Other surgical occlusion of vessels
[0-9]
Clamping of blood vessel
Division of blood vessel
Ligation of blood vessel
Occlusion of blood vessel
Percutaneous PDA occlusion (IM)
Percutaneous PDA occlusion in neonates (IM)
Excludes: adrenal vessels (07.43)
esophageal varices (42.91)
gastric or duodenal vessel for ulcer (44.40-44.49)
gastric varices (44.91)
meningeal vessel (02.13)
percutaneous transcatheter infusion embolization (99.29)
spermatic vein for varicocele (63.1)
surgical occlusion of vena cava (38.7)
that for chemoembolization (99.25)
that for control of (postoperative) hemorrhage:
anus (49.95)
bladder (57.93)
following vascular procedure (39.41)
nose (21.00-21.09)
prostate (60.94)
tonsil (28.7)
thyroid vessel (06.92)
transcatheter (infusion) 99.29','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',25,'draft',1,'f6f2b57026970e0c46d4d9a6');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.850','procedure','PDA stenting/PDA closure with device (IM)','38.850 PDA stenting/PDA closure with device (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',25,'draft',1,'b365b917c26d581f6562d7af');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.9','category','Puncture of vessel','38.9      Puncture of vessel','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',25,'draft',0,'c951bab9c4709599f9716cde');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.93','procedure','Venous catheterization, not elsewhere classified','38.93   Venous catheterization, not elsewhere classified
Peripheral inserted central catheter (IM)
Excludes: that for cardiac catheterization (37.21-37.23)
that for renal dialysis (38.95)
that with guidance (electrocardiogram) (fluoroscopy) (ultrasound) (38.97)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',25,'draft',1,'87b9d682086f816989566ee0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('38.95','procedure','Venous catheterization for renal dialysis','38.95   Venous catheterization for renal dialysis
Insertion of hemodialysis catheter (IM)
Excludes: insertion of totally implantable vascular access device [VAD] (86.07)
39        Other operations on vessels','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',25,'draft',1,'b210e85c918bb305d5a916b0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.2','category','Other shunt or vascular bypass','39.2      Other shunt or vascular bypass','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',25,'draft',0,'4532cfb6e9ccba37ccc7fd2d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.27','procedure','Arteriovenostomy for renal dialysis','39.27   Arteriovenostomy for renal dialysis
Anastomosis for renal dialysis
Formation of (peripheral) arteriovenous
fistula for renal [kidney] dialysis','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',25,'draft',0,'907206bfdba19eb3489f58fd');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.270','procedure','Insertion of temporary central dialysis catheter (IM)','39.270 Insertion of temporary central dialysis catheter (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',25,'draft',1,'089ea5bb9ebe0296487bd4d0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.271','procedure','Insertion of permanent central dialysis catheter (IM)','39.271 Insertion of permanent central dialysis catheter (IM)
Includes : Laparoscopic repair of indwelling peritoneal catheter for dialysis (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',25,'draft',1,'8df80125a32e3d9470e06907');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.272','procedure','Insertion of peritoneal dialysis catheter: peritoneoscopy technique (IM)','39.272 Insertion of peritoneal dialysis catheter: peritoneoscopy technique (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',25,'draft',1,'f6386c117f093c0fbf00540c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.273','procedure','Insertion of peritoneal dialysis catheter: percutaneous technique (IM)','39.273 Insertion of peritoneal dialysis catheter: percutaneous technique (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',25,'draft',1,'47c2fcff1291592bc9b59b2a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.274','procedure','Insertion of peritoneal dialysis catheter: open technique (IM)','39.274 Insertion of peritoneal dialysis catheter: open technique (IM)
Code also any renal dialysis (39.95)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',26,'draft',1,'4023f85bc2089343c0e7384e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.3','category','Suture of vessel','39.3     Suture of vessel','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',26,'draft',0,'072f5eb5cb0bcb11985784fc');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.31','procedure','Suture of artery','39.31   Suture of artery
Bentall''s Procedure (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',26,'draft',1,'151ad648d872d3c495f68348');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.5','category','Other repair of vessels','39.5     Other repair of vessels','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',26,'draft',0,'85a8a0788af6beb50a688e1a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.50','procedure','Angioplasty or atherectomy of other non-coronary vessel(s)','39.50   Angioplasty or atherectomy of other non-coronary vessel(s)
Percutaneous transluminal angioplasty (PTA) of non-coronary vessels:
Lower extremity vessels
Mesenteric artery
Renal artery
Upper extremity vessels
Balloon Coarctation/RVOT/PA/conduit (IM)
PIAT (Peripheral Intra Arterial Thrombolysis) (IM)
PTA(IM)
PTV (IM)
Code also any:
injection or infusion of thrombolytic agent (99.10)
insertion of drug-eluting peripheral vessel stent (00.55)
insertion of non-drug-eluting peripheral vessel stent(s) or stent grafts(s) (39.90)
number of vascular stents inserted (00.45-00.48)
number of vessels treated (00.40-00.43)
procedure on vessel bifurcation (00.44)
Excludes: percutaneous angioplasty or atherectomy of precerebral or cerebral
vessel(s) (00.61-00.62)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',26,'draft',1,'7080bf8418de20a8cc2777a7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.59','procedure','Other repair of vessel','39.59   Other repair of vessel
Aorticopulmonary window operation
Arterioplasty NOS
Construction of venous valves (peripheral)
Plication of vein (peripheral)
Reimplantation of artery
Aortic repair perkutan (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',26,'draft',1,'444a9b2d0f9f043d9759bf1b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.590','procedure','Direct anastomosis for renal artery repair (IM)','39.590 Direct anastomosis for renal artery repair (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',26,'draft',1,'7a8a50ff1e6203cb5507985e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.591','procedure','Direct anastomosis for renal vein repair (IM)','39.591 Direct anastomosis for renal vein repair (IM)
Code also cardiopulmonary bypass [extracorporeal circulation] [heart-lung machine]
(39.61)
Excludes: interruption of the vena cava (38.7)
reimplantation of renal artery (39.55)
that with:
graft (39.56-39.58)
resection (38.30-38.49, 38.60-38.69)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',26,'draft',1,'07cc4a136ac6739672281c7d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.7','category','Endovascular procedures on vessel(s)','39.7     Endovascular procedures on vessel(s)
Embolization
Endoluminal repair
Implantation
Occlusion
Removal
Repair
Excludes: angioplasty or atherectomy of other non-coronary vessel(s) (39.50)
insertion of non-drug-eluting peripheral vessel stent(s) (39.90)
other repair of aneurysm (39.52)
percutaneous insertion of carotid artery stent(s) (00.63)
percutaneous insertion of intracranial stent(s) (00.65)
percutaneous insertion of other precerebral artery stent(s) (00.64)
resection of abdominal aorta with replacement (38.44)
resection of lower limb arteries with replacement (38.48)
resection of thoracic aorta with replacement (38.45)
resection of upper limb vessels with replacement (38.43)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',26,'draft',0,'3060df72fa633a14b61c95f6');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.72','procedure','Endovascular embolization or occlusion of head and neck vessels','39.72   Endovascular embolization or occlusion of head and neck vessels
Endograft(s)
Endovascular graft(s)
Liquid tissue adhesive (glue) embolization or occlusion
Other implant or substance for repair, embolization or occlusion
That for repair of aneurysm, arteriovenous malformation[AVM] or fistula
Vascular embolization (IM)
Excludes: embolization of head or neck vessels using bare coils (39.75)
embolization of head or neck vessels using bioactive coils (39.76)
mechanical thrombectomy of pre-cerebral and cerebral vessels (39.74)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',27,'draft',1,'39f84ae1298518bdaf8c0ed2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.74','procedure','Endovascular removal of obstruction from head and neck vessel(s)','39.74   Endovascular removal of obstruction from head and neck vessel(s)
Endovascular embolectomy
Endovascular thrombectomy of pre-cerebral and cerebral vessels
Mechanical embolectomy or thrombectomy
Mechanical thrombectomy (IM)
Code also: any injection or infusion of thrombolytic agent (99.10)
number of vessels treated (00.40-00.43)
procedure on vessel bifurcation (00.44)
Excludes: endarterectomy of intracranial vessels and other vessels of head and neck
(38.11-38.12)
occlusive endovascular embolization of head or neck vessel(s) using bare
coils (39.75)
occlusive endovascular embolization of head or neck vessels(s) using
bioactive coils (39.76)
open embolectomy or thrombectomy (38.01-38.02)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',27,'draft',1,'971142c123d28879f983792c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.77','procedure','Endovascular repair or occlusion of head and neck vessels, with detachable','39.77   Endovascular repair or occlusion of head and neck vessels, with detachable
balloon (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',27,'draft',1,'107ab08066c32e64adda1d9c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.78','procedure','Endovascular repair or occlusion of neoplasm (IM)','39.78   Endovascular repair or occlusion of neoplasm (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',27,'draft',1,'a362617210ef5c7b840765e9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.79','procedure','Other endovascular procedures on other vessels','39.79   Other endovascular procedures on other vessels
Endograft(s)
Endovascular graft(s)
Liquid tissue adhesive (glue) embolization or occlusion
Other coil embolization or occlusion
Other implant or substance for repair, embolization or occlusion
Repair of aneurysm
Coiling fistulae in one vessel (IM)
Coiling coronary fistula (IM)
Coiling MAPCA (IM)
coronary fistula intervention with coiling or alcohol ablation (IM)
Excludes: abdominal aortic aneurysm resection [AAA] (38.44)
endovascular implantation of graft in abdominal aorta (39.71)
endovascular implantation of graft in thoracic aorta (39.73)
endovascular embolization or occlusion of head and neck vessels, bare
metal coils (39.75)
endovascular embolization or occlusion of head and neck vessels,
bioactive coils (39.76)
insertion of drug-eluting peripheral vessel stent(s) (00.55)
insertion of non-drug-eluting peripheral vessel (s) (for other than aneurysm
repair) (39.90)
non-endovascular repair of arteriovenous fistula (39.53)
other surgical occlusion of vessels -see category 38.8
percutaneous transcatheter infusion (99.29)
thoracic aortic aneurysm resection (38.45)
transcatheter embolization for gastric or duodenal bleeding (44.44)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',27,'draft',1,'fc2ef6729d670619b8dbd67a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.9','category','Other operations on vessels','39.9     Other operations on vessels','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',29,'draft',0,'18678334f875dcbaa81b8556');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.90','procedure','Insertion of non-drug-eluting peripheral (non-coronary) vessel stent(s)','39.90   Insertion of non-drug-eluting peripheral (non-coronary) vessel stent(s)
Bare stent(s)
Bonded stent(s)
Drug-coated stent(s), i.e., heparin coated
Endograft(s)
Endovascular graft(s)
Endovascular recanalization techniques
Stent graft(s)
Balloon with stent Coarctation/RVOT/PA/conduit (IM)
PDA stenting (IM)
Code also any:
non-coronary angioplasty or atherectomy (39.50)
number of vascular stents inserted (00.45-00.48)
number of vessels treated (00.40-00.43)
procedure on vessel bifurcation (00.44)
Excludes: insertion of drug-eluting peripheral vessel stent(s) (00.55)
percutaneous insertion of carotid artery stent(s) (00.63)
percutaneous insertion of intracranial stent(s) (00.65)
percutaneous insertion of other precerebral artery stent(s) (00.64)
that for aneurysm repair (39.71-39.79)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',29,'draft',1,'3e8ec7c58a7d630ce02184aa');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.95','procedure','Hemodialysis','39.95   Hemodialysis
Artificial kidney
Hemodiafiltration
Hemofiltration
Renal dialysis
Excludes: peritoneal dialysis (54.98)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',29,'draft',0,'86aaaf29537d0c3d0364c009');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.951','procedure','Prolonged Intermitent Renal Replacement Therapy (IM)','39.951 Prolonged Intermitent Renal Replacement Therapy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',29,'draft',1,'f3f52a2c6049e9bc15a2963c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('39.952','procedure','Continuous Renal Replacement Therapy (IM)','39.952 Continuous Renal Replacement Therapy (IM)
8. OPERATIONS ON THE HEMIC AND LYMPHATIC SYSTEM (40-41)
40       Operations on lymphatic system','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',29,'draft',1,'1e732cf15b927216fe924778');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('40.1','category','Diagnostic procedures on lymphatic structures','40.1     Diagnostic procedures on lymphatic structures','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',30,'draft',0,'85155cf9fead57c02db49013');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('40.11','procedure','Biopsy of lymphatic structure','40.11    Biopsy of lymphatic structure
Transbronchoscopic needle aspiration [TBNA] of lymph node
Note : Biopsy or excision of lymph node(s); open, deep cervical node','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',30,'draft',0,'ab5e088b4735c2292f3455c5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('40.5','category','Radical excision of other lymph nodes','40.5     Radical excision of other lymph nodes
Excludes: that associated with radical mastectomy (85.45-85.48)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',30,'draft',0,'8f954ee854c14c80397a3337');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('40.55','procedure','Modified radical neck dissection, unilateral (IM)','40.55    Modified radical neck dissection, unilateral (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',30,'draft',1,'e57eb7ffb51fae3f1ffe6f3a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('40.56','procedure','Modified radical neck dissection, bilateral (IM)','40.56    Modified radical neck dissection, bilateral (IM)
41       Operations on bone marrow and spleen','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',30,'draft',1,'ce7455470c8c7888260cedd5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('41.3','category','Diagnostic procedures on bone marrow and spleen','41.3     Diagnostic procedures on bone marrow and spleen','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',30,'draft',0,'462f320803fb5e29f4f2d5ac');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('41.31','procedure','Biopsy of bone marrow','41.31    Biopsy of bone marrow
Bone marrow aspiration (IM)
9. OPERATIONS ON THE DIGESTIVE SYSTEM (42-54)
48       Operations on rectum, rectosigmoid and perirectal tissue','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',30,'draft',1,'d44e8d3df54af43bebc31f37');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('48.6','category','Other resection of rectum','48.6     Other resection of rectum
Code also any synchronous anastomosis other than end-to-end (45.90, 45.92-45.95)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',31,'draft',0,'8a69df0210f35349609d17b3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('48.63','procedure','Other anterior resection of rectum','48.63   Other anterior resection of rectum','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',31,'draft',0,'8cfb0697fdd575633bc319d1');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('48.631','procedure','Laparoscopic anterior resection of rectum (IM)','48.631 Laparoscopic anterior resection of rectum (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',31,'draft',1,'da7a832c3052736bbc3648b2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('48.632','procedure','Laparoscopic low anterior resection of rectum (IM)','48.632 Laparoscopic low anterior resection of rectum (IM)
Excludes: that with synchronous colostomy (48.62)
50       Operations on liver','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',31,'draft',1,'98a72a620d20495eb6730d2d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('50.4','category','Total hepatectomy','50.4     Total hepatectomy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',31,'draft',0,'775d01530ea76c03a7b65f3e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('50.40','procedure','Laparoscopic liver resection (IM)','50.40 Laparoscopic liver resection (IM)
51       Operations on gallbladder and biliary tract','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',31,'draft',1,'dec35a28419175521293938a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('51.1','category','Diagnostic procedures on biliary tract','51.1     Diagnostic procedures on biliary tract
Excludes: that for endoscopic procedures classifiable to 51.64, 51.84-51.88, 52.14, 52.21,
52.93-52.94, 52.97-52.98','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',31,'draft',0,'e5b714043ef9063dd3df0b67');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('51.12','procedure','Percutaneous biopsy of gallbladder or bile ducts','51.12   Percutaneous biopsy of gallbladder or bile ducts
Needle biopsy of gallbladder','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',31,'draft',0,'7b19ff3725420b260cbb4079');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('51.120','procedure','Laparoscopic biopsy gonad (IM)','51.120 Laparoscopic biopsy gonad (IM)
52       Operations on pancreas','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',31,'draft',1,'2b3d66ac459ea523ef606303');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('52.5','category','Partial pancreatectomy','52.5     Partial pancreatectomy
Excludes: pancreatic fistulectomy (52.95)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',31,'draft',0,'c936de36319f41d8615d0338');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('52.50','procedure','Laparoscopic partial pancreatectomy (IM)','52.50   Laparoscopic partial pancreatectomy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',31,'draft',1,'dfc20e6eb269f0f7cea9b49d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('52.6','category','Total pancreatectomy','52.6     Total pancreatectomy
Pancreatectomy with synchronous duodenectomy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',31,'draft',0,'a288768e2aaf12b7cd6b6262');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('52.60','procedure','Laparoscopic total pancreatectomy (IM)','52.60   Laparoscopic total pancreatectomy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',31,'draft',1,'e59297a48713016d185deaa2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('52.7','category','Radical pancreaticoduodenectomy','52.7     Radical pancreaticoduodenectomy
One-stage pancreaticoduodenal resection with choledochojejunal anastomosis,
pancreaticojejunal anastomosis, and gastrojejunostomy
Two-stage pancreaticoduodenal resection (first stage) (second stage)
Radical resection of the pancreas
Whipple procedure','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',31,'draft',0,'86468ea6d3759c3714cb5e31');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('52.70','procedure','Laparoscopic pancreaticoduodenectomy (IM)','52.70   Laparoscopic pancreaticoduodenectomy (IM)
Excludes: radical subtotal pancreatectomy (52.53)
54      Other operations on abdominal region','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',31,'draft',1,'c24d45f2241e86ba4fc8b571');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('54.98','procedure','Peritoneal dialysis','54.98   Peritoneal dialysis
Excludes: peritoneal lavage (diagnostic) (54.25)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',32,'draft',0,'a8152b787ec2020b24110d55');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('54.980','procedure','Insertion of peritoneal dialysis catheter with laparoscopy technique (IM)','54.980 Insertion of peritoneal dialysis catheter with laparoscopy technique (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',32,'draft',1,'6218ff5b9c6ef5c910140784');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('54.981','procedure','Laparoscopic replacement of indwelling peritoneal catheter for dialysis','54.981 Laparoscopic replacement of indwelling peritoneal catheter for dialysis
(IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',32,'draft',1,'bd2a7008c0c2bde7bdfa43a9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('54.982','procedure','Insertion of peritoneal dialysis catheter: peritoneoscopy technique (IM)','54.982 Insertion of peritoneal dialysis catheter: peritoneoscopy technique (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',32,'draft',1,'62a2c9c8a59982da2a506dbf');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('54.983','procedure','Insertion of peritoneal dialysis catheter: percutaneous technique (IM)','54.983 Insertion of peritoneal dialysis catheter: percutaneous technique (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',32,'draft',1,'6a3cf1411b2938c6019108a9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('54.984','procedure','Insertion of peritoneal dialysis catheter: open technique (IM)','54.984 Insertion of peritoneal dialysis catheter: open technique (IM)
10. OPERATIONS ON THE URINARY SYSTEM (55-59)
55        Operations on kidney','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',32,'draft',1,'bd60345e02d38eb20acbdf33');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('55.3','category','Local excision or destruction of lesion or tissue of kidney','55.3      Local excision or destruction of lesion or tissue of kidney','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',33,'draft',0,'77e2bc7fe452e3b9889558ac');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('55.38','procedure','Renal cyst laparoscopic excision (IM)','55.38   Renal cyst laparoscopic excision (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',33,'draft',1,'f9539b546c1e14b58758c43f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('55.4','category','Partial nephrectomy','55.4      Partial nephrectomy
Calycectomy
Wedge resection of kidney','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',33,'draft',0,'a5311d2551a4bec55734ba5e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('55.40','procedure','Laparoscopic partial nephrectomy (IM)','55.40 Laparoscopic partial nephrectomy (IM)
Code also any synchronous resection of ureter (56.40-56.42)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',33,'draft',1,'52bff057585f0a74c5d59621');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('55.5','category','Complete nephrectomy','55.5      Complete nephrectomy
Code also any synchronous excision of:
adrenal gland (07.21-07.3)
bladder segment (57.6)
lymph nodes (40.3, 40.52-40.59)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',33,'draft',0,'c93cb4114f6e8c1fd0e24838');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('55.51','procedure','Nephroureterectomy','55.51   Nephroureterectomy
Nephroureterectomy with bladder cuff
Total nephrectomy (unilateral)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',33,'draft',0,'0c478f3e0682834648cdbd25');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('55.510','procedure','Laparoscopic nephroureterectomy (IM)','55.510 Laparoscopic nephroureterectomy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',33,'draft',1,'f22f96f1034607ecd295372b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('55.511','procedure','Laparoscopic complete (radical) nephrectomy (IM)','55.511 Laparoscopic complete (radical) nephrectomy (IM)
Excludes: removal of transplanted kidney (55.53)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',33,'draft',1,'d3d040e370f04a1e6e3f01a5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('55.52','procedure','Nephrectomy of remaining kidney','55.52   Nephrectomy of remaining kidney
Removal of solitary kidney','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',33,'draft',0,'d8b9d7de51ef76fc5f4e598b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('55.520','procedure','Living donor nephrectomy (IM)','55.520 Living donor nephrectomy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',33,'draft',1,'142ce86049a3e4cfac6937f8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('55.521','procedure','Deceased donor nephrectomy (cadaver) (IM)','55.521 Deceased donor nephrectomy (cadaver) (IM)
Excludes: removal of transplanted kidney (55.53)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',33,'draft',1,'9c3bfc50e8ffafac20c94486');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('55.7','category','Nephropexy','55.7      Nephropexy
Fixation or suspension of movable [floating] kidney','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',33,'draft',0,'7d35558b8c143dc706c9f239');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('55.70','procedure','Laparoscopic nephropexy (IM)','55.70 Laparoscopic nephropexy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',33,'draft',1,'974ccc7c184279033da87f7a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('55.8','category','Other repair of kidney','55.8      Other repair of kidney','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',33,'draft',0,'b6ce7a23c748636e6a8d4e87');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('55.88','procedure','Laparoscopic pyeloplasty (IM)','55.88   Laparoscopic pyeloplasty (IM)
56        Operations on ureter','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',33,'draft',1,'76927268f63e84d24011a84c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.2','category','Ureterotomy','56.2      Ureterotomy
Incision of ureter for:
drainage
exploration
removal of calculus
Excludes :cutting of ureterovesical orifice (56.1)
removal of calculus without incision (56.0)
transurethral insertion of ureteral stent for passage of calculus (59.8)
urinary diversion (56.51-56.79)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',33,'draft',0,'0f5dc2201c7665697c6e5833');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.20','procedure','Laparoscopic ureterolithotomy or ureteral exploration (IM)','56.20 Laparoscopic ureterolithotomy or ureteral exploration (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',34,'draft',1,'216bcd9247cb7c6f5aa6251e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.21','procedure','Laparoscopic ureterolithotomy with previous ureteral surgery (IM)','56.21 Laparoscopic ureterolithotomy with previous ureteral surgery (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',34,'draft',1,'11fdf6d845a38c562bfd1918');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.22','procedure','Open ureteral exploration (IM)','56.22 Open ureteral exploration (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',34,'draft',1,'484d3c9dc18088355230acae');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.23','procedure','Open ureterolithotomy with previous ureteral surgery (IM)','56.23 Open ureterolithotomy with previous ureteral surgery (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',34,'draft',1,'62cb79f145fc390d11da52d3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.3','category','Diagnostic procedures on ureter','56.3     Diagnostic procedures on ureter','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',34,'draft',0,'391c7b5d597b12ea93b957f7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.36','procedure','Semi rigid ureterorenoscopy without stone fragmentation (IM)','56.36   Semi rigid ureterorenoscopy without stone fragmentation (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',34,'draft',1,'31f9f110fbeca3c196a4f797');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.37','procedure','Flexible ureterorenoscopy without stone fragmentation (IM)','56.37   Flexible ureterorenoscopy without stone fragmentation (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',34,'draft',1,'c096599dc0babd647bec4fac');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.4','category','Ureterectomy','56.4     Ureterectomy
Code also anastomosis other than end-to-end (56.51-56.79)
Excludes: fistulectomy (56.84)
nephroureterectomy (55.51-55.54)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',34,'draft',0,'2da47d6a0f5f8d1cebef270d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.41','procedure','Partial ureterectomy','56.41   Partial ureterectomy
Excision of lesion of ureter
Shortening of ureter with reimplantation','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',34,'draft',0,'752e8a118b96b6220840914c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.410','procedure','Laparoscopic partial ureterectomy (IM)','56.410 Laparoscopic partial ureterectomy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',34,'draft',1,'093bd77a65eeeda41813e1c2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.420','procedure','Laparoscopic complete ureterectomy (IM)','56.420 Laparoscopic complete ureterectomy (IM)
Excludes: biopsy of ureter (56.32-56.34)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',34,'draft',1,'fdb990dbcf01e9887ccccfb9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.43','procedure','Endoscopy ureterocele resection (IM)','56.43   Endoscopy ureterocele resection (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',34,'draft',1,'c6d4010ca0b7702e74905c00');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.5','category','Cutaneous uretero-ileostomy','56.5     Cutaneous uretero-ileostomy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',34,'draft',0,'66d9ce5fa4baabc0f5d30a92');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.51','procedure','Formation of cutaneous uretero-ileostomy','56.51   Formation of cutaneous uretero-ileostomy
Construction of ileal conduit
External ureteral ileostomy
Formation of open ileal bladder
Ileal loop operation
Ileoureterostomy (Bricker’s) (ileal bladder)
Transplantation of ureter into ileum with external diversion
Excludes: closed ileal bladder (57.87)
replacement of ureteral defect by ileal segment (56.89)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',34,'draft',0,'41ef040cebc7bd119ce791cf');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.510','procedure','Laparoscopic ureter transplantation ino intestine (IM)','56.510 Laparoscopic ureter transplantation ino intestine (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',34,'draft',1,'a47c1eb934b7da93c537f50f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.6','category','Other external urinary diversion','56.6     Other external urinary diversion','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',34,'draft',0,'4c59fbc25f0af31c9b87490b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.61','procedure','Formation of other cutaneous ureterostomy','56.61   Formation of other cutaneous ureterostomy
Anastomosis of ureter to skin
Ureterostomy NOS','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',34,'draft',0,'20d962c382a0dd87e816c4a0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.610','procedure','Laparoscopic ureter transplantation into skin (IM)','56.610 Laparoscopic ureter transplantation into skin (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',34,'draft',1,'d6a9cd9b11c7777d3d36198b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.62','procedure','Revision of other cutaneous ureterostomy','56.62   Revision of other cutaneous ureterostomy
Revision of ureterostomy stoma','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',34,'draft',0,'8d6c4cb5da3fcb84300969fe');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.620','procedure','Laparoscopic ureterostomy revision (IM)','56.620 Laparoscopic ureterostomy revision (IM)
Excludes: nonoperative removal of ureterostomy tube (97.62)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',34,'draft',1,'e047374a5212a1025ecd0fd5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.7','category','Other anastomosis or bypass of ureter','56.7     Other anastomosis or bypass of ureter
Excludes: ureteropyelostomy (55.86)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',34,'draft',0,'0f5b8cc9d859670d1e724b36');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.74','procedure','Ureteroneocystostomy','56.74   Ureteroneocystostomy
Replacement of ureter with bladder flap
Ureterovesical anastomosis','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',35,'draft',0,'1c04e87dc360b4ce3b66a89f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.740','procedure','Laparoscopic ureteroneocystostomy (IM)','56.740 Laparoscopic ureteroneocystostomy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',35,'draft',1,'3703df29500ae610cfe34a49');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.75','procedure','Transureteroureterostomy','56.75   Transureteroureterostomy
Excludes: ureteroureterostomy associated with partial resection (56.41)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',35,'draft',0,'dcb3c26c8fc3e1d01b70e35e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.750','procedure','Laparascopic ureteral transplantation into other ureter (IM)','56.750 Laparascopic ureteral transplantation into other ureter (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',35,'draft',1,'3ee94459f4d66e08e7a95b88');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.751','procedure','Laparoscopic ureteral re-implantation into bladder (IM)','56.751 Laparoscopic ureteral re-implantation into bladder (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',35,'draft',1,'95bf11309570dd5bde2c5891');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.752','procedure','Open ureteral re-implantation into bladder (IM)','56.752 Open ureteral re-implantation into bladder (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',35,'draft',1,'8a82a2c01638cff063cd80ea');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.753','procedure','Ureteral re-implantation into bladder with psoas hitch (IM)','56.753 Ureteral re-implantation into bladder with psoas hitch (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',35,'draft',1,'0bc8cf6151ed3962cb4f2fc8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.8','category','Repair of ureter','56.8     Repair of ureter','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',35,'draft',0,'4a3275ee5884bc41ac9fe875');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.87','procedure','Laparoscopic divided ureteral repair (IM)','56.87   Laparoscopic divided ureteral repair (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',35,'draft',1,'428c6b141281eb594c48573d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.870','procedure','Open divided ureteral repair (IM)','56.870 Open divided ureteral repair (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',35,'draft',1,'9f7479ed95cf0f203f40aa78');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.9','category','Other operations on ureter','56.9     Other operations on ureter','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',35,'draft',0,'d92d7168c0a65d38169a2bce');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.91','procedure','Dilation of ureteral meatus','56.91   Dilation of ureteral meatus','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',35,'draft',0,'cb2bce2d52bc3ba337c121cc');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.910','procedure','Endoscopic ureteral dilation (IM)','56.910 Endoscopic ureteral dilation (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',35,'draft',1,'fd769390417511760f08c913');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.911','procedure','Endoscopic destruction of bladder lesion / tissue (IM)','56.911 Endoscopic destruction of bladder lesion / tissue (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',35,'draft',1,'282f69739232d67f6a54151e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.912','procedure','Endoscopic laser destruction of bladder lesion / tissue (IM)','56.912 Endoscopic laser destruction of bladder lesion / tissue (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',35,'draft',1,'77d52cd3a8db97094d9b3675');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.95','procedure','Ligation of ureter','56.95   Ligation of ureter','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',35,'draft',0,'d9866cd4df88f484f9a25e86');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.950','procedure','Laparoscopic ligation of ureter (IM)','56.950 Laparoscopic ligation of ureter (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',35,'draft',1,'63b0b5025ebaaad67b513bfd');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.96','procedure','Endoscopic incision of external urethral sphincter (IM)','56.96   Endoscopic incision of external urethral sphincter (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',35,'draft',1,'bef909c27a05469fe2a6d961');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('56.97','procedure','Endoscopic ureteric stent replacement (IM)','56.97   Endoscopic ureteric stent replacement (IM)
57       Operations on urinary bladder
Code also any application or administration of an adhesion barrier substance (99.77)
Excludes: perivesical tissue (59.11-59.29, 59.91-59.92)
ureterovesical orifice (56.0-56.99)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',35,'draft',1,'316b231fa09d0b07d7e07458');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.0','category','Transurethral clearance of bladder','57.0     Transurethral clearance of bladder
Drainage of bladder without incision
Removal of:
blood clots from bladder without incision
calculus from bladder without incision
foreign body from bladder without incision','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',35,'draft',0,'f446cab54d12b713c894ffcc');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.00','procedure','Endoscopic blood clots evacuation from bladder (IM)','57.00 Endoscopic blood clots evacuation from bladder (IM)
Excludes: that by incision (57.19)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',35,'draft',1,'a78a6623a6f98a8d0ba25cb9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.1','category','Cystotomy and cystostomy','57.1     Cystotomy and cystostomy
Excludes: cystotomy and cystostomy as operative approach -- omit code','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',35,'draft',0,'80c26ddd69ec0ab2b05bae9f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.13','procedure','Endoscopic bladder neck incision (IM)','57.13   Endoscopic bladder neck incision (IM)
Includes : Endoscopic bladder neck resection (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',36,'draft',1,'d3c1ee0e78b7b4cd18b77254');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.17','procedure','Percutaneous cystostomy','57.17   Percutaneous cystostomy
Closed cystostomy
Percutaneous suprapubic cystostomy
Other suprapubic cystostomy (IM)
Cystostomy Closure (IM)
Excludes: removal of cystostomy tub (97.63)
replacement of cystostomy tube (59.94)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',36,'draft',1,'de5fb4bb31bc1547f511077b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.19','procedure','Other cystotomy','57.19   Other cystotomy
Cystolithotomy
Excludes: percutaneous cystostomy (57.17)
suprapubic cystostomy (57.18)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',36,'draft',0,'62db8a9558273f6f8449b055');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.190','procedure','Laparoscopic cystostomy or cystolithotomy (IM)','57.190 Laparoscopic cystostomy or cystolithotomy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',36,'draft',1,'76b24904dbb749f647a6e65a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.6','category','Partial cystectomy','57.6     Partial cystectomy
Excision of bladder dome
Trigonectomy
Wedge resection of bladder','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',36,'draft',0,'991ad83988bdef4c090baf11');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.60','procedure','Laparoscopic partial cystectomy (IM)','57.60 Laparoscopic partial cystectomy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',36,'draft',1,'978f183c2631144f41aa2b9b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.7','category','Total cystectomy','57.7     Total cystectomy
Includes: total cystectomy with urethrectomy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',36,'draft',0,'100326a3e2b17b2ae3fe9431');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.71','procedure','Radical cystectomy','57.71   Radical cystectomy
Pelvic exenteration in male
Removal of bladder, prostate, seminal vesicles, and fat
Removal of bladder, urethra, and fat in a female','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',36,'draft',0,'4676098d880a8d3ebe97d1de');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.710','procedure','Laparoscopic cystectomy (IM)','57.710 Laparoscopic cystectomy (IM)
Code also any:
lymph node dissection (40.3, 40.5)
urinary diversion (56.51-56.79)
Excludes: that as part of pelvic exenteration in female (68.8)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',36,'draft',1,'dd205206eda856770fc904f5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.72','procedure','Cystectomy with formation of cutaneous uretero-ileostomy (incontinent','57.72   Cystectomy with formation of cutaneous uretero-ileostomy (incontinent
intestinal urine reservoir formation) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',36,'draft',1,'123714587a61511af8f9de9c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.73','procedure','Cystectomy with laparoscopic ureter transplantation into intestine (IM)','57.73   Cystectomy with laparoscopic ureter transplantation into intestine (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',36,'draft',1,'485ca6d1bf0c38078a93764e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.74','procedure','Cystectomy with intestinal urinary diversion (continent intestinal urine','57.74   Cystectomy with intestinal urinary diversion (continent intestinal urine
reservoir formation) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',36,'draft',1,'eddc8f11a8a29a9b2bed2d29');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.75','procedure','Cystectomy with continent valve formation (IM)','57.75   Cystectomy with continent valve formation (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',36,'draft',1,'909e41028c96ae60c00faff5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.76','procedure','Cystectomy with orthotopic neobladder (IM)','57.76   Cystectomy with orthotopic neobladder (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',36,'draft',1,'f803de6691c1db1356f385e4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.77','procedure','Repair of bladder exstrophy with osteotomy for bladder exstrophy (IM)','57.77   Repair of bladder exstrophy with osteotomy for bladder exstrophy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',36,'draft',1,'345923aabe0f7c2f33a18921');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.79','procedure','Other total cystectomy','57.79   Other total cystectomy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',36,'draft',0,'df9fa975323efeeba5774df1');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.790','procedure','Laparoscopic other total cystectomy (IM)','57.790 Laparoscopic other total cystectomy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',36,'draft',1,'26fcd5b453bb21f7f67c9e6d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.8','category','Other repair of urinary bladder','57.8     Other repair of urinary bladder
Excludes: repair of:
current obstetric laceration (75.61)
cystocele (70.50-70.51)
that for stress incontinence (59.3-59.79)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',37,'draft',0,'10f474c1e25d63f66c4148fa');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.82','procedure','Closure of cystostomy','57.82   Closure of cystostomy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',37,'draft',0,'a203147c80be9664a360422b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.820','procedure','Laparoscopic vesicointestinal fistula closure (IM)','57.820 Laparoscopic vesicointestinal fistula closure (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',37,'draft',1,'6ad665b603fb8f5232ef2085');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.821','procedure','Laparoscopic vesicovaginal fistula closure (IM)','57.821 Laparoscopic vesicovaginal fistula closure (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',37,'draft',1,'303c0dce13e8f4dd8242f9c5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.822','procedure','Open vesicointestinal fistula closure (IM)','57.822 Open vesicointestinal fistula closure (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',37,'draft',1,'582556fb16b5ea193f2d789c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.823','procedure','Open cutaneous vesical fistula closure (IM)','57.823 Open cutaneous vesical fistula closure (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',37,'draft',1,'ea72b311aaa56e23187163b0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.824','procedure','Abdominal vesicovaginal fistula closure (IM)','57.824 Abdominal vesicovaginal fistula closure (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',37,'draft',1,'40999d3ec19b2e3fd9334b2a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.825','procedure','Laparoscopic cutaneous vesical fistula closure (IM)','57.825 Laparoscopic cutaneous vesical fistula closure (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',37,'draft',1,'ca026ad2c6cb1ccfb925a1e0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.85','procedure','Cystourethroplasty and plastic repair of bladder neck','57.85   Cystourethroplasty and plastic repair of bladder neck
Plication of sphincter of urinary bladder
V-Y plasty of bladder neck','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',37,'draft',0,'7d5e1adc85f4adb81b30b5b0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.850','procedure','Other laparoscopic bladder neck repair (IM)','57.850 Other laparoscopic bladder neck repair (IM)
Include : Other laparoscopic bladder neck repair    (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',37,'draft',1,'a1d60d13612648907d1b5c11');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.86','procedure','Repair of bladder exstrophy','57.86   Repair of bladder exstrophy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',37,'draft',0,'8e34c916be9f589a08e448c9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.860','procedure','Bladder exstrophy repair with ureteral re-implantation (IM)','57.860 Bladder exstrophy repair with ureteral re-implantation (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',37,'draft',1,'a16edb453653c31205825d98');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.861','procedure','Cloacal exstrophy repair (IM)','57.861 Cloacal exstrophy repair (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',37,'draft',1,'3d2dc9453cb3a266cff48191');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.87','procedure','Reconstruction of urinary bladder','57.87   Reconstruction of urinary bladder
Anastomosis of bladder with isolated segment of ileum
Augmentation of bladder
Replacement of bladder with ileum or sigmoid [closed ileal bladder]','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',37,'draft',0,'155e8e4d3f0b7237a28a46ce');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.870','procedure','Laparoscopic bladder enlargement (IM)','57.870 Laparoscopic bladder enlargement (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',37,'draft',1,'4e405280b2c37f6d9ac2acc0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.871','procedure','Open bladder enlargement (IM)','57.871 Open bladder enlargement (IM)
Code also resection of intestine (45.50-45.52)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',37,'draft',1,'6f4dc0ab3f323f07609f1612');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.89','procedure','Other repair of bladder','57.89   Other repair of bladder
Bladder suspension, not elsewhere classified
Cystopexy NOS
Repair of old obstetric laceration of bladder
Open ruptured bladder repair (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',37,'draft',1,'de6173db49701c321fd48443');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.890','procedure','Laparoscopic ruptured bladder repair (IM)','57.890 Laparoscopic ruptured bladder repair (IM)
Excludes: repair of current obstetric laceration (75.61)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',37,'draft',1,'2c024e01d5d7e37ffb390039');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.9','category','Other operations on bladder','57.9     Other operations on bladder','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',37,'draft',0,'3207847b0c377348d87e429d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.94','procedure','Insertion of indwelling urinary catheter','57.94   Insertion of indwelling urinary catheter','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',37,'draft',0,'6304ec0d5633a8973bdd3372');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.940','procedure','Open replacement of indwelling peritoneal catheter for dialysis (IM)','57.940 Open replacement of indwelling peritoneal catheter for dialysis (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',37,'draft',1,'72ce2867699aad23eb1e3f13');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.96','procedure','Implantation of electronic bladder stimulator','57.96 Implantation of electronic bladder stimulator','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',37,'draft',0,'f293d57aff44fccb22827ece');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('57.960','procedure','Stimulation of bladder (non-implant) (IM)','57.960 Stimulation of bladder (non-implant) (IM)
58       Operations on urethra','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',38,'draft',1,'a2c509cce46ea9c401384c7b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('58.3','category','Excision or destruction of lesion or tissue of urethra','58.3     Excision or destruction of lesion or tissue of urethra','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',38,'draft',0,'e912faa9f29e1884ff2fa93c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('58.39','procedure','Other local excision or destruction of lesion or tissue of urethra','58.39   Other local excision or destruction of lesion or tissue of urethra
Excision of:
congenital valve of urethra
lesion of urethra
stricture of urethra
Urethrectomy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',38,'draft',0,'5e9460f672bdc1fe8a91116b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('58.390','procedure','Complete urethrectomy (IM)','58.390 Complete urethrectomy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',38,'draft',1,'301944f4b3a0bfe1060c0caf');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('58.391','procedure','Partial urethrectomy (IM)','58.391 Partial urethrectomy (IM)
Excludes: that by endoscopic approach (58.31)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',38,'draft',1,'8ca907486387ce3247be1245');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('58.4','category','Repair of urethra','58.4     Repair of urethra','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',38,'draft',0,'845f31098a33f52f82c448c5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('58.45','procedure','Repair of hypospadias or epispadias','58.45   Repair of hypospadias or epispadias','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',38,'draft',0,'d66f14c76049e9cb2770f4de');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('58.450','procedure','Single stage repair for hypospadias or epispadias (IM)','58.450 Single stage repair for hypospadias or epispadias (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',38,'draft',1,'166bc86e0fe5ea103a1e2a66');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('58.451','procedure','First stage of hypospadias or epispadias staged repair (IM)','58.451 First stage of hypospadias or epispadias staged repair (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',38,'draft',1,'638d4fd7b5dffcb541263c30');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('58.452','procedure','Second stage of hypospadias or epispadias staged repair (IM)','58.452 Second stage of hypospadias or epispadias staged repair (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',38,'draft',1,'d5c45c644a71e50656d20952');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('58.453','procedure','Hypospadias repair post urethral fistula operation (IM)','58.453 Hypospadias repair post urethral fistula operation (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',38,'draft',1,'c539bb5ed3abbb790e5a917c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('58.454','procedure','Redo repair for hypospadia or epispadias (IM)','58.454 Redo repair for hypospadia or epispadias (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',38,'draft',1,'77ebda5bad93c5e806cf8990');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('58.455','procedure','Repair of epispadias with ureteric re-implantation (IM)','58.455 Repair of epispadias with ureteric re-implantation (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',38,'draft',1,'5be1935fd92ad71381bf4ef5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('58.456','procedure','Granuloplasty for hypospadias (IM)','58.456 Granuloplasty for hypospadias (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',38,'draft',1,'66e1a6e79f5021faef42df07');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('58.49','procedure','Other repair of urethra','58.49   Other repair of urethra
Benenenti rotation of bulbous urethra
Repair of old obstetric laceration of urethra
Urethral plication','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',38,'draft',0,'ce1029a9f50e42615b067cc0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('58.490','procedure','Urethroplasty with graft (IM)','58.490 Urethroplasty with graft (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',38,'draft',1,'942e7a4c094fad24b0eac9c2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('58.491','procedure','Urethroplasty with flap (IM)','58.491 Urethroplasty with flap (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',38,'draft',1,'2b81432f40858cbb06a8dc44');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('58.492','procedure','Urethroplasty with pubectomy (IM)','58.492 Urethroplasty with pubectomy (IM)
Excludes: repair of:
current obstetric laceration (75.61)
urethrocele (70.50-70.51)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',38,'draft',1,'855d1a6a2c732ed6f1dd83bf');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('58.5','category','Release of urethral stricture','58.5     Release of urethral stricture
Cutting of urethral sphincter
Internal urethral meatotomy
Urethrolysis
Internal/optical urethrotomy (IM)
59       Other operations on urinary tract
Code also any application or administration of an adhesion barrier substance (99.77)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',38,'draft',1,'2c9e5b16861f91dfa14c7e7d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('59.0','category','Dissection of retroperitoneal tissue','59.0     Dissection of retroperitoneal tissue','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',39,'draft',0,'248fb26e71e3179445193d21');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('59.02','procedure','Other lysis of perirenal or periureteral adhesions','59.02     Other lysis of perirenal or periureteral adhesions
Open ureterolysis with ureteral repositioning (IM)
Open ureterolysis (IM)
Excludes: that by laparoscope (59.03)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',39,'draft',1,'861cc54b2ffbcf9a394a137c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('59.8','category','Ureteral catheterization','59.8     Ureteral catheterization
Drainage of kidney by catheter
Insertion of ureteral stent
Ureterovesical orifice dilation','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',39,'draft',0,'23d21074d1d6673fbeb49e62');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('59.80','procedure','Endoscopic urethral stent insertion (IM)','59.80 Endoscopic urethral stent insertion (IM)
Endoscopic ureteric stent insertion (IM)
Code also any ureterotomy (56.2)
Excludes: that for:
retrograde pyelogram (87.74)
transurethral removal of calculus or clot from ureter and renal pelvis (56.0)
11. OPERATIONS ON THE MALE GENITAL ORGANS (60-64)
60       Operations on prostate and seminal vesicles','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',39,'draft',1,'8ea634b40e06a93d5035b257');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('60.2','category','Transurethral prostatectomy','60.2     Transurethral prostatectomy
Excludes: local excision of lesion of prostate (60.61)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',40,'draft',0,'7175131a95e265d335346a22');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('60.21','procedure','Transurethral (ultrasound) guided laser induced prostatectomy (TULIP)','60.21   Transurethral (ultrasound) guided laser induced prostatectomy (TULIP)
Ablation (contact) (noncontact) by laser','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',40,'draft',0,'94cb062b7aba3e1fe5086025');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('60.22','procedure','Transurethral needle ablation prostate (IM)','60.22   Transurethral needle ablation prostate (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',40,'draft',1,'78a7f654e9148847a0145eca');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('60.23','procedure','Cryoablation of prostate (IM)','60.23   Cryoablation of prostate (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',40,'draft',1,'8efcbfbfed8df344fe94a439');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('60.24','procedure','Transurethral electric vaporization prostate (IM)','60.24   Transurethral electric vaporization prostate (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',40,'draft',1,'26713ba7508330f7e4bed5bd');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('60.25','procedure','High intensity focused ultrasound prostate (IM)','60.25   High intensity focused ultrasound prostate (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',40,'draft',1,'b1833a9be638b2133496e2f8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('60.29','procedure','Other transurethral prostatectomy','60.29   Other transurethral prostatectomy
Excision of median bar by transurethral approach
Transurethral electrovaporization of prostrate (TEVAP) To 60.24 (IM)
Transurethral enucleative procedure
Transurethral prostatectomy NOS
Transurethral resection of prostate (TURP)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',40,'draft',1,'c78a5e27e1b743d5b810c086');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('60.290','procedure','Transurethral resection of ejaculatory duct (TURED) (IM)','60.290 Transurethral resection of ejaculatory duct (TURED) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',40,'draft',1,'08c56872a8854859af53e987');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('60.5','category','Radical prostatectomy','60.5     Radical prostatectomy
Prostatovesiculectomy
Radical prostatectomy by any approach','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',40,'draft',0,'7c3f9e44ba8a5b0b38286e9c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('60.50','procedure','Laparoscopic radical prostatectomy (IM)','60.50 Laparoscopic radical prostatectomy (IM)
Excludes: cystoprostatectomy (57.71)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',40,'draft',1,'b6fdac5312f6ac77ade3554a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('60.6','category','Other prostatectomy','60.6     Other prostatectomy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',40,'draft',0,'91856337ca7dce1bc9b8b3f2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('60.62','procedure','Perineal prostatectomy','60.62   Perineal prostatectomy
Cryoablation of prostate (IM)
Cryoprostatectomy
Cryosurgery of prostate
Radical cryosurgical ablation of prostate (RCSA)
Excludes: local excision of lesion of prostate (60.61)
Cryoablation of prostate 60.23 (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',40,'draft',1,'57f732e7c68a8d52729203ce');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('60.9','category','Other operations on prostate','60.9     Other operations on prostate','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',40,'draft',0,'523d8e45743806af2ff68322');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('60.97','procedure','Other transurethral destruction of prostate tissue by other thermotherapy','60.97   Other transurethral destruction of prostate tissue by other thermotherapy
Radiofrequency thermotherapy
Transurethral needle ablation (TUNA) of prostate (IM) to 60.22
Excludes: Prostatectomy:
other (60.61-60.69)
radical (60.5)
retropubic (60.4)
suprapubic (60.3)
transurethral (60.21-60.29)
62       Operations on testes','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',40,'draft',1,'e5621fef15f3cfedd04e906f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('62.0','category','Incision of testis','62.0     Incision of testis','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',41,'draft',0,'74f845f7c7828a9cd6c58f09');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('62.00','procedure','Exploration scrotal contents and testis, unilateral (IM)','62.00 Exploration scrotal contents and testis, unilateral (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',41,'draft',1,'3c97993613d1e2ed73c7cc78');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('62.3','category','Unilateral orchiectomy','62.3     Unilateral orchiectomy
Orchidectomy (with epididymectomy) NOS','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',41,'draft',0,'1fffb8df15ebfcfff6fee108');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('62.30','procedure','Orchidectomy with insertion testicular prosthesis unilateral (IM)','62.30 Orchidectomy with insertion testicular prosthesis unilateral (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',41,'draft',1,'b75af588a659e2c1fb49f5a5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('62.31','procedure','Laparoscopic orchiectomy (IM)','62.31 Laparoscopic orchiectomy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',41,'draft',1,'e935a7d5a658f20edf3bf2e8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('62.4','category','Bilateral orchiectomy','62.4     Bilateral orchiectomy
Male castration
Radical bilateral orchiectomy (with epididymectomy)
Code also any synchronous lymph node dissection (40.3, 40.5)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',41,'draft',0,'f90b9ecaf9e7b0274290a676');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('62.41','procedure','Removal of both testes at same operative episode','62.41   Removal of both testes at same operative episode
Bilateral orchidectomy NOS','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',41,'draft',0,'65314ed3d6a081fdca2c82e2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('62.410','procedure','Orchidectomy with insertion testicular prosthesis bilateral (IM)','62.410 Orchidectomy with insertion testicular prosthesis bilateral (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',41,'draft',1,'a831eac3ce8d84acdae7fc01');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('62.411','procedure','Radical orchidectomy (IM)','62.411 Radical orchidectomy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',41,'draft',1,'4b4dd3cda00cfe04ab1fbe87');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('62.42','procedure','Removal of remaining testis','62.42   Removal of remaining testis
Removal of solitary testis','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',41,'draft',0,'b7fa618159a20a92cd7b82fc');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('62.43','procedure','Subcapsular orchidectomy (IM)','62.43 Subcapsular orchidectomy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',41,'draft',1,'db57a54db89418548570e9f9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('62.5','category','Orchiopexy','62.5     Orchiopexy
Mobilization and replacement of testis in scrotum
Orchiopexy with detorsion of testis
Torek (-Bevan) operation (orchidopexy) (first stage) (second stage)
Transplantation to and fixation of testis in scrotum','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',41,'draft',0,'4db2b51cdd69d6c10c5f9d91');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('62.50','procedure','Laparoscopic orchidopexy (IM)','62.50 Laparoscopic orchidopexy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',41,'draft',1,'1b21107691128a50af9561fd');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('62.51','procedure','Revision orchidopexy for undescended testis (IM)','62.51 Revision orchidopexy for undescended testis (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',41,'draft',1,'4716ef8893d251aea2c28fa0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('62.52','procedure','Laparoscopic orchidopexy fowler stephen (IM)','62.52 Laparoscopic orchidopexy fowler stephen (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',41,'draft',1,'ec97523fc24022847990eef6');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('62.9','category','Other operations on testes','62.9     Other operations on testes','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',41,'draft',0,'cb9f43fcc84162b6858ff210');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('62.93','procedure','Artifical erection of penis with injection (IM)','62.93   Artifical erection of penis with injection (IM)
63       Operations on spermatic cord, epididymis, and vas deferens','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',41,'draft',1,'ab9d9e0e384fbe9bd8ca4c13');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('63.0','category','Diagnostic procedures on spermatic cord, epididymis, and vas deferens','63.0     Diagnostic procedures on spermatic cord, epididymis, and vas deferens','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',42,'draft',0,'052bc87ab2091d3c3232cf9c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('63.02','procedure','Percutaneous epididymal sperm aspiration (PESA) (IM)','63.02   Percutaneous epididymal sperm aspiration (PESA) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',42,'draft',1,'b6e26c5c37fa3cba711bb97a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('63.03','procedure','Microsurgical epididymal sperm aspiration (MESA) (IM)','63.03   Microsurgical epididymal sperm aspiration (MESA) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',42,'draft',1,'a421b276b2eb190ffb8190dd');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('63.04','procedure','Excision of spermatocele (IM)','63.04   Excision of spermatocele (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',42,'draft',1,'ff0c7d58a8fb96b88a353515');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('63.1','category','Excision of varicocele and hydrocele of spermatic cord','63.1     Excision of varicocele and hydrocele of spermatic cord
High ligation of spermatic vein
Hydrocelectomy of canal of Nuck','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',42,'draft',0,'de9dfb2c08d3ba8618d1cd02');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('63.10','procedure','Microligation for varicocele (IM)','63.10   Microligation for varicocele (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',42,'draft',1,'bc57657231971d1c24d01281');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('63.11','procedure','Laparoscopic varicocele ligation (IM)','63.11   Laparoscopic varicocele ligation (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',42,'draft',1,'7b4e8623117dc42062d3e978');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('63.12','procedure','Penile dorsal vein ligation (IM)','63.12   Penile dorsal vein ligation (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',42,'draft',1,'031a2fb58e1f101d8423c414');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('63.9','category','Other operations on spermatic cord, epididymis, and vas deferens','63.9     Other operations on spermatic cord, epididymis, and vas deferens','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',42,'draft',0,'d72528a996012479effa414a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('63.96','procedure','Testicular sperm aspiration (TESA) (IM)','63.96   Testicular sperm aspiration (TESA) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',42,'draft',1,'9043bf903b944cba5f62be72');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('63.97','procedure','Testicular sperm extraction (TESE) (IM)','63.97   Testicular sperm extraction (TESE) (IM)
64       Operations on penis
Includes: operations on:
corpora cavernosa
glans penis
prepuce','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',42,'draft',1,'16301a1811d5ab334b708ed9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('64.2','category','Local excision or destruction of lesion of penis','64.2     Local excision or destruction of lesion of penis','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',42,'draft',0,'a12b1bdddded8c199df55408');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('64.20','procedure','Excision of sclerofibromatosis penis (IM)','64.20 Excision of sclerofibromatosis penis (IM)
Excludes: biopsy of penis (64.11)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',42,'draft',1,'19a8aaaeeedea606a6127df4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('64.3','category','Amputation of penis','64.3     Amputation of penis','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',42,'draft',0,'b2180a2a9af68de7ee4821fb');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('64.30','procedure','Partial amputation of penis (IM)','64.30 Partial amputation of penis (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',42,'draft',1,'4fed9801a8f61f090fb74212');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('64.4','category','Repair and plastic operation on penis','64.4     Repair and plastic operation on penis','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',42,'draft',0,'7fbf2d3e6925c5da34db4c8b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('64.44','procedure','Reconstruction of penis','64.44   Reconstruction of penis','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',42,'draft',0,'a9d9a34503e7b4e9349d196d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('64.440','procedure','Reconstruction of buried penis (IM)','64.440 Reconstruction of buried penis (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',42,'draft',1,'9bbaf539cb10709507186e62');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('64.45','procedure','Replantation of penis','64.45   Replantation of penis
Reattachment of amputated penis','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',42,'draft',0,'f95607429461a4327d68d244');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('64.46','procedure','Repair fracture penis (IM)','64.46   Repair fracture penis (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',42,'draft',1,'9eb78e5a9afd6b391551c9e1');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('64.49','procedure','Other repair of penis','64.49   Other repair of penis
Plication of tunica albuginea of penis (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',42,'draft',1,'be7e611e1f84137a98631614');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('64.490','procedure','Phalloplasty (IM)','64.490 Phalloplasty (IM)
Excludes: repair of epispadias and hypospadias (58.45)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',42,'draft',1,'fb318a72e706d6b27d61050b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('64.9','category','Other operations on male genital organs','64.9     Other operations on male genital organs','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',43,'draft',0,'6af0aa0d6e060c8c5372107a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('64.94','procedure','Fitting of external prosthesis of penis','64.94   Fitting of external prosthesis of penis
Penile prosthesis NOS','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',43,'draft',0,'7498a483a7a8cb7b3ab03377');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('64.940','procedure','Correction of chordee of penis with graft (IM)','64.940 Correction of chordee of penis with graft (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',43,'draft',1,'1a96741efbe0fca2217d6f55');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('64.97','procedure','Insertion or replacement of inflatable penile prosthesis','64.97   Insertion or replacement of inflatable penile prosthesis
Insertion of cylinders into shaft of penis and placement of pump and reservoir','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',43,'draft',0,'6992344b2f726923c179c1ec');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('64.970','procedure','Revision artificial erection device (IM)','64.970 Revision artificial erection device (IM)
Excludes: external penile prosthesi (64.94)
non-inflatable penile prosthesi (64.95)
plastic repair, penis (64.43-64.49)
12. OPERATIONS ON THE FEMALE GENITAL ORGANS (65-71)
65       Operations on ovary','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',43,'draft',1,'29395208b391db27bccf91f0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('65.9','category','Other operations on ovary','65.9     Other operations on ovary','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',44,'draft',0,'e618bd07ea7b3aaf5a30a07e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('65.96','procedure','Transposition of ovarium (IM)','65.96    Transposition of ovarium (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',44,'draft',1,'6038d61ddd1af48bfeda4c3d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('65.97','procedure','Laparoscopy, transposition of ovarium (IM)','65.97    Laparoscopy, transposition of ovarium (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',44,'draft',1,'a7efd72e0d3952c65cc58776');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('65.98','procedure','Laparoscopy ovarian drilling (IM)','65.98    Laparoscopy ovarian drilling (IM)
66       Operations on fallopian tubes','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',44,'draft',1,'78f8f10553e02495a27b5056');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('66.0','category','Salpingotomy and salpingostomy','66.0     Salpingotomy and salpingostomy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',44,'draft',0,'5b910c800146fd2ef45f52f5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('66.03','procedure','Laparoscopy salpingotomy (IM)','66.03    Laparoscopy salpingotomy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',44,'draft',1,'5eb9af36e06a1e5b593eba56');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('66.04','procedure','Laparoscopy salpingostomy (IM)','66.04    Laparoscopy salpingostomy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',44,'draft',1,'79b5452d8b9175269e845019');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('66.1','category','Diagnostic procedures on fallopian tubes','66.1     Diagnostic procedures on fallopian tubes','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',44,'draft',0,'e9f983d4089d3d8f57dab9ce');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('66.18','procedure','Laparoscopy, other diagnostic procedures on fallopian tubes (IM)','66.18    Laparoscopy, other diagnostic procedures on fallopian tubes (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',44,'draft',1,'285f5b1863d2fbcea3899345');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('66.4','category','Total unilateral salpingectomy','66.4     Total unilateral salpingectomy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',44,'draft',0,'aa8c8ee87bacb2472fd1b920');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('66.40','procedure','Laparoscopy, total unilateral salpingectomy (IM)','66.40 Laparoscopy, total unilateral salpingectomy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',44,'draft',1,'11d2afc5ce80077fa7fff47a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('66.5','category','Total bilateral salpingectomy','66.5     Total bilateral salpingectomy
Excludes: bilateral partial salpingectomy for sterilization (66.39)
that with oophorectomy (65.61-65.64)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',44,'draft',0,'b08d772a311008446c375cee');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('66.50','procedure','Laparoscopy, removal of both fallopian tubes at same operative episode (IM)','66.50    Laparoscopy, removal of both fallopian tubes at same operative episode (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',44,'draft',1,'abac7641eb135fbe122a7ac2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('66.6','category','Other salpingectomy','66.6     Other salpingectomy
Includes: salpingectomy by:
cauterization
coagulation
electrocoagulation
excision
Excludes: fistulectomy (66.73)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',44,'draft',0,'f30e684da0bc67b8cd8683a0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('66.60','procedure','Laparoscopy, salpingectomy with removal of tubal pregnancy (IM)','66.60    Laparoscopy, salpingectomy with removal of tubal pregnancy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',44,'draft',1,'47b3f911abd7206bcc9fc334');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('66.68','procedure','Laparoscopy, other partial salpingectomy (IM)','66.68    Laparoscopy, other partial salpingectomy (IM)
69       Other operations on uterus and supporting structures','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',44,'draft',1,'375c6b9e747d3105963ba99f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('69.4','category','Uterine repair','69.4     Uterine repair
Excludes: repair of current obstetric laceration (75.50-75.52)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',44,'draft',0,'925550ff24d1f6f5bdbb59a0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('69.40','procedure','Laparoscopic reconstructive surgery of uterus (IM)','69.40    Laparoscopic reconstructive surgery of uterus (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',44,'draft',1,'04cf421fd2865c31cae351c2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('69.9','category','Other operations on uterus, cervix, and supporting structures','69.9     Other operations on uterus, cervix, and supporting structures
Excludes: obstetric dilation or incision of cervix (73.1, 73.93)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',44,'draft',0,'c34888ebce3a22b4c48bf96b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('69.90','procedure','Uterine compression suture (B-Lynch) (IM)','69.90   Uterine compression suture (B-Lynch) (IM)
70       Operations on vagina and cul-de-sac','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',45,'draft',1,'d134a0c87f501a53d59ca4d0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('70.7','category','Other repair of vagina','70.7     Other repair of vagina
Excludes: lysis of intraluminal adhesions (70.13)
repair of current obstetric laceration (75.69)
that associated with cervical amputation (67.4)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',45,'draft',0,'97435f0092b7952ef7c6d95b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('70.70','procedure','Laparoscopic reconstructive surgery of pelvic floor (IM)','70.70   Laparoscopic reconstructive surgery of pelvic floor (IM)
13. OBSTETRICAL PROCEDURES (72-75)
14. OPERATIONS ON THE MUSCULOSKELETAL SYSTEM (76-84)
76       Operations on facial bones and joints','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',45,'draft',1,'63095d5fe1cb3cf00b90ee8d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('76.3','category','Partial ostectomy of facial bone','76.3     Partial ostectomy of facial bone','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',47,'draft',0,'a993f5d182f5c28d31beab97');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('76.32','procedure','Partial maxillectomy/open medial maxillectomy (IM)','76.32   Partial maxillectomy/open medial maxillectomy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',47,'draft',1,'dd77b9d2b39a04150c20d966');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('76.33','procedure','Total maxillectomy (IM)','76.33   Total maxillectomy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',47,'draft',1,'32cc96e019ef76f8156fbfc2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('76.34','procedure','Endoscopic medial maxillectomy (IM)','76.34   Endoscopic medial maxillectomy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',47,'draft',1,'74c1063971263f0a5619090c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('76.4','category','Excision and reconstruction of facial bones','76.4     Excision and reconstruction of facial bones','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',47,'draft',0,'b4b1866348dce935419ccc18');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('76.46','procedure','Other reconstruction of other facial bone','76.46   Other reconstruction of other facial bone
Reconstructive cranioplasty for calvarial disporpotion (IM)
Excludes: that with synchronous total ostectomy (76.44)
80       Incision and excision of joint structures','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',47,'draft',1,'6611d08be65f011fe352f2fb');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('80.5','category','Excision, destruction and other repair of intervertebral disc','80.5     Excision, destruction and other repair of intervertebral disc','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',47,'draft',0,'71a902fe02ec5c7849655883');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('80.55','procedure','Microdissectomy (endoscopic/microscopic) (IM)','80.55   Microdissectomy (endoscopic/microscopic) (IM)
81       Repair and plastic operations on joint structures','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',47,'draft',1,'6a01338977670ef2d2839420');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('81.0','category','Spinal fusion','81.0     Spinal fusion
Anterior Cervical dissectomy and fusion (ACDF) (IM)
Anterior Cervical Corpectomy and Fusion (ACCF) or Multilevel ACDF (IM)
Note: Spinal fusion is classified by the anatomic portion (column) fused and the technique (approach)
used to perform the fusion.
For the anterior column, the body (corpus) of adjacent vertebrae are fused (interbody fusion).
The anterior column can be fused using an anterior, lateral, or posterior technique.
For the posterior column, posterior structures of adjacent vertebrae are fused (pedicle,
lamina, facet, transverse process, or "gutter" fusion). A posterior column fusion can be
performed using a posterior, posterolateral, or lateral transverse technique.
Includes:    arthrodesis of spine with:
bone graft
internal fixation
Code also any insertion of interbody spinal fusion device (84.51)
any insertion of recombinant bone morphogenetic protein (84.52)
any synchronous excision of (locally) harvested bone for graft (77.70-77.79)
the total number of vertebrae fused (81.62-81.64)
Excludes: correction of pseudarthrosis of spine (81.30-81.39)
refusion of spine (81.30-81.39)
83       Operations on muscle, tendon, fascia, and bursa, except hand','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',47,'draft',1,'81f26a60dbe34b5898eb669f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('83.15','procedure','Escharotomy (IM)','83.15   Escharotomy (IM)
15. OPERATIONS ON THE INTEGUMENTARY SYSTEM (85-86)
85       Operations on the breast','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',47,'draft',1,'e6d0139d5829755234eb0f1c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('85.1','category','Diagnostic procedures on breast','85.1     Diagnostic procedures on breast','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',48,'draft',0,'9dc35ffdf63e806be8d3e39c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('85.11','procedure','Closed [percutaneous] [needle] biopsy of breast','85.11    Closed [percutaneous] [needle] biopsy of breast','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',48,'draft',0,'1434c0ffa839d65e8ff2f861');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('85.110','procedure','MR-guided stereotactic biopsy/localization of lesion or tissue of breast','85.110 MR-guided stereotactic biopsy/localization of lesion or tissue of breast
(IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',48,'draft',1,'124df818bbb164ba752e91d1');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('85.111','procedure','Mammography-guided stereotactic biopsy/localization of lesion or','85.111 Mammography-guided stereotactic biopsy/localization of lesion or
tissue of breast (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',48,'draft',1,'8da1dd70a870406813c17596');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('85.7','category','Total reconstruction of breast','85.7     Total reconstruction of breast','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',48,'draft',0,'f560a1c663c5d1508c006fd8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('85.70','procedure','Total reconstruction of breast, not otherwise specified','85.70    Total reconstruction of breast, not otherwise specified
Perforator flap, free','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',48,'draft',0,'1aae5acef20faa967bc14f24');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('85.701','procedure','Superomedial thigh flap (IM)','85.701 Superomedial thigh flap (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',48,'draft',1,'e8e6d3536e8b4745a57ec745');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('85.702','procedure','Lateral arm free (IM)','85.702 Lateral arm free (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',48,'draft',1,'637986269bc355c8b4d74fb4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('85.704','procedure','Fibular flap, free (IM)','85.704 Fibular flap, free (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',48,'draft',1,'c80dc0e48091c70ed9d7318a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('85.705','procedure','Lymph node transfer flap, free (IM)','85.705 Lymph node transfer flap, free (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',48,'draft',1,'177654ba547aaa9b98f252f2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('85.706','procedure','Lymphovenous anastomosis (IM)','85.706 Lymphovenous anastomosis (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',48,'draft',1,'9545af87bfc8ba9d90b06103');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('85.707','procedure','Groin flap, free (IM)','85.707 Groin flap, free (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',48,'draft',1,'839dc2c03858e37530f30314');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('85.708','procedure','Jejunal flap, free (IM)','85.708 Jejunal flap, free (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',48,'draft',1,'16434687922ee3fdf4aa6cfa');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('85.709','procedure','Dorsalis pedis flap, free (IM)','85.709 Dorsalis pedis flap, free (IM)
86       Operations on skin and subcutaneous tissue','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',48,'draft',1,'000777066ed259ca617733a6');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('86.0','category','Incision of skin and subcutaneous tissue','86.0     Incision of skin and subcutaneous tissue','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',48,'draft',0,'3062214c1403e8cf07523c8f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('86.06','procedure','Insertion of totally implantable infusion pump','86.06    Insertion of totally implantable infusion pump','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',48,'draft',0,'957fcfacf04be765c7c490c8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('86.060','procedure','Insertion prostatic stent/coil with ultrasound control (IM)','86.060 Insertion prostatic stent/coil with ultrasound control (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',48,'draft',1,'1265cad71f8ebb3d5117db29');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('86.061','procedure','Insertion prostatic stent/coil with visual (IM)','86.061 Insertion prostatic stent/coil with visual (IM)
Code also any associated catheterization
Excludes: insertion of totally implantable vascular access device (86.07)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',48,'draft',1,'c18eae39282ae66eef7fbf1f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('86.09','procedure','Other incision of skin and subcutaneous tissue','86.09    Other incision of skin and subcutaneous tissue
Creation of thalamic stimulator pulse generator pocket, new site
Escharotomy (IM)
Exploration:
sinus tract, skin
superficial fossa
Relocation of subcutaneous device pocket NEC
Reopening subcutaneous pocket for device revision without replacement
Undercutting of hair follicle
Excludes: creation of loop recorder pocket, new site and insertion/relocation of device
(37.79)
creation of pocket for implantable, patient-activated cardiac event recorder and
insertion/relocation of device (37.79)
Escharotomy 83.15 (IM)
removal of catheter from cranial cavity (01.27)
that for drainage (86.04)
that of:
cardiac pacemaker pocket, new site (37.79)
fascial compartments of face and mouth (27.0)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',48,'draft',1,'49028e80596b1b885cdae972');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('86.090','procedure','Frozen Section (Potong Beku) (IM)','86.090 Frozen Section (Potong Beku) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',49,'draft',1,'d3f6c14dba66111c396f0930');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('86.1','category','Diagnostic procedures on skin and subcutaneous tissue','86.1     Diagnostic procedures on skin and subcutaneous tissue','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',49,'draft',0,'45552331eb8abcf70edf2b02');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('86.12','procedure','Skin prick test (IM)','86.12   Skin prick test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',49,'draft',1,'0debeb63e97b4ace36af0712');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('86.13','procedure','Skin end-point titration test (IM)','86.13   Skin end-point titration test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',49,'draft',1,'ea1317b499f6e291505aaeb1');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('86.3','category','Other local excision or destruction of lesion or tissue of skin and subcutaneous tissue','86.3     Other local excision or destruction of lesion or tissue of skin and subcutaneous tissue
Destruction of skin by:
cauterization cryosurgery
fulguration
laser beam
That with Z-plasty','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',49,'draft',0,'92a9b5c394cfda79d57158c8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('86.630','procedure','Full thickness skin graft of genitals (IM)','86.630 Full thickness skin graft of genitals (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',49,'draft',1,'c4708e27d5fd2227f80e5eb0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('86.631','procedure','Small split skin graft of genitals (IM)','86.631 Small split skin graft of genitals (IM)
Excludes: adipectomy (86.83)
biopsy of skin (86.11)
wide or radical excision of skin (86.4)
Z-plasty without excision (86.84)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',49,'draft',1,'0701d7bd49f8ea02faee7af3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('86.7','category','Pedicle grafts or flaps','86.7     Pedicle grafts or flaps
Excludes: construction or reconstruction of:
penis (64.43-64.44)
trachea (31.75)
vagina (70.61-70.64)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',49,'draft',0,'94a29da6665da9ccee1dfd49');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('86.71','procedure','Cutting and preparation of pedicle grafts or flaps','86.71   Cutting and preparation of pedicle grafts or flaps
Elevation of pedicle from its bed
Flap design and raising
Partial cutting of pedicle or tube
Pedicle delay','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',49,'draft',0,'3784aa895dad1b9976dcb344');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('86.710','procedure','Tongue flap (IM)','86.710 Tongue flap (IM)
Excludes: pollicization or digita transfer (82.61, 82.81)
revision of pedicle (86.75)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',49,'draft',1,'c8ad13d6af4769731d9fce51');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('86.74','procedure','Attachment of pedicle or flap graft to other sites','86.74   Attachment of pedicle or flap graft to other sites
Attachment by:
advanced flap
double pedicled flap
pedicle graft
rotating flap
sliding flap
tube graft','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',49,'draft',0,'912f2902f0e863ba872eccb0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('86.740','procedure','Cross leg flap (IM)','86.740 Cross leg flap (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',50,'draft',1,'7f4ce0363ed6e0da58b9fc6b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('86.741','procedure','Deltopectoral flap (IM)','86.741 Deltopectoral flap (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',50,'draft',1,'5ecdc8a17e7cbebb19c57556');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('86.742','procedure','Omental flap (IM)','86.742 Omental flap (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',50,'draft',1,'00d0ebdd8dc89aee790d7589');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('86.743','procedure','Simple & small local skin flap, genitals (IM)','86.743 Simple & small local skin flap, genitals (IM)
16. MISCELLANEOUS DIAGNOSTIC AND THERAPEUTIC PROCEDURES (87-99)
88       Other diagnostic radiology and related techniques','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',50,'draft',1,'eed0ef8bf2accf76f8a75e26');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.3','category','Other x-ray','88.3     Other x-ray','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',51,'draft',0,'9560ca29c7b56bc241d4507c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.38','procedure','Other computerized axial tomography','88.38   Other computerized axial tomography
C.A.T. scan NOS','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',51,'draft',0,'92eeba7b426c348eb986b56f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.380','procedure','CT Simulator 3D (IM)','88.380 CT Simulator 3D (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',51,'draft',1,'e7071f04eb3a47cce546dc48');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.381','procedure','CT simulator: Intensity-Modulated Radiotherapy (IMRT)/Volumetric','88.381 CT simulator: Intensity-Modulated Radiotherapy (IMRT)/Volumetric
Modulated Arc Therapy (VMAT) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',51,'draft',1,'cc50a8bb85a5805a4fffeee2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.382','procedure','CT Simulator Stereotactic (IM)','88.382 CT Simulator Stereotactic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',51,'draft',1,'f8591b70ba9d72b45df097a5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.383','procedure','CT Simulator 4D (IM)','88.383 CT Simulator 4D (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',51,'draft',1,'6d56ade06b9e63bacbf13742');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.384','procedure','CT Simulator DIBH (IM)','88.384 CT Simulator DIBH (IM)
Excludes: C.A.T. scan of:
abdomen (88.01)
head (87.03)
heart (87.41)
kidney (87.71)
thorax (87.41)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',51,'draft',1,'2cb4d21d1fc95e36755a4e0d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.39','procedure','X-ray, other and unspecified','88.39   X-ray, other and unspecified','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',51,'draft',0,'a226bef2e3358cde8fbc2699');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.390','procedure','Conventional Simulator (IM)','88.390 Conventional Simulator (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',51,'draft',1,'9a9c540bc052db3d4f5d173b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.7','category','Diagnostic ultrasound','88.7     Diagnostic ultrasound
Includes: Echography
Non-invasive ultrasound
Ultrasonic angiography
Ultrasonography
Excludes: intravascular imaging (adjunctive) (IVUS) (00.21-00.29)
therapeutic ultrasound (00.01-00.09)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',51,'draft',0,'81f8fea6464b20b85b67478e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.70','procedure','Videourodynamic (IM)','88.70   Videourodynamic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',51,'draft',1,'00ac312538f92d7715b52bb1');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.71','procedure','Diagnostic ultrasound of head and neck','88.71   Diagnostic ultrasound of head and neck
Determination of midline shift of brain
Echoencephalography
Excludes: eye (95.13)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',51,'draft',0,'fe2e4e8fa0d1c6e17d6776c7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.710','procedure','Transcranial doppler(IM)','88.710 Transcranial doppler(IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',51,'draft',1,'cc17fe0bd6e03bd1536b4193');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.711','procedure','Carotid doppler(IM)','88.711 Carotid doppler(IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',51,'draft',1,'ba4da6659be2c8a454e356dd');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.72','procedure','Diagnostic ultrasound of heart','88.72   Diagnostic ultrasound of heart
Echocardiography
Transesophageal echocardiography (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',51,'draft',1,'1de6f80c4149d6f9e264c703');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.720','procedure','Transesophageal echocardiography (TEE) (IM)','88.720 Transesophageal echocardiography (TEE) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',51,'draft',1,'95f9b71eb7344764cb772a14');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.721','procedure','Diagnostic doppler ultrasound of heart (IM)','88.721 Diagnostic doppler ultrasound of heart (IM)
Excludes: echocardiography of heart chambers (37.28)
intracardiac echocardiography (ICE) (37.28)
intravascular (IVUS) imaging of coronary vessels (00.24)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',51,'draft',1,'b5af430557d944141497581b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.73','procedure','Diagnostic ultrasound of other sites of thorax','88.73    Diagnostic ultrasound of other sites of thorax
Aortic arch ultrasonography
Breast ultrasonography
Lung ultrasonography','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',52,'draft',0,'edb192c120d63e9a15134681');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.730','procedure','Diagnostic doppler ultrasound of other sites of thorax (IM)','88.730 Diagnostic doppler ultrasound of other sites of thorax (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',52,'draft',1,'26ab1d3a18bcccaf6fc2d1f7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.76','procedure','Diagnostic ultrasound of abdomen and retroperitoneum','88.76    Diagnostic ultrasound of abdomen and retroperitoneum','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',52,'draft',0,'32a325589d7ca1cba6bd69e9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.760','procedure','Doppler scrotal ultrasound (IM)','88.760 Doppler scrotal ultrasound (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',52,'draft',1,'09605dd20477b75622969fc7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.761','procedure','Transrectal ultra sound (IM)','88.761 Transrectal ultra sound (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',52,'draft',1,'79242f1478c5263d2505c312');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.79','procedure','Other diagnostic ultrasound','88.79    Other diagnostic ultrasound
Ultrasonography of:
multiple sites
nongravid uterus
total body','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',52,'draft',0,'1e321c1b6df94023b7af8491');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.790','procedure','Diagnostic doppler ultrasound of breast (IM)','88.790 Diagnostic doppler ultrasound of breast (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',52,'draft',1,'6b322fbd86275cd75a4e7814');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.791','procedure','Diagnostic elastography ultrasound of breast (IM)','88.791 Diagnostic elastography ultrasound of breast (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',52,'draft',1,'5195a6fb3f874d1904b25044');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.792','procedure','Diagnostic grayscale ultrasound of breast (IM)','88.792 Diagnostic grayscale ultrasound of breast (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',52,'draft',1,'e3305d5c65eeabfba4b3adfb');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('88.793','procedure','Saline infusion sonography (IM)','88.793 Saline infusion sonography (IM)
89       Interview, evaluation, consultation, and examination','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',52,'draft',1,'f46c252a196a3476e032e333');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('89.0','category','Diagnostic interview, consultation, and evaluation','89.0     Diagnostic interview, consultation, and evaluation
Excludes: psychiatric diagnostic interview (94.11-94.19)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',52,'draft',0,'066adf87adc26f33f9335f76');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('89.07','procedure','Consultation, described as comprehensive','89.07    Consultation, described as comprehensive','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',52,'draft',0,'38cf166f6e39c8f4f7577c16');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('89.070','procedure','Pre-operative Consultation (IM)','89.070 Pre-operative Consultation (IM)
Note : Consultation from spesialist Before Operative Procedure','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',52,'draft',1,'94965538ec3845849f924402');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('89.071','procedure','Other Spesialist Consultation (IM)','89.071 Other Spesialist Consultation (IM)
Note : If current Spesialis make consultation to Other specialist','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',52,'draft',1,'a38f667407daf996d7621e45');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('89.3','category','Other anatomic and physiologic measurements and manual examinations','89.3     Other anatomic and physiologic measurements and manual examinations
Excludes: the listed procedures when done as part of a general physical examination (89.7)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',52,'draft',0,'f4e4ddb1cb4371271c987282');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('89.37','procedure','Vital capacity determination','89.37    Vital capacity determination','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',52,'draft',0,'3a5466c783c51b45ebd7b473');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('89.370','procedure','Six minute walking test (IM)','89.370 Six minute walking test (IM)
Excludes: endoscopic pulmonary airway flow measurement (33.72)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',52,'draft',1,'3dea741fa9a8bfc16107caa8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('89.38','procedure','Other nonoperative respiratory measurements','89.38    Other nonoperative respiratory measurements
Plethysmography for measurement of respiratory function
Thoracic impedance plethysmography
Excludes: endoscopic pulmonary airway flow measurement (33.72)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',52,'draft',0,'037cdc94eab322d70c9d52f6');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('89.380','procedure','Cardio pulmonary exercise test (IM)','89.380 Cardio pulmonary exercise test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',52,'draft',1,'6721ec83cd0ef4129602bfd2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('89.381','procedure','Difusion lung capacity test (IM)','89.381 Difusion lung capacity test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',52,'draft',1,'1dc53b718d9b0162a0d45669');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('89.382','procedure','Peak expiratory flow rate examination (IM)','89.382 Peak expiratory flow rate examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',53,'draft',1,'b63b2d7f06e391bd75e63793');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('89.383','procedure','Bronchodilator (reversibility) examination (IM)','89.383 Bronchodilator (reversibility) examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',53,'draft',1,'e310c30dc7e76e204a3e3a2a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('89.384','procedure','Thoracic gas volume examination (IM)','89.384 Thoracic gas volume examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',53,'draft',1,'5677ab35987fecfc8655e8c9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('89.385','procedure','Residual lung volume examination (IM)','89.385 Residual lung volume examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',53,'draft',1,'f68d6f7e95058a3be276f2db');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('89.39','procedure','Other nonoperative measurements and examinations','89.39   Other nonoperative measurements and examinations
14 C-Urea breath test
Basal metabolic rate [BMR]
Gastric:
analysis
function NEC','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',53,'draft',0,'4f7608216d2cb954a79d3830');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('89.390','procedure','Bronchial provocation test (IM)','89.390 Bronchial provocation test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',53,'draft',1,'9a9c08ddf175187fd61b898a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('89.391','procedure','Exhaled substance breath test (IM)','89.391 Exhaled substance breath test (IM)
Excludes: body measurement (93.07)
cardiac tests (89.41-89.69)
fundus photography (95.11)
limb length measurement (93.06)
90       Microscopic examination-I
The following fourth-digit subclassification is for use with categories in section 90 to identify type of
examination:
1   bacterial smear
2   culture
3   culture and sensitivity
4   parasitology
40 parasitology culture and others (IM)
41 Parasite and fungal serology / molecular examination (IM)
42 Fungal culture yeast and susceptibility test (IM)
43 Fungal culture mold and susceptibility test (IM)
49 Parasitology smear (IM)
5   toxicology
6   cell block and Papanicolaou smear
60 cell block (IM)
600 Microscopic Immunohistochemistry examination (IM)
601 Microscopic Histophatology examination of specimen from biopsy (IM)
602 Microscopic Histophatology examination of specimen from debulking (IM)
603 Microscopic Histochemistry examination (IM)
61     papanicolaou and giemsa smear (IM)
69     other cell block and papanicolaou smear (IM)
7   Molecular biological test (IM) or Cythopathologic (IM)
9   other microscopic examination
90     Microscopic ISH examination (IM)
91     Microscopic CISH examination (IM)
92     Microscopic FISH examination (IM)
93     Microscopic FCR examination (IM)
94     Screening for the Human Immunodeficiency Virus (HIV) Infection (IM)
95     Prognostic Monitoring for the Human Immunodeficiency Virus (HIV) (IM)
98     Other specified microscopic examinations (IM)
99     Other Microscopic examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',53,'draft',1,'3a70bfa70d0679065ce110c2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.0','category','Microscopic examination of specimen from nervous system and of spinal fluid','90.0     Microscopic examination of specimen from nervous system and of spinal fluid','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',54,'draft',0,'39650e3ba21431735235c724');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.04','procedure','Microscopic examination of specimen from nervous system and of spinal fluid,','90.04   Microscopic examination of specimen from nervous system and of spinal fluid,
parasitology','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',54,'draft',0,'7a2754cc7ae666c2002882f5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.040','procedure','Microscopic examination of specimen from nervous system and of','91.040 Microscopic examination of specimen from nervous system and of
spinal fluid, parasitology culture and others (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',54,'draft',1,'c6aae215d16db55bd3ebc853');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.041','procedure','Parasite and fungal serology / molecular examination of specimen from','90.041 Parasite and fungal serology / molecular examination of specimen from
nervous system and of spina fluid (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',54,'draft',1,'667f28c52e1a1d0f965fae4e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.042','procedure','Microscopic examination of specimen from nervous system and of','90.042 Microscopic examination of specimen from nervous system and of
spinal fluid, Fungal culture yeast and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',54,'draft',1,'884601e0d4933208e46b71ff');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.043','procedure','Microscopic examination of specimen from nervous system and of','90.043 Microscopic examination of specimen from nervous system and of
spinal fluid, Fungal culture mold and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',54,'draft',1,'006d7dc269a272943dcb2056');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.049','procedure','Other Microscopic examination of specimen from nervous system and','90.049 Other Microscopic examination of specimen from nervous system and
of spina fluid, parasitology smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',54,'draft',1,'0ffeaf0cadb6bd683d4fc22a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.06','procedure','Microscopic examination of specimen from nervous system and of spinal fluid,','90.06   Microscopic examination of specimen from nervous system and of spinal fluid,
cell block and Papanicolaou smear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',54,'draft',0,'70fe72c8bf843da47de7aa6b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.060','procedure','Microscopic examination of specimen from nervous system and of','90.060 Microscopic examination of specimen from nervous system and of
spinal fluid, cell block (IM)
90.0600 Microscopic examination of specimen from nervous system
and of spinal fluid, Microscopic Immunohistochemistry
examination (IM)
90.0601 Microscopic examination of specimen from nervous system
and of spinal fluid, Microscopic Histophatology examination
of specimen from biopsy (IM)
90.0602 Microscopic examination of specimen from nervous system
and of spinal fluid, Microscopic Histophatology examination
of specimen from debulking (IM)
90.0603 Microscopic examination of specimen from nervous system
and of spinal fluid, Microscopic Histochemistry examination
(IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',55,'draft',1,'4e2bb32015ef17fcb8742d28');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.061','procedure','Microscopic examination of specimen from nervous system and of','90.061 Microscopic examination of specimen from nervous system and of
spinal fluid, papanicolaou and giemsa smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',55,'draft',1,'a87da36b5173ffb321307990');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.069','procedure','Microscopic examination of specimen from nervous system and of','90.069 Microscopic examination of specimen from nervous system and of
spinal fluid, other cell block and papanicolaou smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',55,'draft',1,'00fc8caa5ca8d848a2f484f6');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.07','procedure','Microscopic examination of specimen from nervous system and of spinal fluid,','90.07   Microscopic examination of specimen from nervous system and of spinal fluid,
Molecular biological test (IM) or Cythopathologic (IM)\','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',55,'draft',1,'d2482473341c77df289ff0c6');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.09','procedure','Other Microscopic examination of specimen from nervous system and of spinal','90.09   Other Microscopic examination of specimen from nervous system and of spinal
fluid','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',55,'draft',0,'44d362d45efd1384026c0f64');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.090','procedure','Microscopic examination of specimen from nervous system and of','90.090 Microscopic examination of specimen from nervous system and of
spinal fluid, Microscopic ISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',55,'draft',1,'c9ceb122f6e2bd5019dc7faa');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.091','procedure','Microscopic examination of specimen from nervous system and of','90.091 Microscopic examination of specimen from nervous system and of
spinal fluid, Microscopic CISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',55,'draft',1,'d0a742bd64a1f2a32d54dd7a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.092','procedure','Microscopic examination of specimen from nervous system and of','90.092 Microscopic examination of specimen from nervous system and of
spinal fluid, Microscopic FISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',55,'draft',1,'07df3d4dac85c6325515cc60');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.093','procedure','Microscopic examination of specimen from nervous system and of','90.093 Microscopic examination of specimen from nervous system and of
spinal fluid, Microscopic FCR examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',55,'draft',1,'70ca2afcfa2036268de8d5c6');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.094','procedure','Microscopic examination of specimen from nervous system and of','90.094 Microscopic examination of specimen from nervous system and of
spinal fluid, Screening for the Human Immunodeficiency Virus (HIV)
Infection (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',55,'draft',1,'9385f20bb6232f9126bbb23b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.095','procedure','Microscopic examination of specimen from nervous system and of','90.095 Microscopic examination of specimen from nervous system and of
spinal fluid, Prognostic Monitoring for the Human Immunodeficiency
Virus (HIV) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',55,'draft',1,'5cc363b95b2048da283a6358');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.098','procedure','Microscopic examination of specimen from nervous system and of','90.098 Microscopic examination of specimen from nervous system and of
spinal fluid, Other specified microscopic examinations (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',55,'draft',1,'c6433a28b751bfa95eb5d9de');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.099','procedure','Other microscopic examination of specimen from nervous system and','90.099 Other microscopic examination of specimen from nervous system and
of spina fluid (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',55,'draft',1,'a7c3c3b28660752e3f94151d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.1','category','Microscopic examination of specimen from endocrine gland, not elsewhere classified','90.1     Microscopic examination of specimen from endocrine gland, not elsewhere classified','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',55,'draft',0,'55b069f8959336e19414d9da');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.14','procedure','Microscopic examination of specimen from endocrine gland, not elsewhere','90.14   Microscopic examination of specimen from endocrine gland, not elsewhere
classified, parasitology','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',56,'draft',0,'0ed0d93678ba63cae33180b2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.140','procedure','Microscopic examination of specimen from endocrine gland, not','90.140 Microscopic examination of specimen from endocrine gland, not
elsewhere classified, parasitology culture and others (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',56,'draft',1,'ebd8e3ddb0b79e2f3b150af4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.141','procedure','Parasite and fungal serology / molecular examination of specimen from','90.141 Parasite and fungal serology / molecular examination of specimen from
endocrine gland, not elsewhere classified (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',56,'draft',1,'84d47b27b831c87c2086104c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.142','procedure','Microscopic examination of specimen from endocrine gland, not','90.142 Microscopic examination of specimen from endocrine gland, not
elsewhere classified, Fungal culture yeast and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',56,'draft',1,'098041979a4b7ed89453da0b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.143','procedure','Microscopic examination of specimen from endocrine gland, not','90.143 Microscopic examination of specimen from endocrine gland, not
elsewhere classified, Fungal culture mold and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',56,'draft',1,'474c92d2b4413145148bc515');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.149','procedure','Other Microscopic examination of specimen from endocrine gland, not','90.149 Other Microscopic examination of specimen from endocrine gland, not
elsewhere classified, parasitology smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',56,'draft',1,'d64a0585f7899bf596a5f870');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.16','procedure','Microscopic examination of specimen from endocrine gland, not elsewhere','90.16   Microscopic examination of specimen from endocrine gland, not elsewhere
classified, cell block and Papanicolaou smear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',56,'draft',0,'26832fb060e12403a08168c3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.160','procedure','Microscopic examination of specimen from endocrine gland, not','90.160 Microscopic examination of specimen from endocrine gland, not
elsewhere classified, cell block (IM)
90.1600 Microscopic examination of specimen from endocrine gland,
not elsewhere classified, Microscopic Immunohistochemistry
examination (IM)
90.1601 Microscopic examination of specimen from endocrine gland,
not elsewhere classified, Microscopic Histophatology
examination of specimen from biopsy (IM)
90.1602 Microscopic examination of specimen from endocrine gland,
not elsewhere classified, Microscopic Histophatology
examination of specimen from debulking (IM)
90.1603 Microscopic examination of specimen from endocrine gland,
not elsewhere classified, Microscopic Histochemistry
examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',56,'draft',1,'46ded2734d78cbd64ad91db4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.161','procedure','Microscopic examination of specimen from endocrine gland, not','90.161 Microscopic examination of specimen from endocrine gland, not
elsewhere classified, papanicolaou and giemsa smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',56,'draft',1,'1d6162b2f24cabfc18b25f76');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.169','procedure','Other microscopic examination of specimen from endocrine gland, not','90.169 Other microscopic examination of specimen from endocrine gland, not
elsewhere classified, cell block and papanicolaou smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',56,'draft',1,'96c140e3dfaf3bca1c7ef578');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.17','procedure','Microscopic examination of specimen from endocrine gland, not elsewhere','90.17   Microscopic examination of specimen from endocrine gland, not elsewhere
classified, Molecular biological test (IM) or Cythopathologic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',56,'draft',1,'6c674164dd4e6c4941404577');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.19','procedure','Other Microscopic examination of specimen from endocrine gland, not','90.19   Other Microscopic examination of specimen from endocrine gland, not
elsewhere','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',56,'draft',0,'f23b9f84dc066cc53e0d6b89');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.190','procedure','Microscopic examination of specimen from endocrine gland, not','90.190 Microscopic examination of specimen from endocrine gland, not
elsewhere classified, Microscopic ISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',56,'draft',1,'f1ea89f352da00ef6e781f85');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.191','procedure','Microscopic examination of specimen from endocrine gland, not','90.191 Microscopic examination of specimen from endocrine gland, not
elsewhere classified, Microscopic CISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',56,'draft',1,'4520416df2e27be45b5c890e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.192','procedure','Microscopic examination of specimen from endocrine gland, not','90.192 Microscopic examination of specimen from endocrine gland, not
elsewhere classified, Microscopic FISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',56,'draft',1,'7dd89077460435825e69c8d2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.193','procedure','Microscopic examination of specimen from endocrine gland, not','90.193 Microscopic examination of specimen from endocrine gland, not
elsewhere classified, Microscopic FCR examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',57,'draft',1,'b69df442df54745fa798d48e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.194','procedure','Microscopic examination of specimen from endocrine gland, not','90.194 Microscopic examination of specimen from endocrine gland, not
elsewhere classified, Screening for the Human Immunodeficiency Virus
(HIV) Infection (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',57,'draft',1,'562d79a79e66d0796772f022');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.195','procedure','Microscopic examination of specimen from endocrine gland, not','90.195 Microscopic examination of specimen from endocrine gland, not
elsewhere classified, Prognostic Monitoring for the Human
Immunodeficiency Virus (HIV) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',57,'draft',1,'cb28b4e7915f12b26677d11e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.198','procedure','Microscopic examination of specimen from endocrine gland, not','90.198 Microscopic examination of specimen from endocrine gland, not
elsewhere classified, Other specified microscopic examinations (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',57,'draft',1,'c54ba0582baf172b2e3d9078');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.199','procedure','Other microscopic examination of specimen from endocrine gland, not','90.199 Other microscopic examination of specimen from endocrine gland, not
elsewhere classified (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',57,'draft',1,'1871797988027fac087bba3a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.2','category','Microscopic examination of specimen from eye','90.2     Microscopic examination of specimen from eye','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',57,'draft',0,'4d88e21a4cccb00d87370df4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.24','procedure','Microscopic examination of specimen from eye, parasitology','90.24   Microscopic examination of specimen from eye, parasitology','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',57,'draft',0,'d1502db2d7777df69d1c8b42');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.240','procedure','Microscopic examination of specimen from eye, parasitology culture','90.240 Microscopic examination of specimen from eye, parasitology culture
and others (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',57,'draft',1,'f2cbd7b8649814169ffda8cc');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.241','procedure','Parasite and fungal serology / molecular examination of specimen from','90.241 Parasite and fungal serology / molecular examination of specimen from
eye (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',57,'draft',1,'decd3a070a3ed27e9b1594a5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.242','procedure','Microscopic examination of specimen from eye, Fungal culture yeast','90.242 Microscopic examination of specimen from eye, Fungal culture yeast
and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',57,'draft',1,'3dbffeab2b91a95981a45d54');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.243','procedure','Microscopic examination of specimen from eye, Fungal culture mold','90.243 Microscopic examination of specimen from eye, Fungal culture mold
and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',57,'draft',1,'0fcef9aeba440ce88835a811');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.249','procedure','Other Microscopic examination of specimen from eye, parasitology','90.249 Other Microscopic examination of specimen from eye, parasitology
smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',57,'draft',1,'24b21821a59e02d6818d29d5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.26','procedure','Microscopic examination of specimen from eye, cell block and Papanicolaou','90.26   Microscopic examination of specimen from eye, cell block and Papanicolaou
smear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',57,'draft',0,'b9b47a566ae1a6d8454a7684');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.260','procedure','Microscopic examination of specimen from eye, cell block (IM)','90.260 Microscopic examination of specimen from eye, cell block (IM)
90.2600 Microscopic examination of specimen from eye, Microscopic
Immunohistochemistry examination (IM)
90.2601 Microscopic examination of specimen from eye, Microscopic
Histophatology examination of specimen from biopsy (IM)
90.2602 Microscopic examination of specimen from eye, Microscopic
Histophatology examination of specimen from debulking (IM)
90.2603 Microscopic examination of specimen from eye, Microscopic
Histochemistry examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',57,'draft',1,'7e5b643969e1824f7ab9f9a7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.261','procedure','Microscopic examination of specimen from eye, papanicolaou and','90.261 Microscopic examination of specimen from eye, papanicolaou and
giemsa smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',57,'draft',1,'b7d27b11b7d486fffc36c0b1');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.269','procedure','Other microscopic examination of specimen from eye, cell block and','90.269 Other microscopic examination of specimen from eye, cell block and
papanicolaou smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',57,'draft',1,'d95e2639b5fc4a84841bee63');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.27','procedure','Microscopic examination of specimen from eye, Molecular biological test (IM) or','90.27   Microscopic examination of specimen from eye, Molecular biological test (IM) or
Cythopathologic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',58,'draft',1,'5cce09e142433ddbd385aaa3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.29','procedure','Other Microscopic examination of specimen from eye','90.29   Other Microscopic examination of specimen from eye','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',58,'draft',0,'972fd96ce52c91044bbcd1e0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.290','procedure','Microscopic examination of specimen from eye, Microscopic ISH','90.290 Microscopic examination of specimen from eye, Microscopic ISH
examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',58,'draft',1,'1159c66f422fc2db6e1505b0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.291','procedure','Microscopic examination of specimen from eye, Microscopic CISH','90.291 Microscopic examination of specimen from eye, Microscopic CISH
examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',58,'draft',1,'6faa39995f5bbd8f5e042320');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.292','procedure','Microscopic examination of specimen from eye, Microscopic FISH','90.292 Microscopic examination of specimen from eye, Microscopic FISH
examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',58,'draft',1,'255bc7c34999b72237b2e4c6');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.293','procedure','Microscopic examination of specimen from eye, Microscopic FCR','90.293 Microscopic examination of specimen from eye, Microscopic FCR
examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',58,'draft',1,'d13823750c1219cb1eff645c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.294','procedure','Microscopic examination of specimen from eye, Screening for the','90.294 Microscopic examination of specimen from eye, Screening for the
Human Immunodeficiency Virus (HIV) Infection (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',58,'draft',1,'e4a4b76edfa5e53f56f75909');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.295','procedure','Microscopic examination of specimen from eye, Prognostic Monitoring','90.295 Microscopic examination of specimen from eye, Prognostic Monitoring
for the Human Immunodeficiency Virus (HIV) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',58,'draft',1,'6aa277a46e12cb08cb9f8da9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.298','procedure','Microscopic examination of specimen from eye, Other specified','90.298 Microscopic examination of specimen from eye, Other specified
microscopic examinations (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',58,'draft',1,'a615e7f71e250f5be4802c19');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.299','procedure','Other microscopic examination of specimen from eye (IM)','90.299 Other microscopic examination of specimen from eye (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',58,'draft',1,'e78ee1bb84e7a0bf26ce7157');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.3','category','Microscopic examination of specimen from ear, nose, throat, and larynx','90.3     Microscopic examination of specimen from ear, nose, throat, and larynx','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',58,'draft',0,'242edcd7b43d9ca70a98dcaf');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.34','procedure','Microscopic examination of specimen from ear, nose, throat, and larynx,','90.34   Microscopic examination of specimen from ear, nose, throat, and larynx,
parasitology','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',58,'draft',0,'b110eae92e4e513756ef5376');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.340','procedure','Microscopic examination of specimen from ear, nose, throat, and larynx','90.340 Microscopic examination of specimen from ear, nose, throat, and larynx
parasitology culture and others (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',58,'draft',1,'ecf205446d21b56eccbe47ba');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.341','procedure','Microscopic examination of specimen from ear, nose, throat, and larynx','90.341 Microscopic examination of specimen from ear, nose, throat, and larynx
Parasite and fungal serology / molecular examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',58,'draft',1,'9796c7477900b84303f6e9e0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.342','procedure','Microscopic examination of specimen from ear, nose, throat, and larynx','90.342 Microscopic examination of specimen from ear, nose, throat, and larynx
Fungal culture yeast and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',58,'draft',1,'b8ce583770f077b87b344f5c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.343','procedure','Microscopic examination of specimen from ear, nose, throat, and larynx','90.343 Microscopic examination of specimen from ear, nose, throat, and larynx
Fungal culture mold and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',58,'draft',1,'ee49fd7ae6f590d9f2655a76');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.349','procedure','Microscopic examination of specimen from ear, nose, throat, and larynx','90.349 Microscopic examination of specimen from ear, nose, throat, and larynx
Parasitology smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',58,'draft',1,'180badab2d05374e1a997c4e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.36','procedure','Microscopic examination of specimen from ear, nose, throat, and larynx, cell','90.36   Microscopic examination of specimen from ear, nose, throat, and larynx, cell
block and Papanicolaou smear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',58,'draft',0,'a5aae555e1e6e9ad25146cb9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.360','procedure','Microscopic examination of specimen from ear, nose, throat, and larynx','90.360 Microscopic examination of specimen from ear, nose, throat, and larynx
cell block (IM)
90.3600 Microscopic examination of specimen from ear, nose, throat,
and larynx Microscopic Immunohistochemistry examination
(IM)
90.3601 Microscopic examination of specimen from ear, nose, throat,
and larynx Microscopic Histophatology examination of
specimen from biopsy (IM)
90.3602 Microscopic examination of specimen from ear, nose, throat,
and larynx Microscopic Histophatology examination of
specimen from debulking (IM)
90.3603 Microscopic examination of specimen from ear, nose, throat,
and larynx Microscopic Histochemistry examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',58,'draft',1,'9d1aa2effacde111e7c93a48');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.361','procedure','Microscopic examination of specimen from ear, nose, throat, and larynx','90.361 Microscopic examination of specimen from ear, nose, throat, and larynx
papanicolaou and giemsa smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',59,'draft',1,'ccaf3b2e54a3ff5d0082d08c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.369','procedure','Other microscopic examination of specimen from ear, nose, throat, and','90.369 Other microscopic examination of specimen from ear, nose, throat, and
larynx, cell block and papanicolaou smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',59,'draft',1,'9dd4906bbcc8dda342cef172');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.37','procedure','Microscopic examination of specimen from ear, nose, throat, and larynx','90.37   Microscopic examination of specimen from ear, nose, throat, and larynx
Molecular biological test (IM) or Cythopathologic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',59,'draft',1,'8ab1f189734d1fb7ce0fe4a1');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.39','procedure','Other microscopic examination of specimen from ear, nose, throat, and larynx','90.39   Other microscopic examination of specimen from ear, nose, throat, and larynx','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',59,'draft',0,'f2a47cde6e994145acdb3ddc');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.390','procedure','Microscopic examination of specimen from ear, nose, throat, and larynx','90.390 Microscopic examination of specimen from ear, nose, throat, and larynx
Microscopic ISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',59,'draft',1,'ac059799c22ac72fcf31e302');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.391','procedure','Microscopic examination of specimen from ear, nose, throat, and larynx','90.391 Microscopic examination of specimen from ear, nose, throat, and larynx
Microscopic CISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',59,'draft',1,'ecfeadb7e77ff82bda6d173f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.392','procedure','Microscopic examination of specimen from ear, nose, throat, and larynx','90.392 Microscopic examination of specimen from ear, nose, throat, and larynx
Microscopic FISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',59,'draft',1,'d82d36c67d2b5218fbd9ee3f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.393','procedure','Microscopic examination of specimen from ear, nose, throat, and larynx','90.393 Microscopic examination of specimen from ear, nose, throat, and larynx
Microscopic FCR examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',59,'draft',1,'949ac95bb75dfde0460a4199');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.394','procedure','Microscopic examination of specimen from ear, nose, throat, and larynx','90.394 Microscopic examination of specimen from ear, nose, throat, and larynx
Screening for the Human Immunodeficiency Virus (HIV) Infection (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',59,'draft',1,'039dc6de813c82957d4e2c02');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.395','procedure','Microscopic examination of specimen from ear, nose, throat, and larynx','90.395 Microscopic examination of specimen from ear, nose, throat, and larynx
Prognostic Monitoring for the Human Immunodeficiency Virus (HIV) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',59,'draft',1,'5c9c167fe6854286bfcb4b52');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.398','procedure','Microscopic examination of specimen from ear, nose, throat, and larynx','90.398 Microscopic examination of specimen from ear, nose, throat, and larynx
Other specified microscopic examinations (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',59,'draft',1,'b3ba071d19bcb92644fd0c47');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.399','procedure','Other Microscopic examination of specimen from ear, nose, throat, and','90.399 Other Microscopic examination of specimen from ear, nose, throat, and
larynx (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',59,'draft',1,'e1aa6de174c25a931e1a71aa');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.4','category','Microscopic examination of specimen from trachea, bronchus, pleura, lung, and other','90.4     Microscopic examination of specimen from trachea, bronchus, pleura, lung, and other
thoracic specimen, and of sputum','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',59,'draft',0,'26a48a676b095cbca620252c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.44','procedure','Microscopic examination of specimen from trachea, bronchus, pleura, lung,','90.44   Microscopic examination of specimen from trachea, bronchus, pleura, lung,
and other thoracic specimen, and of sputum, parasitology','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',59,'draft',0,'8f3ae2d3f6d518e92b57684a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.440','procedure','Microscopic examination of specimen from trachea, bronchus, pleura,','90.440 Microscopic examination of specimen from trachea, bronchus, pleura,
lung, and other thoracic specimen, and of sputum, parasitology culture
and others (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',59,'draft',1,'b6b3f2e418fd3f349ba3a27d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.441','procedure','Microscopic examination of specimen from trachea, bronchus, pleura,','90.441 Microscopic examination of specimen from trachea, bronchus, pleura,
lung, and other thoracic specimen, and of sputum, Parasite and fungal
serology / molecular examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',59,'draft',1,'304c93fbd34f2371bfe91ec4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.442','procedure','Microscopic examination of specimen from trachea, bronchus, pleura,','90.442 Microscopic examination of specimen from trachea, bronchus, pleura,
lung, and other thoracic specimen, and of sputum, Fungal culture yeast
and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',60,'draft',1,'2372bcb3e2db8872d73f0853');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.443','procedure','Microscopic examination of specimen from trachea, bronchus, pleura,','90.443 Microscopic examination of specimen from trachea, bronchus, pleura,
lung, and other thoracic specimen, and of sputum, Fungal culture mold
and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',60,'draft',1,'3592a4b06ed578837f5c87b6');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.449','procedure','Microscopic examination of specimen from trachea, bronchus, pleura,','90.449 Microscopic examination of specimen from trachea, bronchus, pleura,
lung, and other thoracic specimen, and of sputum, Parasitology smear
(IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',60,'draft',1,'8f19e1ae723c82c9840f392c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.46','procedure','Microscopic examination of specimen from trachea, bronchus, pleura, lung,','90.46   Microscopic examination of specimen from trachea, bronchus, pleura, lung,
and other thoracic specimen, and of sputum, cell block and Papanicolaou
smear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',60,'draft',0,'e4222f0a26d5c9f9e8a2b38c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.460','procedure','Microscopic examination of specimen from trachea, bronchus, pleura,','90.460 Microscopic examination of specimen from trachea, bronchus, pleura,
lung, and other thoracic specimen, and of sputum, cell block (IM)
90.4600 Microscopic examination of specimen from trachea, bronchus,
pleura, lung, and other thoracic specimen, and of sputum,
Microscopic Immunohistochemistry examination (IM)
90.4601 Microscopic examination of specimen from trachea, bronchus,
pleura, lung, and other thoracic specimen, and of sputum,
Microscopic Histophatology examination of specimen from
biopsy (IM)
90.4602 Microscopic examination of specimen from trachea, bronchus,
pleura, lung, and other thoracic specimen, and of sputum,
Microscopic Histophatology examination of specimen from
debulking (IM)
90.4603 Microscopic examination of specimen from trachea, bronchus,
pleura, lung, and other thoracic specimen, and of sputum,
Microscopic Histochemistry examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',60,'draft',1,'70c852d4ea9f443afefdabf7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.461','procedure','Microscopic examination of specimen from trachea, bronchus, pleura,','90.461 Microscopic examination of specimen from trachea, bronchus, pleura,
lung, and other thoracic specimen, and of sputum, papanicolaou and
giemsa smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',60,'draft',1,'5bd7d67791a8fbce47980200');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.469','procedure','Microscopic examination of specimen from trachea, bronchus, pleura,','90.469 Microscopic examination of specimen from trachea, bronchus, pleura,
lung, and other thoracic specimen, and of sputum, other cell block and
papanicolaou smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',60,'draft',1,'35805ae9bc69ec384852a2ee');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.47','procedure','Microscopic examination of specimen from trachea, bronchus, pleura, lung,','90.47   Microscopic examination of specimen from trachea, bronchus, pleura, lung,
and other thoracic specimen, and of sputum, Molecular biological test (IM) or
Cythopathologic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',60,'draft',1,'9a06d9fbe832569f79e40517');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.49','procedure','Other microscopic examination of specimen from trachea, bronchus, pleura,','90.49   Other microscopic examination of specimen from trachea, bronchus, pleura,
lung, and other thoracic specimen, and of sputum','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',60,'draft',0,'6eb2c39c07fa8c00e5d24d8a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.490','procedure','Microscopic examination of specimen from trachea, bronchus, pleura,','90.490 Microscopic examination of specimen from trachea, bronchus, pleura,
lung, and other thoracic specimen, and of sputum, Microscopic ISH
examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',60,'draft',1,'d666683e5f93aacfb348e8c4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.491','procedure','Microscopic examination of specimen from trachea, bronchus, pleura,','90.491 Microscopic examination of specimen from trachea, bronchus, pleura,
lung, and other thoracic specimen, and of sputum, Microscopic CISH
examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',60,'draft',1,'2270ea474877111409222324');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.492','procedure','Microscopic examination of specimen from trachea, bronchus, pleura,','90.492 Microscopic examination of specimen from trachea, bronchus, pleura,
lung, and other thoracic specimen, and of sputum, Microscopic FISH
examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',61,'draft',1,'042989c45b51891ed44e6d75');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.493','procedure','Microscopic examination of specimen from trachea, bronchus, pleura,','90.493 Microscopic examination of specimen from trachea, bronchus, pleura,
lung, and other thoracic specimen, and of sputum, Microscopic FCR
examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',61,'draft',1,'587e56683b24e714fb246471');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.494','procedure','Microscopic examination of specimen from trachea, bronchus, pleura,','90.494 Microscopic examination of specimen from trachea, bronchus, pleura,
lung, and other thoracic specimen, and of sputum, Screening for the
Human Immunodeficiency Virus (HIV) Infection (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',61,'draft',1,'8d280e0df0a7cd4e6e6bbf98');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.495','procedure','Microscopic examination of specimen from trachea, bronchus, pleura,','90.495 Microscopic examination of specimen from trachea, bronchus, pleura,
lung, and other thoracic specimen, and of sputum, Prognostic
Monitoring for the Human Immunodeficiency Virus (HIV) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',61,'draft',1,'c6e42643592e03305d148e30');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.498','procedure','Microscopic examination of specimen from trachea, bronchus, pleura,','90.498 Microscopic examination of specimen from trachea, bronchus, pleura,
lung, and other thoracic specimen, and of sputum, Other specified
microscopic examinations (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',61,'draft',1,'4965a01e98388265291381db');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.499','procedure','Other Microscopic examination of specimen from trachea, bronchus,','90.499 Other Microscopic examination of specimen from trachea, bronchus,
pleura, lung, and other thoracic specimen, and of sputum, parasitology
smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',61,'draft',1,'9067ae193c1ff32197b53d96');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.5','category','Microscopic examination of blood','90.5     Microscopic examination of blood','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',61,'draft',0,'f48bd3e05e15de064b2fdfff');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.54','procedure','Microscopic examination of blood, parasitology','90.54   Microscopic examination of blood, parasitology','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',61,'draft',0,'fec5f3387c9e1849b6f15793');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.540','procedure','Microscopic examination of blood, parasitology culture and others (IM)','90.540 Microscopic examination of blood, parasitology culture and others (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',61,'draft',1,'8123e352b057ac9ecd35d456');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.541','procedure','Microscopic examination of blood, Parasite and fungal serology /','90.541 Microscopic examination of blood, Parasite and fungal serology /
molecular examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',61,'draft',1,'b9facc72033f2028a208f53e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.542','procedure','Microscopic examination       of   blood,   Fungal   culture   yeast   and','90.542 Microscopic examination       of   blood,   Fungal   culture   yeast   and
susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',61,'draft',1,'b499ad2dd6b8f63c3b795708');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.543','procedure','Microscopic examination       of   blood,   Fungal   culture   mold    and','90.543 Microscopic examination       of   blood,   Fungal   culture   mold    and
susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',61,'draft',1,'3c77fd70db6ef218255e9ced');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.549','procedure','Microscopic examination of blood, Parasitology smear (IM)','90.549 Microscopic examination of blood, Parasitology smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',61,'draft',1,'0c534a4e6d5673e88f0c8dc9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.56','procedure','Microscopic examination of blood, cell block and Papanicolaou smear','90.56   Microscopic examination of blood, cell block and Papanicolaou smear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',61,'draft',0,'6d7bd3427a3edeb0d4fb8269');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.560','procedure','Microscopic examination of blood, cell block (IM)','90.560 Microscopic examination of blood, cell block (IM)
90.5600 Microscopic   examination     of      blood,          Microscopic
Immunohistochemistry examination (IM)
90.5601 Microscopic examination of blood, Microscopic Histophatology
examination of specimen from biopsy (IM)
90.5602 Microscopic examination of blood, Microscopic Histophatology
examination of specimen from debulking (IM)
90.5603 Microscopic examination of blood, Microscopic Histochemistry
examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',61,'draft',1,'59bd8e0b60d93a5652242a14');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.561','procedure','Microscopic examination of blood, papanicolaou and giemsa smear (IM)','90.561 Microscopic examination of blood, papanicolaou and giemsa smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',61,'draft',1,'b07bbb7326df6f025be33e06');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.569','procedure','Other Microscopic examination of specimen from blood, cell block and','90.569 Other Microscopic examination of specimen from blood, cell block and
papanicolaou smear (IM)
(IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',62,'draft',1,'9c0009e1527284d10ef11d4d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.57','procedure','Microscopic examination        of    blood,   Molecular    biological   test               or','90.57   Microscopic examination        of    blood,   Molecular    biological   test               or
Cythopathologic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',62,'draft',1,'494fc7e1c23b97f35deb5aaa');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.59','procedure','Other microscopic examination of blood','90.59   Other microscopic examination of blood','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',62,'draft',0,'4074fe1534215e31e78e9a73');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.590','procedure','Microscopic examination of blood, Microscopic ISH examination (IM)','90.590 Microscopic examination of blood, Microscopic ISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',62,'draft',1,'47ba581431b22c842911ea9e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.591','procedure','Microscopic examination of blood, Microscopic CISH examination (IM)','90.591 Microscopic examination of blood, Microscopic CISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',62,'draft',1,'8a3858469db4b3f52493ecdb');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.592','procedure','Microscopic examination of blood, Microscopic FISH examination (IM)','90.592 Microscopic examination of blood, Microscopic FISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',62,'draft',1,'2e6f1ac82e1a23afa4d95a3e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.593','procedure','Microscopic examination of blood, Microscopic FCR examination (IM)','90.593 Microscopic examination of blood, Microscopic FCR examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',62,'draft',1,'0e67b962ffc96d780c8f0493');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.594','procedure','Microscopic examination of blood, Screening for the Human','90.594 Microscopic examination of blood, Screening for the Human
Immunodeficiency Virus (HIV) Infection (IM)
Note : HIV Diagnostic Test. This test determines whether a patient is HIV
positive or not by examining the HIV DNA. The results obtained are
either reactive or non-reactive.','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',62,'draft',1,'20c4265092e77be22a1d6a94');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.595','procedure','Microscopic examination of blood, Prognostic Monitoring for the Human','90.595 Microscopic examination of blood, Prognostic Monitoring for the Human
Immunodeficiency Virus (HIV) (IM)
Note : HIV Viral Load Test. This test determines the amount of virus in the body
of a patient who is HIV positive and/or has undergone antiretroviral
(ARV) treatment. The test examines the RNA of the virus. The outcome
is measured in copies/ml.','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',62,'draft',1,'33c4514ef4526db5719fab4c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.598','procedure','Microscopic examination of blood, Other specified microscopic','90.598 Microscopic examination of blood, Other specified microscopic
examinations (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',62,'draft',1,'230c1387bc1afb9c03b972ad');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.599','procedure','Other Microscopic examination of blood (IM)','90.599 Other Microscopic examination of blood (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',62,'draft',1,'46872be40e6407df706f29a4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.6','category','Microscopic examination of specimen from spleen and of bone marrow','90.6     Microscopic examination of specimen from spleen and of bone marrow','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',62,'draft',0,'d135fdfb18cd3df2d2a5ac48');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.64','procedure','Microscopic examination of specimen from spleen and of bone marrow,','90.64   Microscopic examination of specimen from spleen and of bone marrow,
parasitology','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',62,'draft',0,'abd91b17fe24452a5629bf0f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.640','procedure','Microscopic examination of specimen from spleen and of bone marrow,','90.640 Microscopic examination of specimen from spleen and of bone marrow,
parasitology culture and others (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',62,'draft',1,'ccccddfb3708e22d8f7d8fe1');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.641','procedure','Parasite and fungal serology / molecular examination of specimen from','90.641 Parasite and fungal serology / molecular examination of specimen from
spleen and of bone marrow (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',62,'draft',1,'2ed6caccca4242d062f00a87');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.642','procedure','Microscopic examination of specimen from spleen and of bone marrow,','90.642 Microscopic examination of specimen from spleen and of bone marrow,
Fungal culture yeast and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',62,'draft',1,'b8b3669c194c5759447c3889');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.643','procedure','Microscopic examination of specimen from spleen and of bone marrow,','90.643 Microscopic examination of specimen from spleen and of bone marrow,
Fungal culture mold and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',62,'draft',1,'08f1e4258429a2bc1cdb0857');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.649','procedure','Microscopic examination of specimen from spleen and of bone marrow,','90.649 Microscopic examination of specimen from spleen and of bone marrow,
Parasitology smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',62,'draft',1,'d7cef72c71aee18116dc550a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.66','procedure','Microscopic examination of specimen from spleen and of bone marrow, cell','90.66   Microscopic examination of specimen from spleen and of bone marrow, cell
block and Papanicolaou smear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',62,'draft',0,'fbe89d2eddb09d38cdae8a6b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.660','procedure','Microscopic examination of specimen from spleen and of bone marrow,','90.660 Microscopic examination of specimen from spleen and of bone marrow,
cell block (IM)
90.6600 Microscopic examination of specimen from spleen and of
bone marrow, Microscopic Immunohistochemistry
examination (IM)
90.6601 Microscopic examination of specimen from spleen and of
bone marrow, Microscopic Histophatology examination of
specimen from biopsy (IM)
90.6602 Microscopic examination of specimen from spleen and of
bone marrow, Microscopic Histophatology examination of
specimen from debulking (IM)
90.6603 Microscopic examination of specimen from spleen and of
bone marrow, Microscopic Histochemistry examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',62,'draft',1,'e308d1f0ce7a3779ff3b009a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.661','procedure','Microscopic examination of specimen from spleen and of bone marrow,','90.661 Microscopic examination of specimen from spleen and of bone marrow,
papanicolaou and giemsa smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',63,'draft',1,'f04c2fa82978bfa23bc7eac7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.669','procedure','Microscopic examination of specimen from spleen and of bone marrow,','90.669 Microscopic examination of specimen from spleen and of bone marrow,
other cell block and papanicolaou smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',63,'draft',1,'783b86b4e5f52b86ba0c4c7c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.67','procedure','Microscopic examination of specimen from spleen and of bone marrow,','90.67   Microscopic examination of specimen from spleen and of bone marrow,
Molecular biological test (IM) or Cythopathologic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',63,'draft',1,'d7bd87300e704dde1f5561d8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.69','procedure','Other microscopic examination of specimen from spleen and of bone marrow','90.69   Other microscopic examination of specimen from spleen and of bone marrow','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',63,'draft',0,'e5ce6ced69064ec2e8f35a4a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.690','procedure','Microscopic examination of specimen from spleen and of bone marrow,','90.690 Microscopic examination of specimen from spleen and of bone marrow,
Microscopic ISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',63,'draft',1,'aa650ff2dfede34bd8c18cc2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.691','procedure','Microscopic examination of specimen from spleen and of bone marrow,','90.691 Microscopic examination of specimen from spleen and of bone marrow,
Microscopic CISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',63,'draft',1,'6dbabf70935996ff612c9938');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.692','procedure','Microscopic examination of specimen from spleen and of bone marrow,','90.692 Microscopic examination of specimen from spleen and of bone marrow,
Microscopic FISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',63,'draft',1,'36e20fc6d8b466521ae50e59');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.693','procedure','Microscopic examination of specimen from spleen and of bone marrow,','90.693 Microscopic examination of specimen from spleen and of bone marrow,
Microscopic FCR examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',63,'draft',1,'416005bbc4398551c878753d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.694','procedure','Microscopic examination of specimen from spleen and of bone marrow,','90.694 Microscopic examination of specimen from spleen and of bone marrow,
Screening for the Human Immunodeficiency Virus (HIV) Infection (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',63,'draft',1,'1cce6dacf7d2c7edd7b1544a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.695','procedure','Microscopic examination of specimen from spleen and of bone marrow,','90.695 Microscopic examination of specimen from spleen and of bone marrow,
Prognostic Monitoring for the Human Immunodeficiency Virus (HIV) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',63,'draft',1,'666501feccbe61e247d81528');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.698','procedure','Microscopic examination of specimen from spleen and of bone marrow,','90.698 Microscopic examination of specimen from spleen and of bone marrow,
Other specified microscopic examinations (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',63,'draft',1,'c75a6618e4a3684482d643f6');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.699','procedure','Other Microscopic examination of specimen from spleen and of bone','90.699 Other Microscopic examination of specimen from spleen and of bone
marrow (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',63,'draft',1,'b40f0d4deb7a26b819967063');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.7','category','Microscopic examination of specimen from lymph node and of lymph','90.7     Microscopic examination of specimen from lymph node and of lymph','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',63,'draft',0,'502f1cba75fdf289923ef9b4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.74','procedure','Microscopic examination of specimen from lymph node and of lymph,','90.74   Microscopic examination of specimen from lymph node and of lymph,
parasitology','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',63,'draft',0,'240d94b81f9a6b49da8158d0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.740','procedure','Microscopic examination of specimen from lymph node and of lymph,','90.740 Microscopic examination of specimen from lymph node and of lymph,
parasitology culture and others (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',63,'draft',1,'c5d001f7987f4db2f53f5d93');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.741','procedure','Parasite and fungal serology / molecular examination of specimen from','90.741 Parasite and fungal serology / molecular examination of specimen from
lymph node and of lymph (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',63,'draft',1,'d63122a7297f74b2e99af9e3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.742','procedure','Microscopic examination of specimen from lymph node and of lymph,','90.742 Microscopic examination of specimen from lymph node and of lymph,
Fungal culture yeast and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',64,'draft',1,'6ead2baa3c0ee50f0e511f37');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.743','procedure','Microscopic examination of specimen from lymph node and of lymph,','90.743 Microscopic examination of specimen from lymph node and of lymph,
Fungal culture mold and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',64,'draft',1,'549d561b8c59f5f1403144ad');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.749','procedure','Microscopic examination of specimen from lymph node and of lymph,','90.749 Microscopic examination of specimen from lymph node and of lymph,
Parasitology smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',64,'draft',1,'1fdf1220dcd128712c5a1262');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.76','procedure','Microscopic examination of specimen from lymph node and of lymph, cell','90.76   Microscopic examination of specimen from lymph node and of lymph, cell
block and Papanicolaou smear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',64,'draft',0,'9a1db66e545938f7ac7b4ff9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.760','procedure','Microscopic examination of specimen from lymph node and of lymph,','90.760 Microscopic examination of specimen from lymph node and of lymph,
cell block (IM)
90.7600 Microscopic examination of specimen from lymph node and of
lymph, Microscopic Immunohistochemistry examination (IM)
90.7601 Microscopic examination of specimen from lymph node and of
lymph, Microscopic Histophatology examination of specimen
from biopsy (IM)
90.7602 Microscopic examination of specimen from lymph node and of
lymph, Microscopic Histophatology examination of specimen
from debulking (IM)
90.7603 Microscopic examination of specimen from lymph node and of
lymph, Microscopic Histochemistry examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',64,'draft',1,'ed00b0f0ee253bb71edc20f0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.761','procedure','Microscopic examination of specimen from lymph node and of lymph,','90.761 Microscopic examination of specimen from lymph node and of lymph,
papanicolaou and giemsa smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',64,'draft',1,'fb7ca1a130ad782f724f321a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.769','procedure','Other Microscopic examination of specimen from lymph node and of','90.769 Other Microscopic examination of specimen from lymph node and of
lymph, cell block and papanicolaou smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',64,'draft',1,'7117ad15d6507f7f77312a09');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.77','procedure','Microscopic examination of specimen from lymph node and of lymph,','90.77   Microscopic examination of specimen from lymph node and of lymph,
Molecular biological test (IM) or Cythopathologic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',64,'draft',1,'17331ec41407dd0f0b19f00a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.79','procedure','Other Microscopic examination of specimen from lymph node and of lymph','90.79   Other Microscopic examination of specimen from lymph node and of lymph','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',64,'draft',0,'c97bb73b15a8908036847d7e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.790','procedure','Microscopic examination of specimen from lymph node and of lymph,','90.790 Microscopic examination of specimen from lymph node and of lymph,
Microscopic ISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',64,'draft',1,'497f78eee0c7f19cb363b39a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.791','procedure','Microscopic examination of specimen from lymph node and of lymph,','90.791 Microscopic examination of specimen from lymph node and of lymph,
Microscopic CISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',64,'draft',1,'0b1b8d9832a97f6e35a55333');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.792','procedure','Microscopic examination of specimen from lymph node and of lymph,','90.792 Microscopic examination of specimen from lymph node and of lymph,
Microscopic FISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',64,'draft',1,'7149a6e13cd1914552c835df');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.793','procedure','Microscopic examination of specimen from lymph node and of lymph,','90.793 Microscopic examination of specimen from lymph node and of lymph,
Microscopic FCR examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',64,'draft',1,'42c08b9ce91a6fa947617624');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.794','procedure','Microscopic examination of specimen from lymph node and of lymph,','90.794 Microscopic examination of specimen from lymph node and of lymph,
Screening for the Human Immunodeficiency Virus (HIV) Infection (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',64,'draft',1,'e7158126a4b54e7e960bda3c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.795','procedure','Microscopic examination of specimen from lymph node and of lymph,','90.795 Microscopic examination of specimen from lymph node and of lymph,
Prognostic Monitoring for the Human Immunodeficiency Virus (HIV) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',64,'draft',1,'937c9a2fb368e6f0c401ee2d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.798','procedure','Microscopic examination of specimen from lymph node and of lymph,','90.798 Microscopic examination of specimen from lymph node and of lymph,
Other specified microscopic examinations (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',64,'draft',1,'62c66795f1f6a8f9e9a44f46');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.799','procedure','Other Microscopic examination of specimen from lymph node and of','90.799 Other Microscopic examination of specimen from lymph node and of
lymph (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',65,'draft',1,'471e31417214ac4eeb35e2bb');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.8','category','Microscopic examination of specimen from upper gastrointestinal tract and of vomitus','90.8     Microscopic examination of specimen from upper gastrointestinal tract and of vomitus','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',65,'draft',0,'abe461065c506daf6292bb26');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.84','procedure','Microscopic examination of specimen from upper gastrointestinal tract and of','90.84   Microscopic examination of specimen from upper gastrointestinal tract and of
vomitus, parasitology','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',65,'draft',0,'560a315a526b7355869484d7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.840','procedure','Microscopic examination of specimen from upper gastrointestinal tract','90.840 Microscopic examination of specimen from upper gastrointestinal tract
and of vomitus, parasitology culture and others (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',65,'draft',1,'59207f8ae1d86f81d8eaab52');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.841','procedure','Parasite and fungal serology / molecular examination of specimen from','90.841 Parasite and fungal serology / molecular examination of specimen from
upper gastrointestinal tract and of vomitus (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',65,'draft',1,'be4308043b9c2dc655e05882');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.842','procedure','Microscopic examination of specimen from upper gastrointestinal tract','90.842 Microscopic examination of specimen from upper gastrointestinal tract
and of vomitus, Fungal culture yeast and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',65,'draft',1,'6c5b134e61a3f0c413a96340');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.843','procedure','Microscopic examination of specimen from upper gastrointestinal tract','90.843 Microscopic examination of specimen from upper gastrointestinal tract
and of vomitus, Fungal culture mold and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',65,'draft',1,'15da5030c9102a678f3d005a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.849','procedure','Other Microscopic examination of specimen from upper gastrointestinal','90.849 Other Microscopic examination of specimen from upper gastrointestinal
tract and of vomitus, parasitology smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',65,'draft',1,'384413aa55bb35a165320ca3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.86','procedure','Microscopic examination of specimen from upper gastrointestinal tract and of','90.86   Microscopic examination of specimen from upper gastrointestinal tract and of
vomitus, cell block and papanicolaou smear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',65,'draft',0,'ba36f0f99c354df3f5b4bd12');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.860','procedure','Microscopic examination of specimen from upper gastrointestinal tract','90.860 Microscopic examination of specimen from upper gastrointestinal tract
and of vomitus, cell block (IM)
90.8600 Microscopic examination of specimen from upper
gastrointestinal tract and of vomitus, Microscopic
Immunohistochemistry examination (IM)
90.8601 Microscopic examination of specimen from upper
gastrointestinal tract and of vomitus, Microscopic
Histophatology examination of specimen from biopsy (IM)
90.8602 Microscopic examination of specimen from upper
gastrointestinal tract and of vomitus, Microscopic
Histophatology examination of specimen from debulking (IM)
90.8603 Microscopic examination of specimen from upper
gastrointestinal tract and of vomitus, Microscopic
Histochemistry examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',65,'draft',1,'640e1ae16ee010ffdc2bc986');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.861','procedure','Microscopic examination of specimen from upper gastrointestinal tract','90.861 Microscopic examination of specimen from upper gastrointestinal tract
and of vomitus, papanicolaou and giemsa smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',65,'draft',1,'a82186a2385f18f3b7a91cc5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.869','procedure','Other Microscopic examination of specimen from upper gastrointestinal','90.869 Other Microscopic examination of specimen from upper gastrointestinal
tract and of vomitus, cell block and papanicolaou smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',65,'draft',1,'230c374311c2c0f9ef89888b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.87','procedure','Microscopic examination of specimen from upper gastrointestinal tract and of','90.87   Microscopic examination of specimen from upper gastrointestinal tract and of
vomitus, Molecular biological test (IM) or Cythopathologic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',65,'draft',1,'6269555eeb6c49845f7343e4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.89','procedure','Other microscopic examination of specimen from upper gastrointestinal tract','90.89   Other microscopic examination of specimen from upper gastrointestinal tract
and of vomitus','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',65,'draft',0,'d9edd50d0ed4b39874d86406');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.890','procedure','Microscopic examination of specimen from upper gastrointestinal tract','90.890 Microscopic examination of specimen from upper gastrointestinal tract
and of vomitus, Microscopic ISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',65,'draft',1,'e1a4eeb726d9dab0316136c5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.891','procedure','Microscopic examination of specimen from upper gastrointestinal tract','90.891 Microscopic examination of specimen from upper gastrointestinal tract
and of vomitus, Microscopic CISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',66,'draft',1,'582031dd915768304c3b8d65');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.892','procedure','Microscopic examination of specimen from upper gastrointestinal tract','90.892 Microscopic examination of specimen from upper gastrointestinal tract
and of vomitus, Microscopic FISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',66,'draft',1,'f845ed2fcf847c2a3112237e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.893','procedure','Microscopic examination of specimen from upper gastrointestinal tract','90.893 Microscopic examination of specimen from upper gastrointestinal tract
and of vomitus, Microscopic FCR examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',66,'draft',1,'342368cc5b0c7a36cea430bd');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.894','procedure','Microscopic examination of specimen from upper gastrointestinal tract','90.894 Microscopic examination of specimen from upper gastrointestinal tract
and of vomitus, Screening for the Human Immunodeficiency Virus (HIV)
Infection (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',66,'draft',1,'9a6f12dd917569a822f50419');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.895','procedure','Microscopic examination of specimen from upper gastrointestinal tract','90.895 Microscopic examination of specimen from upper gastrointestinal tract
and of vomitus, Prognostic Monitoring for the Human
Immunodeficiency Virus (HIV) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',66,'draft',1,'f75e2ee125e308537ecbdb4b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.898','procedure','Microscopic examination of specimen from upper gastrointestinal tract','90.898 Microscopic examination of specimen from upper gastrointestinal tract
and of vomitus, Other specified microscopic examinations (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',66,'draft',1,'984ac43e131d98c6707d6631');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.899','procedure','Other Microscopic examination of specimen from upper gastrointestinal','90.899 Other Microscopic examination of specimen from upper gastrointestinal
tract and of vomitus (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',66,'draft',1,'ca3e0b67f783ced79d7e9341');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.9','category','Microscopic examination of specimen from lower gastrointestinal tract and of stool','90.9     Microscopic examination of specimen from lower gastrointestinal tract and of stool','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',66,'draft',0,'644dd03eb56f5a2117f09f44');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.94','procedure','Microscopic examination of specimen from lower gastrointestinal tract and of','90.94   Microscopic examination of specimen from lower gastrointestinal tract and of
stool, parasitology','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',66,'draft',0,'622779a30074b4dd3a34c069');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.940','procedure','Microscopic examination of specimen from lower gastrointestinal tract','90.940 Microscopic examination of specimen from lower gastrointestinal tract
and of stool, parasitology culture and others (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',66,'draft',1,'96ebebb91abf02a57eb69c63');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.941','procedure','Parasite and fungal serology / molecular examination of specimen from','90.941 Parasite and fungal serology / molecular examination of specimen from
lower gastrointestinal tract and of stool (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',66,'draft',1,'8c65beb557fd4927b0589185');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.942','procedure','Microscopic examination of specimen from lower gastrointestinal tract','90.942 Microscopic examination of specimen from lower gastrointestinal tract
and of stool, Fungal culture yeast and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',66,'draft',1,'52893e6dd8d6e62b256401e9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.943','procedure','Microscopic examination of specimen from lower gastrointestinal tract','90.943 Microscopic examination of specimen from lower gastrointestinal tract
and of stool, Fungal culture mold and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',66,'draft',1,'8ebe2f9a5147d3143d40acd4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.949','procedure','Other Microscopic examination of specimen from lower gastrointestinal','90.949 Other Microscopic examination of specimen from lower gastrointestinal
tract and of stool, parasitology smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',66,'draft',1,'942f424af3a6f699fb9790d2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.96','procedure','Microscopic examination of specimen from lower gastrointestinal tract and of','90.96   Microscopic examination of specimen from lower gastrointestinal tract and of
stool, cell block and papanicolaou smear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',66,'draft',0,'5e2f7d2c37dba56818d91aab');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.960','procedure','Microscopic examination of specimen from lower gastrointestinal tract','90.960 Microscopic examination of specimen from lower gastrointestinal tract
and of stool, cell block (IM)
90.9600 Microscopic examination of specimen from lower
gastrointestinal tract and of stool, Microscopic
Immunohistochemistry examination (IM)
90.9601 Microscopic examination of specimen from lower
gastrointestinal tract and of stool, Microscopic Histophatology
examination of specimen from biopsy (IM)
90.9602 Microscopic examination of specimen from lower
gastrointestinal tract and of stool, Microscopic Histophatology
examination of specimen from debulking (IM)
90.9603 Microscopic examination of specimen from lower
gastrointestinal tract and of stool, Microscopic Histochemistry
examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',66,'draft',1,'0fa36bd7eb411effdbe6852b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.961','procedure','Microscopic examination of specimen from lower gastrointestinal tract','90.961 Microscopic examination of specimen from lower gastrointestinal tract
and of stool, papanicolaou and giemsa smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',67,'draft',1,'21ee4bc41246d36186daf8a1');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.969','procedure','Other Microscopic examination of specimen from lower gastrointestinal','90.969 Other Microscopic examination of specimen from lower gastrointestinal
tract and of stool, cell block and papanicolaou smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',67,'draft',1,'b91edebf41c3d8ff5c9d06a5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.97','procedure','Microscopic examination of specimen from lower gastrointestinal tract and of','90.97    Microscopic examination of specimen from lower gastrointestinal tract and of
stool, Molecular biological test (IM) or Cythopathologic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',67,'draft',1,'0ccf6890897eb5e70089fb28');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.99','procedure','Other microscopic examination of specimen from lower gastrointestinal tract','90.99    Other microscopic examination of specimen from lower gastrointestinal tract
and of stool','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',67,'draft',0,'c7ec5767d83f3b98d4ffab34');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.990','procedure','Microscopic examination of specimen from lower gastrointestinal tract','90.990 Microscopic examination of specimen from lower gastrointestinal tract
and of stool, Microscopic ISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',67,'draft',1,'9a6d868c8e7e949c7996c7b8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.991','procedure','Microscopic examination of specimen from lower gastrointestinal tract','90.991 Microscopic examination of specimen from lower gastrointestinal tract
and of stool, Microscopic CISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',67,'draft',1,'8480e8f02e0d98982c679d88');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.992','procedure','Microscopic examination of specimen from lower gastrointestinal tract','90.992 Microscopic examination of specimen from lower gastrointestinal tract
and of stool, Microscopic FISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',67,'draft',1,'7e023048c7a9407dc0800fc7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.993','procedure','Microscopic examination of specimen from lower gastrointestinal tract','90.993 Microscopic examination of specimen from lower gastrointestinal tract
and of stool, Microscopic FCR examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',67,'draft',1,'ff11d5d76388242ef9a02ba5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.994','procedure','Microscopic examination of specimen from lower gastrointestinal tract','90.994 Microscopic examination of specimen from lower gastrointestinal tract
and of stool, Screening for the Human Immunodeficiency Virus (HIV)
Infection (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',67,'draft',1,'8c5ec2479d27f48db1c9e2a4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.995','procedure','Microscopic examination of specimen from lower gastrointestinal tract','90.995 Microscopic examination of specimen from lower gastrointestinal tract
and of stool, Prognostic Monitoring for the Human Immunodeficiency
Virus (HIV) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',67,'draft',1,'918757268b499d6624e28456');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.998','procedure','Microscopic examination of specimen from lower gastrointestinal tract','90.998 Microscopic examination of specimen from lower gastrointestinal tract
and of stool, Other specified microscopic examinations (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',67,'draft',1,'12a5a1d43e0a18cb4fbffa22');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('90.999','procedure','Other Microscopic examination of specimen from lower gastrointestinal','90.999 Other Microscopic examination of specimen from lower gastrointestinal
tract and of stool (IM)
91      Microscopic examination-II
The following fourth-digit subclassification is for use with categories in section 91 to identify type of
examination
1    bacterial smear
2    culture
3    culture and sensitivity
4    parasitology
40 parasitology culture and others (IM)
41 Parasite and fungal serology / molecular examination (IM)
42 Fungal culture yeast and susceptibility test (IM)
43 Fungal culture mold and susceptibility test (IM)
49 Parasitology smear (IM)
5    toxicology
6    cell block and Papanicolaou smear
60 cell block (IM)
600 Microscopic Immunohistochemistry examination (IM)
601 Microscopic Histophatology examination of specimen from biopsy (IM)
602 Microscopic Histophatology examination of specimen from debulking (IM)
603 Microscopic Histochemistry examination (IM)
61    papanicolaou and giemsa smear (IM)
69    other cell block and papanicolaou smear (IM)
7   Molecular biological test (IM) or Cythopathologic (IM)
9   other microscopic examination
90    Microscopic ISH examination (IM)
91    Microscopic CISH examination (IM)
92    Microscopic FISH examination (IM)
93    Microscopic FCR examination (IM)
94    Screening for the Human Immunodeficiency Virus (HIV) Infection (IM)
95    Prognostic Monitoring for the Human Immunodeficiency Virus (HIV) (IM)
98    Other specified microscopic examinations (IM)
99    Other Microscopic examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',67,'draft',1,'1c090fd9038cc8c4d53e13a3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.0','category','Microscopic examination of specimen from liver, biliary tract, and pancreas','91.0     Microscopic examination of specimen from liver, biliary tract, and pancreas','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',68,'draft',0,'7bbb58b9a24ebd19fce93490');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.04','procedure','Microscopic examination of specimen from liver, biliary tract, and pancreas,','91.04   Microscopic examination of specimen from liver, biliary tract, and pancreas,
parasitology','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',68,'draft',0,'2646045c48a6444c9e49a6fd');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.040','procedure','Microscopic examination of specimen from liver, biliary tract, and','91.040 Microscopic examination of specimen from liver, biliary tract, and
pancreas, parasitology culture and others (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',68,'draft',1,'f3181ac8d9c780d4b5490761');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.041','procedure','Parasite and fungal serology / molecular examination of specimen from','91.041 Parasite and fungal serology / molecular examination of specimen from
liver, biliary tract, and pancreas (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',68,'draft',1,'217b23b0f1be1232f32283f8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.042','procedure','Microscopic examination of specimen from liver, biliary tract, and','91.042 Microscopic examination of specimen from liver, biliary tract, and
pancreas, Fungal culture yeast and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',68,'draft',1,'07c037a2e34d13258d6f80f0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.043','procedure','Microscopic examination of specimen from liver, biliary tract, and','91.043 Microscopic examination of specimen from liver, biliary tract, and
pancreas, Fungal culture mold and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',68,'draft',1,'bb6675510a24cf7d9798d4c0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.049','procedure','Other microscopic examination of specimen from liver, biliary tract, and','91.049 Other microscopic examination of specimen from liver, biliary tract, and
pancreas, parasitology smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',68,'draft',1,'ae994729fae81c20287312ce');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.06','procedure','Microscopic examination of specimen from from liver, biliary tract, and','91.06   Microscopic examination of specimen from from liver, biliary tract, and
pancreas, cell block and Papanicolaou smear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',68,'draft',0,'f3b363340313e76c2d7fa940');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.060','procedure','Microscopic examination of specimen from liver, biliary tract, and','91.060 Microscopic examination of specimen from liver, biliary tract, and
pancreas, cell block (IM)
91.0600 Microscopic examination of specimen from liver, biliary tract,
and pancreas, Microscopic Immunohistochemistry
examination (IM)
91.0601 Microscopic examination of specimen from liver, biliary tract,
and pancreas, Microscopic Histophatology examination of
specimen from biopsy (IM)
91.0602 Microscopic examination of specimen from liver, biliary tract,
and pancreas, Microscopic Histophatology examination of
specimen from debulking (IM)
91.0603 Microscopic examination of specimen from liver, biliary tract,
and pancreas, Microscopic Histochemistry examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',68,'draft',1,'6a51cce5e3dd075de069e885');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.061','procedure','Microscopic examination of specimen from liver, biliary tract, and','91.061 Microscopic examination of specimen from liver, biliary tract, and
pancreas, papanicolaou and giemsa smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',69,'draft',1,'26aad97f0c3fb8fd5eddc87e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.069','procedure','Other microscopic examination of specimen from liver, biliary tract, and','91.069 Other microscopic examination of specimen from liver, biliary tract, and
pancreas, cell block and papanicolaou smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',69,'draft',1,'5d2d089e148229551db2b7d8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.07','procedure','Microscopic examination of specimen from liver, biliary tract, and pancreas,','91.07   Microscopic examination of specimen from liver, biliary tract, and pancreas,
Molecular biological test (IM) or Cythopathologic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',69,'draft',1,'13cd25d3ad7bd93f49133ebd');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.09','procedure','Other Microscopic examination of specimen from liver, biliary tract, and','91.09   Other Microscopic examination of specimen from liver, biliary tract, and
pancreas','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',69,'draft',0,'006f584293157769ce72c238');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.090','procedure','Microscopic examination of specimen from liver, biliary tract, and','91.090 Microscopic examination of specimen from liver, biliary tract, and
pancreas, Microscopic ISH examination (IM','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',69,'draft',0,'25a5e07d17757bdc880b210f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.091','procedure','Microscopic examination of specimen from liver, biliary tract, and','91.091 Microscopic examination of specimen from liver, biliary tract, and
pancreas, Microscopic CISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',69,'draft',1,'0e43c578f180bbaaf4fcb9d1');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.092','procedure','Microscopic examination of specimen from liver, biliary tract, and','91.092 Microscopic examination of specimen from liver, biliary tract, and
pancreas, Microscopic FISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',69,'draft',1,'d17b77dd032f88b457da442a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.093','procedure','Microscopic examination of specimen from liver, biliary tract, and','91.093 Microscopic examination of specimen from liver, biliary tract, and
pancreas, Microscopic FCR examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',69,'draft',1,'6d88581deb57691111b0e976');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.094','procedure','Microscopic examination of specimen from liver, biliary tract, and','91.094 Microscopic examination of specimen from liver, biliary tract, and
pancreas, Screening for the Human Immunodeficiency Virus (HIV)
Infection (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',69,'draft',1,'2790cce86d33c81341164862');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.095','procedure','Microscopic examination of specimen from liver, biliary tract, and','91.095 Microscopic examination of specimen from liver, biliary tract, and
pancreas, Prognostic Monitoring for the Human Immunodeficiency
Virus (HIV) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',69,'draft',1,'d0282e1627d09048fee53422');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.098','procedure','Microscopic examination of specimen from liver, biliary tract, and','91.098 Microscopic examination of specimen from liver, biliary tract, and
pancreas, Other specified microscopic examinations (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',69,'draft',1,'faf9fe3e6548f76e4e752fbe');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.099','procedure','Other microscopic examination of specimen from liver, biliary tract, and','91.099 Other microscopic examination of specimen from liver, biliary tract, and
pancreas (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',69,'draft',1,'ec8d443e809565b84b369303');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.1','category','Microscopic examination of peritoneal and retroperitoneal specimen','91.1     Microscopic examination of peritoneal and retroperitoneal specimen','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',69,'draft',0,'250fb5955d8548ebd6bc366a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.14','procedure','Microscopic examination of peritoneal and retroperitoneal specimen,','91.14   Microscopic examination of peritoneal and retroperitoneal specimen,
parasitology','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',69,'draft',0,'3257de628d0ad2c1a0f9fb08');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.140','procedure','Microscopic examination of peritoneal and retroperitoneal specimen,','91.140 Microscopic examination of peritoneal and retroperitoneal specimen,
parasitology culture and others (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',69,'draft',1,'c80115e1ab4aaa171e048ee3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.141','procedure','Parasite and fungal serology / molecular examination of specimen from','91.141 Parasite and fungal serology / molecular examination of specimen from
female genital tract (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',69,'draft',1,'cc10d9d8dd782234d46b9d40');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.142','procedure','Microscopic examination of peritoneal and retroperitoneal specimen,','91.142 Microscopic examination of peritoneal and retroperitoneal specimen,
Fungal culture yeast and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',69,'draft',1,'4ab3f152068327f44270a139');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.143','procedure','Microscopic examination of peritoneal and retroperitoneal specimen,','91.143 Microscopic examination of peritoneal and retroperitoneal specimen,
Fungal culture mold and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',69,'draft',1,'a06ba8eb956cf0c0562356c4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.149','procedure','Microscopic examination of peritoneal and retroperitoneal specimen,','91.149 Microscopic examination of peritoneal and retroperitoneal specimen,
Parasitology smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',69,'draft',1,'687b83670d42e86b0d19e00a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.16','procedure','Microscopic examination of peritoneal and retroperitoneal specimen, cell block','91.16   Microscopic examination of peritoneal and retroperitoneal specimen, cell block
and Papanicolaou smear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',69,'draft',0,'931639b2229069d31ee1c241');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.160','procedure','Microscopic examination of peritoneal and retroperitoneal specimen,','91.160 Microscopic examination of peritoneal and retroperitoneal specimen,
cell block (IM)
91.1600 Microscopic examination of peritoneal and retroperitoneal
specimen, Microscopic Immunohistochemistry examination
(IM)
91.1601 Microscopic examination of peritoneal and retroperitoneal
specimen, Microscopic Histophatology examination of
specimen from biopsy (IM)
91.1602 Microscopic examination of peritoneal and retroperitoneal
specimen, Microscopic Histophatology examination of
specimen from debulking (IM)
91.1603 Microscopic examination of peritoneal and retroperitoneal
specimen, Microscopic Histochemistry examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',70,'draft',1,'10e67984263cc1b0a0b83bb0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.161','procedure','Microscopic examination of peritoneal and retroperitoneal specimen,','91.161 Microscopic examination of peritoneal and retroperitoneal specimen,
papanicolaou and giemsa smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',70,'draft',1,'5350cc2597947e696f738d5f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.169','procedure','Other Microscopic examination of specimen from peritoneal and','91.169 Other Microscopic examination of specimen from peritoneal and
retroperitoneal specimen, papanicolaou smear and giemsa smea (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',70,'draft',1,'758d78984243f6d9ece2d280');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.17','procedure','Microscopic examination of peritoneal and retroperitoneal specimen, Molecular','91.17   Microscopic examination of peritoneal and retroperitoneal specimen, Molecular
biological test (IM) or Cythopathologic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',70,'draft',1,'64575af604ed9000ac6cb8b1');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.19','procedure','Other microscopic examination of peritoneal and retroperitoneal specimen','91.19   Other microscopic examination of peritoneal and retroperitoneal specimen','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',70,'draft',0,'399b9ae7d92ef8d14a787478');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.190','procedure','Microscopic examination of peritoneal and retroperitoneal specimen,','91.190 Microscopic examination of peritoneal and retroperitoneal specimen,
Microscopic ISH examination (IM','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',70,'draft',0,'61653e358e7d850e51451447');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.191','procedure','Microscopic examination of peritoneal and retroperitoneal specimen,','91.191 Microscopic examination of peritoneal and retroperitoneal specimen,
Microscopic CISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',70,'draft',1,'5d2b5fdbd276e150b558f7f7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.192','procedure','Microscopic examination of peritoneal and retroperitoneal specimen,','91.192 Microscopic examination of peritoneal and retroperitoneal specimen,
Microscopic FISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',70,'draft',1,'ca227a595d2f6a770b6f8b72');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.193','procedure','Microscopic examination of peritoneal and retroperitoneal specimen,','91.193 Microscopic examination of peritoneal and retroperitoneal specimen,
Microscopic FCR examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',70,'draft',1,'4020673251b141684c927c86');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.194','procedure','Microscopic examination of peritoneal and retroperitoneal specimen,','91.194 Microscopic examination of peritoneal and retroperitoneal specimen,
Screening for the Human Immunodeficiency Virus (HIV) Infection (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',70,'draft',1,'69974a128e8107dd52aed0dd');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.195','procedure','Microscopic examination of peritoneal and retroperitoneal specimen,','91.195 Microscopic examination of peritoneal and retroperitoneal specimen,
Prognostic Monitoring for the Human Immunodeficiency Virus (HIV) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',70,'draft',1,'6ee3a901776df111d701ed06');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.198','procedure','Microscopic examination of peritoneal and retroperitoneal specimen,','91.198 Microscopic examination of peritoneal and retroperitoneal specimen,
Other specified microscopic examinations (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',70,'draft',1,'07071a25e416ff790c94e602');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.199','procedure','Other microscopic examination of specimen from peritoneal and','91.199 Other microscopic examination of specimen from peritoneal and
retroperitoneal specimen (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',70,'draft',1,'4b15feaad7179817d1592732');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.2','category','Microscopic examination of specimen from kidney, ureter, perirenal and periureteral','91.2     Microscopic examination of specimen from kidney, ureter, perirenal and periureteral
tissue','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',70,'draft',0,'ac48b096c4957999f677ec54');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.24','procedure','Microscopic examination of specimen from kidney, ureter, perirenal and','91.24   Microscopic examination of specimen from kidney, ureter, perirenal and
periureteral tissue, parasitology','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',70,'draft',0,'f713c315d9be7497c2bd4556');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.240','procedure','Microscopic examination of specimen from kidney,ureter, perirenal and','91.240 Microscopic examination of specimen from kidney,ureter, perirenal and
periureteral tissue, parasitology culture and others (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',71,'draft',1,'cfdd017d2ab83a6afeee0ee3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.241','procedure','Parasite and fungal serology / molecular examination of specimen from','91.241 Parasite and fungal serology / molecular examination of specimen from
kidney, ureter, perirenal and periureteral tissue (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',71,'draft',1,'0d7d7c7af7a3b446b1eeb812');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.242','procedure','Microscopic examination of specimen from kidney,ureter, perirenal and','91.242 Microscopic examination of specimen from kidney,ureter, perirenal and
periureteral tissue, Fungal culture yeast and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',71,'draft',1,'6e1135f1ca436df3cb755e18');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.243','procedure','Microscopic examination of specimen from kidney,ureter, perirenal and','91.243 Microscopic examination of specimen from kidney,ureter, perirenal and
periureteral tissue, Fungal culture mold and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',71,'draft',1,'ab7cdcb89edb0eb6199cd445');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.249','procedure','Other Microscopic examination of specimen from kidney, ureter,','91.249 Other Microscopic examination of specimen from kidney, ureter,
perirenal and periureteral tissue, parasitology smear (IM) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',71,'draft',1,'665eb911d6a7fe4d653f4287');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.26','procedure','Microscopic examination of specimen from kidney, ureter, perirenal and','91.26   Microscopic examination of specimen from kidney, ureter, perirenal and
periureteral tissue, cell block and Papanicolaou smear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',71,'draft',0,'a3a2d06b0ffcee2fd45f79bf');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.260','procedure','Microscopic examination of specimen from kidney,ureter, perirenal and','91.260 Microscopic examination of specimen from kidney,ureter, perirenal and
periureteral tissue, cell block (IM)
91.2600 Microscopic examination of specimen from kidney,ureter,
perirenal and periureteral tissue, Microscopic
Immunohistochemistry examination (IM)
91.2601 Microscopic examination of specimen from kidney,ureter,
perirenal and periureteral tissue, Microscopic Histophatology
examination of specimen from biopsy (IM)
91.2602 Microscopic examination of specimen from kidney,ureter,
perirenal and periureteral tissue, Microscopic Histophatology
examination of specimen from debulking (IM)
91.2603 Microscopic examination of specimen from kidney,ureter,
perirenal and periureteral tissue, Microscopic Histochemistry
examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',71,'draft',1,'23b0a229bfc41b3881ba66cb');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.261','procedure','Microscopic examination of specimen from kidney,ureter, perirenal and','91.261 Microscopic examination of specimen from kidney,ureter, perirenal and
periureteral tissue, papanicolaou and giemsa smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',71,'draft',1,'8bc4e9b13e1fd0a250c0413b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.269','procedure','Other Microscopic examination of specimen from kidney, ureter,','91.269 Other Microscopic examination of specimen from kidney, ureter,
perirenal and periureteral tissue, cell block and papanicolaou smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',71,'draft',1,'8c757001940b1d0b968d2220');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.27','procedure','Microscopic examination of specimen from kidney,ureter, perirenal and','91.27   Microscopic examination of specimen from kidney,ureter, perirenal and
periureteral tissue, Molecular biological test (IM) or Cythopathologic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',71,'draft',1,'533831fd3084732b56e896e3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.29','procedure','Other microscopic examination of specimen from kidney,ureter, perirenal and','91.29   Other microscopic examination of specimen from kidney,ureter, perirenal and
periureteral tissue','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',71,'draft',0,'f013c9ee5a6c731477552684');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.290','procedure','Microscopic examination of specimen from kidney,ureter, perirenal and','91.290 Microscopic examination of specimen from kidney,ureter, perirenal and
periureteral tissue, Microscopic ISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',71,'draft',1,'38aebbc0ba2db4e331f5bb5d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.291','procedure','Microscopic examination of specimen from kidney,ureter, perirenal and','91.291 Microscopic examination of specimen from kidney,ureter, perirenal and
periureteral tissue, Microscopic CISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',71,'draft',1,'301ab5e051282ebfeef54693');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.292','procedure','Microscopic examination of specimen from kidney,ureter, perirenal and','91.292 Microscopic examination of specimen from kidney,ureter, perirenal and
periureteral tissue, Microscopic FISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',71,'draft',1,'288d52af3969da9591252c22');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.293','procedure','Microscopic examination of specimen from kidney,ureter, perirenal and','91.293 Microscopic examination of specimen from kidney,ureter, perirenal and
periureteral tissue, Microscopic FCR examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',71,'draft',1,'6aafdc7ae5d02548993b93ca');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.294','procedure','Microscopic examination of specimen from kidney,ureter, perirenal and','91.294 Microscopic examination of specimen from kidney,ureter, perirenal and
periureteral tissue, Screening for the Human Immunodeficiency Virus
(HIV) Infection (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',72,'draft',1,'3b46b654c0739dbd84c15949');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.295','procedure','Microscopic examination of specimen from kidney,ureter, perirenal and','91.295 Microscopic examination of specimen from kidney,ureter, perirenal and
periureteral tissue, Prognostic Monitoring for the Human
Immunodeficiency Virus (HIV) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',72,'draft',1,'d693f44b808257ed0f7f9e89');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.298','procedure','Microscopic examination of specimen from kidney,ureter, perirenal and','91.298 Microscopic examination of specimen from kidney,ureter, perirenal and
periureteral tissue, Other specified microscopic examinations (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',72,'draft',1,'822c541d3e42219b087b05d3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.299','procedure','Other microscopic examination of specimen from kidney, ureter,','91.299 Other microscopic examination of specimen from kidney, ureter,
perirenal and periureteral tissue (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',72,'draft',1,'0170b190257512274dadf283');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.3','category','Microscopic examination of specimen from bladder, urethra, prostate, seminal vesicle,','91.3     Microscopic examination of specimen from bladder, urethra, prostate, seminal vesicle,
perivesical tissue, and of urine and semen','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',72,'draft',0,'1a1a8ed7df51018820875107');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.34','procedure','Microscopic examination of specimen from bladder, urethra, prostate, seminal','91.34   Microscopic examination of specimen from bladder, urethra, prostate, seminal
vesicle, perivesical tissue, and of urine and semen, parasitology','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',72,'draft',0,'b59e3b01d3d6bae12048f956');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.340','procedure','Microscopic examination of specimen from bladder, urethra,prostate,','91.340 Microscopic examination of specimen from bladder, urethra,prostate,
seminal vesicle, perivesical tissue, and of urine and semen,
parasitology culture and others (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',72,'draft',1,'6216fb826631ae569d4cafb6');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.341','procedure','Parasite and fungal serology / molecular examination of specimen from','91.341 Parasite and fungal serology / molecular examination of specimen from
bladder, urethra, prostate,seminal vesicle, perivesical tissue, and of
urine and semen (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',72,'draft',1,'f4c6cda2653507b4dba30f56');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.342','procedure','Microscopic examination of specimen from bladder, urethra,prostate,','91.342 Microscopic examination of specimen from bladder, urethra,prostate,
seminal vesicle, perivesical tissue, and of urine and semen, Fungal
culture yeast and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',72,'draft',1,'83e82c6d0b666c3dc436ad0a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.343','procedure','Microscopic examination of specimen from bladder, urethra,prostate,','91.343 Microscopic examination of specimen from bladder, urethra,prostate,
seminal vesicle, perivesical tissue, and of urine and semen, Fungal
culture mold and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',72,'draft',1,'13d4a44d4b262d9e203b56a0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.349','procedure','Other Microscopic examination of specimen from bladder, urethra,','91.349 Other Microscopic examination of specimen from bladder, urethra,
prostate,seminal vesicle, perivesical tissue, and of urine and semen,
parasitology smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',72,'draft',1,'ac02582ef718497cb2def0c9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.36','procedure','Microscopic examination of specimen from bladder, urethra, prostate, seminal','91.36   Microscopic examination of specimen from bladder, urethra, prostate, seminal
vesicle, perivesical tissue, and of urine and semen, cell block and
Papanicolaou smear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',72,'draft',0,'a2710594a07700c46f550b61');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.360','procedure','Microscopic examination of specimen from bladder, urethra,prostate,','91.360 Microscopic examination of specimen from bladder, urethra,prostate,
seminal vesicle, perivesical tissue, and of urine and semen, cell block
(IM)
91.3600 Microscopic examination of specimen from bladder, urethra,
prostate, seminal vesicle, perivesical tissue, and of urine and
semen, Microscopic Immunohistochemistry examination (IM)
91.3601 Microscopic examination of specimen from bladder,
urethra,prostate, seminal vesicle, perivesical tissue, and of
urine and semen, Microscopic Histophatology examination of
specimen from biopsy (IM)
91.3602 Microscopic examination of specimen from bladder,
urethra,prostate, seminal vesicle, perivesical tissue, and of
urine and semen, Microscopic Histophatology examination of
specimen from debulking (IM)
91.3603 Microscopic examination of specimen from bladder,
urethra,prostate, seminal vesicle, perivesical tissue, and of
urine and semen, Microscopic Histochemistry examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',72,'draft',1,'d5b36fa5a56e21c791d812e1');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.361','procedure','Microscopic examination of specimen from bladder, urethra,prostate,','91.361 Microscopic examination of specimen from bladder, urethra,prostate,
seminal vesicle, perivesical tissue, and of urine and semen,
papanicolaou and giemsa smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',73,'draft',1,'92229c2b6b44bb090abe1c03');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.369','procedure','Other Microscopic examination of specimen from bladder, urethra,','91.369 Other Microscopic examination of specimen from bladder, urethra,
prostate,seminal vesicle, perivesical tissue, and of urine and semen,
cell block and papanicolaou smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',73,'draft',1,'a4c68400ed46dd32e1844650');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.37','procedure','Microscopic examination of specimen from bladder, urethra,prostate,','91.37   Microscopic examination of specimen from bladder, urethra,prostate,
seminalvesicle, perivesical tissue, and of urine and semen, Molecular biological
test (IM) or Cythopathologic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',73,'draft',1,'ee501c5140573afc94cb114e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.39','procedure','Other microscopic examination of specimen from bladder, urethra,prostate,','91.39   Other microscopic examination of specimen from bladder, urethra,prostate,
seminalvesicle, perivesical tissue, and of urine and semen','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',73,'draft',0,'717e1a7ea9c1c1ff15ad2315');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.390','procedure','Microscopic examination of specimen from bladder, urethra,prostate,','91.390 Microscopic examination of specimen from bladder, urethra,prostate,
seminal vesicle, perivesical tissue, and of urine and semen, Microscopic
ISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',73,'draft',1,'6817dcd4a372c129af26bd58');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.391','procedure','Microscopic examination of specimen from bladder, urethra,prostate,','91.391 Microscopic examination of specimen from bladder, urethra,prostate,
seminal vesicle, perivesical tissue, and of urine and semen, Microscopic
CISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',73,'draft',1,'02c885c9bdc06af5a78f64a8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.392','procedure','Microscopic examination of specimen from bladder, urethra,prostate,','91.392 Microscopic examination of specimen from bladder, urethra,prostate,
seminal vesicle, perivesical tissue, and of urine and semen, Microscopic
FISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',73,'draft',1,'0b6da016a28968c2b1251d96');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.393','procedure','Microscopic examination of specimen from bladder, urethra,prostate,','91.393 Microscopic examination of specimen from bladder, urethra,prostate,
seminal vesicle, perivesical tissue, and of urine and semen, Microscopic
FCR examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',73,'draft',1,'8931e99d534e6327f8b683cc');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.394','procedure','Microscopic examination of specimen from bladder, urethra,prostate,','91.394 Microscopic examination of specimen from bladder, urethra,prostate,
seminal vesicle, perivesical tissue, and of urine and semen, Screening
for the Human Immunodeficiency Virus (HIV) Infection (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',73,'draft',1,'74203196c10aba91a0b645e8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.395','procedure','Microscopic examination of specimen from bladder, urethra,prostate,','91.395 Microscopic examination of specimen from bladder, urethra,prostate,
seminal vesicle, perivesical tissue, and of urine and semen, Prognostic
Monitoring for the Human Immunodeficiency Virus (HIV) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',73,'draft',1,'93f810ad1d21a2659355d214');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.398','procedure','Microscopic examination of specimen from bladder, urethra,prostate,','91.398 Microscopic examination of specimen from bladder, urethra,prostate,
seminal vesicle, perivesical tissue, and of urine and semen, Other
specified microscopic examinations (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',73,'draft',1,'4f0b6ff9f49be69a75a78b24');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.399','procedure','Other microscopic examination of specimen from bladder, urethra,','91.399 Other microscopic examination of specimen from bladder, urethra,
prostate,seminal vesicle, perivesical tissue, and of urine and semen (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',73,'draft',1,'cc1f5ddc2ac0a3f6a0e976cd');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.4','category','Microscopic examination of specimen from female genital tract','91.4     Microscopic examination of specimen from female genital tract
Amnionic sac
Fetus','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',73,'draft',0,'085e90716589b2eac3ac8573');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.44','procedure','Microscopic examination of specimen from female genital tract, parasitology','91.44   Microscopic examination of specimen from female genital tract, parasitology','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',73,'draft',0,'e5a2f168169db80b332770b0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.440','procedure','Microscopic examination of specimen from female genital tract,','91.440 Microscopic examination of specimen from female genital tract,
parasitology culture and others (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',74,'draft',1,'32a88a1767ebab1bb7f5b0b4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.441','procedure','Parasite and fungal serology / molecular examination of specimen from','91.441 Parasite and fungal serology / molecular examination of specimen from
female genital tract (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',74,'draft',1,'a5b3e3542c20c1fc0b2503ae');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.442','procedure','Microscopic examination of specimen from female genital tract, Fungal','91.442 Microscopic examination of specimen from female genital tract, Fungal
culture yeast and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',74,'draft',1,'747fc65dc33d6af66e4c0330');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.443','procedure','Microscopic examination of specimen from female genital tract, Fungal','91.443 Microscopic examination of specimen from female genital tract, Fungal
culture mold and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',74,'draft',1,'c4a62381ce511aa3b6cb96af');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.449','procedure','Other Microscopic examination of specimen from female genital tract,','91.449 Other Microscopic examination of specimen from female genital tract,
parasitology smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',74,'draft',1,'7f53785356cb3a39ca066ef8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.46','procedure','Microscopic examination of specimen from female genital tract, cell block and','91.46   Microscopic examination of specimen from female genital tract, cell block and
Papanicolaou smear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',74,'draft',0,'af510f55175bfd7ae99e89a9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.460','procedure','Microscopic examination of specimen from female genital tract, cell','91.460 Microscopic examination of specimen from female genital tract, cell
block(IM)
91.4600 Microscopic examination of specimen from female genital tract,
Microscopic Immunohistochemistry examination (IM)
91.4601 Microscopic examination of specimen from female genital tract,
Microscopic Histophatology examination of specimen from
biopsy (IM)
91.4602 Microscopic examination of specimen from female genital tract,
Microscopic Histophatology examination of specimen from
debulking (IM)
91.4603 Microscopic examination of specimen from female genital
tract, Microscopic Histochemistry examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',74,'draft',1,'2aeef535e0651a1c8e060fcb');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.461','procedure','Microscopic examination of specimen from female genital tract,','91.461 Microscopic examination of specimen from female genital tract,
papanicolaou and giemsa smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',74,'draft',1,'9d8d4307c4792609d783d2d3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.469','procedure','Microscopic examination of specimen from female genital tract, other','91.469 Microscopic examination of specimen from female genital tract, other
cell block and papanicolaou smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',74,'draft',1,'f90864961b2098555a21af61');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.47','procedure','Microscopic examination of specimen from female genital tract, Molecular','91.47 Microscopic examination of specimen from female genital tract, Molecular
biological test (IM) or Cythopathologic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',74,'draft',1,'763fe96e41bad56da7e4208e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.49','procedure','Other microscopic examination of specimen from female genital tract','91.49 Other microscopic examination of specimen from female genital tract','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',74,'draft',0,'fc649fe177654a10f4454496');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.490','procedure','Microscopic examination of specimen from female genital tract,','91.490 Microscopic examination of specimen from female genital tract,
Microscopic ISH examination (IM','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',74,'draft',0,'5d83d75a40717ceb8ce4fe96');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.491','procedure','Microscopic examination of specimen from female genital tract,','91.491 Microscopic examination of specimen from female genital tract,
Microscopic CISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',74,'draft',1,'0c04e17794eba236d8c677ab');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.492','procedure','Microscopic examination of specimen from female genital tract,','91.492 Microscopic examination of specimen from female genital tract,
Microscopic FISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',74,'draft',1,'1be816356971642e4c90b015');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.493','procedure','Microscopic examination of specimen from female genital tract,','91.493 Microscopic examination of specimen from female genital tract,
Microscopic FCR examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',74,'draft',1,'a29986e834ad9cf31b0d122a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.494','procedure','Microscopic examination of specimen from female genital tract,','91.494 Microscopic examination of specimen from female genital tract,
Screening for the Human Immunodeficiency Virus (HIV) Infection (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',75,'draft',1,'9484e578028b4b6e88a04ec5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.495','procedure','Microscopic examination of specimen from female genital tract,','91.495 Microscopic examination of specimen from female genital tract,
Prognostic Monitoring for the Human Immunodeficiency Virus (HIV)
(IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',75,'draft',1,'0a8ceb2b884e528f1e23fa53');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.498','procedure','Microscopic examination of specimen from female genital tract,','91.498 Microscopic examination of specimen from female genital tract,
Other specified microscopic examinations (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',75,'draft',1,'71757e1309033ef704dcea67');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.499','procedure','Other microscopic examination of specimen from female genital','91.499 Other microscopic examination of specimen from female genital
tract(IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',75,'draft',1,'69e43c062525280c3d900b19');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.5','category','Microscopic examination of specimen from musculoskeletal system and of joint fluid','91.5     Microscopic examination of specimen from musculoskeletal system and of joint fluid
Microscopic examination of:
bone
bursa
cartilage
fascia
ligament
muscle
synovial membrane
tendon','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',75,'draft',0,'bfd7d02a707ce8ee8e512b1f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.54','procedure','Microscopic examination of specimen from musculoskeletal system and of','91.54   Microscopic examination of specimen from musculoskeletal system and of
joint fluid, parasitology','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',75,'draft',0,'fa39d23fb5026bf4896d21eb');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.540','procedure','Microscopic examination of specimen from musculoskeletal system','91.540 Microscopic examination of specimen from musculoskeletal system
and of joint fluid, parasitology culture and others (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',75,'draft',1,'022462d60f72d17476feffb7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.541','procedure','Parasite and fungal serology / molecular examination of specimen from','91.541 Parasite and fungal serology / molecular examination of specimen from
musculoskeletal system and of joint fluid (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',75,'draft',1,'426e66c3bd87e061e09688b2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.542','procedure','Microscopic examination of specimen from musculoskeletal system','91.542 Microscopic examination of specimen from musculoskeletal system
and of joint fluid, Fungal culture yeast and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',75,'draft',1,'5e8c4e4b29079d93b2795ed8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.543','procedure','Microscopic examination of specimen from musculoskeletal system','91.543 Microscopic examination of specimen from musculoskeletal system
and of joint fluid, Fungal culture mold and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',75,'draft',1,'1211466cba72b78c9f26be98');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.549','procedure','Other Microscopic examination of specimen from musculoskeletal','91.549 Other Microscopic examination of specimen from musculoskeletal
system and of joint fluid, parasitology smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',75,'draft',1,'6cd362705b70a762a90ef2d9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.56','procedure','Microscopic examination of specimen from musculoskeletal system and of joint','91.56   Microscopic examination of specimen from musculoskeletal system and of joint
fluid, cell block and Papanicolaou smear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',75,'draft',0,'1ef9b1c68415054752914670');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.560','procedure','Microscopic examination of specimen from musculoskeletal system','91.560 Microscopic examination of specimen from musculoskeletal system
and of joint fluid, cell block (IM)
91.5600 Microscopic examination of specimen from musculoskeletal
system and of joint fluid, Microscopic Immunohistochemistry
examination (IM)
91.5601 Microscopic examination of specimen from musculoskeletal
system and of joint fluid, Microscopic Histophatology
examination of specimen from biopsy (IM)
91.5602 Microscopic examination of specimen from musculoskeletal
system and of joint fluid, Microscopic Histophatology
examination of specimen from debulking (IM)
91.5603 Microscopic examination of specimen from musculoskeletal
system and of joint fluid, Microscopic Histochemistry
examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',75,'draft',1,'26f7d7aacc26cb38097610b2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.561','procedure','Microscopic examination of specimen from musculoskeletal system','91.561 Microscopic examination of specimen from musculoskeletal system
and of joint fluid, papanicolaou and giemsa smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',76,'draft',1,'7922eb5b77d2ac1a36e0e4b7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.569','procedure','Other Microscopic examination of specimen from musculoskeletal','91.569 Other Microscopic examination of specimen from musculoskeletal
system and of joint fluid, cell block and papanicolaou smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',76,'draft',1,'19218617b1bc4cf1ca1a0359');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.57','procedure','Microscopic examination of specimen from musculoskeletal system and of joint','91.57   Microscopic examination of specimen from musculoskeletal system and of joint
fluid, Molecular biological test (IM) or Cythopathologic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',76,'draft',1,'76ac03ebfa9d3181c47ea18b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.59','procedure','Other microscopic examination of specimen from musculoskeletal system and','91.59   Other microscopic examination of specimen from musculoskeletal system and
of joint fluid','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',76,'draft',0,'8443fb359e94649de5f69802');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.590','procedure','Microscopic examination of specimen from musculoskeletal system','91.590 Microscopic examination of specimen from musculoskeletal system
and of joint fluid, Microscopic ISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',76,'draft',1,'b673230d214de516af9674ba');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.591','procedure','Microscopic examination of specimen from musculoskeletal system','91.591 Microscopic examination of specimen from musculoskeletal system
and of joint fluid, Microscopic CISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',76,'draft',1,'4f88a147101b8de761bf83a2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.592','procedure','Microscopic examination of specimen from musculoskeletal system','91.592 Microscopic examination of specimen from musculoskeletal system
and of joint fluid, Microscopic FISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',76,'draft',1,'02385f1da70b7622d5123a06');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.593','procedure','Microscopic examination of specimen from musculoskeletal system','91.593 Microscopic examination of specimen from musculoskeletal system
and of joint fluid, Microscopic FCR examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',76,'draft',1,'ee59f7288d2f135a1bf6c2b5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.594','procedure','Microscopic examination of specimen from musculoskeletal system and','91.594 Microscopic examination of specimen from musculoskeletal system and
of joint fluid, Screening for the Human Immunodeficiency Virus (HIV)
Infection (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',76,'draft',1,'90fd1203087c4c0f7f15cfbf');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.595','procedure','Microscopic examination of specimen from musculoskeletal system','91.595 Microscopic examination of specimen from musculoskeletal system
and of joint fluid, Prognostic Monitoring for the Human
Immunodeficiency Virus (HIV) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',76,'draft',1,'3a7fd43fadb083529b98870b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.598','procedure','Microscopic examination of specimen from musculoskeletal system','91.598 Microscopic examination of specimen from musculoskeletal system
and of joint fluid, Other specified microscopic examinations (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',76,'draft',1,'eefe47b2b007955192c37974');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.599','procedure','Other microscopic examination of specimen from musculoskeletal','91.599 Other microscopic examination of specimen from musculoskeletal
system and of joint fluid (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',76,'draft',1,'6391deb438814724a7b4f98d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.6','category','Microscopic examination of specimen from skin and other integument','91.6     Microscopic examination of specimen from skin and other integument
Microscopic examination of:
hair
nails
skin
Excludes: mucous membrane -- code to organ site
that of operative wound (91.71-91.79)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',76,'draft',0,'143fd51df9baac3f0e386721');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.64','procedure','Microscopic examination of specimen from skin and other integument,','91.64 Microscopic examination of specimen from skin and other integument,
parasitology','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',76,'draft',0,'0dac6e2f9717a0666c08d09e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.640','procedure','Microscopic examination of specimen from skin and other integument,','91.640 Microscopic examination of specimen from skin and other integument,
parasitology culture and others (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',76,'draft',1,'112a5b7f9491cd1d1264df23');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.641','procedure','Parasite and fungal serology / molecular examination of specimen from','91.641 Parasite and fungal serology / molecular examination of specimen from
skin and other integument (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',76,'draft',1,'30a1020af6718851e964b802');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.642','procedure','Microscopic examination of specimen from skin and other integument,','91.642 Microscopic examination of specimen from skin and other integument,
Fungal culture yeast and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',77,'draft',1,'676d2c94ca09cfd96052db49');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.643','procedure','Microscopic examination of specimen from skin and other integument,','91.643 Microscopic examination of specimen from skin and other integument,
Fungal culture mold and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',77,'draft',1,'2e8f626c885366b86316f460');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.649','procedure','Other Microscopic examination of specimen from skin and other','91.649 Other Microscopic examination of specimen from skin and other
integument, parasitology smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',77,'draft',1,'e7972cf85aaaa488b3dce531');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.66','procedure','Microscopic examination of specimen from skin and other integument, cell','91.66   Microscopic examination of specimen from skin and other integument, cell
block and Papanicolaou smear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',77,'draft',0,'932a1518a26b5e20cd670ad4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.660','procedure','Microscopic examination of specimen from skin and other integument,','91.660 Microscopic examination of specimen from skin and other integument,
cell block (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',77,'draft',1,'e904ea81bd574c511a54d86c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.661','procedure','Microscopic examination of specimen from skin and other integument,','91.661 Microscopic examination of specimen from skin and other integument,
papanicolaou and giemsa smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',77,'draft',1,'e0aca81b3e6ba8400dea93b7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.669','procedure','Other Microscopic examination of specimen from skin and other','91.669 Other Microscopic examination of specimen from skin and other
integument (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',77,'draft',1,'15ac4eb9a5dcc4c857c355e4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.67','procedure','Microscopic examination of specimen from skin and other integument,','91.67   Microscopic examination of specimen from skin and other integument,
Molecular biological test (IM) or Cythopathologic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',77,'draft',1,'a10986aff41a7c2312b36df3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.69','procedure','Other microscopic examination of specimen from skin and other integument','91.69   Other microscopic examination of specimen from skin and other integument','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',77,'draft',0,'7e762afe557d1aae3b9a5e98');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.690','procedure','Microscopic examination of specimen from skin and other integument,','91.690 Microscopic examination of specimen from skin and other integument,
Microscopic ISH examination (IM','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',77,'draft',0,'99c5c42a3b57499b74329a6c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.691','procedure','Microscopic examination of specimen from skin and other integument,','91.691 Microscopic examination of specimen from skin and other integument,
Microscopic CISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',77,'draft',1,'6338783544297fdf1e1f0153');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.692','procedure','Microscopic examination of specimen from skin and other integument,','91.692 Microscopic examination of specimen from skin and other integument,
Microscopic FISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',77,'draft',1,'371a45dc202a5d9f4f06b551');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.693','procedure','Microscopic examination of specimen from skin and other integument,','91.693 Microscopic examination of specimen from skin and other integument,
Microscopic FCR examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',77,'draft',1,'1eaa1378f503b127434e099c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.694','procedure','Microscopic examination of specimen from skin and other integument,','91.694 Microscopic examination of specimen from skin and other integument,
Screening for the Human Immunodeficiency Virus (HIV) Infection (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',77,'draft',1,'8211bc5b0cda79672aedfc80');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.695','procedure','Microscopic examination of specimen from skin and other integument,','91.695 Microscopic examination of specimen from skin and other integument,
Prognostic Monitoring for the Human Immunodeficiency Virus (HIV) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',77,'draft',1,'bddb171e790c01985ea18566');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.698','procedure','Microscopic examination of specimen from skin and other integument,','91.698 Microscopic examination of specimen from skin and other integument,
Other specified microscopic examinations (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',77,'draft',1,'b00a909d9448145843fb8466');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.699','procedure','Other microscopic examination of specimen from skin and other','91.699 Other microscopic examination of specimen from skin and other
integument (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',77,'draft',1,'a3d52c53c8add4062ce85c13');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.7','category','Microscopic examination of specimen from operative wound','91.7     Microscopic examination of specimen from operative wound','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',77,'draft',0,'6f023e414d3bf075b1b6efbb');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.74','procedure','Microscopic examination of specimen from operative wound, parasitology','91.74   Microscopic examination of specimen from operative wound, parasitology','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',77,'draft',0,'1188532fccd4411f51f3b240');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.740','procedure','Microscopic examination of specimen from operative wound,','91.740 Microscopic examination of specimen from operative wound,
parasitology culture and others (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',77,'draft',1,'bea20bc9ba18801eda535cf5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.741','procedure','Parasite and fungal serology / molecular examination of specimen from','91.741 Parasite and fungal serology / molecular examination of specimen from
operative wound (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',77,'draft',1,'3279d48bb405c5eb1d3d9f84');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.742','procedure','Microscopic examination of specimen from operative wound, Fungal','91.742 Microscopic examination of specimen from operative wound, Fungal
culture yeast and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',78,'draft',1,'634f96bec74f61ccb51fa476');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.743','procedure','Microscopic examination of specimen from operative wound, Fungal','91.743 Microscopic examination of specimen from operative wound, Fungal
culture mold and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',78,'draft',1,'520a8e9e9309d172398d2542');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.749','procedure','Other Microscopic examination of specimen from operative wound,','91.749 Other Microscopic examination of specimen from operative wound,
parasitology smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',78,'draft',1,'9be71575f7b53127e82a2b8c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.76','procedure','Microscopic examination of specimen from operative wound, cell block and','91.76   Microscopic examination of specimen from operative wound, cell block and
Papanicolaou smear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',78,'draft',0,'721d4dbc9e42ab3cfd256c4b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.760','procedure','Microscopic examination of specimen from operative wound, cell block','91.760 Microscopic examination of specimen from operative wound, cell block
(IM)
91.7600 Microscopic examination of specimen from operative wound,
Microscopic Immunohistochemistry examination (IM)
91.7601 Microscopic examination of specimen from operative wound,
Microscopic Histophatology examination of specimen from
biopsy (IM)
91.7602 Microscopic examination of specimen from operative wound,
Microscopic Histophatology examination of specimen from
debulking (IM)
91.7603 Microscopic examination of specimen from operative wound,
Microscopic Histochemistry examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',78,'draft',1,'ffe1646a675dc2ceb065c6b5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.761','procedure','Microscopic examination of specimen from operative wound,','91.761 Microscopic examination of specimen from operative wound,
papanicolaou and giemsa smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',78,'draft',1,'5d6208fab589a5ce700663ef');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.769','procedure','Other microscopic examination of specimen from operative wound,','91.769 Other microscopic examination of specimen from operative wound,
papanicolaou smear and giemsa smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',78,'draft',1,'a1598abeb26cbfb08ed5a343');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.77','procedure','Microscopic examination of specimen from operative wound, Molecular','91.77   Microscopic examination of specimen from operative wound, Molecular
biological test (IM) or Cythopathologic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',78,'draft',1,'d20d301eaccdc65da657a163');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.79','procedure','Other microscopic examination of specimen from operative wound','91.79   Other microscopic examination of specimen from operative wound','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',78,'draft',0,'f8f9f1c0c29206fee815b361');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.790','procedure','Microscopic examination of specimen from operative wound,','91.790 Microscopic examination of specimen from operative wound,
Microscopic ISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',78,'draft',1,'fc0e06e8a43a1c25e745d1e0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.791','procedure','Microscopic examination of specimen from operative wound,','91.791 Microscopic examination of specimen from operative wound,
Microscopic CISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',78,'draft',1,'af3815d3102989711e7f8d96');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.792','procedure','Microscopic examination of specimen from operative wound,','91.792 Microscopic examination of specimen from operative wound,
Microscopic FISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',78,'draft',1,'e46b20e1fb620fff0d93b7c6');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.793','procedure','Microscopic examination of specimen from operative wound,','91.793 Microscopic examination of specimen from operative wound,
Microscopic FCR examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',78,'draft',1,'556bd9c1c623a16acf004717');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.794','procedure','Microscopic examination of specimen from operative wound, Screening','91.794 Microscopic examination of specimen from operative wound, Screening
for the Human Immunodeficiency Virus (HIV) Infection (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',78,'draft',1,'04917f56e43664fa100aa34a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.795','procedure','Microscopic examination of specimen from operative wound,','91.795 Microscopic examination of specimen from operative wound,
Prognostic Monitoring for the Human Immunodeficiency Virus (HIV) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',78,'draft',1,'87bdd41c879a92108290d041');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.798','procedure','Microscopic examination of specimen from operative wound, Other','91.798 Microscopic examination of specimen from operative wound, Other
specified microscopic examinations (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',78,'draft',1,'c95eb3babead93ba31fb8ad1');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.799','procedure','Other microscopic examination of specimen from operative wound (IM)','91.799 Other microscopic examination of specimen from operative wound (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',79,'draft',1,'74b8b5afa462d961c1e1e3f1');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.8','category','Microscopic examination of specimen from other site','91.8     Microscopic examination of specimen from other site','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',79,'draft',0,'15f2fb2c436fb546c0bbd314');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.84','procedure','Microscopic examination of specimen from other site, parasitology','91.84   Microscopic examination of specimen from other site, parasitology','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',79,'draft',0,'8eaa4a7d5bbf28eaadddddd5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.840','procedure','Microscopic examination of specimen from other site, parasitology','91.840 Microscopic examination of specimen from other site, parasitology
culture and others (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',79,'draft',1,'0c33206619f46d4a5d83f104');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.841','procedure','Parasite and fungal serology / molecular examination of specimen from','91.841 Parasite and fungal serology / molecular examination of specimen from
other site (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',79,'draft',1,'82f04e6689b1a4adca1770eb');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.842','procedure','Microscopic examination of specimen from other site, Fungal culture','91.842 Microscopic examination of specimen from other site, Fungal culture
yeast and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',79,'draft',1,'d0552491064677aad1a22a70');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.843','procedure','Microscopic examination of specimen from other site, Fungal culture','91.843 Microscopic examination of specimen from other site, Fungal culture
mold and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',79,'draft',1,'688fd30152c6bb3aaf2d103a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.849','procedure','Other microscopic examination of specimen from other site,','91.849 Other microscopic examination of specimen from other site,
parasitology smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',79,'draft',1,'b7fa2a452072861f6785de61');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.86','procedure','Microscopic examination of specimen from other site, cell block and','91.86   Microscopic examination of specimen from other site, cell block and
Papanicolaou smear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',79,'draft',0,'f11369cd1f78867c593d3c13');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.860','procedure','Microscopic examination of specimen from other site, cell block (IM)','91.860 Microscopic examination of specimen from other site, cell block (IM)
91.8600 Microscopic examination of specimen from other site,
Microscopic Immunohistochemistry examination (IM)
91.8601 Microscopic examination of specimen from other site,
Microscopic Histophatology examination of specimen from
biopsy (IM)
91.8602 Microscopic examination of specimen from other site,
Microscopic Histophatology examination of specimen from
debulking (IM)
91.8603 Microscopic examination of specimen from other site,
Microscopic Histochemistry examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',79,'draft',1,'69c38182a257520f13c3c18d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.861','procedure','Microscopic examination of specimen from other site, papanicolaou','91.861 Microscopic examination of specimen from other site, papanicolaou
and giemsa smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',79,'draft',1,'c1b2af8de847740f2471d65c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.869','procedure','Other microscopic examination of specimen from other site, cell block','91.869 Other microscopic examination of specimen from other site, cell block
and papanicolaou smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',79,'draft',1,'637f6582a6004cf759485cd4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.87','procedure','Microscopic examination of specimen from other site, Molecular biological test','91.87   Microscopic examination of specimen from other site, Molecular biological test
(IM)
or Cythopathologic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',79,'draft',1,'4183015999544ddeb69090d3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.89','procedure','Other microscopic examination of specimen from other site','91.89   Other microscopic examination of specimen from other site','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',79,'draft',0,'bd5e6200ddf93aaa7bed91d3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.890','procedure','Microscopic examination of specimen from other site, Microscopic ISH','91.890 Microscopic examination of specimen from other site, Microscopic ISH
examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',79,'draft',1,'eb9787d64c458c253164bc97');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.891','procedure','Microscopic examination of specimen from other site, Microscopic','91.891 Microscopic examination of specimen from other site, Microscopic
CISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',79,'draft',1,'3781bde29328aafb5a5069fd');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.892','procedure','Microscopic examination of specimen from other site, Microscopic FISH','91.892 Microscopic examination of specimen from other site, Microscopic FISH
examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',79,'draft',1,'355bca7e5f0908ac70b8b288');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.893','procedure','Microscopic examination of specimen from other site, Microscopic FCR','91.893 Microscopic examination of specimen from other site, Microscopic FCR
examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',80,'draft',1,'1c46394cccfd4c151d015428');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.894','procedure','Microscopic examination of specimen from other site, Screening for the','91.894 Microscopic examination of specimen from other site, Screening for the
Human Immunodeficiency Virus (HIV) Infection (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',80,'draft',1,'b9d3411115240a6aacfd15b0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.895','procedure','Microscopic examination of specimen from other site, Prognostic','91.895 Microscopic examination of specimen from other site, Prognostic
Monitoring for the Human Immunodeficiency Virus (HIV) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',80,'draft',1,'5e3a908ba2c33f622699b21e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.898','procedure','Microscopic examination of specimen from other site, Other specified','91.898 Microscopic examination of specimen from other site, Other specified
microscopic examinations (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',80,'draft',1,'e0f4c9da42ab42b57ab354c9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.899','procedure','Other microscopic examination of specimen from other site (IM)','91.899 Other microscopic examination of specimen from other site (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',80,'draft',1,'4f99801b80f52e9ae4c91fbd');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.9','category','Microscopic examination of specimen from unspecified site','91.9     Microscopic examination of specimen from unspecified site','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',80,'draft',0,'1b34d1fdb92d7db71e185061');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.94','procedure','Microscopic examination of specimen from unspecified site, parasitology','91.94   Microscopic examination of specimen from unspecified site, parasitology','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',80,'draft',0,'2bc3d4252bc6ef1bd2d75026');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.940','procedure','Microscopic examination of specimen from unspecified site,','91.940 Microscopic examination of specimen from unspecified site,
parasitology culture and others (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',80,'draft',1,'071705ce9dadc58c48522ddc');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.941','procedure','Parasite and fungal serology / molecular examination of specimen from','91.941 Parasite and fungal serology / molecular examination of specimen from
unspecified site (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',80,'draft',1,'ee59f7fa41a9e47b3af45b00');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.942','procedure','Microscopic examination of specimen from unspecified site, Fungal','91.942 Microscopic examination of specimen from unspecified site, Fungal
culture yeast and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',80,'draft',1,'7a9a61c4228cc3a482a46204');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.943','procedure','Microscopic examination of specimen from unspecified site, Fungal','91.943 Microscopic examination of specimen from unspecified site, Fungal
culture mold and susceptibility test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',80,'draft',1,'cabcd8d7be8baa072641454c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.949','procedure','Other Microscopic examination of specimen from unspecified site,','91.949 Other Microscopic examination of specimen from unspecified site,
parasitology smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',80,'draft',1,'c339515d4d02d3dc9dd4c812');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.96','procedure','Microscopic examination of specimen from unspecified site, cell block and','91.96   Microscopic examination of specimen from unspecified site, cell block and
Papanicolaou smear','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',80,'draft',0,'1142a3ee598f52cffc42baa5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.960','procedure','Microscopic examination of specimen from unspecified site, cell block','91.960 Microscopic examination of specimen from unspecified site, cell block
(IM)
91.9600 Microscopic examination of specimen from unspecified site,
Microscopic Immunohistochemistry examination (IM)
91.9601 Microscopic examination of specimen from unspecified site,
Microscopic Histophatology examination of specimen from
biopsy (IM)
91.9602 Microscopic examination of specimen from unspecified site,
Microscopic Histophatology examination of specimen from
debulking (IM)
91.9603 Microscopic examination of specimen from unspecified site,
Microscopic Histochemistry examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',80,'draft',1,'f4d3507789208ea60d38d9d1');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.961','procedure','Microscopic examination of specimen from unspecified site,','91.961 Microscopic examination of specimen from unspecified site,
papanicolaou and giemsa smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',80,'draft',1,'916ef22eb9fcba982e71b2ce');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.969','procedure','Other microscopic examination of specimen from unspecified site, cell','91.969 Other microscopic examination of specimen from unspecified site, cell
block and papanicolaou smear (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',80,'draft',1,'49fdbbcebc97f1640a21cdcb');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.97','procedure','Microscopic examination of specimen from unspecified site, Molecular','91.97    Microscopic examination of specimen from unspecified site, Molecular
biological test (IM) or Cythopathologic (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',81,'draft',1,'bc07682c31bfaee26a552319');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.99','procedure','Other microscopic examination of specimen from unspecified site','91.99    Other microscopic examination of specimen from unspecified site','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',81,'draft',0,'d2087641d7dc5f1f05675303');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.990','procedure','Microscopic examination of specimen from unspecified site,','91.990 Microscopic examination of specimen from unspecified site,
Microscopic ISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',81,'draft',1,'cb1d08ca5ff1ae75c17c1924');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.991','procedure','Microscopic examination of specimen from unspecified site,','91.991 Microscopic examination of specimen from unspecified site,
Microscopic CISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',81,'draft',1,'8b8066eec9f24018dc59f912');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.992','procedure','Microscopic examination of specimen from unspecified site,','91.992 Microscopic examination of specimen from unspecified site,
Microscopic FISH examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',81,'draft',1,'c9c0865aa5952703d7ed3b82');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.993','procedure','Microscopic examination of specimen from unspecified site,','91.993 Microscopic examination of specimen from unspecified site,
Microscopic FCR examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',81,'draft',1,'eb837e9f45ab974816991664');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.994','procedure','Microscopic examination of specimen from unspeified site, Screening','91.994 Microscopic examination of specimen from unspeified site, Screening
for the Human Immunodeficiency Virus (HIV) Infection (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',81,'draft',1,'cb2e88e513b1af912f2319f2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.995','procedure','Microscopic examination of specimen from unspecified site, Prognostic','91.995 Microscopic examination of specimen from unspecified site, Prognostic
Monitoring for the Human Immunodeficiency Virus (HIV) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',81,'draft',1,'3ad53caf9df7096479fe1d0e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.998','procedure','Microscopic examination of specimen from unspecified site, Other','91.998 Microscopic examination of specimen from unspecified site, Other
specified microscopic examinations (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',81,'draft',1,'8ef80bf46712c4d16d766bc5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('91.999','procedure','Other microscopic examination of specimen from unspecified site (IM)','91.999 Other microscopic examination of specimen from unspecified site (IM)
92      Nuclear medicine
Code also for radiopharmaceuticals to identify nuclear medicine procedures
List For Radiopharmaceuticals :
KND01         Technetium-99m (Tc-99m) (IM)
KND0101       Tc-99m-Pertechnetate (IM)
KND0102       Tc-99m-DTPA (IM)
KND0103       Tc-99m-MAG3 (IM)
KND0104       Tc-99m-DMSA (IM)
KND0105       Tc-99m-SestaMIBI (IM)
KND0106       Tc-99m-Tetrofosmin (IM)
KND0107       Tc-99m-MDP (IM)
KND0108       Tc-99m-RBC (IM)
KND0109       Tc-99m-MAA (IM)
KND0110       Tc-99m-Pyrophosphate (IM)
KND0111       Tc-99m-HMPAO (IM)
KND0112       Tc-99m-ECD (IM)
KND0113       Tc-99m-Ethambutol (IM)
KND0114       Tc-99m-HIDA (IM)
KND0115       Tc-99m-Mebrofenin (IM)
KND0116       Tc-99m-Sulfur Colloid (IM)
KND0117       Tc-99m-Nano Colloid (IM)
KND0118       Tc-99m-Colloid (IM)
KND0119       Tc-99m-Phyton (IM)
KND0120       Tc-99m-Human Serum Albumin (IM)
KND0121       Tc-99m-Ciprofloxaxin (IM)
KND0122       Tc-99m-UBI (IM)
KND0123       Tc-99m-WBC (IM)
KND0124       Tc-99m-Trodat (IM)
KND0125       Tc-99m-PSMA (IM)
KND0126       Other Pharmaceuticals (IM)
KND02         Iodine-131 (I-131) (IM)
KND0201       Na-I-131 (IM)
KND0202       I-131-mIBG (IM)
KND0203       Other Pharmaceuticals (IM)
KND03         Iodine-123 (I-123) (IM)
KND0301       Na-I-123 (IM)
KND0302       I-123-mIBG (IM)
KND0303       I-123-ioflupane (IM)
KND0304       Other Pharmaceuticals (IM)
KND04         Lutetium-177 (Lu-177) (IM)
KND0401       Lu-177-PSMA (IM)
KND0402       Lu-177-DOTATATE (IM)
KND0403       Lu-177-DOTATOC (IM)
KND0404       Lu-177-DOTANOC (IM)
KND0405       Other Pharmaceuticals (IM)
KND05         Gallium-67 (Ga-67) (IM)
KND0501       Ga-67-Citrate (IM)
KND0502       Other Pharmaceuticals (IM)
KND06         Thalium-201 (Tl-201) (IM)
KND07         Indium-111 (In-111) (IM)
KND08         Fluorine-18 (F-18) (IM)
KND0801       F-18-FDG (IM)
KND0802       F-18-PSMA (IM)
KND0803       F-18-FDOPA (IM)
KND0804       F-18-FMISO (IM)
KND0805       Na-F-18 (IM)
KND0806       Other Pharmaceuticals (IM)
KND09         Gallium-68 (Ga-68) (IM)
KND0901       Ga-68-PSMA (IM)
KND0902       Ga-68-DOTATATE (IM)
KND0903       Ga-68-DOTATOC (IM)
KND0904       Ga-68-DOTANOC (IM)
KND0905       Ga-68-FAPI (IM)
KND0906       Other Pharmaceuticals (IM)
KND10         NH3-Ammonia (IM)
KND11          Rubidium-82 (Rb-82) – Chloride
(IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',81,'draft',1,'ece29fc57f50470295307dd8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.0','category','Radioisotope scan and function study','92.0     Radioisotope scan and function study','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',83,'draft',0,'b3a0d5eb4a0e9478d83175ae');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.05','procedure','Cardiovascular and hematopoietic scan and radioisotope function study','92.05   Cardiovascular and hematopoietic scan and radioisotope function study
Bone marrow scan or function study
Cardiac output scan or function study
Circulation time scan or function study
Radionuclide cardiac ventriculogram scan or function study
Spleen scan or function study
Nuclear study resting (IM)
Nuclear Study Stress test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',83,'draft',1,'514b8b1fd0cb95d553aa67ea');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.1','category','Other radioisotope scan','92.1     Other radioisotope scan','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',83,'draft',0,'c5b9ba47356a1e5803a85d5d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.15','procedure','Pulmonary scan','92.15   Pulmonary scan','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',83,'draft',0,'08d72f44b806f927189d3ebe');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.150','procedure','Lung perfusion scan (IM)','92.150 Lung perfusion scan (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',83,'draft',1,'0c981c382185d28a7e5a9afc');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.2','category','Therapeutic radiology and nuclear medicine','92.2     Therapeutic radiology and nuclear medicine','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',83,'draft',0,'473d387844fd9e25837a50ad');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.23','procedure','Radioisotopic teleradiotherapy','92.23   Radioisotopic teleradiotherapy
Teleradiothe rapy using:
cobalt-60
iodine-125
radioactive cesium','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',83,'draft',0,'406034ddac35f823017ea0a7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.230','procedure','Radioisotopic teleradiotherapy 2D (IM)','92.230 Radioisotopic teleradiotherapy 2D (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',83,'draft',1,'da6583ee730b893bc3d339f0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.231','procedure','Radioisotopic teleradiotherapy 3D (IM)','92.231 Radioisotopic teleradiotherapy 3D (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',83,'draft',1,'1e82951a549e7590d634934d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.232','procedure','Radioisotopic teleradiotherapy Blood irradiation (IM)','92.232 Radioisotopic teleradiotherapy Blood irradiation (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',83,'draft',1,'b65b6b6792dc26cda5394cfc');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.233','procedure','Radioisotopic teleradiotherapy Extra Corporeal Irradiation (IM)','92.233 Radioisotopic teleradiotherapy Extra Corporeal Irradiation (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',83,'draft',1,'33cb56916c345e6feae0d4ca');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.24','procedure','Teleradiotherapy using photons','92.24   Teleradiotherapy using photons
Megavoltage NOS
Supervoltage NOS
Use of:
Betatron
linear accelerator','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',83,'draft',0,'59cb90cd1b16b969a2674db2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.240','procedure','Teleradiotherapy using photons 2D (IM)','92.240 Teleradiotherapy using photons 2D (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',83,'draft',1,'7b534ef0cdb1f238ad4318b2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.241','procedure','Teleradiotherapy using photons 3D (IM)','92.241 Teleradiotherapy using photons 3D (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',83,'draft',1,'fa2b5e24139dfa2ccffb22aa');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.242','procedure','Teleradiotherapy using photons IGRT (IM)','92.242 Teleradiotherapy using photons IGRT (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',83,'draft',1,'bd4c5a597fddd7e9bfd75c41');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.243','procedure','Teleradiotherapy using photons IMRT/VMAT (IM)','92.243 Teleradiotherapy using photons IMRT/VMAT (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',83,'draft',1,'acab89fbe73ea831ee26d554');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.244','procedure','Teleradiotherapy using photons Blood irradiation (IM)','92.244 Teleradiotherapy using photons Blood irradiation (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',83,'draft',1,'3a67789493954ee17570187a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.245','procedure','Teleradiotherapy using photons Extra Corporeal Irradiation (IM)','92.245 Teleradiotherapy using photons Extra Corporeal Irradiation (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',83,'draft',1,'6f12b81842739c78e6a1c107');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.247','procedure','Teleradiotherapy using photons inc. TBI,TMI (IM)','92.247 Teleradiotherapy using photons inc. TBI,TMI (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',83,'draft',1,'00b0c348fd42298c69c42f97');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.25','procedure','Teleradiotherapy using electrons','92.25   Teleradiotherapy using electrons
Beta particles','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',83,'draft',0,'6ff5910c27fef99d1a9ccc67');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.250','procedure','Teleradiotherapy using electrons 2D (IM)','92.250 Teleradiotherapy using electrons 2D (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',84,'draft',1,'864a7d260e0004c2e0ecde55');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.251','procedure','Teleradiotherapy using electrons 3D (IM)','92.251 Teleradiotherapy using electrons 3D (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',84,'draft',1,'45a6e2ec5075518eb73ef168');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.257','procedure','Teleradiotherapy using electrons inc. TSEBT (IM)','92.257 Teleradiotherapy using electrons inc. TSEBT (IM)
Excludes: intra-operative electron radiation therapy (92.41)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',84,'draft',1,'771b6576d4d512cd65a5d7d9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.27','procedure','Implantation or insertion of radioactive elements','92.27     Implantation or insertion of radioactive elements
Intravascular brachytherapy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',84,'draft',0,'d83396b920ed0338834d55dc');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.270','procedure','Implantation or insertion of radioactive elements mould (IM)','92.270 Implantation or insertion of radioactive elements mould (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',84,'draft',1,'ea8900471b64701dab98fe2d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.271','procedure','Implantation or insertion of radioactive elements ovoid/cylinder (IM)','92.271 Implantation or insertion of radioactive elements ovoid/cylinder (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',84,'draft',1,'b574c62a4fb9173c95b573dc');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.272','procedure','Implantation or insertion of radioactive elements complete intracavitary','92.272 Implantation or insertion of radioactive elements complete intracavitary
(IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',84,'draft',1,'cc128dbb46589ae84c47db6d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.273','procedure','Implantation or insertion of radioactive elements hybrid (IM)','92.273 Implantation or insertion of radioactive elements hybrid (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',84,'draft',1,'e2b76aea10eb4711e39b0fee');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.274','procedure','Implantation or insertion of radioactive elements interstitial (IM)','92.274 Implantation or insertion of radioactive elements interstitial (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',84,'draft',1,'a42590526958484b44e8b0af');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.275','procedure','Implantation or insertion of radioactive elements specialized /','92.275 Implantation or insertion of radioactive elements specialized /
perioperative brachytherapy procedures (IM)
Code also incision of site
Excludes: infusion of liquid brachytherapy radioisotope (92.20)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',84,'draft',1,'19092eca154c1ed1805cd23d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.28','procedure','Injection or instillation of radioisotopes','92.28 Injection or instillation of radioisotopes
Injection or infusion of radioimmunoconjugate
Intracavitary injection or instillation
Intravenous injection or instillation
Iodine- 131 [I- 131] tositumomab
Radioimmunotherapy
Ytrium- 90 [Y- 90] ibritumomab tiuxetan
Excludes: infusion of liquid brachytherapy radioisotope (92.20)
Code also for therapy levels
List of therapy levels :
KNT01 Basic Therapy (IM)
KNT02 Intermediate Therapy (IM)
KNT03 Advanced Therapy (IM)
KNT04 Special-1 Therapy (IM)
KNT05 Special-2 Therapy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',84,'draft',1,'646972e06e87eaef45b3a748');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.29','procedure','Other radiotherapeutic procedure','92.29 Other radiotherapeutic procedure
Code also for therapy levels
List of therapy levels :
KNT01 Basic Therapy (IM)
KNT02 Intermediate Therapy(IM)
KNT03 Advanced Therapy (IM)
KNT04 Special-1 Therapy (IM)
KNT05 Special-2 Therapy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',84,'draft',1,'2029bf437cb0b97a3434ac2d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.3','category','Stereotactic radiosurgery','92.3     Stereotactic radiosurgery
Code also stereotactic head frame application (93.59)
Excludes: stereotactic biopsy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',85,'draft',0,'fd5e9119a04f183260bde879');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.31','procedure','Single source photon radiosurgery','92.31   Single source photon radiosurgery
High energy x-rays
Linear accelerator (LINAC)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',85,'draft',0,'c9e7b351ff509d22309be15c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.310','procedure','Single source photon radiosurgery SRS (IM)','92.310 Single source photon radiosurgery SRS (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',85,'draft',1,'9b4e1c127bbed087992f456e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.311','procedure','Single source photon radiosurgery SBRT (IM)','92.311 Single source photon radiosurgery SBRT (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',85,'draft',1,'266c81a7fc4c607075604862');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.312','procedure','Single source photon radiosurgery SRT (IM)','92.312 Single source photon radiosurgery SRT (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',85,'draft',1,'97015459212da1486eb157fb');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.32','procedure','Multi-source photon radiosurgery','92.32   Multi-source photon radiosurgery
Cobalt 60 radiation
Gamma irradiation
Gamma Knife','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',85,'draft',0,'367174bc3510f35099427e8e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.320','procedure','Multi-source photon radiosurgery SRS (IM)','92.320 Multi-source photon radiosurgery SRS (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',85,'draft',1,'43320bd3706ce72c977d5e25');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.5','category','Non-Imaging Nuclear Medicine (IM)','92.5 Non-Imaging Nuclear Medicine (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',85,'draft',1,'16beb92a118b6db353ffac44');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.50','procedure','Non-Imaging Nuclear Medicine Thyroid Function Test (IM)','92.50 Non-Imaging Nuclear Medicine Thyroid Function Test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',85,'draft',1,'de3fd7bc3dd973753eedba25');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.51','procedure','Non-Imaging Nuclear Medicine Thyroid Cancer Marker (IM)','92.51 Non-Imaging Nuclear Medicine Thyroid Cancer Marker (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',85,'draft',1,'f34b080dc99c4aafd7e1fae3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('92.52','procedure','Non-Imaging Nuclear Medicine Thyroid Antibody Test (IM)','92.52 Non-Imaging Nuclear Medicine Thyroid Antibody Test (IM)
93       Physical therapy, respiratory therapy, rehabilitation, and related procedures','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',85,'draft',1,'bd4495cbf8b62ca6c5a27c51');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('93.0','category','Diagnostic physical therapy','93.0     Diagnostic physical therapy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',85,'draft',0,'7b2a44ddc9c8e725a7ff6c32');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('93.01','procedure','Functional evaluation','93.01   Functional evaluation
Neurorestoration assesment (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',85,'draft',1,'de74465941336c9249a02c8b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('93.09','procedure','Other diagnostic physical therapy procedure','93.09   Other diagnostic physical therapy procedure
Neurorestoration procedure (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',85,'draft',1,'b733c52a0024be14aedbb1ae');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('93.3','category','Other physical therapy therapeutic procedures','93.3     Other physical therapy therapeutic procedures','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',85,'draft',0,'6f47f5ec4fca309c758be624');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('93.39','procedure','Other physical therapy','93.39   Other physical therapy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',85,'draft',0,'86dd26d57de8dcc8fa7c75a6');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('93.390','procedure','Vestibular rehabilitation therapy (IM)','93.390 Vestibular rehabilitation therapy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',85,'draft',1,'13cfe241ec09d2646e017243');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('93.391','procedure','Canalith repositioning therapy (IM)','93.391 Canalith repositioning therapy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',85,'draft',1,'43a144a18d35913389894c94');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('93.8','category','Other rehabilitation therapy','93.8     Other rehabilitation therapy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',85,'draft',0,'cbd977f6817b3c2dfb695927');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('93.89','procedure','Rehabilitation, not elsewhere classified','93.89   Rehabilitation, not elsewhere classified
Cardiovascular Rehabilitation 1st Phase (IM)
Cardiovascular Rehabilitation 2nd Phase (IM)
Cardiovascular Rehabilitation 3rd Phase (IM)
Cardiovascular Rehabilitation After Cardiovascular Procedure (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',85,'draft',1,'fdb5e03898692016ec4c4090');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('93.9','category','Respiratory therapy','93.9     Respiratory therapy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',85,'draft',0,'ef8dc89fa6029415edd41566');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('93.96','procedure','Other oxygen enrichment','93.96  Other oxygen enrichment
Catalytic oxygen therapy
Cytoreductive effect
Oxygenators
Oxygen therapy
Excludes: oxygenation of wound (93.59)
SuperSaturated oxygen therapy (00.49)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',85,'draft',0,'c2efc6c2442e06808fbcbb99');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('93.960','procedure','High flow nasal canule oxygenation (IM)','93.960 High flow nasal canule oxygenation (IM)
94       Procedures related to the psyche','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',86,'draft',1,'5b2a6596188de193c800b9db');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('94.0','category','Psychologic evaluation and testing','94.0     Psychologic evaluation and testing','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',86,'draft',0,'5f26328562bf45226b2de70a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('94.08','procedure','Other psychologic evaluation and testing','94.08   Other psychologic evaluation and testing
Cognitive examination (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',86,'draft',1,'3eb1c70498e2c84aed892de0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('94.2','category','Psychiatric somatotherapy','94.2     Psychiatric somatotherapy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',86,'draft',0,'aed39adb2444ad847b97ce1c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('94.27','procedure','Other electroshock therapy','94.27   Other electroshock therapy
Electroconvulsive therapy (ECT)
EST','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',86,'draft',0,'efecf375583f0727fa452d10');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('94.270','procedure','Electroconvulsive therapy (ECT), conventional (IM)','94.270 Electroconvulsive therapy (ECT), conventional (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',86,'draft',1,'0bde86f19068f6c2e8379c84');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('94.271','procedure','Electroconvulsive therapy (ECT), with premedication (IM)','94.271 Electroconvulsive therapy (ECT), with premedication (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',86,'draft',1,'b4c1689e556ec71829946678');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('94.28','procedure','Transcranial magnetic stimulation (TMS) (IM)','94.28   Transcranial magnetic stimulation (TMS) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',86,'draft',1,'b86c23948d011dc454c1be7b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('94.3','category','Individual psychotherapy','94.3     Individual psychotherapy','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',86,'draft',0,'c953f761f346ece965df611d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('94.33','procedure','Behavior therapy','94.33   Behavior therapy
Aversion therapy
Behavior modification
Desensitization therapy
Extinction therapy
Relaxation training
Token economy
Neurobehavior therapy (IM)
cognitive stimulation (IM)
95       Ophthalmologic and otologic diagnosis and treatment','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',86,'draft',1,'2a4d3684a597bb2f5ab2119d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.0','category','General and subjective eye examination','95.0     General and subjective eye examination','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',86,'draft',0,'fce579088175fa3e3956de3e');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.03','procedure','Extended ophthalmologic work-up','95.03   Extended ophthalmologic work-up
Examination (for):
glaucoma
neuro-ophthalmology
Neurootology (IM)
retinal disease','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',86,'draft',1,'9119d8d149b60ced3ace922a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.1','category','Examinations of form and structure of eye','95.1     Examinations of form and structure of eye','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',86,'draft',0,'776bfd29b7cbb9fbc8a8d65d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.11','procedure','Fundus photography','95.11   Fundus photography
Funduscopy (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',86,'draft',1,'3be70eece3449c6d4e6b77d4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.13','procedure','Ultrasound study of eye','95.13   Ultrasound study of eye
ONS (Optic nerve sheat ultrasound) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',86,'draft',1,'f7acb0f627068d2e94a052f5');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.2','category','Objective functional tests of eye','95.2     Objective functional tests of eye','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',87,'draft',0,'82b056c0af18007d3f5673f1');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.23','procedure','Visual evoked potential [VEP]','95.23   Visual evoked potential [VEP]
MEP (Motorik Evoke Potensial) (IM)
RNS (Repetitive Nerve Stimulation) v
P-300 (Cognitive event relatif Potensial) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',87,'draft',1,'37aad3836cb7b2f3eb501740');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.25','procedure','Electromyogram of eye [EMG]','95.25   Electromyogram of eye [EMG]
Blink Reflex (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',87,'draft',1,'3465a62a6646dfe7c1b2a00b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.4','category','Nonoperative procedures related to hearing','95.4     Nonoperative procedures related to hearing','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',87,'draft',0,'8c89cd8f0b63c561d69bdda1');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.41','procedure','Audiometry','95.41   Audiometry
Békésy 5-tone audiometry
Impedance audiometry
Stapedial reflex response
Subjective audiometry
Tympanogram','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',87,'draft',0,'98114b689f3af02d6a694625');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.410','procedure','Pure tone audiometry (IM)','95.410     Pure tone audiometry (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',87,'draft',1,'a890b89fc5f4e741bbe1363c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.411','procedure','Speech audiometry (IM)','95.411     Speech audiometry (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',87,'draft',1,'64c28ca0a38a428b9f70d217');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.412','procedure','Impedance audiometry/tympanometry (IM)','95.412     Impedance audiometry/tympanometry (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',87,'draft',1,'af9590bd2dd23c7cf34f8e08');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.413','procedure','Stapedial reflex response (IM)','95.413     Stapedial reflex response (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',87,'draft',1,'d0715e62c1def3cc884b7830');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.414','procedure','Eustachian tube function test (IM)','95.414     Eustachian tube function test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',87,'draft',1,'9cc6689d8ca268562c84b708');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.415','procedure','Free field test (visual reinforcement audiometry, behavioral','95.415     Free field test (visual reinforcement audiometry, behavioral
observational audiometry, play audiometry) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',87,'draft',1,'e1f8bb405e077de09c1d9898');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.418','procedure','Other audiometry test (SISI test, ABLB test, tinnitogram, decay) (IM)','95.418     Other audiometry test (SISI test, ABLB test, tinnitogram, decay) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',87,'draft',1,'0d4365dbbd179df16da3b0a2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.44','procedure','Clinical vestibular function tests','95.44   Clinical vestibular function tests
Thermal test of vestibular function','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',87,'draft',0,'bacd7b5768399933c96c98a8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.440','procedure','Simple vestibular test (IM)','95.440 Simple vestibular test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',87,'draft',1,'c65db99c64d6b44d96027aa9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.441','procedure','Dix-halpike test/positional nystagmus test (IM)','95.441 Dix-halpike test/positional nystagmus test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',87,'draft',1,'9a652ab7db632f40af073595');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.442','procedure','Visual head impulse test (IM)','95.442 Visual head impulse test (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',87,'draft',1,'769ed0e72375c6541de0e111');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.46','procedure','Other auditory and vestibular function tests','95.46   Other auditory and vestibular function tests','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',87,'draft',0,'b09ac90d3d53dd9bea50fefe');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.460','procedure','Oto acoustic emission (OAE) (IM)','95.460     Oto acoustic emission (OAE) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',87,'draft',1,'de0d63573f8434907627a9a4');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.461','procedure','Automatic BERA (IM)','95.461     Automatic BERA (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',87,'draft',1,'d9aadd10a685ea57bf621dc2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.462','procedure','Brainstem evoked response audiometry/auditory potential','95.462     Brainstem evoked response audiometry/auditory potential
(BERA/BAEP) for hearing assessment (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',87,'draft',1,'ca5adeed6cf4524a9b343a2d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.463','procedure','Auditory steady state response (ASSR) (IM)','95.463     Auditory steady state response (ASSR) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',87,'draft',1,'06a3b5956da84d3ca85c1486');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.464','procedure','Late latency auditory evoked potential (P300, N100) (IM)','95.464     Late latency auditory evoked potential (P300, N100) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',87,'draft',1,'03e4fac4b44182a74732adea');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('95.465','procedure','Vestibular evoked myogenic potential (IM)','95.465    Vestibular evoked myogenic potential (IM)
96       Nonoperative intubation and irrigation','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',88,'draft',1,'d7b35acecf9f4ab543dc6b07');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('96.0','category','Nonoperative intubation of gastrointestinal and respiratory tracts','96.0     Nonoperative intubation of gastrointestinal and respiratory tracts','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',88,'draft',0,'665c03e6da03cb65fb24cef0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('96.01','procedure','Insertion of nasopharyngeal airway','96.01   Insertion of nasopharyngeal airway','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',88,'draft',0,'de22f1d0ee18cfda773d0682');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('96.010','procedure','Surfactant administration (IM)','96.010 Surfactant administration (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',88,'draft',1,'d51d162c1233fee40f9c76d7');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('96.2','category','Nonoperative dilation and manipulation','96.2     Nonoperative dilation and manipulation','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',88,'draft',0,'e28f09d06ff947953a4d59e8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('96.25','procedure','Therapeutic distention of bladder','96.25   Therapeutic distention of bladder
Intermittent distention of bladder
Endoscopic controlled bladder hydrodilation (IM)
97       Replacement and removal of therapeutic appliances','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',88,'draft',1,'ebced269fa323d22c7835695');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('97.4','category','Nonoperative removal of therapeutic device from thorax','97.4     Nonoperative removal of therapeutic device from thorax','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',88,'draft',0,'80fc682060ae14f2b18f29d9');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('97.41','procedure','Removal of thoracotomy tube or pleural cavity drain','97.41   Removal of thoracotomy tube or pleural cavity drain
Note : Removal of indwelling tunneled pleural catheter','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',88,'draft',0,'320f3ad0f3b0806fb43536f0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('97.6','category','Nonoperative removal of therapeutic device from urinary system','97.6     Nonoperative removal of therapeutic device from urinary system','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',88,'draft',0,'f9af533f937aa2e415ed1b8f');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('97.66','procedure','Endoscopic ureteric stent removal (IM)','97.66   Endoscopic ureteric stent removal (IM)
99       Other nonoperative procedures','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',88,'draft',1,'3d7e04e1df5c1cf3d0f833ef');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('99.1','category','Injection or infusion of therapeutic or prophylactic substance','99.1     Injection or infusion of therapeutic or prophylactic substance
Includes:    injection or infusion given:
hypodermically acting locally or systemically intramuscularly acting locally or
systemically
intravenously acting locally or systemically','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',88,'draft',0,'93f7693966cc7c77bbc06a6c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('99.10','procedure','Injection or infusion of thrombolytic agent','99.10   Injection or infusion of thrombolytic agent
Alteplase
Anistreplase
Reteplase
Streptokinase
Tenecteplase
Tissue plasminogen activator (TPA)
Urokinase
Direct catheter thrombolysis (IM)
Intravenous thrombolysis (IM)
Excludes:     aspirin - omit code
GP IIB/IIIa plalet inhibitor (99.20)
heparin (99.19)
SuperSaturated oxygen therapy (00.49)
warfarin - omit code','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',88,'draft',1,'8b62b60021e7ebba9a9f2147');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('99.2','category','Injection or infusion of other therapeutic or prophylactic substance','99.2     Injection or infusion of other therapeutic or prophylactic substance','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',88,'draft',0,'14b9195fdf1e9f69f581235b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('99.25','procedure','Injection or infusion of cancer chemotherapeutic substance','99.25   Injection or infusion of cancer chemotherapeutic substance','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',88,'draft',0,'b754b5d9b0e293eeb1e33120');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('99.250','procedure','Transarterial chemoembolization (TACE) (IM)','99.250 Transarterial chemoembolization (TACE) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',88,'draft',1,'8e0477bd3a432b1808439cd3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('99.29','procedure','Injection or infusion of other therapeutic or prophylactic substance','99.29   Injection or infusion of other therapeutic or prophylactic substance
Includes : Therapeutic intravesical injection
Excludes: administration of neuroprotective agent (99.75)
immunization (99.31-99.59)
infusion of blood brain barrier disruption substance (00.19)
injection of sclerosing agent into:
esophageal varices (42.33)
hemorrhoids (49.42)
veins (39.92)
injection or infusion of human B-type natriuretic peptide (hBNP)(00.13)
injection or infusion of nesiritide (00.13)
injection or infusion of platelet inhibitor (99.20)
injection or infusion of thrombolytic agent (99.10)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',89,'draft',0,'786c0198f528e540191b43a2');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('99.290','procedure','Injection of contrast agent (IM)','99.290 Injection of contrast agent (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',89,'draft',1,'0cc27673b9af28f6d62806ff');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('99.6','category','Conversion of cardiac rhythm','99.6     Conversion of cardiac rhythm','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',89,'draft',0,'a97c16ddce45b68369fbfbc0');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('99.62','procedure','Other electric countershock of heart','99.62   Other electric countershock of heart
Cardioversion:
NOS
external
Conversion to sinus rhythm
Defibrillation
External electrode stimulation
External Counterpulsation (ECP) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',89,'draft',1,'a87637f52a07380e3f70b7f8');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('99.7','category','Therapeutic apheresis or other injection, administration, or infusion of other','99.7     Therapeutic apheresis or other injection, administration, or infusion of other
therapeutic or prophylactic substance','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',89,'draft',0,'7ae31b6b5dc4f6bb28ad70b3');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('99.74','procedure','Therapeutic plateletpheresis','99.74   Therapeutic plateletpheresis
Donor platelet apheresis (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',89,'draft',1,'6a0c26633a4d316e446cfa8c');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('99.9','category','Other miscellaneous procedures','99.9     Other miscellaneous procedures','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',89,'draft',0,'be985bacbf7bfbd33a821947');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('99.96','procedure','Collection of sperm for artificial insemination','99.96   Collection of sperm for artificial insemination','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',89,'draft',0,'ac23afd8788d0d940984c30d');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('99.960','procedure','Microsurgical testicular sperm extraction (micro-TESE) (IM)','99.960 Microsurgical testicular sperm extraction (micro-TESE) (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',89,'draft',1,'f59c644adb3fe874164d0c7b');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('99.98','procedure','Extraction of milk from lactating breast','99.98   Extraction of milk from lactating breast','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',89,'draft',0,'543a3d43e2f4b8a2d5cd5926');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('99.980','procedure','Early initiation of breast feeding (IM)','99.980 Early initiation of breast feeding (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',89,'draft',1,'fec4737b1b239333380c617a');
INSERT OR IGNORE INTO icd9_im_entries (code,kind,title_extracted,raw_text,source_file,source_sha256,pdf_page,review_status,explicit_im_marker,entry_id) VALUES ('99.981','procedure','Kangaroo care (IM)','99.981 Kangaroo care (IM)','list-icd9cm-im_compress.pdf','46d7069913ba45711d497c71026075f3db99cca101007a019e1b4a63cef341a8',89,'draft',1,'91c215e529b8b6852fddfa39');