Profile: ConditionEuCoreObligation
Parent: ConditionEuCore
Id: condition-obl-eu-hdr
Title: "Condition: obligations"
Description: """This profile defines obligations for the Condition in the scope of this guide. It support the Diagnostic summary part of the eHN data model adding two additional categories: First category distingueshes conditions present at admission and acquired during hospital stay, while second category is used to indicate impact of the condition to the treatement during hospital stay (treated, untreated)."""

* insert SetFmmAndStatusRule ( 0, informative)

* extension[bodySite] 
* category 
// * category[poa] insert OblShallPopulateShallProcess
// * category[treated] insert OblShallPopulateShallProcess
* severity 


* code insert OblShallPopulateShallProcess 

* bodySite insert OblShallPopulateShouldDisplayShallProcess

* identifier insert OblShallPopulateShallDisplayProcess
* text insert OblShallPopulateShallProcess 


* clinicalStatus insert OblShallPopulateShouldDisplayShallProcess
* verificationStatus insert OblShallPopulateShouldDisplayShallProcess

* subject insert OblShallPopulateShallProcess

* onsetDateTime insert OblShallPopulateShallDisplayProcess

* abatementDateTime insert OblShallPopulateShallDisplayProcess

* stage 
* stage.summary  
* stage.assessment
* stage.type 

* note 

