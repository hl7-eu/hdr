Logical: DischargeDetailsEhn
Id: DischargeDetails
Title: "A.2.8 - Discharge details (eHN)"
Description: """Hospital Discharge Report - Discharge details - A.2.8 eHN
Maturity Level: 0 Draft"""
* dischargeDetails 1..1 BackboneElement "A.2.8 - Discharge details (structured information should be provided, however if not available, at least a summary note should be present)." """Discharge details (structured information should be provided, however if not available, at least a summary note should be present)."""
* dischargeDetails.objectiveFindings 0..1 BackboneElement "A.2.8.1 - Objective findings" """Objective findings"""
* dischargeDetails.objectiveFindings.date 1..1 dateTime "A.2.8.1.1 - Date" """Date and time of the examination at or before discharge"""
* dischargeDetails.objectiveFindings.anthropometricObservations 0..* BackboneElement "A.2.8.1.3 - Anthropometric observations" """Observation of Body weight and height of the patient, BMI, circumference of head, waist, hip, limbs and skin fold thickness.Result of the observation includes text, numeric and coded results of the measurement including measurement units. Multiple observations could be provided."""
* dischargeDetails.objectiveFindings.anthropometricObservations.description 0..1 string "A.2.8.1.3.1 - Result description" """Narrative representation of the observation result and findings."""
* dischargeDetails.objectiveFindings.anthropometricObservations.details 1..1 BackboneElement "A.2.8.1.3.2 - Observation details" """Observation details include code that identifies observation, specification of the observed body structure or specimen, date and time of the specimen collection, observation method or protocol used and other aspects of the observation."""
* dischargeDetails.objectiveFindings.anthropometricObservations.result 1..1 BackboneElement "A.2.8.1.3.3 - Observation result" """Result of the observation including numeric and coded results of the measurement, details about how the tests were done to get the result values, information about reference ranges and result interpretation. Content of the observation result will vary according to the type of the observation."""
* dischargeDetails.objectiveFindings.vitalSigns 0..* BackboneElement "A.2.8.1.4 - Vital signs" """Observation of Vital signs:
• Recommended: systolic and diastolic blood pressure including site of measurement, pulse rate, respiratory rate
• Optional: 02 saturation, temperature, pain (scale), ..."""
* dischargeDetails.objectiveFindings.vitalSigns.description 0..1 string "A.2.8.1.4.1 - Result description" """Narrative representation of the observation result and findings."""
* dischargeDetails.objectiveFindings.vitalSigns.details 1..1 BackboneElement "A.2.8.1.4.2 - Observation details" """Observation details include code that identifies observation, specification of the observed body structure or specimen, date and time of the specimen collection, observation method or protocol used and other aspects of the observation."""
* dischargeDetails.objectiveFindings.vitalSigns.result 1..1 BackboneElement "A.2.8.1.4.3 - Observation result" """Result of the observation including numeric and coded results of the measurement, details about how the tests were done to get the result values, information about reference ranges and result interpretation. Content of the observation result will vary according to the type of the observation."""
* dischargeDetails.objectiveFindings.physicalExamination 0..1 BackboneElement "A.2.8.1.5 - Physical examination" """Physical examination (at discharge) is the process of evaluating objective anatomical findings. Physical examination can be performed through observation, palpation, percussion, and auscultation."""
* dischargeDetails.objectiveFindings.physicalExamination.description 1..1 string "A.2.8.1.5.1 - Observation Note" """A narrative description of the observation. It should be structured by the organ system (e.g. head, neck, body, arms, ...)"""
* dischargeDetails.functionalStatus 0..1 BackboneElement "A.2.8.2 - Functional status" """Functional status can be assessed in several different ways, usually with a focus on the person’s abilities to perform basic activities of daily living (ADL), which include basic self-care such as bathing, feeding, and toileting and instrumental activities of daily living (IADL), which includes activities such as cooking, shopping, and managing one’s own affairs.
For details see: https://paciowg.github.io/functional-status-ig/"""
* dischargeDetails.functionalStatus.description 1..1 string "A.2.8.2.1 - Description" """Need for the patient to be continuously assessed by third parties; functional status may influence decisions about how to plan and administer treatments"""
* dischargeDetails.functionalStatus.onsetDate 0..1 dateTime "A.2.8.2.2 - Onset Date" """Onset date of a condition"""
* dischargeDetails.functionalStatus.assessmetType 0..1 string "A.2.8.2.3 - Functional assessment description" """Description of the functional assessment"""
* dischargeDetails.functionalStatus.assessmentDate 0..1 dateTime "A.2.8.2.4 - Functional assessment date" """Date of the functional assessment"""
* dischargeDetails.functionalStatus.assessmentResult 1..1 CodeableConcept "A.2.8.2.5 - Functional assessment result" """Functional assessment result value"""
* dischargeDetails.dischargeNote 0..1 string "A.2.8.3 - Discharge note" """Discharge summary note"""
