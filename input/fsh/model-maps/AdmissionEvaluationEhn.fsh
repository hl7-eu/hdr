Logical: AdmissionEvaluationEhn
Id: AdmissionEvaluation
Title: "A.2.4 - Admission evaluation (eHN)"
Description: """Hospital Discharge Report - Admission evaluation - A.2.4 eHN
Maturity Level: 0 Draft"""
* objectiveFindings 0..1 BackboneElement "A.2.4.1 - Objective findings" """Objective findings"""
* objectiveFindings.date 0..1 dateTime "A.2.4.1.1 - Date and time" """Date and time of the examination"""
* objectiveFindings.anthropometricObservations 0..* BackboneElement "A.2.4.1.3 - Anthropometric observations" """Observation of Body weight and height of the patient, BMI, circumference of head, waist, hip, limbs and skin fold thickness.
Result of the observation includes text, numeric and coded results of the measurement including measurement units. Multiple observations could be provided."""
* objectiveFindings.anthropometricObservations.details 0..1 BackboneElement "A.2.4.1.3.1 - Observation details" """Observation details include code that identifies observation, specification of the observed body structure or specimen, date and time of the specimen collection, observation method or protocol used and other aspects of the observation.."""
* objectiveFindings.anthropometricObservations.result 1..1 BackboneElement "A.2.4.1.3.2 - Observation result" """Result of the observation including numeric and coded results of the measurement, details about how the tests were done to get the result values, information about reference ranges and result interpretation. Content of the observation result will vary according to the type of the observation."""
* objectiveFindings.vitalSigns 0..* BackboneElement "A.2.4.1.4 - Vital signs" """Vital signs observation:"""
* objectiveFindings.vitalSigns.description 1..1 string "A.2.4.1.4.1 - Result description" """Narrative representation of the observation result and findings."""
* objectiveFindings.vitalSigns.details 1..1 BackboneElement "A.2.4.1.4.2 - Observation details" """Observation details include code that identifies observation, specification of the observed body structure or specimen, date and time of the specimen collection, observation method or protocol used and other aspects of the observation."""
* objectiveFindings.vitalSigns.result 1..1 BackboneElement "A.2.4.1.4.3 - Observation result" """Result of the observation including numeric and coded results of the measurement, details about how the tests were done to get the result values, information about reference ranges and result interpretation. Content of the observation result will vary according to the type of the observation."""
* objectiveFindings.physicalExamination 0..1 BackboneElement "A.2.4.1.5 - Physical examination" """Physical examination is the process of evaluating objective anatomical findings. It is typically the first diagnostic measure performed after taking the patient's history, which allows an initial assessment of symptoms and is useful for determining the differential diagnoses and further steps. Physical examination can be performed through observation, palpation, percussion, and auscultation."""
* objectiveFindings.physicalExamination.note 1..1 string "A.2.4.1.5.1 - Observation Note" """A narrative description of the observation. It should be structured by the organ system (e.g. head, neck, body, arms, ...)"""
* functionalStatus 0..1 BackboneElement "A.2.4.2 - Functional status" """Functional status"""
* functionalStatus.description 1..1 string "A.2.4.2.1 - Description" """Need for the patient to be continuously assessed by third parties; functional status may influence decisions about how to plan and administer treatments"""
* functionalStatus.onsetDate 0..1 dateTime "A.2.4.2.2 - Onset Date" """Onset date of a condition"""
* functionalStatus.assessmentType 1..1 CodeableConcept "A.2.4.2.3 - Functional assessment description" """Description of the functional assessment"""
* functionalStatus.assessmentDate 0..1 dateTime "A.2.4.2.4 - Functional assessment date" """Date of the functional assessment"""
* functionalStatus.assessmentResult 1..1 CodeableConcept "A.2.4.2.5 - Functional assessment result" """Functional assessment result value"""
