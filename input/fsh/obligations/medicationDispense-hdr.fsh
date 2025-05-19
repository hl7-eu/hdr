//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationDispenseEuHdrObligation
Parent:   MedicationDispenseEuHdr
Id:       medicationDispense-obl-eu-hdr
Title:    "MedicationDispense: obligations"
Description: "This profile defines obligations for the MedicationDispense resource for the purpose of this guide, adapted from the MPD work."
//-------------------------------------------------------------------------------------------

* insert SetFmmAndStatusRule ( 0, informative)

* subject insert ObligationSet1
* medication[x] insert ObligationSet2

* identifier 
* status insert ObligationSet2


* receiver 
* performer.actor insert ObligationSet1

* authorizingPrescription insert ObligationSet2
* quantity insert ObligationSet1
* whenHandedOver insert ObligationSet2


