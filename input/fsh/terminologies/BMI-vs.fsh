// --------------------------------------------------
// To be discussed
ValueSet:   BMIObservationVS
Id:         bmi-observation-vs
Title:      "BMI Observation Value Set"
Description: "Body mass index observation codes from the XpanDH BMI observation."
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* $sct#60621009 "Body mass index (observable entity)"
* $sct#715456008 "Percentage median body mass index for age and sex (observable entity)"   // to be discussed

// --------------------------------------------------
// To be discussed
ValueSet:   BMIObservationUnitVS
Id:         bmi-observation-unit-vs
Title:      "BMI Observation Unit Value Set"
Description: "Body mass index observation units for the XpanDH BMI observations."
* insert SetFmmandStatusRule (1, draft)
//* insert UCUMCopyrightForVS
* $ucum#kg/m2 "kilogram per square meter"
* $ucum#% "percent"   // to be discussed
