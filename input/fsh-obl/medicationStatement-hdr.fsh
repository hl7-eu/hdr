//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationStatementEuHdr
Parent:   MedicationStatementEuHdr
Id:       medicationStatement-obl-eu-hdr
Title:    "MedicationStatement: obligations"
Description: "This profile defines obligations for the MedicationStatement resource for the purpose of this guide, adapted from the MPD work."
//-------------------------------------------------------------------------------------------

* insert SetFmmandStatusRule (1, draft)




* identifier 
  * ^short = "Medication Statement Identifier"
// * status ^short = "Current state of the dispensation"
* subject only Reference( PatientEuCore )
* medicationReference only Reference(MedicationEuHdr)

