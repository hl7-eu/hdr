// --------------------------------------------------
ValueSet:   ConditionHdrVS
Id:         condition-eu-hdr
Title:      "Condition Value Set"
Description:  """Hospital Discharge Report Condition value set includes selected codes from recommended EU code systems for health conditions (WHO-ICD-10, SNOMED CT and Orphacodes)."""
* insert SetFmmandStatusRule (1, draft)
* ^experimental = false
* insert SNOMEDCopyrightForVS
* codes from system $icd10
* codes from system $orpha
* codes from system $sct where concept is-a #404684003 "Clinical finding"
* codes from system $sct where concept is-a #71388002 "Procedure"
* codes from system $sct where concept is-a #243796009 "Context dependent categories"
* codes from system $sct where concept is-a #272379006 "Events"

// --------------------------------------------------
ValueSet:   ConditionMandatoryHdrVS
Id:         condition-mandatory-eu-hdr
Title:      "Mandatory Condition Value Set"
Description:  """Hospital Discharge Report Mandatory Condition value set includes selected codes from recommended EU code systems for health conditions (WHO-ICD-10, SNOMED CT and Orphacodes) and IPS Absent and Unknown Data."""
* insert SetFmmandStatusRule (1, draft)
* ^experimental = false
* codes from valueset ConditionHdrVS
* $absent-unknown-uv-ips#no-problem-info "No information about problems"
* $absent-unknown-uv-ips#no-known-problems "No known problems"
* $sct#385432009 "Not applicable"
