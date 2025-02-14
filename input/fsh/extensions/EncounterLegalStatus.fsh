Extension: EncounterLegalStatus
Id:   encounter-legalStatus
Title:  "Encounter Legal Status"
Description: """Legal status/situation at admission. This extension may be used for representing the basis on which the patient is staying in a healthcare organisation. This can be either voluntary or involuntary. A patient can also receive healthcare based on a forensic status. (voluntary, involuntary, admission by legal authority)."""
// publisher, contact, and other metadata here using caret (^) syntax (omitted)
* ^context[+].type = #element
* ^context[=].expression = "Encounter"
* value[x] only CodeableConcept
// ==>  ADD EXAMPLE VALUE SET
