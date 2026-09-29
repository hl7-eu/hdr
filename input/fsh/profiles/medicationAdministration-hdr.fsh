//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationAdministrationEuHdr
Parent:   MedicationAdministration
Id:       medicationAdministration-eu-hdr
Title:    "MedicationAdministration (HDR)"
Description: "This profile constrains the MedicationAdministration resource for the purpose of this guide, adapted from the MPD work."
//-------------------------------------------------------------------------------------------

* insert SetFmmAndStatusRule (2, trial-use)

* identifier 
  * ^short = "Medication Administration Identifier"
* subject only Reference( PatientEuCore )
* medication[x] only CodeableConcept or Reference(MedicationEuCore)


