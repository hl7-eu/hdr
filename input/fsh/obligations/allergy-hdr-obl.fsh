Profile: AllergyIntoleranceEuCoreObligation
Parent: AllergyIntoleranceEuCore
Id: allergyIntolerance-obl-eu-hdr
Title:    "Allergy Intolerance: obligations"
Description: """This profile defines obligations for the AllergyIntolerance resource for the purpose of this project."""
* ^purpose = "This profile constrains the AllergyIntolerance resource for the purpose of project."

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