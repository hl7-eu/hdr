Profile: AllergyIntoleranceEuHdrObligation
Parent: AllergyIntoleranceEuHdr
Id: allergyIntolerance-obl-eu-hdr
Title:    "Allergy Intolerance: obligations"
Description: """This profile defines obligations for the AllergyIntolerance resource for the purpose of this project."""
* ^purpose = "This profile constrains the AllergyIntolerance resource for the purpose of project."

* insert SetFmmandStatusRule ( 0, informative)

* text insert ObligationSet1
/*
* clinicalStatus insert ObligationSet2
* verificationStatus insert ObligationSet2
*/
* type insert ObligationSet1
* code insert ObligationSet1
/*
* criticality ^short = "Criticality"
*/
* patient insert ObligationSet1
* onsetDateTime insert ObligationSet2
/*
* reaction
* reaction.substance 
* reaction.manifestation 
* reaction.severity
*/