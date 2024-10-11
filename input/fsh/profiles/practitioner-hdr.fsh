
//====== Profiles =====================================

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PractitionerEuHdr
Parent:   Practitioner // http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips
Id:       practitioner-eu-hdr
Title:    "Practitioner (HDR)"
Description: "This profile defines how to represent Practitioners in FHIR for the purpose of the  HL7 Europe project."
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (1, draft)
* identifier ^short = "Practitioner identifier"
* name ^short = "Practitioner name"
//-------------------------------------------------------------------------------------------

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PractitionerRoleEuHdr
Parent:   PractitionerRole // http://hl7.org/fhir/uv/ips/StructureDefinition/PractitionerRole-uv-ips
Id:       practitionerRole-eu-hdr
Title:    "PractitionerRole: (HDR)"
Description: "This profile defines how to represent Practitioners (with their roles) in FHIR for the purpose of the  HL7 Europe project."
//-------------------------------------------------------------------------------------------

* insert SetFmmandStatusRule (1, draft)
* identifier ^short = "Business identifier"
* organization only Reference (OrganizationEuHdr)
* practitioner ^short = "Practitioner playing this role"
//-------------------------------------------------------------------------------------------
