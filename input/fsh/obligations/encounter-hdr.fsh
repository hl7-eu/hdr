Profile: EncounterEuHdrObligation
Parent: EncounterEuHdr
Id: encounter-obl-eu-hdr
Title:    "Encounter: obligations"
Description: "This profile defines obligations for Inpatient Encounter in HL7 FHIR for the scope of this guide."

* insert SetFmmandStatusRule ( 0, informative)


* identifier 
* status
* class insert ObligationSet1
* type 
* serviceType  
* priority 
* subject insert ObligationSet1
* basedOn 
* period  insert ObligationSet2
* reasonCode  insert ObligationSet2
* reasonReference 

* participant[admitter]  insert ObligationSet2
* participant[discharger]  insert ObligationSet2
* participant[referrer] insert ObligationSet2

* diagnosis
* diagnosis.condition insert ObligationSet2

* hospitalization
  * admitSource
  * dischargeDisposition
  * destination 

* location
  * location
  * period 

* serviceProvider 