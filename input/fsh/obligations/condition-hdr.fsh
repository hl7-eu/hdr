Profile: ConditionEuCoreObligation
Parent: ConditionEuCore
Id: condition-obl-eu-hdr
Title: "Condition: obligations"
Description: """This profile defines obligations for the Condition in the scope of this guide. It support the Diagnostic summary part of the eHN data model adding two additional categories: First category distingueshes conditions present at admission and acquired during hospital stay, while second category is used to indicate impact of the condition to the treatement during hospital stay (treated, untreated)."""

* insert SetFmmAndStatusRule ( 0, informative)

* extension[bodySite] 
* category 
// * category[poa] insert ObligationSet1
// * category[treated] insert ObligationSet1
* severity 


* code insert ObligationSet1 

* bodySite insert ObligationSet3

* identifier insert ObligationSet2
* text insert ObligationSet1 


* clinicalStatus insert ObligationSet3
* verificationStatus insert ObligationSet3

* subject insert ObligationSet1

* onsetDateTime insert ObligationSet2

* abatementDateTime insert ObligationSet2

* stage 
* stage.summary  
* stage.assessment
* stage.type 

* note 

