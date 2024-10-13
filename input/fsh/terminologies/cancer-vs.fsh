// --------------------------------------------------
ValueSet: CancerStageGroupVS
Id: cancer-stageGroup-vs
Title: "Cancer Stage Group: SNOMED CT"
Description: "Identifying codes based on the timing of classification for stage group observations."
* insert SetFmmandStatusRule (1, draft)
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