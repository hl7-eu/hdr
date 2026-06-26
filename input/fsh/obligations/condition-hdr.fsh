Profile: ConditionEuCoreObligation
Parent: ConditionEuCore
Id: condition-obl-eu-hdr
Title: "Condition: obligations"
Description: """This profile defines obligations for the Condition in the scope of this guide. It supports the Diagnostic summary part of the eHN data model adding two additional categories: first category distinguishes conditions present at admission and acquired during hospital stay, while second category is used to indicate impact of the condition to the treatment during hospital stay (treated, untreated)."""

* insert SetFmmAndStatusRule ( 0, informative)

* subject insert OblShallPopulateOnly
* identifier insert OblShouldPopulateOnly
* clinicalStatus insert OblShallPopulateOnly
* code insert OblShallPopulateOnly
* onsetDateTime insert OblShouldPopulateOnly
* abatementDateTime insert OblShallPopulateOnly
* bodySite insert OblShouldPopulateOnly

* extension[bodySite]
* category
* severity
* text
* verificationStatus
* stage
* stage.summary
* stage.assessment
* stage.type
* note
