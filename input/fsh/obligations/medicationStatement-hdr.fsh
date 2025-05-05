//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationStatementEuHdrObligation
Parent:   MedicationStatementEuHdr
Id:       medicationStatement-obl-eu-hdr
Title:    "MedicationStatement: obligations"
Description: "This profile defines obligations for the MedicationStatement resource for the purpose of this guide, adapted from the MPD work."
//-------------------------------------------------------------------------------------------

* insert SetFmmandStatusRule ( 0, informative)


* subject insert ObligationSet1
* medication[x] insert ObligationSet2
* identifier 

