// --------------------------------------------------
ValueSet:     EncounterClassHdrVS
Id:	          encounter-class-eu-hdr
Title:	      "Encounter Class Value Set"
Description:  """Hospital Discharge Report Encounter Class value set includes codes from the HL7 v3-ActCode code system that are used to classify the general type of inpatient encounter."""

* insert SetFmmAndStatusRule (1, draft)
* ^experimental = false
* $v3-ActCode#IMP	    "inpatient encounter"  // should we have this general category ?
* $v3-ActCode#ACUTE	    "inpatient acute"
* $v3-ActCode#NONAC	    "inpatient non-acute"
* $v3-ActCode#OBSENC	"observation encounter"
//* $v3-ActCode#PRENC	    "pre-admission"  // should we have pre-admission if this is value set for hospital discharge report?
* $v3-ActCode#SS	    "short stay"


// --------------------------------------------------
ValueSet:   EncounterTypeHdrVS
Id:         encounter-type-eu-hdr
Title:      "Encounter Type Value Set"
Description:  """Hospital Discharge Report Encounter Type value set includes concepts from SNOMED CT descendants of 225351009 (Care provision regime) that are used to classify the care provision regimen during the inpatient encounter."""

* insert SetFmmAndStatusRule (1, draft)
* ^experimental = false
* insert SNOMEDCopyrightForVS
* include codes from system $sct where concept is-a #225351009 "Care provision regime"

// --------------------------------------------------
ValueSet:     EncounterStatusHdrVS
Id:	     encounter-status-eu-hdr
Title:      "Encounter Status Value Set"
Description:  """Hospital Discharge Report Encounter Status value set includes codes from the FHIR R4 EncounterStatus code system that are used to represent the state of the inpatient encounter."""

* insert SetFmmAndStatusRule (1, draft)
* ^experimental = false
* $encounter-status-r4#triaged	"Triaged"
* $encounter-status-r4#in-progress	"In Progress"
* $encounter-status-r4#onleave	"On Leave"
* $encounter-status-r4#finished	"Finished"	
* $encounter-status-r4#unknown	"Unknown"
