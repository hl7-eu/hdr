Profile: ProcedureEuCoreObligation
Parent: ProcedureEuCore
// Parent: ProcedureUvIps
Id: procedure-obl-eu-hdr
Title:    "Procedure: obligations"
Description: "This profile defines obligations for the Procedure resource by this guide."


* extension[bodySite]

* text insert ObligationSet2
 // textual representation of the procedure should be provided according to the EHN data set
* status insert ObligationSet2
* code insert ObligationSet1 

* subject insert ObligationSet1
* performed[x] insert ObligationSet1
// * performed[x].extension[data-absent-reason] insert ObligationSet1
* performer.actor insert ObligationSet2
* performer.onBehalfOf 
* reasonCode insert ObligationSet3
* reasonReference insert ObligationSet3
* outcome 
* complication
* complicationDetail 
* focalDevice 
* focalDevice.manipulated
* bodySite insert ObligationSet3
