Profile: SpecimenEuObligations
Parent: Specimen
Id: specimen-obl-eu-hdr
Title:    "Specimen: obligations"
Description: "This profile defines obligations for Specimen in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmAndStatusRule ( 0, informative)

// TEST OBLIGATIONS  ====>

* subject insert OblShallPopulateShallProcess
* type insert OblShallPopulateShallProcess
* request insert OblShallPopulateShallDisplayProcess
* collection insert OblShallPopulateShallProcess
  * bodySite insert OblShallPopulateShallProcess
//  * extension[bodySite] insert OblShallPopulateShallDisplayProcess
* processing.additive insert OblShallPopulateShallDisplayProcess
* container insert OblShallPopulateShallProcess
  * type insert OblShallPopulateShallProcess  

