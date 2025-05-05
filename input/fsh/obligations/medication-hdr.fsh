//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationEuHdrObligation
Parent:   MedicationEuHdr
Id:       Medication-obl-eu-hdr
Title:    "Medication: obligations"
Description: "This profile defines obligations for the Medication resource for the purpose of this guide, adapted from the MPD work."
//-------------------------------------------------------------------------------------------

* insert SetFmmandStatusRule ( 0, informative)

* ingredient   
  * item[x]	insert ObligationSet1
  * strength  insert ObligationSet2
    * extension[strengthSubstance] 
  * isActive insert ObligationSet1

* extension[productName] insert ObligationSet2
* extension[classification] insert ObligationSet3


* identifier insert ObligationSet2
* code insert ObligationSet2

* form 
