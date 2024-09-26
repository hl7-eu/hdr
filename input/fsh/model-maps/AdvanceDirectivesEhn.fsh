Logical: AdvanceDirectivesEhn
Id: AdvanceDirectives
Title: "A.2.1 - Advance Directives (eHN)"
Description: """Hospital Discharge Report - Advance Directives - A.2.1 eHN"""
* livingWill 1..* BackboneElement "A.2.1.1 - Living will" """Only directives being expressed during current inpatient stay. Multiple records of living wills could be provided."""
* livingWill.date 1..1 dateTime "A.2.1.1.1 - Date and time" """The date and time on which the living will was recorded."""
* livingWill.type 1..1 CodeableConcept "A.2.1.1.2 - Type" """Type of a living will, e.g. Do not resuscitate, donorship statement, power of attorney etc."""
* livingWill.comment 0..1 string "A.2.1.1.3 - Comment" """Comment on the living will."""
* livingWill.conditions 0..* CodeableConcept "A.2.1.1.4 - Related conditions" """The problem or disorder to which the living will applies. Multiple fields could be provided."""
* livingWill.document 1..1 BackboneElement "A.2.1.1.5 - Living will document" """Scanned source document with the living will and the patient's signature, such as a PDF."""
