// --------------------------------------------------
ValueSet:     EncounterClassHdrVS
Id:	          encounterClass-vs-eu-hdr
Title:	      "Encounter Class Value Set"
Description:  """Hospital Discharge Report Encounter Class specifies a general class of inpatient encounter as being accute, nonaccute, emergency, short stay ... """

* insert SetFmmandStatusRule (1, draft)
* ^experimental = true

* $v3-ActCode#IMP	    "inpatient encounter"  // should we have this general category ?
* $v3-ActCode#ACUTE	    "inpatient acute"
* $v3-ActCode#NONAC	    "inpatient non-acute"
* $v3-ActCode#OBSENC	"observation encounter"
//* $v3-ActCode#PRENC	    "pre-admission"  // should we have pre-admission if this is value set for hospital discharge report?
* $v3-ActCode#SS	    "short stay"


// --------------------------------------------------
ValueSet:     EncounterTypeHdrVS
Id:	     encounter-type-vs-eu-hdr
Title:      "In-patient Encounter Type Value Set"
Description:  """Hospital Discharge Report Encounter Type allows to classify encounter using general type of care provision regimen during the inpatient encounter. Value set includes concepts from the SNOMED CT descendants of 225351009 (Care provision regime) but needs to be further dicsussed"""

* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
* insert SNOMEDCopyrightForVS
* include codes from system $sct where concept is-a #225351009 "Care provision regime"

// --------------------------------------------------
ValueSet:     AdmissionUrgencyHdrVS
Id:	     admission-urgency-vs-eu-hdr
Title:      "Admission Urgency Value Set"
Description:  """Hospital Discharge Report Admission Urgency value set includes selected codes from HL7 v3-ActPriority code system."""
* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
* $v3-ActPriorityy#EL "elective"
* $v3-ActPriorityy#EM "emergency"
* $v3-ActPriorityy#R "routine"
* $v3-ActPriorityy#UR "urgent"

// --------------------------------------------------
ValueSet:     ConditionHdrVS
Id:	     condition-vs-eu-hdr
Title:      "Condition Value Set"
Description:  """Hospital Discharge Report Condition value set includes selected codes from recommended EU code systems for health conditions (WHO-ICD-10, SNOMED CT and Orphacodes)."""
* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
* insert SNOMEDCopyrightForVS
* codes from system $icd10
/* * codes from system $orpha */
* codes from system $sct where concept is-a #404684003 "Clinical finding"
* codes from system $sct where concept is-a #71388002 "Procedure"
* codes from system $sct where concept is-a #243796009 "Context dependent categories"
* codes from system $sct where concept is-a #272379006 "Events"

// --------------------------------------------------
ValueSet:     ConditionMandatoryHdrVS
Id:	     condition-mandatory-vs-eu-hdr
Title:      "Mandatory Condition Value Set"
Description:  """Hospital Discharge Report Mandatory Condition value set includes selected codes from recommended EU code systems for health conditions (WHO-ICD-10, SNOMED CT and Orphacodes) and IPS Absent and Unknown Data."""
* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
* codes from valueset ConditionHdrVS
/* * $absent-unknown-uv-ips#no-problem-info "No information about problems"
* $absent-unknown-uv-ips#no-known-problems "No known problems" */
* $sct#385432009 "Not applicable"

// --------------------------------------------------
/* ValueSet:     POAIndicatorHdrVS
Id:	     poa-indicator-vs-eu-hdr
Title:      "Condition Present on Admission (POA) Value Set"
Description:  """Hospital Discharge Report Condition Present on Admission value set includes codes from Present on Admission code system."""
* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
* $poa#POA "Present on admission"
* $poa#HAC "Hospital acquired condition"
* $poa#NA "Not applicable or unknown" */

// --------------------------------------------------
ValueSet:     TreatedHdrVS
Id:	     treated-vs-eu-hdr
Title:      "Treatment Class Value Set"
Description: "Value set for category of treatement of the conditoin during encounter."
* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
* insert SNOMEDCopyrightForVS
* $sct#69845001 "Received therapy or drug for"
* $sct#25265005 "Did not receive therapy or drug for"


// --------------------------------------------------
ValueSet:   AdmissionVoluntaryStatusVS
Id:         admission-voluntary-status-vs
Title:      "Encounter Voluntary Status Value Set"
Description: "Value set of voluntary nature of the encounter."
* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
* insert SNOMEDCopyrightForVS
* $sct#135848002 "Voluntary admission"
* $sct#135847007 "Involuntary admission"
* $sct#70755000 "Hospital admission, by legal authority"


// --------------------------------------------------
// To be discussed
ValueSet:   BMIObservationVS
Id:         bmi-observation-vs
Title:      "BMI Observation Value Set"
Description: "Body mass index observation codes from the XpanDH BMI observation."
* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
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
* ^experimental = true
//* insert UCUMCopyrightForVS
* $ucum#kg/m2 "kilogram per square meter"
* $ucum#% "percent"   // to be discussed

// --------------------------------------------------
// To be discussed
ValueSet:   BodyHeightObservationVS
Id:         body-height-observation-vs
Title:      "Body Height Observation Value Set"
Description: "Body height observation codes from the XpanDH body height observations."
* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
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
* ^experimental = true
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
* ^experimental = true
* $ucum#kg "kilogram"
* $ucum#g "gram"

// --------------------------------------------------
// To be discussed
ValueSet:   CircumferenceObservationVS
Id:         circumference-observation-vs
Title:      "Circumference Observation Value Set"
Description: "Circumference observation codes from the XpanDH Circumference observations."
* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
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
* ^experimental = true
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
* ^experimental = true
* $ucum#mm "millimeter"
* $ucum#1 "1"


// --------------------------------------------------
// To be discussed
ValueSet:   AnthropometricObservationVS
Id:         anthropometric-observation-vs
Title:      "Anthropometric Observation Value Set"
Description: "Anthropometric observation codes from the XpanDH anthropometric observations."
* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
* insert SNOMEDCopyrightForVS
* codes from valueset BMIObservationVS
* codes from valueset BodyHeightObservationVS
* codes from valueset BodyWeightObservationVS
* codes from valueset CircumferenceObservationVS
* codes from valueset SkinfoldThicknessVS
* $sct#1153595005 "Child head circumference for age percentile (observable entity)"

// --------------------------------------------------
// To be discussed
ValueSet:   AllVitalSignsObservationVS
Id:         vital-signs-observation-vs
Title:      "Vital Signs Observation Value Set"
Description: "The vital sign obsevrvation codes from the XpanDH Vital Signs."
* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
* insert SNOMEDCopyrightForVS

* codes from valueset AnthropometricObservationVS
* $sct#364075005 "Heart rate (observable entity)"
* $sct#86290005 "Respiratory rate (observable entity)"
* $sct#75367002 "Blood pressure (observable entity)"  // 271649006 "Systolic blood pressure (observable entity)"  271650006 | Diastolic blood pressure (observable entity)
* $sct#386725007 "Body temperature (observable entity)"
* $sct#103228002 "Hemoglobin saturation with oxygen (observable entity)"

// --------------------------------------------------
/* ValueSet: AssessmentObservationCategoryVS
Id: assessment-observation-category-vs
Title: "Xpandh Assessment Observation Category"
Description: "Used to classify the context of a survey, screening or assessment for assessment observations and may be used to assist with indexing and searching for appropriate instances."
* ^status = #active
* ^experimental = false
//* ^date = "2022-09-29"
//* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* include codes from system AssessmentCategoryXpanDHCS
//* include codes from system $observation-category */


// --------------------------------------------------
ValueSet: FunctionalAssessmentScalesVS
Id: functional-assessment-scales-vs
Title: "Xpandh Functional Assessment Scales"
Description: "Used to specify type of functional assessment scale. May be used to assist with indexing and searching for appropriate instances."
* ^status = #active
* ^experimental = false
* $sct#719091001 "World Health Organization Disability Assessment Schedule 2.0 (assessment scale)"  // WHODAS (World Health Organization Disability Assessment Schedule) 2.0
* $sct#273302005 "Barthel index (assessment scale)"
* $sct#443364002 "Modified Barthel index of activities of daily living (assessment scale)"


/* // --------------------------------------------------
ValueSet: WhodasResultVS
Id: whodas-result-vs
Title: "Xpandh WHODAS Result Valueset"
Description: "Used to specify WHODAS Disability Assessment Schedule 2.0 functional assessment result codes."
* ^status = #active
* ^experimental = false
* $whodas#0 "None"
* $whodas#1 "Mild"
* $whodas#2 "Moderate"
* $whodas#3 "Severe"
* $whodas#4 "Extreme" */

/* // --------------------------------------------------
ValueSet: WHODASDomainVS
Id: whodas-domain-vs
Title: "Xpandh WHODAS Domain Valueset"
Description: "Used to specify WHODAS Disability Assessment Schedule 2.0 assessment domains."
* ^status = #active
* ^experimental = false
* $whodas#D1 "Cognition"
* $whodas#D2 "Mobility"
* $whodas#D3 "Self care"
* $whodas#D4 "Getting along"
* $whodas#D5 "Life activities"
* $whodas#D6 "Participation" */

/* // --------------------------------------------------
ValueSet: WHODASCodeVS
Id: whodas-code-vs
Title: "Xpandh WHODAS Codes Valueset"
Description: "Used to specify WHODAS Disability Assessment Schedule 2.0 assessment codes."
* ^status = #active
* ^experimental = false
* include codes from system $whodas where concept.level = "1" */

// --------------------------------------------------
ValueSet: CancerStageGroupVS
Id: cancer-stageGroup-vs
Title: "Cancer Stage Group: SNOMED CT"
Description: "Identifying codes based on the timing of classification for stage group observations."
* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
* insert SNOMEDCopyrightForVS
* ^experimental = false

* $sct#399390009	"TNM stage grouping"
* $sct#399537006	"Clinical TNM stage grouping"
* $sct#399588009	"Pathologic TNM stage grouping"

// --------------------------------------------------
ValueSet: ObservationCodesPrimaryTumorVS
Id: mcode-observation-codes-primary-tumor-vs
Title: "Observation Codes for Primary Tumor Category"
Description: "Identifying codes based on the timing of classification for primary tumor (T) staging observations."
* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
* insert LOINCCopyrightForVS
* ^experimental = false
* $loinc#21905-5 "Primary tumor.clinical [Class] Cancer"
* $loinc#21899-0 "Primary tumor.pathology Cancer"
* $loinc#21911-3 "Primary tumor.other [Class] Cancer"
// Keep in sync with the intro .md page for this ValueSet, which lists these codes.

// --------------------------------------------------
ValueSet: ObservationCodesRegionalNodesVS
Id: mcode-observation-codes-regional-nodes-vs
Title: "Observation Codes for Regional Node Category"
Description: "Identifying codes based on the timing of classification for regional node (N) staging observations."
* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
* insert LOINCCopyrightForVS
* ^experimental = false
* $loinc#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* $loinc#21900-6 "Regional lymph nodes.pathology [Class] Cancer"
* $loinc#21912-1 "Regional lymph nodes.other [Class] Cancer"
// Keep in sync with the intro .md page for this ValueSet, which lists these codes.

// --------------------------------------------------
ValueSet: ObservationCodesDistantMetastasesVS
Id: mcode-observation-codes-distant-metastases-vs
Title: "Observation Codes for Distant Metastases Category"
Description: "Identifying codes based on the timing of classification for distant metastases (M) staging observations."
* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
* insert LOINCCopyrightForVS
* ^experimental = false
* $loinc#21907-1 "Distant metastases.clinical [Class] Cancer"
* $loinc#21901-4 "Distant metastases.pathology [Class] Cancer"
* $loinc#21913-9 "Distant metastases.other [Class] Cancer"
// Keep in sync with the intro .md page for this ValueSet, which lists these codes.

// --------------------------------------------------
ValueSet: CancerStageGradingVS
Id: cancer-stage-grading-vs
Title: "Cancer Stage Grading: Snomed CT"
Description: "Identifying codes based on the timing of classification for stage group observations."
* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
* insert SNOMEDCopyrightForVS
* ^experimental = false
* codes from system $sct where concept is-a $sct#1222598000 "American Joint Committee on Cancer clinical grade allowable value (qualifier value)"
* codes from system $sct where concept is-a $sct#1222599008 "American Joint Committee on Cancer pathological grade allowable value (qualifier value)"

/*
* $athena#1634371 "Grade-1"
* $athena#1634752 "Grade-2"
* $athena#1633749 "Grade-3"
* $athena#1635587 "Grade-H"
* $athena#1634085 "Grade-L"
*/

// --------------------------------------------------
ValueSet: ProcedureSnomedHdrVS
Id: procedure-snomed-vs-eu-hdr
Title: "Procedure codes: Snomed CT"
Description: "This value set includes codes from SNOMED Clinical Terms®: descendants of 71388002 \\|Procedure (procedure)\\|, excluding [all subtypes of 14734007 \\|Administrative procedure (procedure)\\|, all subtypes of 59524001 \\|Blood bank procedure (procedure)\\|, all subtypes of 389067005 \\|Community health procedure (procedure)\\|, all subtypes of 442006003 \\|Determination of information related to transfusion (procedure)\\|, all subtypes of 225288009 \\|Environmental care procedure (procedure)\\|, all subtypes of 308335008 \\|Patient encounter procedure (procedure)\\|, all subtypes of 710135002 \\|Promotion (procedure)\\|, all subtypes of 389084004 \\|Staff related procedure (procedure)\\|]."
* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
* insert SNOMEDCopyrightForVS
* ^experimental = false
* codes from system $sct where concept descendent-of $sct#71388002 "Procedure (procedure)"
* exclude codes from system $sct where concept is-a #14734007 "Administrative procedure (procedure)"
* exclude codes from system $sct where concept is-a #59524001 "Blood bank procedure (procedure)"
* exclude codes from system $sct where concept is-a #389067005 "Community health procedure (procedure)"
* exclude codes from system $sct where concept is-a #442006003 "Determination of information related to transfusion (procedure)"
* exclude codes from system $sct where concept is-a #225288009 "Environmental care procedure (procedure)"
* exclude codes from system $sct where concept is-a #308335008 "Patient encounter procedure (procedure)"
* exclude codes from system $sct where concept is-a #710135002 "Promotion (procedure)"
* exclude codes from system $sct where concept is-a #389084004 "Staff related procedure (procedure)"


ValueSet: ProceduresSnomedAbsentUnknownHdrVS
Id: procedures-snomed-absent-unknown-vs-eu-hdr
Title: "Procedures - SNOMED CT + Absent/Unknown - IPS"
Description: "This value set includes codes from SNOMED Clinical Terms®: descendants of 71388002 \\|Procedure (procedure)\\|, excluding [all subtypes of 14734007 \\|Administrative procedure (procedure)\\|, all subtypes of 59524001 \\|Blood bank procedure (procedure)\\|, all subtypes of 389067005 \\|Community health procedure (procedure)\\|, all subtypes of 442006003 \\|Determination of information related to transfusion (procedure)\\|, all subtypes of 225288009 \\|Environmental care procedure (procedure)\\|, all subtypes of 308335008 \\|Patient encounter procedure (procedure)\\|, all subtypes of 710135002 \\|Promotion (procedure)\\|, all subtypes of 389084004 \\|Staff related procedure (procedure)\\|], plus IPS codes for absent/unknown procedures."
* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
* insert SNOMEDCopyrightForVS
* ^experimental = false
* include codes from valueset ProcedureSnomedHdrVS
/* * include codes from valueset $AbsentOrUnknownProceduresUvIps */


ValueSet: MedicalDevicesSnomedCtHdrVS
Id: medical-devices-vs-eu-hdr
Title: "Medical Devices (SNOMED CT) - Xpandh"
Description: "This value set includes codes from SNOMED Clinical Terms®: all descendants of 49062001 \\|Device (physical object)\\|."
* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
* insert SNOMEDCopyrightForVS
* ^experimental = false
* include codes from system $sct where concept descendent-of #49062001 "Device (physical object)"

ValueSet: MedicalDevicesSnomedAbsentUnknownHdrVS
Id: medical-devices-snomed-absent-unknown-vs-eu-hdr
Title: "Medical Devices - SNOMED CT + Absent/Unknown - IPS"
Description: "This value set includes codes from SNOMED Clinical Terms (SNOMED CT®) that are included in: all descendants of 49062001 \\|Device (physical object)\\|, plus IPS codes for absent/unknown devices."
* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
* insert SNOMEDCopyrightForVS
* ^experimental = false
* include codes from valueset MedicalDevicesSnomedCtHdrVS
/* * include codes from valueset $AbsentOrUnknownDevicesUvIps */

ValueSet: AllergyIntoleranceSubstancesHdrVS
Id: allergy-intolerance-substances-vs-eu-hdr
Title: "Allergy Intolerance Substances"
Description: "This value set includes codes from SNOMED Clinical Terms (SNOMED CT®) that are included in: all descendants of 105590001 \\|Substance\\|, 373873005 \\|Pharmaceutical / biologic product\\|, #420134006 \\|Propensity to adverse reaction\\|."

* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
* insert SNOMEDCopyrightForVS
* ^experimental = false
* include codes from system $sct where concept descendent-of #105590001 "Substance (substance)"
* include codes from system $sct where concept descendent-of #373873005 "Pharmaceutical / biologic product (product)"
* include codes from system $sct where concept descendent-of #420134006 "Propensity to adverse reaction (finding)"

ValueSet: AllergyIntoleranceHdrVS
Id: allergy-intolerance-vs-eu-hdr
Title: "Allergy Intolerance - Xpandh"
Description: "Xpandh allergy intolerance codes value set. This value set includes codes from SNOMED Clinical Terms®: all descendants of 373873005 \\|Pharmaceutical / biologic product (product)\\|; all descendants of 105590001 \\|Substance (substance)\\|; all descendants of 418038007 \\|Propensity to adverse reactions to substance (finding)\\| plus codes for absent and unknown allergies."
* insert SetFmmandStatusRule (1, draft)
* ^experimental = true
* insert SNOMEDCopyrightForVS
* ^experimental = false
* include codes from valueset AllergyIntoleranceSubstancesHdrVS
/* * include codes from valueset $AbsentOrUnknownAllergiesUvIps */