Instance: HDR-Reijer-Wolff-Example
InstanceOf: BundleEuHdr
Title: "Complete HL7 Europe Hospital Discharge Report Bundle"
Description: "FHIR Bundle example for HL7 Europe Hospital Discharge Report (HDR) Reijer Wolff"
Usage: #example

* type = #document

* identifier[+].type = $v2-0203#PRN
* identifier[=].system = "http://example.org/eu/identifier"
* identifier[=].value = "8fd082b6-5d99-42de-988f-955a8ebac0cb"

* timestamp = "2025-04-29T14:00:00+01:00"

* entry[composition].fullUrl = "urn:uuid:bd69ab8e-3835-4fb6-be83-1852a2893a65"
* entry[=].resource = composition-hdr-wolff-example

* entry[patient].fullUrl = "urn:uuid:a1438872-05b1-4868-857d-521c9d586a7e"
* entry[=].resource = patient-wolff-example

* entry[+].fullUrl = "urn:uuid:cc0ae2a0-980d-4a2b-a4fb-9c71ecc70a15"
* entry[=].resource = practitionerrole-wolff-author

* entry[+].fullUrl = "urn:uuid:b60f89db-36c7-4a23-ab59-ace7089d2387"
* entry[=].resource = practitioner-wolff-author

* entry[+].fullUrl = "urn:uuid:3f30e341-19c6-484f-827a-0c58545fb2bc"
* entry[=].resource = organization-wolff-hospital

* entry[+].fullUrl = "urn:uuid:12fef60c-1fe7-4988-8286-af691889a3f3"
* entry[=].resource = encounter-wolff-example

* entry[+].fullUrl = "urn:uuid:38d0593b-7949-489e-9306-95df81a109df"
* entry[=].resource = fracture-left-leg

* entry[+].fullUrl = "urn:uuid:1493fed2-e9ed-4dc1-b107-f077cb1d0d40"
* entry[=].resource = external-fixator

* entry[+].fullUrl = "urn:uuid:1bcfb26f-6958-4604-a40b-712170c1e536"
* entry[=].resource = paracetamol

* entry[+].fullUrl = "urn:uuid:4578e7cd-0d00-4221-9a7f-3e3d6e14a21b"
* entry[=].resource = cefazolin

Instance: composition-hdr-wolff-example
InstanceOf: CompositionEuHdr
Title: "HDR Composition"
Usage: #inline
* id = "bd69ab8e-3835-4fb6-be83-1852a2893a65"
* status = #final
* type = $loinc#34105-7 "Hospital Discharge summary"
* subject = Reference(urn:uuid:a1438872-05b1-4868-857d-521c9d586a7e)
* encounter = Reference(urn:uuid:12fef60c-1fe7-4988-8286-af691889a3f3)
* date = "2025-04-29T13:30:00+01:00"
* author = Reference(urn:uuid:cc0ae2a0-980d-4a2b-a4fb-9c71ecc70a15)
* title = "Hospital Discharge Report"
* custodian = Reference(urn:uuid:3f30e341-19c6-484f-827a-0c58545fb2bc)
// 
// section
//
* section[sectionAdmissionEvaluation].title = "Admission evaluation"
* section[=].code = $loinc#67851-6 "Admission evaluation note"
* section[=].text.status = #generated
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  Mr. Reijer Wolff was admitted on April 20, 2025, following a fall that resulted 
  in a closed fracture of the tibia and fibula of the left leg.
  <table class="hl7__hdr">
    <thead><tr><th>Problems</th><th>SNOMED</th></tr></thead>
    <tbody>
        <tr>
            <td>Fracture of lower leg, Left lower limb</td>
            <td>414292006</td>
        </tr>
    </tbody>
  </table>
</div>
"""
// 
// section
//
* section[sectionSignificantProcedures].title = "Procedures"
* section[=].code = $loinc#10185-7 "Hospital discharge procedures Narrative"
// * section[1].code[+] = $loinc#29554-3 "Surgical operation note"
* section[=].text.status = #generated
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  On April 23, 2025, a fixateur externe was applied to stabilize the fracture.
  The procedure was performed under general anesthesia without complications.
  <table class="hl7__hdr">
    <thead><tr><th>Procedures</th><th>SNOMED</th></tr></thead>
    <tbody>
        <tr>
            <td>Application of external fixator device, Left lower limb</td>
            <td>304527002</td>
        </tr>
    </tbody>
  </table>
</div>
"""
* section[=].entry[+] = Reference(urn:uuid:1493fed2-e9ed-4dc1-b107-f077cb1d0d40)
// 
// section
//
* section[sectionPharmacotherapy].title = "Medications"
* section[=].code = $loinc#87232-5 "Medication administration.brief"
* section[=].text.status = #generated
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  The patient received paracetamol for pain relief and cefazolin as a prophylactic antibiotic post-surgery.
  <table class="hl7__hdr">
    <thead><tr><th>Medication administrations</th><th>SNOMED</th></tr></thead>
    <tbody>
        <tr>
            <td>Paracetamol</td>
            <td>387517004</td>
        </tr>
        <tr>
            <td>Cefazolin</td>
            <td>387458008</td>
        </tr>
    </tbody>
  </table>
</div>
"""
* section[=].entry[+] = Reference(urn:uuid:1bcfb26f-6958-4604-a40b-712170c1e536)
* section[=].entry[+] = Reference(urn:uuid:4578e7cd-0d00-4221-9a7f-3e3d6e14a21b)
// 
// section
//
* section[sectionHospitalCourse].title = "Hospital Course"
* section[=].code = $loinc#8648-8 "Hospital Course"
* section[=].text.status = #generated
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  The patient was monitored for signs of infection, received regular wound care, and
  started physiotherapy during the stay. No adverse events occurred.
</div>
"""
// 
// section
//
* section[sectionDischargeInstructions].title = "Discharge and Follow-up"
* section[=].code = $loinc#8653-8 "Hospital Discharge instructions"
* section[=].text.status = #generated
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  Mr. Doe was discharged in stable condition with instructions to avoid weight-bearing
  on the left leg and to follow up in the orthopedic clinic.
</div>
"""

Instance: patient-wolff-example
InstanceOf: PatientEuCore
Usage: #inline
* id = "a1438872-05b1-4868-857d-521c9d586a7e"
* identifier[+].type = $v2-0203#JHN
* identifier[=].system = "http://example.org/eu/identifier/eci"
* identifier[=].value = "6077-888840-8"
* identifier[+].type = $v2-0203#MR
* identifier[=].system = "http://example.org/eu/identifier"
* identifier[=].value = "395922e4-846a-4c18-81e8-9121c77e7bf9"
* name[+].family = "Wolff"
* name[=].given[+] = "Reijer"
* name[=].text = "Reijer Wolff"
* gender = #male
* birthDate = "1969-02-25"
* address[+].use = #home
* address[=].type = #physical
* address[=].line[+] = "Nieuweweg 134"
* address[=].city = "Hoogerheide"
* address[=].postalCode = "4631 TC"
* address[=].country = "Netherlands"
* telecom[+].system = #phone
* telecom[=].value = "+31 06-58675866"


Instance: practitionerrole-wolff-author
InstanceOf: PractitionerRoleEuCore
Usage: #inline
* id = "cc0ae2a0-980d-4a2b-a4fb-9c71ecc70a15"
* practitioner = Reference(urn:uuid:b60f89db-36c7-4a23-ab59-ace7089d2387)
* organization = Reference(urn:uuid:3f30e341-19c6-484f-827a-0c58545fb2bc)

Instance: practitioner-wolff-author
InstanceOf: Practitioner
Usage: #inline
* id = "b60f89db-36c7-4a23-ab59-ace7089d2387"
* name.prefix = "dr"
* name.given = "Anna"
* name.family = "Smit"
* telecom.system = #email
* telecom.value = "anna.smit@olv-hulst.org"

Instance: organization-wolff-hospital
InstanceOf: Organization
Usage: #inline
* id = "3f30e341-19c6-484f-827a-0c58545fb2bc"
* name = "Onze Lieve Lucas Gasthuis Hulst"
* address.city = "Hulst"
* address.postalCode = "4561"
* address.country = "nl"

Instance: encounter-wolff-example
InstanceOf: EncounterEuHdr
Usage: #example
* id = "12fef60c-1fe7-4988-8286-af691889a3f3"
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2025-04-20T10:00:00+01:00"
* period.end = "2025-04-29T11:00:00+01:00"
* subject = Reference(urn:uuid:a1438872-05b1-4868-857d-521c9d586a7e)
* serviceProvider = Reference(urn:uuid:3f30e341-19c6-484f-827a-0c58545fb2bc)
* reasonReference = Reference(urn:uuid:38d0593b-7949-489e-9306-95df81a109df)

Instance: fracture-left-leg
InstanceOf: ConditionEuHdr
Usage: #inline
* id = "38d0593b-7949-489e-9306-95df81a109df"
* clinicalStatus = $condition-clinical#active
* code = $sct#414292006 "Fracture of lower leg (disorder)"
* bodySite = $sct#362785004 "Entire left lower limb (body structure)"
* subject = Reference(urn:uuid:a1438872-05b1-4868-857d-521c9d586a7e)
* onsetDateTime = "2025-04-20"

Instance: external-fixator
InstanceOf: ProcedureEuHdr
Usage: #inline
* id = "1493fed2-e9ed-4dc1-b107-f077cb1d0d40"
* status = #completed
* code = $sct#302617002 "Application of external fixator system (procedure)"
* bodySite = $sct#362785004 "Entire left lower limb (body structure)"
* subject = Reference(urn:uuid:a1438872-05b1-4868-857d-521c9d586a7e)
* performedDateTime = "2025-04-23"

Instance: paracetamol
InstanceOf: MedicationAdministrationEuHdr
Usage: #example
* id = "1bcfb26f-6958-4604-a40b-712170c1e536"
* status = #completed
* medicationCodeableConcept = $sct#387517004 "Paracetamol (substance)"
* subject = Reference(urn:uuid:a1438872-05b1-4868-857d-521c9d586a7e)
* effectiveDateTime = "2025-04-21"

Instance: cefazolin
InstanceOf: MedicationAdministrationEuHdr
Usage: #inline
* id = "4578e7cd-0d00-4221-9a7f-3e3d6e14a21b"
* status = #completed
* medicationCodeableConcept = $sct#387470007 "Cefazolin (substance)"
* subject = Reference(urn:uuid:a1438872-05b1-4868-857d-521c9d586a7e)
* effectiveDateTime = "2025-04-23"