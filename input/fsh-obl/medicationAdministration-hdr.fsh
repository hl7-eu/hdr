//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationAdministrationEuHdr
Parent:   MedicationAdministrationEuHdr
Id:       medicationAdministration-obl-eu-hdr
Title:    "MedicationAdministration: obligations"
Description: "This profile defines obligations for the MedicationAdministration resource for the purpose of this guide, adapted from the MPD work."
//-------------------------------------------------------------------------------------------

* insert SetFmmandStatusRule ( 0, informative)

* identifier 
  * ^short = "Medication Administration Identifier"
// * status ^short = "Current state of the dispensation"
* subject only Reference( PatientEuCore )
* medicationReference only Reference(MedicationEuHdr)

