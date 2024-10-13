// --------------------------------------------------
// To be discussed
ValueSet:   BodyHeightObservationVS
Id:         body-height-observation-vs
Title:      "Body Height Observation Value Set"
Description: "Body height observation codes from the XpanDH body height observations."
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* $sct#1153637007 "Body height (observable entity)"
* $sct#1162419008 "Self reported body height (observable entity)"  // To be discussed

// --------------------------------------------------
// To be discussed
ValueSet:   BodyWeightObservationVS
Id:         body-weight-observation-vs
Title:      "Body Weight Observation Value Set"
Description: "Body weight observation codes from the XpanDH body weight observations."
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* $sct#27113001 "Body weight (observable entity)"
* $sct#784399000 "Self reported body weight (observable entity)"  // To be discussed

// --------------------------------------------------
// To be discussed
ValueSet:   BodyWeightUnitsVS
Id:         body-weight-units-vs
Title:      "Body Weight Observation Value Set"
Description: "Body weight observation codes from the XpanDH body weight observations."
* insert SetFmmandStatusRule (1, draft)
* $ucum#kg "kilogram"
* $ucum#g "gram"

// --------------------------------------------------
// To be discussed
ValueSet:   CircumferenceObservationVS
Id:         circumference-observation-vs
Title:      "Circumference Observation Value Set"
Description: "Circumference observation codes from the XpanDH Circumference observations."
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* $sct#276361009 "Waist circumference (observable entity)"
* $sct#284472007 "Hip circumference (observable entity)"
* $sct#413171006 "Lower limb circumference (observable entity)"  // To be discussed
* $sct#363812007 "Head circumference (observable entity)"  // To be discussed

// --------------------------------------------------
// To be discussed
ValueSet:   SkinfoldThicknessVS
Id:         skinfold-thickness-vs
Title:      "Skinfold Thickness Value Set"
Description: "Skinfold Thickness observation codes from the XpanDH Skinfold Thickness observations."
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* codes from system $sct where concept is-a $sct#165186003 "Skin-fold thickness (observable entity)"
* $sct#1162538001 "Triceps skinfold percentile (observable entity)"
* $sct#1162539009 "Triceps skinfold z score (observable entity)"

// --------------------------------------------------
// To be discussed
ValueSet:   SkinfoldThicknessUnitsVS
Id:         skinfold-thickness-units-vs
Title:      "Skinfold Thickness Units Value Set"
Description: "Skinfold Thickness observation units for the XpanDH Skinfold Thickness observations."
* insert SetFmmandStatusRule (1, draft)
* $ucum#mm "millimeter"
* $ucum#1 "1"

// --------------------------------------------------
// To be discussed
ValueSet:   AnthropometricObservationVS
Id:         anthropometric-observation-vs
Title:      "Anthropometric Observation Value Set"
Description: "Anthropometric observation codes from the XpanDH anthropometric observations."
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* codes from valueset BMIObservationVS
* codes from valueset BodyHeightObservationVS
* codes from valueset BodyWeightObservationVS
* codes from valueset CircumferenceObservationVS
* codes from valueset SkinfoldThicknessVS
* $sct#1153595005 "Child head circumference for age percentile (observable entity)"
