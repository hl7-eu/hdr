Profile: AllergyIntoleranceEuHdrObligation
Parent: AllergyIntoleranceEuCore
Id: allergyIntolerance-obl-eu-hdr
Title:    "AllergyIntolerance: obligations"
Description: """This profile defines obligations for the AllergyIntolerance resource for the purpose of this guide."""

* insert SetFmmAndStatusRule ( 0, informative)

* text insert OblShallPopulateShallProcess
/*
* clinicalStatus insert OblShallPopulateShallDisplayProcess
* verificationStatus insert OblShallPopulateShallDisplayProcess
*/
* type insert OblShallPopulateShallProcess
* code insert OblShallPopulateShallProcess
/*
* criticality ^short = "Criticality"
*/
* patient insert OblShallPopulateShallProcess
* onsetDateTime insert OblShallPopulateShallDisplayProcess
/*
* reaction
* reaction.substance 
* reaction.manifestation 
* reaction.severity
*/