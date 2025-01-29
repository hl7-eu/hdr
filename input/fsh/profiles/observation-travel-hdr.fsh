Profile: ObservationTravelEuHdr
Parent: Observation
Id: observation-travel-eu-hdr
Title: "Observation: travel history (HDR)"
Description: "This profile sets minimum expectations for the Observation resource to record, search, and fetch travel history."
* ^experimental = false
* code = $loinc#82753-5  //"Country of Travel"
* effective[x] ^short = "Date or period of visit in a country"
* effective[x] ^definition = "The date or period of visit in a country."
* value[x] ^short = "Country visited"
* value[x] ^definition = "The country visited."
* value[x] only $CodeableConcept-uv-ips
* valueCodeableConcept from $iso3166-1-2
* valueCodeableConcept ^short = "Country visited"
* valueCodeableConcept ^definition = "The country visited."

* subject 1.. 
* subject only Reference(PatientEuCore)



