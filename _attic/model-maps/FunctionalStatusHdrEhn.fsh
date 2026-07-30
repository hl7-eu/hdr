Logical: FunctionalStatusHdrEhn
Id: FunctionalStatus
Title: "A.2.7.2 - Functional status"
Description: """Hospital Discharge Report - Functional status  - A.2.7.2 eHN"""
* description 1..1 string "A.2.8.2.1 - Description" """Need for the patient to be continuously assessed by third parties; functional status may influence decisions about how to plan and administer treatments"""
* onsetDate 0..1 dateTime "A.2.8.2.2 - Onset Date" """Onset date of a condition"""
* assessmentType 0..1 string "A.2.8.2.3 - Functional assessment description" """Description of the functional assessment"""
* assessmentDate 0..1 dateTime "A.2.8.2.4 - Functional assessment date" """Date of the functional assessment"""
* assessmentResult 1..1 CodeableConcept "A.2.8.2.5 - Functional assessment result" """Functional assessment result value"""
