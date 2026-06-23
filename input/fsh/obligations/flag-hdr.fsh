//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  FlagEuHdrObligation
Parent:   FlagPatientEuCore
Id:       flag-obl-eu-hdr
Title:    "Flag: obligations"
Description: "This profile defines obligations for the Flag resource to represent alerts or warnings in FHIR for the purpose of this project."
//-------------------------------------------------------------------------------------------

* insert SetFmmAndStatusRule ( 0, informative)

* extension[flagDetailExt] insert OblShallPopulateShouldDisplayShallProcess
* extension[flagPriorityExt] insert OblShallPopulateShouldDisplayShallProcess
* status insert OblShallPopulateShallDisplayProcess
* code insert OblShallPopulateShallProcess
* subject insert OblShallPopulateShallProcess