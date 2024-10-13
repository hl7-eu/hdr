// --------------------------------------------------
ValueSet:     EncounterStatusHdrVS
Id:	     encounter-status-eu-hdr
Title:      "In-patient Encounter Type Value Set"
Description:  """Hospital Discharge Report Encounter Type allows to classify encounter using general type of care provision regimen during the inpatient encounter. Value set includes concepts from the SNOMED CT descendants of 225351009 (Care provision regime) but needs to be further dicsussed"""

* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
* $encounter-status#triaged	"Triaged"
* $encounter-status#in-progress	"In Progress"
* $encounter-status#onleave	"On Leave"
* $encounter-status#finished	"Finished"	
* $encounter-status#unknown	"Unknown"