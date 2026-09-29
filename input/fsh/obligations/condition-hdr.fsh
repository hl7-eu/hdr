Profile: ConditionEuCoreObligation
Parent: ConditionEuCore
Id: condition-obl-eu-hdr
Title: "Condition: obligations"
Description: """This profile defines obligations for the Condition resource for the purpose of this guide."""

* insert SetFmmAndStatusRule ( 0, informative)

* subject insert OblShallPopulateOnly
* identifier insert OblShouldPopulateOnly
* clinicalStatus insert OblShallPopulateOnly
* code insert OblShallPopulateOnly
* onsetDateTime insert OblShouldPopulateOnly
* abatementDateTime insert OblShallPopulateOnly
* bodySite insert OblShouldPopulateOnly

* bodySite.extension[bodySite]
* category
* severity
* text
* verificationStatus
* stage
* stage.summary
* stage.assessment
* stage.type
* note
