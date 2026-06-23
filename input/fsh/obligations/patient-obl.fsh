Profile: PatientEuObligations
Parent: PatientEuCore
Id: patient-obl-eu-hdr
Title:    "Patient: obligations"
Description: "This profile defines obligations for an human Patient in FHIR for the purpose of this guide."
// * ^publisher = "HL7 Europe"
// * ^copyright = "HL7 Europe"
* insert SetFmmAndStatusRule ( 0, informative)

// TEST OBLIGATIONS  ====>

// Obligations at the element level 
// Server obligations
* identifier insert OblShallPopulateShallProcess   
* name.given insert OblShallPopulateShallProcess  
* name.family insert OblShallPopulateShallProcess
* name.text insert OblShallPopulateShallDisplayProcess //can-send
* telecom insert OblShallPopulateShallDisplayProcess //can-send
* gender insert OblShallPopulateShallProcess
* birthDate insert OblShallPopulateShallProcess
* generalPractitioner insert OblShallPopulateShallDisplayProcess //can-send
* address insert OblShallPopulateShallProcess
