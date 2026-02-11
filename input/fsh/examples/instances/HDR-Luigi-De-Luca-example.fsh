Instance: HDR-Luigi-De-Luca-Example
InstanceOf: BundleEuHdr
Title: "Bundle: complete HL7 Europe Hospital Discharge Report (1)"
Description: "HL7 FHIR Bundle example for HL7 Europe Hospital Discharge Report (HDR) Luigi De Luca"
Usage: #example

* type = #document

* identifier[+].type = $v2-0203#PRN
* identifier[=].system = "https://hl7europe.org/example-identifier"
* identifier[=].value = "b6b4291d-4f78-4c5e-a8e6-c4355c1cc4f5" // Persistent identifier for the bundle
* timestamp = "2025-04-29T14:00:00Z"


* entry[composition].fullUrl = "urn:uuid:b9dc409d-ec81-4556-9fac-4dc3f731c199"
* entry[composition].resource = composition-hdr-luca-example

* entry[patient].fullUrl = "urn:uuid:b01a2623-e219-41d2-8e78-1fa1439751d0"
* entry[patient].resource = patient-luca-example

* entry[encounter].fullUrl = "urn:uuid:7c9a2bf1-507f-4d43-b06e-d78e9670379d"
* entry[encounter].resource = encounter-luca-example

* entry[practitionerRole].fullUrl = "urn:uuid:74403dd8-bb1b-45f9-bb69-e843dfaf45e9"
* entry[=].resource = practitionerrole-luca-author

* entry[practitioner].fullUrl = "urn:uuid:0710d9e7-3f1a-4e16-a9b3-5c991fe23c95"
* entry[=].resource = practitioner-luca-author

* entry[organization].fullUrl = "urn:uuid:a61a91f8-b8f2-4947-9a64-5165ea380a38"
* entry[=].resource = organization-luca-hospital

* entry[+].fullUrl = "urn:uuid:a5bf69e4-24db-48a8-9eda-71516dcaf1d9"
* entry[=].resource = diabetis-condition-luca

* entry[careplan].fullUrl = "urn:uuid:b84038f8-9541-4c5b-93b0-a7f1b8e55bd3"
* entry[careplan].resource = careplan-luca

* entry[procedure][+].fullUrl = "urn:uuid:92ffc1fd-71ff-4d54-bc06-25d9e1e1fea0"
* entry[procedure][=].resource = lifestyle-consultation-luca

* entry[procedure][+].fullUrl = "urn:uuid:a74a3dca-92fa-4b71-8e70-89a07ac74bc3"
* entry[procedure][=].resource = diabetes-education-luca

* entry[+].fullUrl = "urn:uuid:53a8c3c3-5d1b-4950-87bc-fddae2ebc079"
* entry[=].resource = metformin-therapy-luca

* entry[+].fullUrl = "urn:uuid:635c22e7-d7f1-45ad-9b4d-d4fe35239085"
* entry[=].resource = familyhistory-mother-luca-example

* entry[+].fullUrl = "urn:uuid:3fbdfbe1-9d70-47ec-ac05-3e30b063365a"
* entry[=].resource = familyhistory-grandmother-luca-example

* entry[+].fullUrl = "urn:uuid:f0113857-b9b7-429b-8893-b645a38ae20a"
* entry[=].resource = bodyweight-luca-1-example

* entry[+].fullUrl = "urn:uuid:065c918f-730a-47f8-938a-7ad54618037b"
* entry[=].resource = bodyweight-luca-2-example

* entry[+].fullUrl = "urn:uuid:81783ae4-c36d-424f-8cea-fe7d3407a36b"
* entry[=].resource = bodyheight-luca-1-example

* entry[+].fullUrl = "urn:uuid:a19e48e1-2271-4cdb-9c76-b0626c7a5363"
* entry[=].resource = bloodpressure-luca-1-example

* entry[+].fullUrl = "urn:uuid:fd7f7580-5788-45dd-88ec-dca615d69c7d"
* entry[=].resource = bloodpressure-luca-2-example

* entry[+].fullUrl = "urn:uuid:67152b1b-0ffa-4b8f-8b6a-a3d71d4d58b6"
* entry[=].resource = tobaccouse-luca-example

* entry[+].fullUrl = "urn:uuid:bda0b497-c9f2-47ca-8339-da1d379cb2f4"
* entry[=].resource = metformin-luca


Instance: patient-luca-example
InstanceOf: Patient
Usage: #inline
* id = "b01a2623-e219-41d2-8e78-1fa1439751d0"

* identifier[+].type = $v2-0203#NI
* identifier[=].system = "https://hl7europe.org/example-identifier"
* identifier[=].value = "3332-386800-1"
* identifier[+].type = $v2-0203#MR
* identifier[=].system = "https://hl7europe.org/example-identifier"

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
* id = "74403dd8-bb1b-45f9-bb69-e843dfaf45e9"
* practitioner = Reference(urn:uuid:0710d9e7-3f1a-4e16-a9b3-5c991fe23c95)
* organization = Reference(urn:uuid:a61a91f8-b8f2-4947-9a64-5165ea380a38)

Instance: practitioner-luca-author
InstanceOf: Practitioner
Usage: #inline
* id = "0710d9e7-3f1a-4e16-a9b3-5c991fe23c95"
* name.prefix = "dr"
* name.given = "Augusto"
* name.family = "Zucchero-Combattente"
* telecom.system = #email
* telecom.value = "augusto@casasgiuliana.osp.venetia.it"

Instance: organization-luca-hospital
InstanceOf: Organization
Usage: #inline
* id = "a61a91f8-b8f2-4947-9a64-5165ea380a38"
* name = "Casa di cura Villa S. Giuliana"
* address.postalCode = "37128"
* address.city = "Verona"
* address.country = "it"

Instance: encounter-luca-example
InstanceOf: EncounterEuHdr
Usage: #inline
* id = "7c9a2bf1-507f-4d43-b06e-d78e9670379d"
* status = $encounter-status#finished
* class = $v3-ActCode#IMP
* period.start = "2025-04-01T08:45:00Z"
* period.end = "2025-04-10T11:00:00Z"
* subject = Reference(urn:uuid:b01a2623-e219-41d2-8e78-1fa1439751d0)
* serviceProvider = Reference(urn:uuid:a61a91f8-b8f2-4947-9a64-5165ea380a38)
* reasonCode = $sct#714628002 "Prediabetes (finding)"
* serviceType = $sct#171183004 "Diabetes mellitus screening (procedure)"

Instance: composition-hdr-luca-example
InstanceOf: CompositionEuHdr
Title: "Composition: HDR (1)"
Description: "HL7 FHIR Composition example for HL7 Europe Hospital Discharge Report (HDR) Luigi De Luca"
Usage: #example
* id = "b9dc409d-ec81-4556-9fac-4dc3f731c199"
* status = #final
* type = $loinc#34105-7 "Hospital Discharge summary"
* subject = Reference(urn:uuid:b01a2623-e219-41d2-8e78-1fa1439751d0)
* encounter = Reference(urn:uuid:7c9a2bf1-507f-4d43-b06e-d78e9670379d)
* date = "2025-04-29T13:30:00+01:00"
* author = Reference(urn:uuid:74403dd8-bb1b-45f9-bb69-e843dfaf45e9)
* title = "Hospital Discharge Report"
* custodian = Reference(urn:uuid:a61a91f8-b8f2-4947-9a64-5165ea380a38)
// 
// section
//
* section[sectionAdmissionEvaluation].title = "Admission evaluation"
* section[=].code = $loinc#67852-4 "Hospital Admission evaluation note"
* section[=].text.status = #additional
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
// 
// section
//
// * section[sectionFamilyHistory].title = "Family History"
* section[+].title = "Family History"
* section[=].code = $loinc#10157-6 "History of family member diseases note"
* section[=].text.status = #additional
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  Mr. Luigi has a family history of diabetes (type 2, mother and maternal grandmother).
</div>
"""
* section[=].entry[+] = Reference(urn:uuid:635c22e7-d7f1-45ad-9b4d-d4fe35239085)
* section[=].entry[+] = Reference(urn:uuid:3fbdfbe1-9d70-47ec-ac05-3e30b063365a)
// 
// section
//
* section[sectionVitalSigns].title = "Vital signs note"
* section[=].code = $loinc#8716-3 "Vital signs note"
* section[=].text.status = #additional
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
* section[=].entry[+] = Reference(urn:uuid:f0113857-b9b7-429b-8893-b645a38ae20a)
* section[=].entry[+] = Reference(urn:uuid:065c918f-730a-47f8-938a-7ad54618037b)
* section[=].entry[+] = Reference(urn:uuid:81783ae4-c36d-424f-8cea-fe7d3407a36b)
* section[=].entry[+] = Reference(urn:uuid:a19e48e1-2271-4cdb-9c76-b0626c7a5363)
* section[=].entry[+] = Reference(urn:uuid:fd7f7580-5788-45dd-88ec-dca615d69c7d)
// 
// section
//
// * section[sectionTobaccoUse].title = "Tobacco use"
* section[+].title = "Tobacco use"
* section[=].code = $loinc#11367-0 "History of Tobacco use"
* section[=].text.status = #additional
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  The patient smokes "a few" cigarettes per day.
</div>
"""
* section[=].entry[+] = Reference(urn:uuid:67152b1b-0ffa-4b8f-8b6a-a3d71d4d58b6)
// 
// section
//
* section[sectionHospitalCourse].title = "Hospital course note"
* section[=].code = $loinc#8648-8 "Hospital course note"
* section[=].text.status = #additional
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
// 
// section
//
* section[sectionSignificantResults].title = "Significant Observation Results"
* section[=].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[=].text.status = #additional
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
// 
// section
//
* section[sectionSignificantProcedures].title = "Significant procedures"
* section[=].code = $loinc#10185-7 "Hospital discharge procedure note"
* section[=].text.status = #additional
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  Lifestyle Consultation: Mr. De Luca met with a dietitian to discuss necessary changes in his diet, focusing on a low glycemic index diet and the need to monitor carbohydrate intake. He was also advised to engage in regular physical activity.
  <p> </p>
  Diabetes Education: Mr. De Luca attended educational sessions on diabetes management, including the importance of regular blood sugar monitoring, recognizing hypoglycemia and hyperglycemia symptoms, and foot care.
  <p> </p>
  Starting Pharmacotherapy with Metformin.
</div>
"""
* section[=].entry[+] = Reference(urn:uuid:92ffc1fd-71ff-4d54-bc06-25d9e1e1fea0)
* section[=].entry[+] = Reference(urn:uuid:a74a3dca-92fa-4b71-8e70-89a07ac74bc3)
* section[=].entry[+] = Reference(urn:uuid:53a8c3c3-5d1b-4950-87bc-fddae2ebc079)
// 
// section
//
* section[sectionPharmacotherapy].title = "Medications"
* section[=].code = $loinc#87232-5 "Medication administration.brief"
* section[=].text.status = #additional
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
* section[=].entry[+] = Reference(urn:uuid:bda0b497-c9f2-47ca-8339-da1d379cb2f4)
// 
// section
//
* section[sectionPlanOfCare].title = "Follow-up"
* section[=].code = $loinc#18776-5 "Plan of care note"
* section[=].text.status = #additional
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
* section[=].entry[+] = Reference(urn:uuid:b84038f8-9541-4c5b-93b0-a7f1b8e55bd3)
// 
// section
//
* section[sectionDiagnosticSummary].title = "Diagnosis at Discharge"
* section[=].code = $loinc#11535-2 "Hospital discharge diagnosis note"
* section[=].text.status = #additional
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <table class="hl7__hdr">
    <thead><tr><th>Discharge Diagnoses</th><th>Codes</th></tr></thead>
    <tbody>
        <tr>
            <td>Type 2 Diabetes Mellitus – Newly diagnosed.</td>
            <td>
            <ul>
            <li>Type 2 diabetes mellitus E11 (ICD-10)</li>
            <li>Diabetes mellitus type 2 (disorder) 44054006 (SNOMED)</li>
            </ul>
            </td>
        </tr>
    </tbody>
  </table>
</div>
"""
* section[=].entry[+] = Reference(urn:uuid:a5bf69e4-24db-48a8-9eda-71516dcaf1d9)
// 
// section
//
* section[sectionDischargeInstructions].title = "Hospital Discharge Instructions"
* section[=].code = $loinc#8653-8 "Hospital Discharge Instructions"
* section[=].text.status = #additional
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
InstanceOf: ConditionEuCore
Title: "Condition: Type 2 Diabetes Mellitus"
Description: "Condition for Type 2 Diabetes Mellitus, double coding with ICD-10 and SNOMED CT."
Usage: #example
* id = "a5bf69e4-24db-48a8-9eda-71516dcaf1d9"
* clinicalStatus = $condition-clinical#active
* code[0].coding[+] = $icd10#E11 "Type 2 diabetes mellitus"
* code[0].coding[+] = $sct#44054006 "Diabetes mellitus type 2 (disorder)"
* subject = Reference(urn:uuid:b01a2623-e219-41d2-8e78-1fa1439751d0)
* onsetDateTime = "2025-04-04"

Instance: careplan-luca
InstanceOf: CarePlanEuHdr
Title: "CarePlan: Diabetes Management Care Plan"
Description: "Care plan for diabetes including referrals and HbA1c measurement."
Usage: #example
* id = "b84038f8-9541-4c5b-93b0-a7f1b8e55bd3"
* status = #active
* intent = #plan
* title = "Diabetes Management Plan"
* subject = Reference(urn:uuid:b01a2623-e219-41d2-8e78-1fa1439751d0)
* period.start = "2025-04-10"
* category[0] = $sct#736284000 "Diabetes clinical management plan"
* activity[0].detail.code = $sct#306118006 "Referral to endocrinology service"
* activity[0].detail.status = #not-started
* activity[1].detail.code = $sct#103699006 "Referral to dietitian"
* activity[1].detail.status = #not-started
* activity[2].detail.code = $sct#43396009 "Hemoglobin A1c measurement"
* activity[2].detail.status = #not-started

Instance: lifestyle-consultation-luca
InstanceOf: ProcedureEuCore
Usage: #inline
* id = "92ffc1fd-71ff-4d54-bc06-25d9e1e1fea0"
* status = #completed
* code = $sct#313204009 "Lifestyle education (procedure)"
* subject = Reference(urn:uuid:b01a2623-e219-41d2-8e78-1fa1439751d0)
* performedDateTime = "2025-04-05"

Instance: diabetes-education-luca
InstanceOf: ProcedureEuCore
Usage: #inline
* id = "a74a3dca-92fa-4b71-8e70-89a07ac74bc3"
* status = #completed
* code = $sct#6143009 "Diabetic education (procedure)"
* subject = Reference(urn:uuid:b01a2623-e219-41d2-8e78-1fa1439751d0)
* performedDateTime = "2025-04-04"

Instance: metformin-therapy-luca
InstanceOf: ProcedureEuCore
Usage: #inline
* id = "53a8c3c3-5d1b-4950-87bc-fddae2ebc079"
* status = #in-progress
* code = $sct#1340186004 "Metformin therapy (procedure)"
* subject = Reference(urn:uuid:b01a2623-e219-41d2-8e78-1fa1439751d0)
* performedDateTime = "2025-04-04"

Instance: familyhistory-mother-luca-example
InstanceOf: FamilyMemberHistory // EuHdr
Title: "FamilyMemberHistory: Family History of Type 2 Diabetes Mellitus - Mother"
Description: "Mother has a history of type 2 diabetes mellitus."
Usage: #example
* id = "635c22e7-d7f1-45ad-9b4d-d4fe35239085"
* status = #completed
* patient = Reference(urn:uuid:b01a2623-e219-41d2-8e78-1fa1439751d0)
* relationship = $v3-RoleCode#MTH "mother"
* condition[0].code = $sct#430679000 "Family history of diabetes mellitus type 2 (situation)"

Instance: familyhistory-grandmother-luca-example
InstanceOf: FamilyMemberHistory // EuHdr
Title: "Family History of Type 2 Diabetes Mellitus - Maternal Grandmother"
Description: "Maternal grandmother has a history of type 2 diabetes mellitus."
Usage: #inline
* id = "3fbdfbe1-9d70-47ec-ac05-3e30b063365a"
* status = #completed
* patient = Reference(urn:uuid:b01a2623-e219-41d2-8e78-1fa1439751d0)
* relationship = $v3-RoleCode#MGRMTH "maternal grandmother"
* condition[0].code = $sct#430679000 "Family history of diabetes mellitus type 2 (situation)"

Instance: bodyweight-luca-1-example
InstanceOf: Observation
Title: "Body Weight Observation - 109 kg"
Description: "Vital sign observation for body weight of 109 kg measured on April 1st."
Usage: #inline
* id = "f0113857-b9b7-429b-8893-b645a38ae20a"
* status = #final
* category[0] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body weight"
* subject = Reference(urn:uuid:b01a2623-e219-41d2-8e78-1fa1439751d0)
* effectiveDateTime = "2025-04-01"
* valueQuantity.value = 109
* valueQuantity.unit = "kg"
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#kg

Instance: bodyweight-luca-2-example
InstanceOf: Observation
Title: "Body Weight Observation - 108 kg"
Description: "Vital sign observation for body weight of 108 kg measured on April 10th."
Usage: #inline
* id = "065c918f-730a-47f8-938a-7ad54618037b"
* status = #final
* category[0] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body weight"
* subject = Reference(urn:uuid:b01a2623-e219-41d2-8e78-1fa1439751d0)
* effectiveDateTime = "2025-04-19"
* valueQuantity.value = 108
* valueQuantity.unit = "kg"
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#kg

Instance: bodyheight-luca-1-example
InstanceOf: Observation
Title: "Body Height Observation - 177 cm"
Description: "Vital sign observation for body height of 177 cm measured on April 1st."
Usage: #inline
* id = "81783ae4-c36d-424f-8cea-fe7d3407a36b"
* status = #final
* category[0] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8302-2 "Body height"
* subject = Reference(urn:uuid:b01a2623-e219-41d2-8e78-1fa1439751d0)
* effectiveDateTime = "2025-04-01"
* valueQuantity.value = 177
* valueQuantity.unit = "cm"
* valueQuantity.system = $ucum
* valueQuantity.code = $ucum#cm

Instance: bloodpressure-luca-1-example
InstanceOf: Observation
Title: "Blood Pressure Observation - 155/95 mmHg"
Description: "Vital sign observation for blood pressure (155/95 mmHg) measured on April 1st."
Usage: #inline
* id = "a19e48e1-2271-4cdb-9c76-b0626c7a5363"
* status = #final
* category[0] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(urn:uuid:b01a2623-e219-41d2-8e78-1fa1439751d0)
* effectiveDateTime = "2025-04-01"
// Systolic component
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity.value = 155
* component[=].valueQuantity.unit = "mmHg"
* component[=].valueQuantity.system = $ucum
* component[=].valueQuantity.code = $ucum#mm[Hg]
// Diastolic component
* component[1].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity.value = 95
* component[=].valueQuantity.unit = "mmHg"
* component[=].valueQuantity.system = $ucum
* component[=].valueQuantity.code = $ucum#mm[Hg]

Instance: bloodpressure-luca-2-example
InstanceOf: Observation
Title: "Blood Pressure Observation - 150/90 mmHg"
Description: "Vital sign observation for blood pressure (155/95 mmHg) measured on April 1st."
Usage: #inline
* id = "fd7f7580-5788-45dd-88ec-dca615d69c7d"
* status = #final
* category[0] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(urn:uuid:b01a2623-e219-41d2-8e78-1fa1439751d0)
* effectiveDateTime = "2025-04-10"
// Systolic component
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity.value = 150
* component[=].valueQuantity.unit = "mmHg"
* component[=].valueQuantity.system = $ucum
* component[=].valueQuantity.code = $ucum#mm[Hg]
// Diastolic component
* component[1].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity.value = 90
* component[=].valueQuantity.unit = "mmHg"
* component[=].valueQuantity.system = $ucum
* component[=].valueQuantity.code = $ucum#mm[Hg]

Instance: tobaccouse-luca-example
InstanceOf: Observation
Title: "Tobacco Use - A Few Cigarettes a Day"
Description: "Observation recording tobacco use: a few cigarettes a day."
Usage: #inline
* id = "67152b1b-0ffa-4b8f-8b6a-a3d71d4d58b6"
* status = #final
* category[0] = $observation-category#social-history "Social History"
* code = $loinc#11367-0 "History of Tobacco use"
* subject = Reference(urn:uuid:b01a2623-e219-41d2-8e78-1fa1439751d0)
* effectiveDateTime = "2025-04-01"
* effectiveDateTime = "2025-04-01"
* valueCodeableConcept = $sct#77176002 "Current smoker"
* note[0].text = "Patient smokes a few cigarettes a day"

Instance: metformin-luca
InstanceOf: MedicationAdministrationEuHdr
Usage: #inline
* id = "bda0b497-c9f2-47ca-8339-da1d379cb2f4"
* status = #in-progress
* medicationCodeableConcept = $sct#765507008 "Product containing precisely metformin hydrochloride 500 milligram/1 each prolonged-release oral tablet (clinical drug)"
* subject = Reference(urn:uuid:b01a2623-e219-41d2-8e78-1fa1439751d0)
* effectivePeriod.start = "2025-04-03"
* dosage.dose.value = 500
* dosage.dose.unit = "mg"
* dosage.route = $sct#26643006 "Oral route"
* dosage.text = "500 mg, twice a day"