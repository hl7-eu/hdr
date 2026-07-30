//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ImmunizationEuHdrObligation
Parent:   ImmunizationEuCore
Id:       immunization-obl-eu-hdr
Title:    "Immunization: obligations"
Description: """This profile defines obligations for the Immunization resource for the purpose of this guide."""

//-------------------------------------------------------------------------------------------

* insert SetFmmAndStatusRule ( 0, informative)

* extension[basedOn]


* extension[administeredProduct] insert OblShallPopulateShouldDisplayShallProcess

* vaccineCode insert OblShallPopulateShallDisplayProcess

* patient insert OblShallPopulateShallProcess
* occurrence[x] insert OblShallPopulateShallDisplayProcess
* location 
* manufacturer 
* lotNumber 


* performer[administeringCentreOrHp] insert OblShallPopulateShallDisplayProcess


* protocolApplied.targetDisease insert OblShallPopulateShouldDisplayShallProcess
* protocolApplied.doseNumberPositiveInt 
* protocolApplied.seriesDosesPositiveInt 

/* //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ImmunizationRecommendationEuHdrObligation
Parent:   ImmunizationRecommendation
Id:       immunizationRecommendation-obl-eu-hdr
Title:    "ImmunizationRecommendation: obligations"
Description: """This profile defines how to represent Immunization Recommandations for the purpose of this guide."""
//-------------------------------------------------------------------------------------------

* date insert OblShallPopulateShouldDisplayShallProcess
* patient insert OblShallPopulateShallProcess
* recommendation
  * vaccineCode insert OblShallPopulateShallDisplayProcess  
* recommendation.targetDisease insert OblShallPopulateShallDisplayProcess  
* recommendation.forecastStatus 
* recommendation.dateCriterion[nextDose] insert OblShallPopulateShallDisplayProcess
* recommendation.doseNumberPositiveInt insert OblShallPopulateShouldDisplayShallProcess
* recommendation.seriesDosesPositiveInt insert OblShallPopulateShouldDisplayShallProcess

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ */