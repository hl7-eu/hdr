Profile: PatientEuHdr
Parent: Patient
Id: patient-eu-hdr
Title:    "Patient (HDR)"
Description: """This profile defines how to represent a human Patient in HL7 FHIR for the purpose of this guide.
When the ips-pat-1 invariant is satisfied \(Patient.name.given, Patient.name.family or Patient.name.text SHALL be present\) then this profile complies with the IPS patient profile."""

* insert SetFmmandStatusRule (1, draft)

* extension contains
    $patient-birthPlace named birthPlace 0..1 and
    $sexForClinicalUse named sex-for-clinical-use 0..* and // from Lab Report
    $patient-citizenship named patient-citizenship 0..* and
    $patient-nationality named patient-nationality 0..*
    
* extension[birthPlace].valueAddress only $Address-eu
* extension[sex-for-clinical-use] ^short = "Sex for clinical use"
* extension[patient-citizenship] ^short = "Citizenship"
* extension[patient-nationality] ^short = "Nationality"

* identifier ^short = "Patient identifiers" // MS according to IPS

* name 1..*
* name only $HumanName-eu
* name obeys eu-pat-1
* name ^requirements = "Need to be able to track the patient by multiple names. Examples are your official name and a partner name.\r\nThe Alphabetic representation of the name SHALL be always provided"
* name ^requirements = "Need to be able to track the patient by multiple names. Examples are your official name and a partner name.\r\nThe Alphabetic representation of the name SHALL be always provided"
* name.text ^definition = "Text representation of the full name. Due to the cultural variance around the world a consuming system may not know how to present the name correctly; moreover not all the parts of the name go in given or family. Creators are therefore strongly encouraged to provide through this element a presented version of the name. Future versions of this guide may require this element."

* name.extension contains $data-absent-reason named name-absent-reason 0..*
* name.extension[name-absent-reason] ^short = "Reason for not providing the name."
* name.extension[name-absent-reason] ^definition = "Reason for not providing the name."
* name.family ^short = "Family name."  // MS according to IPS
* name.family ^definition = """Family name. When more the family is composed by more than one names, this element documents the full composed family name with the proper * name.familyrder. The parts are recorded in the fhater and mother family names extensions."""
* name.family ^example.label = "spanish"
* name.family ^example.valueString = "Valero Iglesias"
* name.given ^short = "Given names. Includes middle names" // MS according to IPS
* name.text ^short = "Text representation of the full name."

* telecom ^short = "A contact detail for the patient" // MS according to IPS
* gender ^short = "Administrative Gender" // MS according to IPS
* birthDate 0.. // MS according to IPS
  * ^short = "The date of birth for the patient"
* address only $Address-eu // MS according to IPS

* contact
  * relationship only $CodeableConcept-uv-ips
    * ^slicing.discriminator[0].type = #value
    * ^slicing.discriminator[0].path = "code"
    * ^slicing.ordered = false
    * ^slicing.rules = #open
    * ^short = "Slice per value"
    * ^definition = "Slice per value"
  * relationship contains role ..*
  * relationship[role] ^short = "Role of the contect (e.g. Legal Guardian)"
  // MISSING BINDING 
  * relationship contains type ..*
  * relationship[type] ^short = "Relationship type (e.g. father)"
  // * relationship[type] from $eHDSIPersonalRelationship
  * address ^short = "Contact person address"
  * address only $Address-eu
  * telecom ^short = "Contact details for the person"
  * name ^short = "Contact name"

* generalPractitioner ^short = "Patient's nominated primary care provider."
* generalPractitioner only Reference(OrganizationEu or PractitionerRoleEu) // Add profiles
* communication.language ^short = "Communication language"


Invariant: eu-pat-1
Description: "given, family, text or a data-absent-reason extension SHALL be present"
Severity: #error
Expression: "family.exists() or given.exists() or text.exists() or extension('http://hl7.org/fhir/StructureDefinition/data-absent-reason').exists()"
/* XPath: "f:given or f:family or f:text" */

