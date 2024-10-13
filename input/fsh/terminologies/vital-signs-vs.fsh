// --------------------------------------------------
// To be discussed
ValueSet:   AllVitalSignsObservationVS
Id:         vital-signs-observation-vs
Title:      "Vital Signs Observation Value Set"
Description: "The vital sign obsevrvation codes from the XpanDH Vital Signs."
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS

* codes from valueset AnthropometricObservationVS
* $sct#364075005 "Heart rate (observable entity)"
* $sct#86290005 "Respiratory rate (observable entity)"
* $sct#75367002 "Blood pressure (observable entity)"  // 271649006 "Systolic blood pressure (observable entity)"  271650006 | Diastolic blood pressure (observable entity)
* $sct#386725007 "Body temperature (observable entity)"
* $sct#103228002 "Hemoglobin saturation with oxygen (observable entity)"
