//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: TNM_N_ClinicalCategoryVS
Id: TNM-N-clinical-category-vs
Title: "Clinical N"
Description: "Regional lymph nodes (N) clinical category"
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS

* ^experimental = true
* codes from system $sct where concept is-a $sct#1222588006 "American Joint Committee on Cancer clinical N category allowable value (qualifier value)"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: TNM_N_PathologicalCategoryVS
Id: TNM-N-pathological-category-vs
Title: "Pathological N"
Description: "Regional lymph nodes (N) pathological category"
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS

* ^experimental = true
* codes from system $sct where concept is-a $sct#1222590007 "American Joint Committee on Cancer pathology N category allowable value (qualifier value)"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: TNM_N_CategoryVS
Id: TNM-N-category-vs
Title: "TNM N Category"
Description: "Regional lymph nodes (N) category"
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS

* ^experimental = true
* codes from valueset TNM_N_ClinicalCategoryVS
* codes from valueset TNM_N_PathologicalCategoryVS




/*
* $athena#4195718 "Nx"
* $athena#4266674 "N0"
* $athena#4203608 "N1"
* $athena#4263599 "N2"
* $athena#4135247 "N2a"
* $athena#4119012 "N2b"
* $athena#4118508 "N2c"
* $athena#4239307 "N3"
* $athena#4240556 "N3a"
* $athena#4240557 "N3b"
* $athena#4129922 "unknown"
*/
/*
* $sct#1229966003 "cNx"
* $sct#1229967007 "cN0"
* $sct#1229973008 "cN1"
* $sct#1229978004 "cN2"
* $sct#1229981009 "cN2a"
* $sct#1229982002 "cN2b"
* $sct#1229983007 "cN2c"
* $sct#1229984001 "cN3"
* $sct#1229985000 "cN3a"
* $sct#1229986004 "cN3b"
* $sct#1229987008 "cN3c"
*/