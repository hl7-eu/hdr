//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationRequestEuHdrObligation
Parent:   MedicationRequestEuCore
Id:       medicationRequest-obl-eu-hdr
Title:    "MedicationRequest: obligations"
Description: "This profile defines obligations for the MedicationRequest resource for the purpose of this guide, adapted from the MPD work."
//-------------------------------------------------------------------------------------------

* insert SetFmmAndStatusRule ( 0, informative)

* insert OblShallPopulateShallProcess

* subject insert OblShallPopulateShallProcess
* medication[x] insert OblShallPopulateShallDisplayProcess


* reasonCode insert OblShallPopulateShouldDisplayShallProcess
* reasonReference insert OblShallPopulateShouldDisplayShallProcess
* status insert OblShallPopulateShallDisplayProcess

* authoredOn insert OblShallPopulateShallProcess
* requester insert OblShallPopulateShallProcess
* groupIdentifier insert OblShallPopulateShouldDisplayShallProcess
* dosageInstruction insert OblShallPopulateShouldDisplayShallProcess
  * timing insert OblShallPopulateShallDisplayProcess
  * text insert OblShallPopulateShallDisplayProcess
  * doseAndRate.doseQuantity insert OblShallPopulateShallDisplayProcess
* dispenseRequest insert OblShallPopulateShallProcess
  * quantity insert OblShallPopulateShallProcess
* substitution.allowedCodeableConcept insert OblShallPopulateShallProcess
