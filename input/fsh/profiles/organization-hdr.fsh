Profile: OrganizationEuHdr
Parent: Organization // http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips
Id: organization-eu-hdr
Title: "Organization (HDR)"
Description: "This profile sets minimum expectations for the Organization resource to searching for and fetching an Organization associated with a patient or provider for the purpose of this guide."

* insert SetFmmandStatusRule (1, draft)

* type ^short = "Organization type"
* name ^short = "Name of the organization"
* telecom ^short = "Organization telecom"
* address only AddressEu
* partOf ^short = "The organization of which this organization is part of: e.g. an ERN"
* partOf only Reference (OrganizationEuHdr or Organization)
* contact ^short = "Organization contact infos"