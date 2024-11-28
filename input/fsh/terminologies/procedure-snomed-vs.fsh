// --------------------------------------------------
ValueSet: ProceduresSnomedAbsentUnknownHdrVS
Id: procedures-snomed-absent-unknown-eu-hdr
Title: "Procedures - SNOMED CT + Absent/Unknown - IPS"
Description: "This value set includes codes from SNOMED Clinical Terms®: descendants of 71388002 \\|Procedure (procedure)\\|, excluding [all subtypes of 14734007 \\|Administrative procedure (procedure)\\|, all subtypes of 59524001 \\|Blood bank procedure (procedure)\\|, all subtypes of 389067005 \\|Community health procedure (procedure)\\|, all subtypes of 442006003 \\|Determination of information related to transfusion (procedure)\\|, all subtypes of 225288009 \\|Environmental care procedure (procedure)\\|, all subtypes of 308335008 \\|Patient encounter procedure (procedure)\\|, all subtypes of 710135002 \\|Promotion (procedure)\\|, all subtypes of 389084004 \\|Staff related procedure (procedure)\\|], plus IPS codes for absent/unknown procedures."
* insert SetFmmandStatusRule (1, draft)
* insert SNOMEDCopyrightForVS
* ^experimental = false
* include codes from valueset ProcedureSnomedHdrVS
* include codes from valueset $absent-or-unknown-procedures-uv-ips


// --------------------------------------------------
ValueSet: ProcedureSnomedHdrVS
Id: procedure-snomed-eu-hdr
Title: "Procedure codes: Snomed CT"
Description: "This value set includes codes from SNOMED Clinical Terms®: descendants of 71388002 \\|Procedure (procedure)\\|, excluding [all subtypes of 14734007 \\|Administrative procedure (procedure)\\|, all subtypes of 59524001 \\|Blood bank procedure (procedure)\\|, all subtypes of 389067005 \\|Community health procedure (procedure)\\|, all subtypes of 442006003 \\|Determination of information related to transfusion (procedure)\\|, all subtypes of 225288009 \\|Environmental care procedure (procedure)\\|, all subtypes of 308335008 \\|Patient encounter procedure (procedure)\\|, all subtypes of 710135002 \\|Promotion (procedure)\\|, all subtypes of 389084004 \\|Staff related procedure (procedure)\\|]."
* insert SetFmmandStatusRule (1, draft)
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