Profile: ProcedureEuCoreObligation
Parent: ProcedureEuCore
// Parent: ProcedureUvIps
Id: procedure-obl-eu-hdr
Title:    "Procedure: obligations"
Description: "This profile defines obligations for the Procedure resource by this guide."

* insert OblShouldPopulateShallProcess

* extension[bodySite]

* text insert OblShallPopulateShallDisplayProcess
 // textual representation of the procedure should be provided according to the EHN data set
* status insert OblShallPopulateShallDisplayProcess
* code insert OblShallPopulateShallProcess 

* subject insert OblShallPopulateShallProcess
* performed[x] insert OblShallPopulateShallProcess
// * performed[x].extension[data-absent-reason] insert OblShallPopulateShallProcess
* performer.actor insert OblShallPopulateShallDisplayProcess
* performer.onBehalfOf 
* reasonCode insert OblShallPopulateShouldDisplayShallProcess
* reasonReference insert OblShallPopulateShouldDisplayShallProcess
* outcome 
* complication
* complicationDetail 
* focalDevice 
* focalDevice.manipulated
* bodySite insert OblShallPopulateShouldDisplayShallProcess
