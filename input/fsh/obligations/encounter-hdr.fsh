Profile: EncounterEuHdrObligation
Parent: EncounterEuHdr
Id: encounter-obl-eu-hdr
Title:    "Encounter: obligations"
Description: "This profile defines obligations for Inpatient Encounter in HL7 FHIR for the scope of this guide."

* insert SetFmmAndStatusRule ( 0, informative)


* identifier 
* status
* class insert OblShallPopulateShallProcess
* type 
* serviceType  
* priority 
* subject insert OblShallPopulateShallProcess
* basedOn 
* period  insert OblShallPopulateShallDisplayProcess
* reasonCode  insert OblShallPopulateShallDisplayProcess
* reasonReference 

* participant[admitter]  insert OblShallPopulateShallDisplayProcess
* participant[discharger]  insert OblShallPopulateShallDisplayProcess
* participant[referrer] insert OblShallPopulateShallDisplayProcess

* diagnosis
* diagnosis.condition insert OblShallPopulateShallDisplayProcess

* hospitalization
  * admitSource
  * dischargeDisposition
  * destination 

* location
  * location
  * period 

* serviceProvider 