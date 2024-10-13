// --------------------------------------------------
ValueSet: AssessmentObservationCategoryVS
Id: assessment-observation-category-vs
Title: "Xpandh Assessment Observation Category"
Description: "Used to classify the context of a survey, screening or assessment for assessment observations and may be used to assist with indexing and searching for appropriate instances."
* ^status = #active
* ^experimental = false
//* ^date = "2022-09-29"
//* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License"
* include codes from system AssessmentCategoryXpanDHCS
//* include codes from system $observation-category