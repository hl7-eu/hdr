Profile: ObservationInfectiousContactEuHdr
Parent: Observation
Id: observation-infectious-contact-eu-hdr 
Title: "Observation: Infectious Contact (HDR)"
Description: "Infectious Contact profile represents potential patient exposure to an agent (exposure source)."
* ^experimental = false
//* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* . ^short = "Infectious Contact Profile"

* status ^short = "Observation status"
* category 1..
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains
    exposureClass 1..1

* category[exposureClass] from $v3-ActClassExposure
  * ^short = "Use AEXPOS for aquisition exposure, use TEXPOS for transmission exposure, or use EXPOS if the type of exposure is unknown"
  * ^definition = "Use AEXPOS for aquisition exposure, use TEXPOS for transmission exposure, or use EXPOS if the type of exposure is unknown"
* effective[x] ^short = "Time or period the contact/exposure occurred."

* subject 1.. 
* subject only Reference(Group or PatientEuCore)
* performer only Reference(RelatedPerson or PatientEuCore or PractitionerEuCore or PractitionerRoleEuCore or OrganizationEuCore or CareTeam)
* performer.reference 1..
* performer ^comment = "References SHALL be a reference to an actual FHIR resource, and SHALL be resolveable (allowing for access control, temporary unavailability, etc.). Resolution can be either by retrieval from the URL, or, where applicable by resource type, by treating an absolute reference as a canonical URL and looking it up in a local registry/repository."

* code = $v3-ParticipationType#EXPAGNT
  * ^short = "Exposure Agent"
* valueCodeableConcept from ExposureAgentHdrVs (preferred)
// the value set is defined for ExposureAgent but the content is diseases
* note ^short = "Comments about this Infection Contact"

