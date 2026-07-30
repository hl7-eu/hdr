//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile: MedicationStatementEuCoreObligation
Parent: MedicationStatementEuCore
Id: medicationStatement-obl-eu-hdr
Title: "MedicationStatement: obligations"
Description: "This profile defines obligations for the MedicationStatement resource for the purpose of this guide, adapted from the MPD work."
//-------------------------------------------------------------------------------------------

* insert SetFmmAndStatusRule ( 0, informative)

* subject insert OblShallPopulateOnly
* status insert OblShallPopulateOnly
* medication[x] insert OblShallPopulateOnly
* reasonCode insert OblShouldPopulateOnly
* reasonReference insert OblShouldPopulateOnly
* dosage insert OblShallPopulateOnly
* effective[x] insert OblShallPopulateOnly
* note insert OblShouldPopulateOnly

* identifier
