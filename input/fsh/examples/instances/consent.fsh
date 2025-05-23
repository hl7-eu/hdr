Instance: example-consent-dnr
InstanceOf: ConsentHdrEu
Title: "Consent: Advance Directive DNR"
Description: "A Consent resource representing a Living Will with Do Not Resuscitate directive."


* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#adr
* policyRule = http://hl7europe.org/policy-rules#local "local policy rule"

* category[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/consentcategorycodes"
* category[0].coding[0].code = #dnr
* category[0].coding[0].display = "Do Not Resuscitate"
* category[0].text = "Do Not Resuscitate (DNR)"

* patient = Reference(patient-swart)
* patient.display = "Fiona XXX_Swart"

* dateTime = "2024-09-10T10:00:00+02:00"

* sourceAttachment.title = "Advance Directive Document"
* sourceAttachment.url = "https://ehr.example.org/advance-directives/FionaXXX_Swart.pdf"
* sourceAttachment.contentType = #application/pdf

* organization[0].display = "General Hospital"

* performer[0].display = "Dr. Alessia Bianchi"

* extension[note].url = "http://hl7.org/fhir/StructureDefinition/note"
* extension[note].valueAnnotation.text = "Patient expressed clear wishes about end-of-life care."

* extension[relatedCondition].valueReference.display = "Metastatic breast cancer"
