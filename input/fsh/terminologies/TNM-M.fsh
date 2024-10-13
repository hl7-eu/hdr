//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: TNM_M_ClinicalCategoryVS
Id: TNM-M-clinical-category-vs
Title: "Clinical M"
Description: "Distant metastazis (M) clinical category"
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* ^status = #active
* ^experimental = true
* codes from system $sct where concept is-a $sct#1222587001 "American Joint Committee on Cancer clinical M category allowable value (qualifier value)"
/*
* $sct#1229901006 "cM0"
* $sct#1229903009 "cM1"
*/

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: TNM_M_PathologicalCategoryVS
Id: TNM-M-pathologycal-category-vs
Title: "Pathological M"
Description: "Distant metastazis (M) pathological category"
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* ^status = #active
* ^experimental = true
* codes from system $sct where concept is-a $sct#1222591006 "American Joint Committee on Cancer pathological M category allowable value (qualifier value)"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: TNM_M_CategoryVS
Id: TNM-M-category-vs
Title: "TNM M Category"
Description: "Distant metastazis (M) category"
//-------------------------------------------------------------------------------------------
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* ^status = #active
* ^experimental = true
* codes from valueset TNM_M_ClinicalCategoryVS
* codes from valueset TNM_M_PathologicalCategoryVS





/*
* $athena#4149726 "M0"
* $athena#4205430 "M1"
* $athena#4129922 "unknown"

* $sct#1229916009 "pM1"
*/






