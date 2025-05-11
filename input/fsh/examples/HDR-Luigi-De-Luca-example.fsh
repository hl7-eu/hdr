Instance: HDR-Luigi-De-Luca-Example
InstanceOf: BundleEuHdr
Title: "Complete HL7 Europe Hospital Discharge Report Bundle"
Description: "FHIR Bundle example for HL7 Europe Hospital Discharge Report"
Usage: #example
* type = #document
* identifier[+].type = $v2-0203#PRN
* identifier[=].system = "http://local.setting.eu/identifier"
* identifier[=].value = "b6b4291d-4f78-4c5e-a8e6-c4355c1cc4f5" // Persistent identifier for the bundle
* timestamp = "2025-04-29T14:00:00Z"

* entry[composition].fullUrl = "urn:uuid:composition-hdr-luca-example"
* entry[composition].resource = composition-hdr-luca-example

* entry[patient].fullUrl = "urn:uuid:patient-luca-example"
* entry[patient].resource = patient-luca-example

* entry[encounter].fullUrl = "urn:uuid:encounter-luca-example"
* entry[encounter].resource = encounter-luca-example

* entry[+].fullUrl = "urn:uuid:practitionerrole-luca-author"
* entry[=].resource = practitionerrole-luca-author
* entry[+].fullUrl = "urn:uuid:practitioner-luca-author"
* entry[=].resource = practitioner-luca-author
* entry[+].fullUrl = "urn:uuid:organization-luca-hospital"
* entry[=].resource = organization-luca-hospital

* entry[+].fullUrl = "urn:uuid:diabetis-condition-luca"
* entry[=].resource = diabetis-condition-luca

* entry[+].fullUrl = "urn:uuid:careplan-luca"
* entry[=].resource = careplan-luca

* entry[+].fullUrl = "urn:uuid:lifestyle-consultation-luca"
* entry[=].resource = lifestyle-consultation-luca

* entry[+].fullUrl = "urn:uuid:diabetes-education-luca"
* entry[=].resource = diabetes-education-luca

* entry[+].fullUrl = "urn:uuid:metformin-therapy-luca"
* entry[=].resource = metformin-therapy-luca

* entry[+].fullUrl = "urn:uuid:familyhistory-mother-luca-example"
* entry[=].resource = familyhistory-mother-luca-example
* entry[+].fullUrl = "urn:uuid:familyhistory-grandmother-luca-example"
* entry[=].resource = familyhistory-grandmother-luca-example
* entry[+].fullUrl = "urn:uuid:familyhistory-grandmother-luca-example"
* entry[=].resource = bodyweight-luca-1-example
* entry[+].fullUrl = "urn:uuid:bodyweight-luca-1-example"
* entry[=].resource = bodyweight-luca-1-example
* entry[+].fullUrl = "urn:uuid:bodyweight-luca-2-example"
* entry[=].resource = bodyweight-luca-2-example
* entry[+].fullUrl = "urn:uuid:bodyheight-luca-1-example"
* entry[=].resource = bodyheight-luca-1-example
* entry[+].fullUrl = "urn:uuid:bloodpressure-luca-1-example"
* entry[=].resource = bloodpressure-luca-1-example
* entry[+].fullUrl = "urn:uuid:bloodpressure-luca-2-example"
* entry[=].resource = bloodpressure-luca-2-example
* entry[+].fullUrl = "urn:uuid:tobaccouse-luca-example"
* entry[=].resource = tobaccouse-luca-example
* entry[+].fullUrl = "urn:uuid:metformin-luca"
* entry[=].resource = metformin-luca


Instance: patient-luca-example
InstanceOf: Patient
Usage: #inline
* identifier[+].type = $v2-0203#NI
* identifier[=].system = "http://ec.europa.eu/identifier/eci"
* identifier[=].value = "3332-386800-1"
* identifier[+].type = $v2-0203#MR
* identifier[=].system = "http://local.setting.eu/identifier"
* identifier[=].value = "8121c77e7bf9"
* name[+].family = "De Luca"
* name[=].given[+] = "Luigi"
* name[=].text = "Luigi De Luca"
* gender = #male
* birthDate = "1966-09-30"
* address[+].use = #home
* address[=].type = #physical
* address[=].line[+] = "Via Zannoni 29"
* address[=].city = "Serso"
* address[=].postalCode = "38057"
* address[=].country = "Italy"
* telecom[+].system = #phone
* telecom[=].value = "+39 0334 8920354"

Instance: practitionerrole-luca-author
InstanceOf: PractitionerRole
Usage: #inline
* practitioner = Reference(urn:uuid:practitioner-luca-author)
* organization = Reference(urn:uuid:organization-luca-hospital)

Instance: practitioner-luca-author
InstanceOf: Practitioner
Usage: #inline
* name.prefix = "dr"
* name.given = "Augusto"
* name.family = "Zucchero-Combattente"
* telecom.system = #email
* telecom.value = "augusto@casasgiuliana.osp.venetia.it"

Instance: organization-luca-hospital
InstanceOf: Organization
Usage: #inline
* name = "Casa di cura Villa S. Giuliana"
* address.postalCode = "37128"
* address.city = "Verona"
* address.country = "it"

Instance: encounter-luca-example
InstanceOf: EncounterEuHdr
Usage: #inline
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2025-04-01T08:45:00+01:00"
* period.end = "2025-04-10T11:00:00+01:00"
* subject = Reference(urn:uuid:patient-luca-example)
* serviceProvider = Reference(urn:uuid:organization-luca-hospital)
* reasonCode = http://snomed.info/sct#714628002 "Prediabetes (finding)"
* serviceType = http://snomed.info/sct#171183004 "Diabetes mellitus screening (procedure)"

Instance: composition-hdr-luca-example
InstanceOf: CompositionEuHdr
Title: "HDR Composition"
Usage: #inline
* id = 
* status = #final
* type = http://loinc.org#34105-7 "Hospital Discharge summary"
* subject = Reference(urn:uuid:patient-luca-example)
* encounter = Reference(urn:uuid:encounter-luca-example)
* date = "2025-04-29T13:30:00+01:00"
* author = Reference(urn:uuid:practitionerrole-luca-author)
* title = "Hospital Discharge Report"
* custodian = Reference(urn:uuid:organization-luca-hospital)
// section
* section[sectionAdmissionEvaluation].title = "Admission evaluation"
* section[=].code = http://loinc.org#67852-4 "Admission evaluation"
* section[=].text.status = #generated
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  Mr. Luigi De Luca, a 57-year-old male, was admitted on 1st April 
  following a pre-diabetic episode characterized by episodes of fatigue, 
  polyuria, and increased thirst. Recent routine blood tests showed elevated 
  fasting blood glucose and HbA1c levels that required further investigation.
  <p/>
  When Mr De Luca arrived in the morning we recorded a fasting blood glucose 
  level at 180 mg/dL. His HbA1c level was 7.8%. He seemed to be dehydrated,
  so that he immediately was sent to the ward for a full breakfast and fluid
  substitution.
</div>
"""
// section
* section[sectionFamilyHistory].title = "Family History"
* section[=].code = http://loinc.org#10157-6 "Family History"
* section[=].text.status = #generated
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  Mr. Luigi has a family history of diabetes (type 2, mother and maternal grandmother).
</div>
"""
* section[=].entry[+] = Reference(urn:uuid:familyhistory-mother-luca-example)
* section[=].entry[+] = Reference(urn:uuid:familyhistory-grandmother-luca-example)
// section
* section[sectionVitalSigns].title = "Vital signs"
* section[=].code = http://loinc.org#8716-3 "Vital signs"
* section[=].text.status = #generated
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <table class="hl7__hdr">
    <thead><tr><th>Vital signs</th><th>1st April</th><th>10th April</th></tr></thead>
    <tbody>
        <tr>
            <td>Body weight</td>
            <td>109 kg</td>
            <td>108 kg</td>
        </tr>
        <tr>
            <td>Body height</td>
            <td>177 cm</td>
            <td> </td>
        </tr>
        <tr>
            <td>Blood Pressure</td>
            <td>155 / 95 mmHg</td>
            <td>150 / 90 mmHg</td>
        </tr>
    </tbody>
  </table>
</div>
"""
* section[=].entry[+] = Reference(urn:uuid:bodyweight-luca-1-example)
* section[=].entry[+] = Reference(urn:uuid:bodyweight-luca-2-example)
* section[=].entry[+] = Reference(urn:uuid:bodyheight-luca-1-example)
* section[=].entry[+] = Reference(urn:uuid:bloodpressure-luca-1-example)
* section[=].entry[+] = Reference(urn:uuid:bloodpressure-luca-2-example)

// section
* section[sectionTobaccoUse].title = "Tobacco use"
* section[=].code = http://loinc.org#11367-0 "Tobacco use"
* section[=].text.status = #generated
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  The patient smokes "a few" cigarettes per day.
</div>
"""
* section[=].entry[+] = Reference(urn:uuid:tobaccouse-luca-example)

// section
* section[sectionHospitalCourse].title = "Hospital Course"
* section[=].code = http://loinc.org#8648-8 "Hospital Course"
* section[=].text.status = #generated
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  During the hospital stay from 1 to 10 April, Mr. De Luca underwent a
  series of diagnostic tests, consultations and initial treatment.
  <p> </p>
  Throughout his hospital stay, Mr. De Luca was monitored closely.
  His blood sugar levels improved modestly with the introduction of Metformin,
  and no acute complications were observed.
</div>
"""
// section
* section[sectionSignificantResults].title = "Significant Observation Results"
* section[=].code = http://loinc.org#87232-5 "Significant Observation Results"
* section[=].text.status = #generated
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  Blood Glucose Monitoring Regular monitoring of fasting blood glucose levels
  and random blood glucose levels. Fasting glucose levels consistently
  ranged between 140-180 mg/dL.
  <table class="hl7__hdr">
    <thead><tr><th>Date</th><th>Fasting glucose [Moles/volume] in Blood</th><th>Range</th></tr></thead>
    <tbody>
        <tr>
            <td>1 April 2025</td>
            <td>180 mg/dL</td>
            <td>70 to 99 mg/dL</td>
        </tr>
        <tr>
            <td>2 April 2025</td>
            <td>140 mg/dL</td>
            <td>70 to 99 mg/dL</td>
        </tr>
        <tr>
            <td>3 April 2025</td>
            <td>150 mg/dL</td>
            <td>70 to 99 mg/dL</td>
        </tr>
        <tr>
            <td>5 April 2025</td>
            <td>140 mg/dL</td>
            <td>70 to 99 mg/dL</td>
        </tr>
    </tbody>
  </table>
  HbA1c Test: An HbA1c level of 7.2%, confirming the diagnosis of Type 2 Diabetes Mellitus.
  <table class="hl7__hdr">
    <thead><tr><th>Date</th><th>Hemoglobin A1c [Mass/volume] in Blood</th><th>Range</th></tr></thead>
    <tbody>
        <tr>
            <td>1 April 2025</td>
            <td>7.2%</td>
            <td>&lt; 5.7%</td>
        </tr>
    </tbody>
  </table>
  Oral Glucose Tolerance Test (OGTT): This test further confirmed impaired glucose tolerance.
  <table class="hl7__hdr">
    <thead><tr><th>Date</th><th>Glucose [Mass/volume] in Serum or Plasma --1 hour post dose glucose</th><th>Range</th></tr></thead>
    <tbody>
        <tr>
            <td>2 April 2025</td>
            <td>180 mg/dL</td>
            <td>70 to 99 mg/dL</td>
        </tr>
    </tbody>
  </table>
</div>
"""
// section
* section[sectionSignificantProcedures].title = "Significant procedures"
* section[=].code = http://loinc.org#10185-7 "Significant procedures"
* section[=].text.status = #generated
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  Lifestyle Consultation: Mr. De Luca met with a dietitian to discuss necessary changes in his diet, focusing on a low glycemic index diet and the need to monitor carbohydrate intake. He was also advised to engage in regular physical activity.
  <p> </p>
  Diabetes Education: Mr. De Luca attended educational sessions on diabetes management, including the importance of regular blood sugar monitoring, recognizing hypoglycemia and hyperglycemia symptoms, and foot care.
  <p> </p>
  Starting Pharmacotherapy with Metformin.
</div>
"""
* section[=].entry[+] = Reference(urn:uuid:lifestyle-consultation-luca)
* section[=].entry[+] = Reference(urn:uuid:diabetes-education-luca)
* section[=].entry[+] = Reference(urn:uuid:metformin-therapy-luca)
// section
* section[sectionPharmacotherapy].title = "Medications"
* section[=].code = http://loinc.org#87232-5 "Medication administration.brief"
* section[=].text.status = #generated
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  Metformin 500 mg twice daily was started as the first-line treatment to help control blood glucose levels.
  <table class="hl7__hdr">
    <thead><tr><th>Medication administrations</th><th>Dose/Frequency</th><th>SNOMED</th></tr></thead>
    <tbody>
        <tr>
            <td>Metformin, oral tbl</td>
            <td>500 mg, twice / day</td>
            <td>765507008</td>
        </tr>
        <tr>
            <td>Multivitamines</td>
            <td>daily</td>
            <td> </td>
        </tr>
    </tbody>
  </table>
</div>
"""
* section[=].entry[+] = Reference(urn:uuid:metformin-luca)
// section
* section[sectionPlanOfCare].title = "Follow-up"
* section[=].code = http://loinc.org#18776-5 "Follow-up"
* section[=].text.status = #generated
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <table class="hl7__hdr">
    <thead><tr><th>Follow-up</th><th>Activity</th><th>SNOMED</th></tr></thead>
    <tbody>
        <tr>
            <td>Endocrinology Clinic</td>
            <td>Follow-up appointment in 2 weeks to assess response to treatment</td>
            <td>306118006 Referral to endocrinology service (procedure) </td>
        </tr>
        <tr>
            <td>Dietitian Consultation</td>
            <td>Appointment in 1 month for further dietary planning</td>
            <td>103699006 Referral to dietitian (procedure) </td>
        </tr>
        <tr>
            <td>Routine Blood tests</td>
            <td>Repeat HbA1c in 3 months</td>
            <td>43396009 Hemoglobin A1c measurement (procedure) </td>
        </tr>
    </tbody>
  </table>
</div>
"""
* section[=].entry[+] = Reference(urn:uuid:careplan-luca)

// section
* section[sectionDiagnosticSummary].title = "Diagnosis at Discharge"
* section[=].code = http://loinc.org#11535-2 "Problem specification in narrative form"
* section[=].text.status = #generated
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <table class="hl7__hdr">
    <thead><tr><th>Discharge Diagnoses</th><th>Codes</th></tr></thead>
    <tbody>
        <tr>
            <td>Type 2 Diabetes Mellitus – Newly diagnosed.</td>
            <td>
            Type 2 diabetes mellitus E11 (ICD-10)
            Diabetes mellitus type 2 (disorder) 44054006 (SNOMED)</td>
        </tr>
    </tbody>
  </table>
</div>
"""
* section[=].entry[+] = Reference(urn:uuid:diabetis-condition-luca)
// section
* section[sectionDischargeInstructions].title = "Hospital Discharge Instructions"
* section[=].code = http://loinc.org#8653-8 "Hospital Discharge Instructions"
* section[=].text.status = #generated
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  Instructions at Discharge to Mr. De Luca
  <ul>
  <li>Continue home glucose monitoring and to maintain a log for review at follow-up appointments.</li>
  <li>Continue with the prescribed medication and lifestyle changes.</li>
  <li>Monitor blood sugar levels at home regularly.</li>
  <li>Adhere to the diabetic diet plan.</li>
  <li>Stay physically active, with at least 30 minutes of moderate exercise most days of the week.</li>
  <li>Return to the emergency department for any signs of hyperglycemia (e.g., excessive thirst, urination, confusion) or hypoglycemia (e.g., sweating, shakiness, confusion).</li>
  </ul>
</div>
"""

Instance: diabetis-condition-luca
InstanceOf: ConditionEuHdr
Usage: #inline
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* code[0].coding[+] = http://hl7.org/fhir/sid/icd-10#E11 "Type 2 diabetes mellitus"
* code[0].coding[+] = http://snomed.info/sct#44054006 "Diabetes mellitus type 2 (disorder)"
* subject = Reference(urn:uuid:patient-luca-example)
* onsetDateTime = "2025-04-04"

Instance: careplan-luca
InstanceOf: CarePlan
Title: "Diabetes Management Care Plan"
Description: "Care plan for diabetes including referrals and HbA1c measurement."
Usage: #example
* status = #active
* intent = #plan
* title = "Diabetes Management Plan"
* subject = Reference(urn:uuid:patient-luca-example)
* period.start = "2025-04-10"
* category[0] = http://terminology.hl7.org/CodeSystem/care-plan-category#assess-plan "Assessment and Plan of Treatment"
* activity[0].detail.code = http://snomed.info/sct#306118006 "Referral to endocrinology service"
* activity[0].detail.status = #not-started
* activity[1].detail.code = http://snomed.info/sct#103699006 "Referral to dietitian"
* activity[1].detail.status = #not-started
* activity[2].detail.code = http://snomed.info/sct#43396009 "Hemoglobin A1c measurement"
* activity[2].detail.status = #not-started

Instance: lifestyle-consultation-luca
InstanceOf: ProcedureEuHdr
Usage: #inline
* status = #completed
* code = http://snomed.info/sct#313204009 "Lifestyle education (procedure)"
* subject = Reference(urn:uuid:patient-luca-example)
* performedDateTime = "2025-04-05"

Instance: diabetes-education-luca
InstanceOf: ProcedureEuHdr
Usage: #inline
* status = #completed
* code = http://snomed.info/sct#6143009 "Diabetic education (procedure)"
* subject = Reference(urn:uuid:patient-luca-example)
* performedDateTime = "2025-04-04"

Instance: metformin-therapy-luca
InstanceOf: ProcedureEuHdr
Usage: #inline
* status = #active
* code = http://snomed.info/sct#340186004 "Metformin therapy (procedure)"
* subject = Reference(urn:uuid:patient-luca-example)
* performedDateTime = "2025-04-04"

Instance: familyhistory-mother-luca-example
InstanceOf: FamilyMemberHistoryEuHdr
Title: "Family History of Type 2 Diabetes Mellitus - Mother"
Description: "Mother has a history of type 2 diabetes mellitus."
Usage: #example
* status = #completed
* patient = Reference(urn:uuid:patient-luca-example)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH "mother"
* condition[0].code = http://snomed.info/sct#430679000 "Family history of diabetes mellitus type 2 (situation)"

Instance: familyhistory-grandmother-luca-example
InstanceOf: FamilyMemberHistoryEuHdr
Title: "Family History of Type 2 Diabetes Mellitus - Maternal Grandmother"
Description: "Maternal grandmother has a history of type 2 diabetes mellitus."
Usage: #example
* status = #completed
* patient = Reference(urn:uuid:patient-luca-example)
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GMTH "maternal grandmother"
* condition[0].code = http://snomed.info/sct#430679000 "Family history of diabetes mellitus type 2 (situation)"

Instance: bodyweight-luca-1-example
InstanceOf: Observation
Title: "Body Weight Observation - 109 kg"
Description: "Vital sign observation for body weight of 109 kg measured on April 1st."
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = http://loinc.org#29463-7 "Body weight"
* subject = Reference(urn:uuid:patient-luca-example)
* effectiveDateTime = "2025-04-01"
* valueQuantity.value = 109
* valueQuantity.unit = "kg"
* valueQuantity.code = http://unitsofmeasure.org#kg

Instance: bodyweight-luca-2-example
InstanceOf: Observation
Title: "Body Weight Observation - 108 kg"
Description: "Vital sign observation for body weight of 108 kg measured on April 10th."
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = http://loinc.org#29463-7 "Body weight"
* subject = Reference(urn:uuid:patient-luca-example)
* effectiveDateTime = "2025-04-19"
* valueQuantity.value = 108
* valueQuantity.unit = "kg"
* valueQuantity.code = http://unitsofmeasure.org#kg

Instance: bodyheight-luca-1-example
InstanceOf: Observation
Title: "Body Height Observation - 177 cm"
Description: "Vital sign observation for body height of 177 cm measured on April 1st."
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = http://loinc.org#8302-2 "Body height"
* subject = Reference(urn:uuid:patient-luca-example)
* effectiveDateTime = "2025-04-01"
* valueQuantity.value = 177
* valueQuantity.unit = "cm"
* valueQuantity.code = http://unitsofmeasure.org#cm

Instance: bloodpressure-luca-1-example
InstanceOf: Observation
Title: "Blood Pressure Observation - 155/95 mmHg"
Description: "Vital sign observation for blood pressure (155/95 mmHg) measured on April 1st."
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(urn:uuid:patient-luca-example)
* effectiveDateTime = "2025-04-01"
// Systolic component
* component[0].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[=].valueQuantity.value = 155
* component[=].valueQuantity.unit = "mm[Hg]"
* component[=].valueQuantity.code = http://unitsofmeasure.org#mmHg
// Diastolic component
* component[1].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity.value = 95
* component[=].valueQuantity.unit = "mm[Hg]"
* component[=].valueQuantity.code = http://unitsofmeasure.org#mmHg

Instance: bloodpressure-luca-2-example
InstanceOf: Observation
Title: "Blood Pressure Observation - 150/90 mmHg"
Description: "Vital sign observation for blood pressure (155/95 mmHg) measured on April 1st."
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(urn:uuid:patient-luca-example)
* effectiveDateTime = "2025-04-10"
// Systolic component
* component[0].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[=].valueQuantity.value = 150
* component[=].valueQuantity.unit = "mm[Hg]"
* component[=].valueQuantity.code = http://unitsofmeasure.org#mmHg
// Diastolic component
* component[1].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity.value = 90
* component[=].valueQuantity.unit = "mm[Hg]"
* component[=].valueQuantity.code = http://unitsofmeasure.org#mmHg

Instance: tobaccouse-luca-example
InstanceOf: Observation
Title: "Tobacco Use - A Few Cigarettes a Day"
Description: "Observation recording tobacco use: a few cigarettes a day."
Usage: #example
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#social-history "Social History"
* code = http://loinc.org#11367-0 "History of tobacco use"
* subject = Reference(urn:uuid:patient-luca-example)
* effectiveDateTime = "2025-04-01"
* effectiveDateTime = "2025-04-01"
* valueCodeableConcept = http://snomed.info/sct#771000119104 "Current smoker"
* note[0].text = "Patient smokes a few cigarettes a day"

Instance: metformin-luca
InstanceOf: MedicationAdministrationEuHdr
Usage: #inline
* status = #active
* medicationCodeableConcept = http://snomed.info/sct#765507008 "Product containing precisely metformin hydrochloride 500 milligram/1 each prolonged-release oral tablet (clinical drug)"
* subject = Reference(urn:uuid:patient-luca-example)
* effectivePeriod.start = "2025-04-03"
* dosage.dose.value = 500
* dosage.dose.unit = "mg"
* dosage.route = http://snomed.info/sct#36672002 "Oral route"
* dosage.text = "500 mg, twice a day"