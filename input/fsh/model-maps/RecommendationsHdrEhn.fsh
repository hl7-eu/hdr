Logical: RecommendationsHdrEhn
Id: Recommendations
Title: "A.2.9 - Care plan and other recommendations after discharge (eHN)"
Description: """Hospital Discharge Report - Care plan and other recommendations after discharge - A.2.9 eHN"""
* carePlan 0..* PlanOfCare "A.2.9.1 - Care plan" """Care plan after discharge. Multiple care plans could be provided."""
* medicationSummary 1..* MedicationSummary "A.2.9.2 - Medication summary" """Summary information on the medication recommended for the period after discharge, indicating whether the medication is changed or newly started. Compared to previous practices, the overview is supplemented with medication that has been discontinued."""
* otherRecommendations 0..* string "A.2.9.3 - Other recommendations" """Other recommendations (advice) after discharge. Multiple recommendations could be provided. E.g., recommendation to suggest hip replacement, reduce number of cigarettes, stop smoking, increase physical exercises, etc."""
