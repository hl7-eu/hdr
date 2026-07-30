//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationEuHdrObligation
Parent:   MedicationEuCore
Id:       medication-obl-eu-hdr
Title:    "Medication: obligations"
Description: "This profile defines obligations for the Medication resource for the purpose of this guide, adapted from the MPD work."
//-------------------------------------------------------------------------------------------

* insert SetFmmAndStatusRule ( 0, informative)

* ingredient   
  * item[x]	insert OblShallPopulateShallProcess
  * strength  insert OblShallPopulateShallDisplayProcess
    * extension[strengthSubstance] 
  * isActive insert OblShallPopulateShallProcess

* extension[productName] insert OblShallPopulateShallDisplayProcess
* extension[classification] insert OblShallPopulateShouldDisplayShallProcess


* identifier insert OblShallPopulateShallDisplayProcess
* code insert OblShallPopulateShallDisplayProcess

* form 
