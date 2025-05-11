Instance: HDR-Reijer-Wolff-Example
InstanceOf: Bundle
Title: "Complete HL7 Europe Hospital Discharge Report Bundle"
Description: "FHIR Bundle example for HL7 Europe Hospital Discharge Report"
Usage: #example
* type = #document
* timestamp = "2025-04-29T14:00:00+01:00"
* entry[0].fullUrl = "urn:uuid:composition-hdr-wolff-example"
* entry[0].resource = composition-hdr-wolff-example
* entry[+].fullUrl = "urn:uuid:patient-wolff-example"
* entry[=].resource = patient-wolff-example
* entry[+].fullUrl = "urn:uuid:practitionerrole-wolff-author"
* entry[=].resource = practitionerrole-wolff-author
* entry[+].fullUrl = "urn:uuid:practitioner-wolff-author"
* entry[=].resource = practitioner-wolff-author
* entry[+].fullUrl = "urn:uuid:organization-wolff-hospital"
* entry[=].resource = organization-wolff-hospital
* entry[+].fullUrl = "urn:uuid:encounter-wolff-example"
* entry[=].resource = encounter-wolff-example
* entry[+].fullUrl = "urn:uuid:fracture-left-leg"
* entry[=].resource = fracture-left-leg
* entry[+].fullUrl = "urn:uuid:external-fixator"
* entry[=].resource = external-fixator
* entry[+].fullUrl = "urn:uuid:paracetamol"
* entry[=].resource = paracetamol
* entry[+].fullUrl = "urn:uuid:cefazolin"
* entry[=].resource = cefazolin

Instance: composition-hdr-wolff-example
InstanceOf: Composition

Title: "HDR Composition"
Usage: #inline
* status = #final
* type = http://loinc.org#18842-5 "Discharge Summary"
* subject = Reference(urn:uuid:patient-wolff-example)
* encounter = Reference(urn:uuid:encounter-wolff-example)
* date = "2025-04-29T13:30:00+01:00"
* author = Reference(urn:uuid:practitionerrole-wolff-author)
* title = "Hospital Discharge Report"
* custodian = Reference(urn:uuid:organization-wolff-hospital)
// section
* section[0].title = "Admission evaluation"
* section[=].code = http://loinc.org#67851-6 "Admission evaluation"
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
            <td>161718009</td>
        </tr>
    </tbody>
  </table>
</div>
"""
// section
* section[1].title = "Procedures"
* section[=].code = http://loinc.org#10185-7 "Hospital discharge procedures Narrative"
// * section[1].code[+] = http://loinc.org#29554-3 "Surgical operation note"
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
* section[=].entry[+] = Reference(urn:uuid:external-fixator)
// section
* section[2].title = "Medications"
* section[=].code = http://loinc.org#87232-5 "Medication administration.brief"
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
* section[=].entry[+] = Reference(urn:uuid:paracetamol)
* section[=].entry[+] = Reference(urn:uuid:cefazolin)
// section
* section[3].title = "Hospital Course"
* section[=].code = http://loinc.org#8648-8 "Hospital Course"
* section[=].text.status = #generated
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  The patient was monitored for signs of infection, received regular wound care, and
  started physiotherapy during the stay. No adverse events occurred.
</div>
"""
// section
* section[4].title = "Discharge and Follow-up"
* section[=].code = http://loinc.org#8653-8 "Hospital Discharge instructions"
* section[=].text.status = #generated
* section[=].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  Mr. Doe was discharged in stable condition with instructions to avoid weight-bearing
  on the left leg and to follow up in the orthopedic clinic.
</div>
"""

Instance: patient-wolff-example
InstanceOf: Patient
Usage: #inline
* identifier[+].type = $v2-0203#NI
* identifier[=].system = "http://ec.europa.eu/identifier/eci"
* identifier[=].value = "6077-888840-8"
* identifier[+].type = $v2-0203#MR
* identifier[=].system = "http://local.setting.eu/identifier"
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
InstanceOf: PractitionerRole
Usage: #inline
* practitioner = Reference(urn:uuid:practitioner-wolff-author)
* organization = Reference(urn:uuid:organization-wolff-hospital)

Instance: practitioner-wolff-author
InstanceOf: Practitioner
Usage: #inline
* name.prefix = "dr"
* name.given = "Anna"
* name.family = "Smit"
* telecom.system = #email
* telecom.value = "anna.smit@olv-hulst.org"

Instance: organization-wolff-hospital
InstanceOf: Organization
Usage: #inline
* name = "Onze Lieve Lucas Gasthuis Hulst"
* address.city = "Hulst"
* address.postalCode = "4561"
* address.country = "nl"

Instance: encounter-wolff-example
InstanceOf: Encounter
Usage: #inline
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* period.start = "2025-04-20T10:00:00+01:00"
* period.end = "2025-04-29T11:00:00+01:00"
* subject = Reference(urn:uuid:patient-wolff-example)
* serviceProvider = Reference(urn:uuid:organization-wolff-hospital)
* reasonReference = Reference(urn:uuid:fracture-left-leg)

Instance: fracture-left-leg
InstanceOf: Condition
Usage: #inline
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* code = http://snomed.info/sct#82423001 "Fracture of lower leg"
* bodySite = http://snomed.info/sct#83738005 "Left lower limb"
* subject = Reference(urn:uuid:patient-wolff-example)
* onsetDateTime = "2025-04-20"

Instance: external-fixator
InstanceOf: Procedure
Usage: #inline
* status = #completed
* code = http://snomed.info/sct#304527002 "Application of external fixator device"
* bodySite = http://snomed.info/sct#83738005 "Left lower limb"
* subject = Reference(urn:uuid:patient-wolff-example)
* performedDateTime = "2025-04-23"

Instance: paracetamol
InstanceOf: MedicationAdministration
Usage: #inline
* status = #completed
* medicationCodeableConcept = http://snomed.info/sct#387517004 "Paracetamol"
* subject = Reference(urn:uuid:patient-wolff-example)
* effectiveDateTime = "2025-04-21"

Instance: cefazolin
InstanceOf: MedicationAdministration
Usage: #inline
* status = #completed
* medicationCodeableConcept = http://snomed.info/sct#387458008 "Cefazolin"
* subject = Reference(urn:uuid:patient-wolff-example)
* effectiveDateTime = "2025-04-23"