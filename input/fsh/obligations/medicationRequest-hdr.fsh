//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationRequestEuHdrObligation
Parent:   MedicationRequestEuHdr
Id:       medicationRequest-obl-eu-hdr
Title:    "MedicationRequest: obligations"
Description: "This profile defines obligations for the MedicationRequest resource for the purpose of this guide, adapted from the MPD work."
//-------------------------------------------------------------------------------------------

* insert SetFmmAndStatusRule ( 0, informative)

* subject insert ObligationSet1
* medication[x] insert ObligationSet2

* identifier 

* reasonCode insert ObligationSet3
* reasonReference insert ObligationSet3
* status insert ObligationSet2

* authoredOn insert ObligationSet1
* requester insert ObligationSet1
* groupIdentifier insert ObligationSet3
* dosageInstruction insert ObligationSet3
  * timing insert ObligationSet2
    * repeat
      * duration 
      * frequency 
      * period 
      * periodUnit 
    * code 
  * route 
  * text insert ObligationSet2
  * doseAndRate.doseQuantity insert ObligationSet2
* dispenseRequest insert ObligationSet1
  * quantity insert ObligationSet1
* substitution.allowedCodeableConcept insert ObligationSet1