//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationStatementEuHdr
Parent:   MedicationStatement
Id:       medicationStatement-eu-hdr
Title:    "MedicationStatement (HDR)"
Description: "This profile constrains the MedicationStatement resource for the purpose of this guide, adapted from the MPD work."
//-------------------------------------------------------------------------------------------

* insert SetFmmAndStatusRule (1, draft)


* identifier 
  * ^short = "Medication Statement Identifier"
// * status ^short = "Current state of the dispensation"
* subject only Reference( PatientEuCore )

* medication[x] only CodeableConcept or Reference(MedicationEuHdr)



