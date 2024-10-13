//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: TNM_T_ClinicalCategoryVS
Id: TNM-T-clinical-category-vs
Title: "Clinical T"
Description: "Primary tumor (T) clinical category"
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS

* ^status = #active
* ^experimental = true
* codes from system $sct where concept is-a $sct#1222585009 "American Joint Committee on Cancer clinical T category allowable value (qualifier value)"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: TNM_T_PathologicalCategoryVS
Id: TNM-T-pathological-category-vs
Title: "Clinical T"
Description: "Primary tumor (T) pathological category"
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS

* ^status = #active
* ^experimental = true
* codes from system $sct where concept is-a $sct#1222589003 "American Joint Committee on Cancer pathological T category allowable value (qualifier value)"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: TNM_T_CategoryVS
Id: TNM-T-category-vs
Title: "Primary tumor T"
Description: "Primary tumor (T) category"
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS

* ^status = #active
* ^experimental = true
* codes from valueset TNM_T_ClinicalCategoryVS
* codes from valueset TNM_T_PathologicalCategoryVS





/*
* $athena#4282467 "Tx"
* $athena#4195922 "Tis"
* $athena#4243213 "T0"
* $athena#4052407 "T1"
* $athena#4194614 "T2"
* $athena#4032012 "T3"
* $athena#4278513 "T4"
* $athena#4127612 "T4a"
* $athena#4129920 "T4b"
* $athena#4129922 "Unknown"
*/