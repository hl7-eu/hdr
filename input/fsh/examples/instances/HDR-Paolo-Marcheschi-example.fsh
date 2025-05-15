Instance: HDR-Paolo-Marcheschi-Example
InstanceOf: BundleEuHdr
Title: "Complete HL7 Europe Hospital Discharge Report Bundle"
Description: "FHIR Bundle example for HL7 Europe Hospital Discharge Report (HDR) Paolo Marcheschi"
Usage: #example

* type = #document

* identifier[+].type = $v2-0203#PRN
* identifier[=].system = "http://local.setting.eu/identifier"
* identifier[=].value = "9ea3fdb2-155c-4da7-9fce-4f24da356e13"

* timestamp = "2025-02-02T14:00:00Z"

* entry[composition].fullUrl = "urn:uuid:130ed4e9-30f3-4a09-b9b1-ad8fd12237cb"
* entry[=].resource = composition-ftgm-discharge-letter

* entry[patient].fullUrl = "urn:uuid:445a0ff8-556d-4be2-bdde-6de668edf019"
* entry[=].resource = patient-ftgm

* entry[encounter].fullUrl = "urn:uuid:e4d7ab9d-2b9c-42f8-95ef-08ff5e260a8e"
* entry[=].resource = encounter-ftgm-example

* entry[practitioner].fullUrl = "urn:uuid:b61b7a93-2965-427a-96b9-972ac7d89997"
* entry[=].resource = practitioner-ftgm-author

* entry[organization].fullUrl = "urn:uuid:57b3eb50-9187-4b5d-acd1-9e793c734bc0"
* entry[=].resource = organization-ftgm

* entry[+].fullUrl = "urn:uuid:abddc069-eda4-44c0-bd68-37e65a7bcb74"
* entry[=].resource = insufficienza-respiratoria-acuta

Instance: patient-ftgm
InstanceOf: Patient
Usage: #inline
* id = "445a0ff8-556d-4be2-bdde-6de668edf019"
* identifier[+].type = $v2-0203#JHN
* identifier[=].system = "http://ec.europa.eu/identifier/eci"
* identifier[=].value = "9977-888840-8"
* name[+].family = "Marcheschi"
* name[=].given[+] = "Paolo"
* name[=].text = "Paolo Marcheschi"
* gender = #male
* birthDate = "1990-01-01"
* maritalStatus = $v3-MaritalStatus#M
* communication.language = urn:ietf:bcp:47#it-IT
* address[+].use = #home
* address[=].type = #physical
* address[=].line[+] = "Piazza di Nopaziene 4"
* address[=].city = "Pisa"
* address[=].postalCode = "57126"
* address[=].country = "Italy"
* telecom[+].system = #phone
* telecom[=].value = "+39 0503152822"

Instance: practitioner-ftgm-author
InstanceOf: Practitioner
Usage: #inline
* id = "b61b7a93-2965-427a-96b9-972ac7d89997"
* identifier.id = "12345"
* name.family = "Dottore"
* name.given = "Ftgm"
* telecom[0].system = #email
* telecom[=].value = "dottore@ftgm.it"
* telecom[+].system = #email
* telecom[=].value = "dottore.ftgm@ftgm.it"

Instance: organization-ftgm
InstanceOf: Organization
Usage: #inline
* id = "57b3eb50-9187-4b5d-acd1-9e793c734bc0"
* name = "FONDAZIONE GABRIELE MONASTERIO"
* address[+].line[+] = "Via G. Moruzzi 1,  57126 Pisa"
* address[=].city = "Pisa"
* address[=].postalCode = "57126"

Instance: composition-ftgm-discharge-letter
InstanceOf: CompositionEuHdr
Usage: #inline
* id = "130ed4e9-30f3-4a09-b9b1-ad8fd12237cb"
* status = #final
* type = $loinc#34105-7 "Hospital Discharge summary"
* date = "2025-02-02T13:30:00Z"
* subject = Reference(urn:uuid:445a0ff8-556d-4be2-bdde-6de668edf019)
* encounter = Reference(urn:uuid:e4d7ab9d-2b9c-42f8-95ef-08ff5e260a8e)
* author[0] = Reference(urn:uuid:b61b7a93-2965-427a-96b9-972ac7d89997)
* title = "Lettera di dimissione"
* attester.mode = #legal
* attester.time = "2025-02-02T00:00:00+01:00"
* attester.party = Reference(urn:uuid:b61b7a93-2965-427a-96b9-972ac7d89997)
* custodian = Reference(urn:uuid:57b3eb50-9187-4b5d-acd1-9e793c734bc0)
// 
// section
//
* section[sectionAdmissionEvaluation].title = "Admission Narrative Diagnosis"
* section[=].code.coding[0] = $loinc#67851-6 "Admission evaluation note"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Consolidamento Polmonare</div>"
// 
// section
//
* section[+].title = "Terapia Farmacologica All'Ingresso"
* section[=].code = $loinc#8677-7 "History of Medication use"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Flecainide (Flecainide auro), cpr. divisibili, 100 mg (ore 8), 100 mg (ore 20); Bisoprololo (Congescor), cpr. riv. divisibili, 3,75 mg (ore 8); Edoxaban (Lixiana), cp.riv., 60 mg (ore 8); Rosuvastatina (Rosuvastatina eg), cp.riv., 10 mg (ore 22).</div>"
// 
// section
//
* section[sectionPastIllnessHx].title = "Storia di malattia passata"
* section[=].code = $loinc#11348-0 "History of Past illness Narrative"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">In data 01.08 sottoposto a visita urologica per nicturia frequente, riscontro di segni di prostatite per cui ha effettuato terapia con cefixima 400 mg/die per 10 giorni con relativo miglioramento dei sintomi (eseguite urinocoltura, tampone uretrale e spermiogramma ad esito negativo). <p> </p>Dal 10.08 comparsa di odontalgia a livello dell'arcata superiore destra, con Rx ortopanoramica negativa, consigliata terapia con amoxicillina/clavulanato 875/125 mg bid per 6 giorni.<p> </p>Dal 13.08 riferita faringodinia e febbricola ad andamento intermittente con astenia ingravescente, scarsa tosse non produttiva e toracoalgie aspecifiche in sede parasternale bilateralmente a carattere trafittivo. Agli esami ematici del 20.08 VES 52 mm/ora, PCR 2.69 mg/dL, NT-ProBNP 915 pg/mL, emocromo con formula conservata, iposideremia. All'elettroforesi delle proteine plasmatiche incremento alfa-1 ed alfa-2 e presenza di sospetta componente monoclonale in zona gamma.<p> </p>In data 26.08.2024 eseguita Rx torace 2P con rilievo di sfumato addensamento parenchimale di aspetto flogistico in regione perilare destra e accentuazione dell'interstizio bilateralmente. Intrapresa terapia antibiotica empirica ad ampio spettro con ceftriaxone 2 gr da ieri.<p> </p>Si ricovera in data odierna per le cure e gli accertamenti del caso.</div>"
// 
// section
//
* section[sectionPatientHx].title = "Anamnesi"
* section[=].code = $loinc#11450-4 "Problem list - Reported"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Non fumatore. Nel 2003 riscontro di Extrasistolia Ventricolare asintomatica e disfunzione sistolica del ventricolo sinistro (FE 35%), con albero coronarico indenne. Nel 2006 impianto di ICD. Alla RM FE 51% con circoscritta fibrosi intra-miocardica. Successivi episodi di fibrillazione atriale parossistica. Nel 2013: FE 28%, EDD 68 mm, IM lieve-moderata. Ai controlli dell'ICD nel 2014 e 2015: TVNS asintomatiche. Nel gennaio 2015 riscontro di trombosi atriale destra adesa al catetere del defibrillatore, dimesso con TAO. Nel giugno 2015: non pià segni di trombosi atriale. Nell'aprile 2016 introdotta mexiletina 200 mg x 2, apixaban 5 mg x 2 e sacubitril/valsartan. Nel 2017 endoplastite, trattata con estrazione reimpianto di EC da defibrillazione e sostituzione di ICD bicamerale. Nel 2018 plurime scariche dell'ICD su TV rapida dopo sforzo fisico. All'ecocardiogramma FE 23-25%. Valutato presso il Centro Trapianti dell'Ospedale di Siena. Iniziato amiodarone. Nel 2020 cateterismo destro (pressioni polmonari nei limiti). In seguito, stabilità clinica: mexiletina 200 mg x 3/die e amiodarone a 1 cpr (lunedà-venerdà). Ad aprile 2021 tireotossicosi di tipo 2 da amiodarone. Nel 2022 test genetico positivo per mutazione probabilmente patogenetica del gene DES (c.833 G&gt;A). Ultimo controllo presso Centro Trapianti di Siena a ottobre 2023 (ndn). Dal 22/11/2023 comparsa di febbre associata a brivido e astenia con accesso al  PS a Grosseto in data 24/11, positivo per SARS-CoV-2, PCR 1,63, crea 1,27 mg/dl, RX torace negativo per lesioni a focolaio. Iniziato remdesevir.  In data 25/11 shock dell'ICD in zona TV. Dimesso il 26/11. In data 01/12 /23  per nuovo episodio di tachicardia ventricolare trattata con shock del defibrillatore ricovero presso la Cardiologia e Medicina Cardiovascolare di questo Istituto. All'ingresso in reparto paziente ancora positivo al COVID (negativizzato il 7/12/23). In data 2/12 altre due TV sostenute interrotte da ATP. Sospesa mexiletina ed introdotta lidocaina per via infusionale. Ecocardiogramma con disfunzione severa e reperti invariati rispetto al precedente di maggio 2023. Positività al tampone rettale per KPC. Sospesa infusione di lidocaina in data 7 dicembre reintroducendo mexiletina con altri due shock il 9/12. Reintrodotta lidocaina ev. Massimizzata terapia anti-infiammatoria, gastroprotettiva e ansiolitica. In data 11/12 positiva al tampone per KPC. Consulenza infettivologica che in previsione di eventuale trapianto cardiaco consigliava tampone nasale (negativo). Sospesa lidocaina ev il 13/12. La sera del 14/12 TV polimorfa con falliti tentativi di ATP e nuovo shock efficace. Reintrodotta lidocaina e midazolam ev. In previsione del trasferimento presso centro trapianti, due episodi di TVS con 2 shock dopo multipli ATP inefficaci. Sottoposto la sera del 15/12 a procedura di blocco percutaneo del ganglio stellato sotto guida ecografica. Non pià aritmie sostenute dalle 17 del 15 dicembre. Trasferito presso UO Cardiochirurgia AOU Siena, vigile ed orientato, asintomatico ed emodinamicamente stabile, dove in data 21.04.2024 veniva sottoposto a trapianto cardiaco ortotopico. Nel decorso post-operatorio segnalato delirium ipercinetico, tamponamento cardiaco post-HTx (drenato il 01.05), versamento pleurico bilaterale in terapia medica, trombosi giugulare parziale bilaterale, FA parossistica. Si segnalano elettrocateteri abbandonati. In terapia antirigetto con tacrolimus, everolimus e prednisone (micofenolato sospeso per rialzo copie CMV), ultima BEM il 20 agosto 2024: rigetto cellulare 0-1.</div>"
// 
// section
//
* section[sectionPhysicalFindings].title = "Esame Obiettivo"
* section[=].code = $loinc#29545-1 "Physical findings Narrative"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Azione cardiaca ritmica. Toni di normale intensità. Pause libere. Cicatrice di sternotomia mediana. Polsi arteriosi presenti nelle normali sedi, normosfigmici e simmetrici. Non soffi vascolari. Non turgore giugulare. Rumore respiratorio presente su tutto l'ambito polmonare, crepitii inspiratori fini, non modificabili con la tosse, in regione basale destra. Addome trattabile alla palpazione superficiale e profonda, margine inferiore del fegato non debordante dall'arcata costale. Non edemi declivi. Sensorio integro.<p> </p>Altezza: 171 cm; Peso: 83 Kg; Frequenza cardiaca: 72 bpm; Frequenza respiratoria: 15 br/min; Saturazione ossigeno: 92 %; Temperatura: 36 àC; Sensorio: Lucido.</div>"
// 
// section
//
* section[sectionHospitalCourse].title = "Decorso ospedaliero"
* section[=].code = $loinc#8648-8 "Hospital course Narrative"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">All'ingresso in reparto il paziente era stabile da un punto di vista emodinamico, apiretico ma sintomatico per dispnea da sforzo e dolore toracico anteriore in particolare in relazione agli atti respiratori e alla tosse. Al controllo ecocardiografico riscontro di normale funzione sistolica biventricolare. Agli esami ematici incremento degli indici di flogosi. Eseguita TC Torace che ha evidenziato un quadro compatibile con patologia flogistica polmonare in atto di verosimile origine virale con possibile sovrainfezione batterica a livello del lobo medio e nelle regioni dorsali dei lobi inferiori. E' stata pertanto confermata la terapia domiciliare associando, come da valutazione infettivologica, terapia antibiotica empirica ad ampio spettro (linezolid, doxicilina e piperacillina/tazobactam), cortisone per via sistemica ed ossigenoterapia. Veniva inoltre programmata broncoscopia con BAL, eseguita il giorno 28.08, con riscontro di positività per  Citomegalovirus (CMV) DNA ad alto titolo, e PCR per Pneumocystis Jiroveci con esame diretto negativo. Veniva quindi introdotta terapia mirata con ganciclovir e trimetoprim/cotrimossazolo, monitorando la funzione epatorenale, gli  indici di flogosi e l'emocromo. Una valutazione oculista ha escluso segni di retinite. Nei giorni successivi il paziente ha continuato a presentare sporadici rialzi febbrili, pertanto, per escludere ulteriori sedi di infezione, à stata eseguita una PET/TC Total Body risultata positiva solo a carico dei noti addensamenti polmonari. Nel corso della degenza, su indicazione infettivologica, sulla base dell'andamento degli esami ematochimici, sono stati adeguati i dosaggi della terapia antivirale ed antibiotica e su indicazione della Trapiantologia di Siena adeguata la posologia della terapia immunosoppressiva sulla base dei livelli ematici di tacrolimus ed everolimus. Nel corso della degenza il paziente ha presentato un progressivo miglioramento delle condizioni cliniche, dei parametri laboratoristici e degli scambi gassosi che hanno consentito la sospensione dell'ossigenoterapia, da segnalare introduzione in terapia di insulina s.c. per scarso controllo dei valori glicemici. In data 11/09 à stato ripetuto controllo TC Torace con evidenza di parziale regressione delle note lesioni polmonari e comparsa di piccole aree consolidative di verosimile natura flogistica a carico del LISn e della lingula. Alla luce di tali reperti à stato ripetuta broncoscopia con  BAL con conferma della positività, seppure a titolo ridotto, del CMV DNA (sempre negativa la ricerca su siero). Per evidenza all'emocromo di progressiva pancitopenia con prevalente neutropenia à stata ridotta la posologia del Bactrim a dosaggio profilattico ed eseguito passaggio da ganciclovir per via orale a valganciclovir associando granulochine con buona risposta midollare. In considerazione della mancata negativizzazione del CMV DNA su BAL, della mielotossicità del ganciclovir (pur in associazione con tacrolimus , everolimus e Bactrim) e dopo discussione collegiale dei colleghi infettivologi e dei referenti trapiantologi di Siena, si à concordata prescrizione di maribavir in sostituzione del valganciclovir (nel sospetto di farmacoresistenza) da assumere a domicilio, appena in possesso del farmaco, fino a negativizzazione del CMV DNA su BAL. Sono stati, inoltre, presi contatti con la Virologia Ospedale San Raffaele di Milano per le modalità di invio del campione del BAL del 16 settembre u.s. per la ricerca della farmacoresistenze del CMV. Da decidere successivamente, anche in base al risultato delle farmacoresistenza, con quale farmaco proseguire la profilassi secondaria per la riattivazione di CMV. <p> </p>Si dimette con la raccomandazione di assumere a domicilio la terapia come pià avanti riportato e di effettuare controlli dell'emocromo e della creatinina ogni 48 ore secondo andamento. Se neutrofili &lt; 1000 cellule/mm3, contattare i medici trapiantologi per concordare terapia con Granulochine e per le eventuali variazioni della posologia del tacrolimus ed everolimus. <p> </p>Controllare l'andamento della glicemia per la eventuale sospensione delle terapia con insulina in caso di ulteriore riduzione del cortisonico.<p> </p>Appena in possesso del maribavir il paziente dovrà assumerlo con le modalità riportate nell'ultima consulenza infettivologica riportata in lettera (20/9/2024).</div>"
// 
// section
//
* section[sectionDiagnosticSummary].title = "Condizioni del paziente e diagnosi alla dimissione"
* section[=].code = $loinc#11535-2 "Hospital discharge Dx Narrative"
* section[=].text.status = #generated
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  Insufficienza respiratoria acuta da Polmonite bilaterale da CMV e P.Carinii in paziente immunodepresso per recente trapianto di cuore per cardiomiopatia dilatativa non ischemica. Pregressa endoplastite. Pregressa tireotossicosi da amiodarone.
  <table class="hl7__hdr">
    <thead><tr><th>Diagnosi alla dimissione</th><th>ICD-10</th><th>SNOMED</th></tr></thead>
    <tbody>
        <tr>
            <td>Insufficienza respiratoria acuta</td>
            <td>J96.0</td>
            <td>65710008</td>
        </tr>
    </tbody>
  </table>
</div>
"""
* section[=].entry[+] = Reference(urn:uuid:abddc069-eda4-44c0-bd68-37e65a7bcb74)
// 
// section
//
* section[sectionDischargeMedications].title = "Terapia farmacologica alla dimissione"
* section[=].code = $loinc#75311-1 "Discharge medications Narrative"
* section[=].text.status = #generated
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
    <ul>
        <li>(Dicoflor 60 20cps), 1 cpr (ore 8)</li>
        <li>(Ensure plus advance ban4x220ml) 1 flac 220 ml (ore 12)</li>
        <li>Acido folico (Folina), 1 cpr da 5 mg (ore 14)</li>
        <li>Amlodipina (Norvasc), 1 cpr da 10 mg (ore 20)</li>
        <li>Eplerenone (Inspra), 1 cpr da 25 mg (ore 16)</li>
        <li>Everolimus (Certican), 1 cpr da 0,75 mg (ore 8) + 1 cpr da 0,75 mg cpr. (ore 20) a gg alterni (i pari )</li>
        <li>Gabapentin (Neurontin), 1 cpr da 100 mg (ore 22)</li>
        <li>Insulina lispro da dna ricombinante (Humalog), fl s.c. 2 U (ore 8), 6 U (ore 12), 2 U (ore 18) secondo DTX.</li>
        <li>Magnesio (Mag 2 )  1 bustina (ore 14), 1 bustina (ore 20)</li>
        <li>Metoprololo (Metoprololo hex) 100 mg 1/2 cpr (50 mg) (ore 8), 1/2 cpr (50 mg) (ore 20)</li>
        <li>Nistatina (Mycostatin), sosp.os, 10 ml (ore 8), 10 ml (ore 14), 10 ml (ore 20)</li>
        <li>Omega polienoici (esteri etilici di acidi grassi polinsaturi) (Esapent), 1 cpr da 1 g (ore 14)</li>
        <li>Pantoprazolo (Pantorc), 1 cpr da 20 mg (ore 7)</li>
        <li>Prednisone (Deltacortene) 25 mg, 1/2 cpr (ore 8) + deltacortene 5 mg 1 cpr ore 8</li>
        <li>Rosuvastatina (Rosuvastatina my), 1 cpr da 5 mg (ore 22)</li>
        <li>Tacrolimus (Adoport),  1 cpr da 2 mg (ore 8), 1 cpr da 2 mg (ore 20)</li>
        <li>Tadalafil (Tadur), 1 cpr da 6 mg  (ore 13)  a gioni alterni ( i pari)</li>
        <li>Trazodone (Trittico),10 gtt (ore 22)</li>
        <li>Trimetoprim/sulfametoxazolo (Bactrim),  1 cpr da 160/800 mg (ore 6)</li>
        <li>Ubidecarenone (Decorenone), 1 cpr da 100 mg (ore 14)</li>
        <li>Valganciclovir (Valcyte), 1 cpr da 900 mg (ore 8),1 cpr da 900 mg (ore 20) da sospender quando in possesso del LIVTENCITY ( maribavir)</li>
    </ul>
</div>
"""
// 
// section
//
* section[sectionAllergies].title = "Allergie e intolleranze"
* section[=].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Il paziente presenta numerose allergie: Anisakis, mezzo di contrasto</div>"

Instance: encounter-ftgm-example
InstanceOf: EncounterEuHdr
Usage: #inline
* id = "e4d7ab9d-2b9c-42f8-95ef-08ff5e260a8e"
* status = #finished
* status = #finished
* class = $v3-ActCode#IMP "inpatient encounter"
* period.start = "2025-01-21T10:00:00Z"
* period.end = "2025-02-02T09:00:00Z"
* subject = Reference(urn:uuid:445a0ff8-556d-4be2-bdde-6de668edf019)

Instance: insufficienza-respiratoria-acuta
InstanceOf: ConditionEuHdr
// add? 7678002 Cytomegaloviral pneumonia
// add? 721804002 Infection of lung caused by Pneumocystis (disorder)
Usage: #inline
* id = "abddc069-eda4-44c0-bd68-37e65a7bcb74"
* clinicalStatus = $condition-clinical#active
* code[0].coding[+] = $icd10#J96.0 "Acute respiratory failure"
* code[=].coding[+] = $sct#65710008 "Acute respiratory failure"
* subject = Reference(urn:uuid:445a0ff8-556d-4be2-bdde-6de668edf019)
* onsetDateTime = "2025-01-10"