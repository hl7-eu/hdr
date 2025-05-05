Profile: ObservationInfectiousContactEuHdrObligation
Parent: ObservationInfectiousContactEuHdr
Id: observation-infectious-contact-obl-eu-hdr 
Title: "Observation: Infectious Contact: obligations"
Description: "This profile defines obligations for the Infectious Contact profile."

* insert SetFmmandStatusRule ( 0, informative)

* text insert ObligationSet2
* status insert ObligationSet2
* category[exposureClass] insert ObligationSet1

* effective[x] insert ObligationSet2

* subject insert ObligationSet1 

* performer insert ObligationSet3

* code insert ObligationSet1 
* valueCodeableConcept insert ObligationSet2

* note 

