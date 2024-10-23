Profile: AllergyIntoleranceEpsEu
Parent: AllergyIntolerance
Id: allergyIntolerance-eu-eps
Title:    "Allergy Intolerance (EU PS)"
Description: """This profile constrains the AllergyIntolerance resource for the purpose of the European patient summary."""
* ^experimental = false
* ^purpose = "This profile constrains the AllergyIntolerance resource for the purpose of the European patient summary."

* insert SetFmmandStatusRule (1, draft)
* insert ImposeProfile($AllergyIntolerance-uv-ips, 0)

* extension contains $allergyintolerance-abatement named abatement 0..1
* extension[abatement].valueDateTime ^short = "End date"

* clinicalStatus only CodeableConceptIPS
* verificationStatus only CodeableConceptIPS
* verificationStatus ^short = "Certainty"


* clinicalStatus ^short = "Current allergy or Intolerance status"
* type ^short = "Type of propensity"
* code 1..1
* code only CodeableConceptIPS
* code ^short = "Add Voc binding"
/* * code from EHDSIAllergyCode (preferred) */
* code ^binding.extension[0].extension[0].url = "purpose"
* code ^binding.extension[=].extension[=].valueCode = #candidate
* code ^binding.extension[=].extension[+].url = "valueSet"
* code ^binding.extension[=].extension[=].valueCanonical = "http://hl7.org/fhir/uv/ips/ValueSet/whoatc-uv-ips"
* code ^binding.extension[=].extension[+].url = "documentation"
* code ^binding.extension[=].extension[=].valueMarkdown = "Type of the substance/product, allergy or intolerance condition."
* code ^binding.extension[=].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* code ^binding.description = "Type of the substance/product, allergy or intolerance condition or a code for absent/unknown allergy."

* criticality ^short = "Criticality"

* patient.reference 1..
* patient only Reference(PatientEuHdr)

// * onset[x] only dateTime // is this needed ?
* onsetDateTime ^short = "Onset date"

/* * reaction.substance from EHDSIAllergens  (preferred) */

/* * reaction.manifestation from EHDSIReactionAllergy (preferred) */

* reaction.manifestation ^short = "Add Voc binding" 
* reaction.severity ^short = "Severity"