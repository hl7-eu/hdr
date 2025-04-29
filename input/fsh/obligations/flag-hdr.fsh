//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  FlagEuHdrObligation
Parent:   FlagEuHdr
Id:       flag-obl-eu-hdr
Title:    "Flag: obligations"
Description: "This profile defines obligations for the Flag resource to represent alerts or warnings in FHIR for the purpose of this project."
//-------------------------------------------------------------------------------------------

* insert SetFmmandStatusRule ( 0, informative)

* extension[flagDetailExt] insert ObligationSet3
* extension[flagPriorityExt] insert ObligationSet3
* status insert ObligationSet2
* code insert ObligationSet1
* subject insert ObligationSet1