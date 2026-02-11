// -------------------------------------------------------------------------------					
//  Value Set. File: 					eHDSIConditionPOA.fsh
// -------------------------------------------------------------------------------					
ValueSet: EHDSIConditionPOA
Id: eHDSIConditionPOA
Title: "eHDSI Condition Present On Admission"
Description: "The Value Set is used to assert if a condition is Present on Admission"
* ^experimental = false

* insert SNOMEDCopyrightForVS
* insert SetFmmAndStatusRule ( 1, draft )

* ^url = "http://terminology.ehdsi.eu/ValueSet/eHDSIConditionPOA"

* $sct#278307001 "On admission"
* $sct#277056009 "Hospital acquired"