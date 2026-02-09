Logical: AlertsEhn
Id: Alerts
Title: "A.2.2 - Alerts (eHN)"
Description: """Hospital Discharge Report - Alerts - A.2.2 eHN"""
* allergy 1..* Base "A.2.2.1 - Allergy and Intolerance" """A record of allergies and intolerances (primarily to be used for new allergies or intolerances that occurred during the hospital stay)."""
* allergy.description 0..1 string "A.2.2.1.1 - Allergy description" """Textual description of the allergy or intolerance"""
* allergy.typeOfPropensity 0..1 CodeableConcept "A.2.2.1.2 - Type of propensity" """This element describes whether this condition refers to an allergy, non-allergy intolerance, or unknown class of intolerance (not known to be allergy or intolerance)"""
* allergy.manifestation 0..* CodeableConcept "A.2.2.1.3 - Allergy manifestation" """Description of the clinical manifestation of the allergic reaction including date of manifestation and severity. Example: anaphylactic shock, angioedema (the clinical manifestation also gives information about the severity of the observed reaction). Multiple manifestations could be provided."""
* allergy.severity 0..1 CodeableConcept "A.2.2.1.4 - Severity" """Severity of the clinical manifestation of the allergic reaction."""
* allergy.criticality 0..1 CodeableConcept "A.2.2.1.5 - Criticality" """Potential risk for future life-threatening adverse reactions when exposed to a substance known to cause an adverse reaction."""
* allergy.onsetDate 0..1 Base "A.2.2.1.6 - Onset date" """Date of onset of allergy, e.g., date of the first observation of the reaction. Could be also expressed using a date, partial date or life period (childhood, adolescence)."""
* allergy.onsetDate.date 0..1 dateTime "Onset date" """Date of onset of allergy, e.g., date of the first observation of the reaction. Could be also expressed using a date or partial date."""
* allergy.onsetDate.code 0..1 CodeableConcept "Onset date (code)" """Date of onset of allergy, e.g., date of the first observation of the reaction expressed using code for life period (childhood, adolescence)."""
* allergy.endDate 0..1 Base "A.2.2.1.7 - End date" """Date of resolution of the allergy (e.g. when the clinician deemed there is no longer any need to track the underlying condition)"""
* allergy.endDate.date 0..1 dateTime "End date" """Date of resolution of the allergy (e.g. when the clinician deemed there is no longer any need to track the underlying condition)"""
* allergy.endDate.code 0..1 CodeableConcept "End date (code)" """Date of resolution of the allergy expressed by code (e.g. age group)"""
* allergy.status 0..1 CodeableConcept "A.2.2.1.8 - Status" """Current status of the allergy or intolerance, for example, whether it is active, in remission, resolved, and so on …"""
* allergy.certainty 0..1 CodeableConcept "A.2.2.1.9 - Certainty" """Assertion about the certainty associated with a propensity, or potential risk, of a reaction to the identified substance. Diagnostic and/or clinical evidence of condition."""
* allergy.agent 1..1 CodeableConcept "A.2.2.1.10 - Agent or Allergen" """A specific allergen or other agent/substance (drug, food, chemical agent, etc.) to which the patient has an adverse reaction propensity."""
* medicalAlerts 0..* Base "A.2.2.2 - Medical alerts (relevant for the respective hospital stay)" """Medical alerts (relevant for the respective hospital stay)"""
* medicalAlerts.description 0..1 CodeableConcept "A.2.2.2.1 - Healthcare alert description" """A warning, other than included in allergies.
The warning can be entered in code (there are codes for frequently used alerts) but seeing the dynamic nature of the warnings, these alerts will often be entered as free text.
Any clinical information that is imperative to know so that the life or health of the patient does not come under threat.
Example 1: the patient has a rare disease that requires special treatment
Example 2: Airway Alert / Difficult Intubation
Example 3: Diagnoses such as malignant hyperthermia, porphyria, and bleeding disorders; special treatments like anticoagulants or immunosuppressants; implanted devices.
Example 4: transplanted organs illustrate other information that has to be taken into account in a healthcare contact.
Example 5: participation in a clinical trial that has to be taken into account in a healthcare contact."""
