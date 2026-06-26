Profile: ProcedureEuCoreObligation
Parent: ProcedureEuCore
Id: procedure-obl-eu-hdr
Title: "Procedure: obligations"
Description: "This profile defines obligations for the Procedure resource by this guide."

* subject insert OblShallPopulateOnly
* identifier insert OblShouldPopulateOnly
* status insert OblShallPopulateOnly
* code insert OblShallPopulateOnly
* performed[x] insert OblShallPopulateOnly
* bodySite insert OblShouldPopulateOnly
* note insert OblShouldPopulateOnly

* extension[bodySite]
* text
* performer.actor
* performer.onBehalfOf
* reasonCode
* reasonReference
* outcome
* complication
* complicationDetail
* focalDevice
* focalDevice.manipulated
