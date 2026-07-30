//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationAdministrationEuHdrObligation
Parent:   MedicationAdministrationEuHdr
Id:       medicationAdministration-obl-eu-hdr
Title:    "MedicationAdministration: obligations"
Description: "This profile defines obligations for the MedicationAdministration resource for the purpose of this guide, adapted from the MPD work."
//-------------------------------------------------------------------------------------------

* insert SetFmmAndStatusRule ( 0, informative)

* insert OblShouldPopulateShallProcess

* subject only Reference(PatientEuObligations)
* medication[x] only CodeableConcept or Reference(MedicationEuHdrObligation)

* identifier 
* subject insert OblShallPopulateShallProcess
* medication[x] insert OblShallPopulateShallDisplayProcess
