Profile: ObservationSdohEuHdr
Parent: Observation
Id: observation-sdoh-eu-hdr
Title: "Observation: SDOH (HDR)"
Description: "Profile for Social Determinants of Health (SDOH) observations that involve assessment (e.g., by a provider, payer, etc.) as opposed to being derived only from screening surveys (as is the case for the SDOHCC Screening Response Observation)."

* status ^short = "Observation status"
* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains
    SocialHistory 1..1  
    // and   SDOH 0..* 
* category[SocialHistory] = $observation-category#social-history
* category[SocialHistory] ^requirements = "Used for filtering that this is a social history observation."

/* Add an optionla category for catgorizing in a more precise way the SDOH

* category[SDOH] from SDOHCCValueSetSDOHCategory (required)
* category[SDOH] ^short = "e.g., food-insecurity | transportation-insecurity"
* category[SDOH] ^definition = "An SDOH category assigned to the observation."
* category[SDOH] ^requirements = "Codes from this value set can be used to assign one or more SDOH categories (e.g., food-insecurity, transportation-insecurity, etc.) to an observation. It is recommended that SDOH category codes be used to facilitate searching for SDOH observations."
* category[SDOH] ^binding.description = "Codes for high-level SDOH categories." */

* code 
* code from SdohObservationSnomedLoincHdrVS (preferred)
* code ^comment = "*All* code-value and, if present, component.code-component.value pairs need to be taken into account to correctly understand the meaning of the observation.\r\n\r\nFuture refinements of the SDOH categories (e.g., food, housing, transportation, etc.), will allow a better specification of the codes (including LOINC and SNOMED) that pertain to SDOH categories."
* subject 1.. 
* subject only Reference(Group or PatientEuCore)
* effective[x] ^comment = "At least a date should be present unless this observation is a historical report.  For recording imprecise or \"fuzzy\" times (For example, a blood glucose measurement taken \"after breakfast\") use the [Timing] datatype which allow the measurement to be tied to regular life events."
* performer only Reference(RelatedPerson or PatientEuCore or PractitionerEuCore or PractitionerRoleEuCore or OrganizationEuCore or CareTeam)
* performer ^comment = "References SHALL be a reference to an actual FHIR resource, and SHALL be resolveable (allowing for access control, temporary unavailability, etc.). Resolution can be either by retrieval from the URL, or, where applicable by resource type, by treating an absolute reference as a canonical URL and looking it up in a local registry/repository."
* value[x] ^short = "SDOH value"
* note ^short = "Comments about this SDOH"