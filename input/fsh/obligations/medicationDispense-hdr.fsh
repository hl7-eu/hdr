//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationDispenseEuHdrObligation
Parent:   MedicationDispenseEuHdr
Id:       medicationDispense-obl-eu-hdr
Title:    "MedicationDispense: obligations"
Description: "This profile defines obligations for the MedicationDispense resource for the purpose of this guide, adapted from the MPD work."
//-------------------------------------------------------------------------------------------

* insert SetFmmAndStatusRule ( 0, informative)

* insert OblShallPopulateShallProcess

* subject insert OblShallPopulateShallProcess
* medication[x] insert OblShallPopulateShallDisplayProcess

* identifier 
* status insert OblShallPopulateShallDisplayProcess


* receiver 
* performer.actor insert OblShallPopulateShallProcess

* authorizingPrescription insert OblShallPopulateShallDisplayProcess
* quantity insert OblShallPopulateShallProcess
* whenHandedOver insert OblShallPopulateShallDisplayProcess


