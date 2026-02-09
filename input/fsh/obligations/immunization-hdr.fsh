//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ImmunizationEuHdrObligation
Parent:   ImmunizationEuCore
Id:       immunization-obl-eu-hdr
Title:    "Immunization: obligations"
Description: """This profile defines obligations for the Immunization resource for the purpose of this guide."""

//-------------------------------------------------------------------------------------------

* insert SetFmmAndStatusRule ( 0, informative)

* extension[basedOn]


* extension[administeredProduct] insert ObligationSet3

* vaccineCode insert ObligationSet2

* patient insert ObligationSet1
* occurrence[x] insert ObligationSet2
* location 
* manufacturer 
* lotNumber 


* performer[administeringCentreOrHp] insert ObligationSet2


* protocolApplied.targetDisease insert ObligationSet3
* protocolApplied.doseNumberPositiveInt 
* protocolApplied.seriesDosesPositiveInt 

/* //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ImmunizationRecommendationEuHdrObligation
Parent:   ImmunizationRecommendation
Id:       immunizationRecommendation-obl-eu-hdr
Title:    "ImmunizationRecommendation: obligations"
Description: """This profile defines how to represent Immunization Recommandations for the purpose of this guide."""
//-------------------------------------------------------------------------------------------

* date insert ObligationSet3
* patient insert ObligationSet1
* recommendation
  * vaccineCode insert ObligationSet2  
* recommendation.targetDisease insert ObligationSet2  
* recommendation.forecastStatus 
* recommendation.dateCriterion[nextDose] insert ObligationSet2
* recommendation.doseNumberPositiveInt insert ObligationSet3
* recommendation.seriesDosesPositiveInt insert ObligationSet3

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */