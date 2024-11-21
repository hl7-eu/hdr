// --------------------------------------------------
ValueSet:   AdmissionUrgencyHdrVS
Id:         admission-urgency-eu-hdr
Title:      "Admission Urgency Value Set"
Description:  """Hospital Discharge Report Admission Urgency value set includes selected codes from HL7 v3-ActPriority code system."""
* insert SetFmmandStatusRule (1, draft)
* ^experimental = false
* $v3-ActPriority#EL "elective"
* $v3-ActPriority#EM "emergency"
* $v3-ActPriority#R "routine"
* $v3-ActPriority#UR "urgent"