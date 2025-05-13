//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationAdministrationEuHdr
Parent:   MedicationAdministration
Id:       medicationAdministration-eu-hdr
Title:    "MedicationAdministration (HDR)"
Description: "This profile constrains the MedicationAdministration resource for the purpose of this guide, adapted from the MPD work."
//-------------------------------------------------------------------------------------------

* insert SetFmmandStatusRule (1, draft)

* identifier 
  * ^short = "Medication Administration Identifier"
// * status ^short = "Current state of the dispensation"
* subject only Reference( PatientEuCore )
* medication[x] only CodeableConcept or Reference(MedicationEuHdr)

// * medicationReference only Reference(MedicationEuHdr)

