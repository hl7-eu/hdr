Profile: FamilyMemberHistoryEuHdr
Parent: FamilyMemberHistoryEuHdr
Id: familyMemberHistory-obl-eu-hdr
Title: "FamilyMemberHistory: obligations"
Description: "This profile represents the constraints applied to the FamilyMemberHistory resource by this guide."


* insert SetFmmandStatusRule ( 0, informative)
* dataAbsentReason ^short = "Reason for missing data"
* patient 1..1 
* patient only Reference(PatientEuCore)

* relationship ^short = "Relationship to the subject."

* bornDate ^short = "Date of birth of the relative"

* deceasedAge ^short = "(Approximate) age at death of the relative"
* deceasedDate ^short = "Date of death of the relative"

* condition
  * code 1..1 
  * code only $CodeableConcept-uv-ips
  * code from ConditionHdrVS (preferred)
  * note ^short = "Extra information about this condition"