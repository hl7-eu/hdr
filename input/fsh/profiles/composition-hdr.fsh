Profile: CompositionEuHdr
// Parent: http://hl7.org/fhir/StructureDefinition/clinicaldocument
Parent: Composition
Id: composition-eu-hdr
Title: "Composition: Hospital Discharge Report"
Description: "Clinical document used to represent a Hospital Discharge Report (HDR) for the scope of this guide."
* . ^short = "Hospital Discharge Report composition"
* . ^definition = "Hospital Discharge Report composition. \r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."

/* HK: Is order still relevant in case of discharge report?
* extension contains $composition-basedOn-order-or-requisition named basedOn-order-or-requisition 0..*
* extension[basedOn-order-or-requisition]
* extension[basedOn-order-or-requisition].valueReference only Reference ( ServiceRequestEuHdr )
*/

* extension contains $information-recipient named information-recipient 0..*
/* //HK: Commented, because causing error during build
* extension[information-recipient]
  * ^slicing.discriminator[0].type = #type
  * ^slicing.discriminator[0].path = "valueReference.resolve()"
  * ^slicing.ordered = false
  * ^slicing.rules = #open
  * ^short = "Sliced per type of recipient"
  * ^definition = "Sliced per type of recipient"
*/
* extension[information-recipient] contains practictionerRole 0..*
* extension[information-recipient][practictionerRole].valueReference only Reference ( PractitionerRole )


//* extension[composition-clinicaldocument-versionNumber]

* identifier ^short = "HDR business identifier"
* status ^short = "HDR status"
* type only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* type ^short = "Kind of composition (\"Hospital Discharge Report\")"
* type ^definition = "Specifies that this composition refer to a Hospital Discharge Report"
* type = $loinc#34105-7 "Hospital Discharge summary"
* subject only Reference(PatientEuHdr)
* subject 1..1
* subject ^definition = "Who or what the composition is about. \r\nIn general a composition can be about a person, (patient or healthcare practitioner), a device (e.g. a machine) or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure).\r\nFor the hdr the subject is always the patient."

// * encounter only Reference (Encounter)

/* * encounter only Reference (Encounter or InpatientEncounter) */

* date ^short = "HDR date"
* author ^short = "Who and/or what authored the Hospital Discharge Report"
* author ^definition = "Identifies who is responsible for the information in the Hospital Discharge Report, not necessarily who typed it in."
  * ^slicing.discriminator[0].type = #type
  * ^slicing.discriminator[0].path = "valueReference.resolve()"
  * ^slicing.ordered = false
  * ^slicing.rules = #open
  * ^short = "Sliced per type of author"
  * ^definition = "Sliced per type of author"
* author contains practictionerRole 0..*
* author[practictionerRole] only Reference ( PractitionerRole )

* title ^short = "Hospital Discharge Report"
* title ^definition = "Official human-readable label for the composition.\r\n\r\nFor this document should be \"Hospital Discharge Report\" or any equivalent translation"
* attester.mode ^short = "The type of attestation"
* attester.time ^short = "When the composition was attested"
* attester.party ^short = "Who attested the composition"

* section 1..
* section ^slicing.discriminator[0].type = #value
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Sections composing the Hospital Discharge Report"
* section ^definition = "The root of the sections that make up the Hospital Discharge Report composition."

// -------------------------------------
// Admission Evaluation Section 0 … 1 R
// -------------------------------------

* section contains admissionEvaluationSection ..1
* section[admissionEvaluationSection]
  * insert SectionComRules (
    Hospital Admission evaluation,
      Hospital Admission evaluation,
      $loinc#67852-4 "Hospital Admission evaluation note")   // SHORT, DESC, CODE
  * ^comment = "Admission evaluation should be reported only exceptionally, if it is relevant to ensure continuity of care."
 
  * insert EvaluationSubSectionRules
 
  * entry 0..

// -------------------------------------
// Hospital Course Section 1..1
// -------------------------------------
* section contains sectionHospitalCourse 1..1
* section[sectionHospitalCourse]
  * insert SectionComRules (
    HDR Hospital course,
    Hospital course describes the sequence of events from admission to discharge in a hospital facility.,
    $loinc#8648-8 "Hospital course Narrative")   // CODE
  * ^short = "Significant information about course of hospital stay"
  * ^definition = "This section includes basic information about hospital staty (encounter), diagnostic summary in narrative form, pharmacotherapy, major procedures, medical devices, significant findings during hospital stay and clinical synthesis."
  * section
    * ^slicing.discriminator[+].type = #type
    * ^slicing.discriminator[=].path = "resolve()"
    * ^slicing.ordered = false
    * ^slicing.rules = #open
  * entry 1..1
/*   * entry only Reference(Encounter) // EncounterEuHdr */

  * section contains diagnosticSummaryDescription 1..1
  * section[diagnosticSummaryDescription]
    * insert SectionComRules (
      Problem specification in narrative form,
      All problems/diagnoses that affect care during the inpatient case or are important to be recorded to ensure continuity of care. The diagnostic summary differentiates\, in accordance with the international recommendation\, between problems treated during hospital stay and other (untreated\) problems. Treated problems are problems that were the subject of diagnostics\, therapy\, nursing\, or (continuous\) monitoring during the hospitalisation. Furthermore problems could be divided into three categories: problems present on admission (POA\)\, conditions acquired during hospital stay (HAC\) and problems that cannot be classified as being of any of the two (N/A\). The diagnostic summary contains all conditions as they were recognised at the end of hospitalisation\, after all examinations. This section contains concise\, well specified\, codeable\, summary of problems. Problems are ordered by importance (main problems first\) during hospital stay. Description of the problem might be completed with additional details in the medical history section and/or in the Synthesis section.	,
      $sct#721981007)
    * entry ..0
    //* entry only Reference(ConditionEncounter)
    * section ..0

  * section contains significantProcedures 1..1
  * section[significantProcedures]
    * insert SectionComRules (
      Significant procedures,
      Significant surgical and non-surgical procedures performed during hospitalisation which are significant for continuity of care\, e.g. surgeries and other \"instrumental\"interventions (endoscopic\, intravascular\)\, chemotherapy\, radiotherapy\, purification methods (dialysis\, hemoperfusion\)\, circulation support methods (counterpulsation\, etc.\)\, administration of blood derivatives or others.\r\nThis section does not include purely diagnostic procedures (MRI\, CT\, etc.\). If no significant performance has been performed\, this fact must be explicitly stated using the IPS Absent and Unknown Data. ,
      $sct#721981007)
    * entry 1..
    * entry only Reference(Procedure)
    * section ..0

  * section contains medicalDevices 1..1
  * section[medicalDevices]
    * insert SectionComRules (
      Medical devices and implants,
      Implants and used medical devices that affected or may affect the provision of health services (diagnosis and treatment\). Also medical devices explanted\, or its use was stopped during hospitalisation. If the section is blank\, the reason must be explicitly stated using the IPS Absent and Unknown Data coding system. ,
      $sct#1184586001 "Medical device document section (record artifact\)")
    * entry 1..
    * entry only Reference(Device)
    * section ..0

  * section contains medications 1..1
  * section[medications]
    * insert SectionComRules (
      Pharmacotherapy,
      Selected drug treatment during hospitalisation. Medicinal products that were administered during hospitalisation and whose administration has already been discontinued before discharge. Only products which are important for continuity of care (antibiotics other than completely routine\, corticosteroids in high doses\, etc.\) will be listed. Products which administration will continue after discharge will be also recorder in the Medication summary section.
Medicinal products\, the administration of which was started during hospitalisation but is also recommended after discharge\, will be listed in the summary table in the recommendation section. ,
      $sct#1003606003 "Medication history section (record artifact\)")
    * entry 1..
    * entry only Reference(MedicationStatement)
    * section ..0

  * section contains significantResults 0..1
  * section[significantResults]
    * insert SectionComRules (
      Significant Observation Results,
      Results of significant functional\, diagnostic\, and imaging examinations to ensure continuity of care\, performed during hospitalisation. Results of examinations ordered but not yet delivered should be presented separately from results already delivered.,
      $sct#423100009 "Results section (record artifact\)")
    * entry 1..
    * entry only Reference(Observation) //  or ObservationResultsRadiologyUvIps or ObservationResultsLaboratoryEu)
    * section ..0

  * section contains synthesis 1..1
  * section[synthesis]
    * insert SectionComRules (
      Synthesis,
      This section provides clinical synthesis (e.g. description of reasons and course of hospital stay\) clustered by managed conditions. Clinical synthesis may include clinical reasoning (differential diagnostics\, explanation of clinical context\) in clinically complex conditions.,
      $sct#424836000 "Assessment section (record artifact\)")
    * entry ..0

    * section ^slicing.discriminator[0].type = #value
    * section ^slicing.discriminator[0].path = "code"
    * section ^slicing.ordered = false
    * section ^slicing.rules = #open
    * section ^short = "Subsections of the Hospital Discharge Report Synthesis"

    * section contains problemSynthesis 1..
    * section[problemSynthesis]
      * insert SectionComRules (
      Problem synthesis,
      Summary description of the reason and course of hospitalisation for a specific problem.,
      $sct#423016009 "Clinical statement entry (record artifact\)")
      * entry only Reference(Condition)
    * section contains clinicalReasoning 1..
    * section[clinicalReasoning]
      * insert SectionComRules (
      Clinical reasoning,
      The clinical summary can be concluded with a clinical consideration (diff. diagnosis\, explanation of context\, etc.\) for clinically complex conditions.,
      $sct#424836000 "Assessment section (record artifact\)")
      * entry only Reference(ClinicalImpression)


// -------------------------------------
// Discharge Details Section 1 … 1 R
// -------------------------------------
* section contains dischargeDetails 1..1
* section[dischargeDetails]
  * insert SectionComRules (
      Discharge details,
      The hospital discharge status or disposition of the patient having a hospitalization.,
      $loinc#8650-4 "Hospital discharge disposition Narrative")
  * insert EvaluationSubSectionRules


// -------------------------------------
// Patient History Section 0 … 1 R
// ToDo: Review
// -------------------------------------

* section contains patientHxSection ..1
* section[patientHxSection]
  * insert SectionComRules (
    Patient History Section,
    This Section describes all aspects of the medical history of the patient even if not pertinent to the current procedure\, and may include chief complaint\, past medical history\, social history\, family history\, surgical or procedure history\, medication history\, and other history information. The history may be limited to information pertinent to the current procedure or may be more comprehensive. The history may be reported as a collection of random clinical statements or it may be reported categorically. Categorical report formats may be divided into multiple subsections including Past Medical History\, Social History.,
    $loinc#11329-0 )



/*
// -------------------------------------
// Admission Medications Section 0 … 1 R
// -------------------------------------
* section contains sectionAdmissionMedications ..1

* section[sectionAdmissionMedications]
  * insert SectionComRules (
    Admission Medications,
      Admission Medications,
      http://loinc.org#42346-7  )   // CODE
  * entry 0..
  * entry only Reference(MedicationStatement
                          or MedicationRequest
                          or MedicationAdministration
                          or MedicationDispense
                          or DocumentReference  )

  * insert SectionEntrySliceComRules(Admission Medication, Admission Medication)
  // entry slices
  * insert SectionEntrySliceDefRules (medicationStatement, 0.. , Admission Medication Statement ,
    Admission Medication Statement  , $MedicationStatement-uv-ips)
  * insert SectionEntrySliceDefRules (medicationRequest, 0.. , Admission Medication Request ,
    Admission Medication Request  , $MedicationRequest-uv-ips)
*/

/* * section[sectionAdmissionMedications] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionAdmissionMedications] ^extension[0].valueString = "Section"
* section[sectionAdmissionMedications] ^short = "Admission Medications"
* section[sectionAdmissionMedications].title 1..
* section[sectionAdmissionMedications].code 1..
* section[sectionAdmissionMedications].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionAdmissionMedications].code = http://loinc.org#42346-7 (exactly)
* section[sectionAdmissionMedications].text 1..
* section[sectionAdmissionMedications].entry
* section[sectionAdmissionMedications].entry only Reference($MedicationStatement-uv-ips or $MedicationRequest-uv-ips or MedicationAdministration or MedicationDispense)
* section[sectionAdmissionMedications].emptyReason ..0
* section[sectionAdmissionMedications].emptyReason ^mustSupport = false */



/* Admission reason is part of the encounter
// -------------------------------------
// Chief Complaint and Reason for Visit Section 0 … 1
// -------------------------------------
* section contains CCandReasonforVisitSection ..1
* section[CCandReasonforVisitSection]
  * insert SectionComRules (Chief Complaint and Reason for Visit,
                          This section records the patient's chief complaint (the patient’s own description\) and/or the reason for the patient's visit (the provider’s description of the reason for visit\). Local policy determines whether the information is divided into two sections or recorded in one section serving both purposes.,
                             http://loinc.org#46239-0  )
*/

/*
// -------------------------------------
// Problems Section 0 … 1 R
// -------------------------------------
* section contains sectionProblems ..1
* section[sectionProblems]
  * insert SectionComRules (
    HDR Problems Section,
      The HDR problem section lists and describes clinical problems or conditions currently being monitored for the patient.,
      http://loinc.org#11450-4 )   // CODE
  * entry 1..
  * entry only Reference(Condition
                          or DocumentReference  )
  * insert SectionEntrySliceComRules(Clinical problems or conditions currently being monitored for the patient.,
    It lists and describes clinical problems or conditions currently being monitored for the patient.  This entry shall be used to document that no information about problems is available\, or that no relevant problems are known.)
  // entry slices
  * insert SectionEntrySliceDefRules (problemIps, 0.. , Problem ,
    Problem  , $Condition-uv-ips)

/* * section[sectionProblems] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionProblems] ^extension[0].valueString = "Section"
* section[sectionProblems] ^short = "HDR Problems Section"
* section[sectionProblems] ^definition = "The HDR problem section lists and describes clinical problems or conditions currently being monitored for the patient."
* section[sectionProblems].title 1..
* section[sectionProblems].code 1..
* section[sectionProblems].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionProblems].code = http://loinc.org#11450-4 (exactly)
* section[sectionProblems].text 1..
* section[sectionProblems].text only Narrative
* section[sectionProblems].entry 1.. */

/* * section[sectionProblems].entry only Reference($Condition-uv-ips)
* section[sectionProblems].entry ^short = "Clinical problems or conditions currently being monitored for the patient."
* section[sectionProblems].entry ^definition = "It lists and describes clinical problems or conditions currently being monitored for the patient.  This entry shall be used to document that no information about problems is available, or that no relevant problems are known."
* section[sectionProblems].emptyReason ..0
* section[sectionProblems].emptyReason ^mustSupport = false */


// -------------------------------------
// Allergies and Intolerances Section 0 … 1
// -------------------------------------
* section contains sectionAllergies 1..1

* section[sectionAllergies]
  * insert SectionComRules (
      HDR Allergies and Intolerances Section,
      This section documents the relevant allergies or intolerances (conditions\) for that patient\, describing the kind of reaction (e.g. rash\, anaphylaxis\,..\); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy.\r\nAt a minimum\, it should list currently active and any relevant historical allergies and adverse reactions.\r\nIf no information about allergies is available\, or if no allergies are known this should be clearly documented in the section.,
      $loinc#48765-2 )   // CODE
  * entry 1..
  * entry only Reference(AllergyIntolerance or DocumentReference  )
  * insert SectionEntrySliceComRules(Relevant allergies or intolerances (conditions\) for that patient.,
    It lists the relevant allergies or intolerances (conditions\) for that patient\, describing the kind of reaction (e.g. rash\, anaphylaxis\,..\); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy.\r\nAt a minimum\, it should list currently active and any relevant historical allergies and adverse reactions.\r\n This entry shall be used to document that no information about allergies is available\, or that no allergies are known .)
  // entry slices
  * insert SectionEntrySliceDefRules (allergyIntolerance, 0.. , HDR Allergy entry,
    HDR Allergy entry, $AllergyIntolerance-uv-ips)


// -------------------------------------
// Alert 0 .. 1
// -------------------------------------

* insert AlertSectionRules

// -------------------------------------
// History of Procedures Section 0 … 1
// -------------------------------------
* section contains sectionProceduresHx ..1
* section[sectionProceduresHx]
  * insert SectionComRules (
    HDR History of Procedures Section,
      The History of Procedures Section contains a description of the patient past procedures that are pertinent to the scope of this document.\r\nProcedures may refer for example to:\r\n1. Invasive Diagnostic procedure:e.g. Cardiac catheterization; (the results of these procedure are documented in the results section\)\r\n2. Therapeutic procedure: e.g. dialysis;\r\n3. Surgical procedure: e.g. appendectomy
      ,$loinc#47519-4 "History of Procedures Document")   // CODE
  * entry 1..
  * entry only Reference(Procedure
                          or DocumentReference  )
  * insert SectionEntrySliceComRules(Patient past procedures pertinent to the scope of this document.,
    It lists the patient past procedures that are pertinent to the scope of this document.\r\nProcedures may refer for example to:\r\n1. Invasive Diagnostic procedure:e.g. Cardiac catheterization; (the results of these procedure are documented in the results section\)\r\n2. Therapeutic procedure: e.g. dialysis;\r\n3. Surgical procedure: e.g. appendectomy. This entry shall be used to document that no information about past procedures is available\, or that no relevant past procedures are known.)
  // entry slices
  * insert SectionEntrySliceDefRules (procedure, 0.. , Past Procedure entry ,
    Past Procedure entry  , $Procedure-uv-ips)


// -------------------------------------
// Immunizations Section 0 … 1
// -------------------------------------

* section contains sectionImmunizations ..1

* section[sectionImmunizations]
  * insert SectionComRules (
    HDR Immunizations Section,
      The Immunizations Section defines a patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nThe section includes current immunization status\, and may contain the entire immunization history that is relevant to the period of time being summarized.
      , $loinc#11369-6 "History of Immunization Narrative")   // CODE
  * entry 1..
  * entry only Reference(Immunization
                          or DocumentReference  )
  * insert SectionEntrySliceComRules ( Patient's immunization status and pertinent history.
    , It defines the patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\n It may contain the entire immunization history that is relevant to the period of time being summarized. This entry shall be used to document that no information about immunizations is available\, or that no immunizations are known. ) //'


  // entry slices
  * insert SectionEntrySliceDefRules (immunization, 0.. , Immunization entry ,
    Immunization entry  , $Immunization-uv-ips)


/* * section[sectionImmunizations] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionImmunizations] ^extension[0].valueString = "Section"
* section[sectionImmunizations] ^short = "HDR Immunizations Section"
* section[sectionImmunizations] ^definition = "The Immunizations Section defines a patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nThe section includes current immunization status, and may contain the entire immunization history that is relevant to the period of time being summarized."
* section[sectionImmunizations].title 1..
* section[sectionImmunizations].code 1..
* section[sectionImmunizations].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionImmunizations].code = http://loinc.org#11369-6 (exactly)
* section[sectionImmunizations].text 1..
* section[sectionImmunizations].text only Narrative
* section[sectionImmunizations].entry 1..
* section[sectionImmunizations].entry only Reference($Immunization-uv-ips )
* section[sectionImmunizations].entry ^short = "Patient's immunization status and pertinent history."
* section[sectionImmunizations].entry ^definition = "It defines the patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nIt may contain the entire immunization history that is relevant to the period of time being summarized. This entry shall be used to document that no information about immunizations is available, or that no immunizations are known."
* section[sectionImmunizations].emptyReason ..0
* section[sectionImmunizations].emptyReason ^mustSupport = false */

/*
// -------------------------------------
// Family History Section 0 … 1
// -------------------------------------
* section contains familyHistorySection ..1
* section[familyHistorySection]
  * insert SectionComRules (
    Family History Section,
      This section contains data defining the patient’s genetic relatives in terms of possible or relevant health risk factors that have a potential impact on the patient’s healthcare risk profile.
      ,  http://loinc.org#10157-6  )   // CODE
  * entry 0..
  * entry only Reference(FamilyMemberHistory)
  * entry ^short = "Family History"
  * entry ^definition = "Family History"
*/
/* * section[familyHistorySection] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[familyHistorySection] ^extension[0].valueString = "Section"
* section[familyHistorySection] ^short = "Family History Section"
* section[familyHistorySection] ^definition = "This section contains data defining the patient’s genetic relatives in terms of possible or relevant health risk factors that have a potential impact on the patient’s healthcare risk profile."
* section[familyHistorySection].title 1..
* section[familyHistorySection].code 1..
* section[familyHistorySection].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[familyHistorySection].code = http://loinc.org#10157-6 (exactly)
* section[familyHistorySection].text 1..
* section[familyHistorySection].text only Narrative
* section[familyHistorySection].entry 0..
* section[familyHistorySection].entry only Reference(FamilyMemberHistory)
* section[familyHistorySection].entry ^short = "Family History"
* section[familyHistorySection].entry ^definition = "Family History"
* section[familyHistorySection].emptyReason ..0
* section[familyHistorySection].emptyReason ^mustSupport = false
*/

/*
// -------------------------------------
// Medical Devices Section 0 … 1
// -------------------------------------
* section contains sectionMedicalDevices ..1
* section[sectionMedicalDevices]
  * insert SectionComRules (
    HDR Medical Devices Section,
      The medical devices section contains narrative text and coded entries describing the patient history of medical device use.
      , http://loinc.org#46264-8 )   // CODE
  * entry 1..
  * entry only Reference(DeviceUseStatement
                          or DocumentReference  )
  * insert SectionEntrySliceComRules ( Patient history of medical device use.
    , It describes the patient history of medical device use. This entry shall be used to document that no information about medical device use is available\, or that no relevant medical device use is known. ) //'


  // entry slices
  * insert SectionEntrySliceDefRules (deviceUse, 0.. , Medical Device entry ,
    Medical Device entry  , $DeviceUseStatement-uv-ips)
*/
/*
* section[sectionMedicalDevices] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionMedicalDevices] ^extension[0].valueString = "Section"
* section[sectionMedicalDevices] ^short = "HDR Medical Devices Section"
* section[sectionMedicalDevices] ^definition = "The medical devices section contains narrative text and coded entries describing the patient history of medical device use."
* section[sectionMedicalDevices].title 1..
* section[sectionMedicalDevices].code 1..
* section[sectionMedicalDevices].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionMedicalDevices].code = http://loinc.org#46264-8 (exactly)
* section[sectionMedicalDevices].text 1..
* section[sectionMedicalDevices].text only Narrative
* section[sectionMedicalDevices].entry 1..
* section[sectionMedicalDevices].entry only Reference($DeviceUseStatement-uv-ips)
* section[sectionMedicalDevices].entry ^short = "Patient history of medical device use."
* section[sectionMedicalDevices].entry ^definition = "It describes the patient history of medical device use. This entry shall be used to document that no information about medical device use is available, or that no relevant medical device use is known."
* section[sectionMedicalDevices].emptyReason ..0
* section[sectionMedicalDevices].emptyReason ^mustSupport = false */


// -------------------------------------
// History of Past Illness Section 0 … 1
// -------------------------------------

* section contains sectionPastIllnessHx ..1
* section[sectionPastIllnessHx] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPastIllnessHx] ^extension[0].valueString = "Section"
* section[sectionPastIllnessHx] ^short = "HDR History of Past Illness Section"
* section[sectionPastIllnessHx] ^definition = "The History of Past Illness section contains a narrative description and coded entries of the conditions the patient suffered in the past"
* section[sectionPastIllnessHx].title 1..
* section[sectionPastIllnessHx].code 1..
* section[sectionPastIllnessHx].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionPastIllnessHx].code = http://loinc.org#11348-0 (exactly)
* section[sectionPastIllnessHx].text 1..
* section[sectionPastIllnessHx].entry 1..
* section[sectionPastIllnessHx].entry only Reference($Condition-uv-ips)
* section[sectionPastIllnessHx].entry ^short = "Conditions the patient suffered in the past."
* section[sectionPastIllnessHx].entry ^definition = "It contains a description of the conditions the patient suffered in the past."
* section[sectionPastIllnessHx].emptyReason ..0
* section[sectionPastIllnessHx].emptyReason ^mustSupport = false


/*
// -------------------------------------
// Functional Status Section 0 … 1
// -------------------------------------

* section contains sectionFunctionalStatus ..1
* section[sectionFunctionalStatus] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionFunctionalStatus] ^extension[0].valueString = "Section"
* section[sectionFunctionalStatus] ^short = "IPS Functional Status"
* section[sectionFunctionalStatus] ^definition = "The functional status section shall contain a narrative description of capability of the patient to perform acts of daily living, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments.\r\nProfiles to express disabilities and functional assessments will be specified by future versions of this guide."
* section[sectionFunctionalStatus].title 1..
* section[sectionFunctionalStatus].code 1..
* section[sectionFunctionalStatus].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionFunctionalStatus].code = http://loinc.org#47420-5 (exactly)
* section[sectionFunctionalStatus].text 1..
* section[sectionFunctionalStatus].text only Narrative
* section[sectionFunctionalStatus].entry
* section[sectionFunctionalStatus].entry only Reference(Condition or $Condition-uv-ips or ClinicalImpression or DocumentReference)
* section[sectionFunctionalStatus].entry ^short = "Optional entry used to represent disabilities and functional assessments"
* section[sectionFunctionalStatus].entry ^definition = "It describes capabilities of the patient to perform acts of daily living, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments.\r\nProfiles to express disabilities and functional assessments will be specified by future versions of this guide."
* section[sectionFunctionalStatus].emptyReason ..0
* section[sectionFunctionalStatus].emptyReason ^mustSupport = false
*/

// -------------------------------------
// Care Team 0 … 1
// -------------------------------------
* insert CareTeamSectionRules

/*
// -------------------------------------
// Gynaecological-obstetric history 0 … 1
// -------------------------------------
* section contains sectionPregnancyHx ..1
* section[sectionPregnancyHx] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPregnancyHx] ^extension[0].valueString = "Section"
* section[sectionPregnancyHx] ^short = "IPS History of Pregnancy Section"
* section[sectionPregnancyHx] ^definition = "The history of pregnancy section shall contain information about whether the patient is currently pregnant or not.\r\nIt may contain addition summarizing information about the outcome of earlier pregnancies."
* section[sectionPregnancyHx].title 1..
* section[sectionPregnancyHx].code 1..
* section[sectionPregnancyHx].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionPregnancyHx].code = http://loinc.org#10162-6 (exactly)
* section[sectionPregnancyHx].text 1..
* section[sectionPregnancyHx].entry
* section[sectionPregnancyHx].entry only Reference( $Observation-pregnancy-outcome-uv-ips or $Observation-pregnancy-status-uv-ips or Observation or DocumentReference)
* section[sectionPregnancyHx].entry ^short = "Current pregnancy status and, optionally, information about the outcome of earlier pregnancies."
* section[sectionPregnancyHx].entry ^definition = "It contains information about whether the patient is currently pregnant or not.\r\nIt may contain addition summarizing information about the outcome of earlier pregnancies."
* section[sectionPregnancyHx].emptyReason ..0
* section[sectionPregnancyHx].emptyReason ^mustSupport = false
*/

/*
// -------------------------------------
// Social History Section
// -------------------------------------
* section contains sectionSocialHistory ..1
* section[sectionSocialHistory] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionSocialHistory] ^extension[0].valueString = "Section"
* section[sectionSocialHistory] ^short = "HDR Social History Section"
* section[sectionSocialHistory] ^definition = "The social history section contains a description of the person’s Health related “lifestyle factors\" or \"lifestyle observations\" (e.g. smoke habits; alcohol consumption; diets, risky habits.)"
* section[sectionSocialHistory].title 1..
* section[sectionSocialHistory].code 1..
* section[sectionSocialHistory].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionSocialHistory].code = http://loinc.org#29762-2 (exactly)
* section[sectionSocialHistory].text 1..
* section[sectionSocialHistory].entry
* section[sectionSocialHistory].entry only Reference(Observation or DocumentReference or $Observation-alcoholuse-uv-ips or $Observation-tobaccouse-uv-ips)
* section[sectionSocialHistory].entry ^short = "Health related \"lifestyle factors\" or \"lifestyle observations\" (e.g. smoke habits; alcohol consumption; diets, risky habits.)"
* section[sectionSocialHistory].entry ^definition = "Description of the person’s Health related “lifestyle factors\" or \"lifestyle observations\" (e.g. smoke habits; alcohol consumption; diets, risky habits.)"
* section[sectionSocialHistory].emptyReason ..0
* section[sectionSocialHistory].emptyReason ^mustSupport = false
*/


/*
// -------------------------------------
// Medications Section 0 … 1
// to be checked
// -------------------------------------
* section contains sectionMedications 1..1
* section[sectionMedications] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionMedications] ^extension[0].valueString = "Section"
* section[sectionMedications] ^short = "Hospital Discharge Report Medication Summary Section"
* section[sectionMedications] ^definition = "The medication summary section contains a description of the patient's medications relevant for the scope of the patient summary.\r\nThe actual content could depend on the jurisdiction, it could report:\r\n- the currently active medications; \r\n- the current and past medications considered relevant by the authoring GP; \r\n- the patient prescriptions or dispensations automatically extracted by a regional or a national EHR.\r\n\r\nIn all those cases however medications are documented in the Patient Summary as medication statements.\r\nThis section requires either an entry indicating the subject is known not to be on any medications; either an entry indicating that no information is available about medications; or entries summarizing the subject's medications."
* section[sectionMedications].title 1..
* section[sectionMedications].title ^short = "Medication Summary section"
* section[sectionMedications].title ^definition = "The label for this particular section.  This will be part of the rendered content for the document, and is often used to build a table of contents.\r\n\r\nMedication Summary"
* section[sectionMedications].code 1..
* section[sectionMedications].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionMedications].code = http://loinc.org#10160-0 (exactly)
* section[sectionMedications].text 1..
* section[sectionMedications].text only Narrative
* section[sectionMedications].entry 1..
* section[sectionMedications].entry only Reference($MedicationStatement-uv-ips or $MedicationRequest-uv-ips or MedicationAdministration or MedicationDispense)
* section[sectionMedications].entry ^short = "Medications relevant for the scope of the patient summary"
* section[sectionMedications].entry ^definition = "This list the medications relevant for the scope of the patient summary or it is used to indicate that the subject is known not to be on any relevant medication; either that no information is available about medications."
* section[sectionMedications].emptyReason ..0
* section[sectionMedications].emptyReason ^mustSupport = false
*/

// OR THIS ONE ???
/*
* section contains sectionMedicationsAdministered ..1
* section[sectionMedicationsAdministered] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionMedicationsAdministered] ^extension[0].valueString = "Section"
* section[sectionMedicationsAdministered] ^short = "Admission Medications"
* section[sectionMedicationsAdministered].title 1..
* section[sectionMedicationsAdministered].code 1..
* section[sectionMedicationsAdministered].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionMedicationsAdministered].code = http://loinc.org#29549-3 (exactly)
* section[sectionMedicationsAdministered].text 1..
* section[sectionMedicationsAdministered].entry
* section[sectionMedicationsAdministered].entry only Reference($MedicationStatement-uv-ips or $MedicationRequest-uv-ips or MedicationAdministration or MedicationDispense)
* section[sectionMedicationsAdministered].emptyReason ..0
* section[sectionMedicationsAdministered].emptyReason ^mustSupport = false
*/


// -------------------------------------
// Results Section 0 … 1
// -------------------------------------
/*
* section contains sectionResults ..1
* section[sectionResults] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionResults] ^extension[0].valueString = "Results Section"
* section[sectionResults] ^short = "IPS Results Section"
* section[sectionResults] ^definition = "This section assembles relevant observation results collected on the patient or produced on in-vitro biologic specimens collected from the patient. Some of these results may be laboratory results, others may be anatomic pathology results, others, radiology results, and others, clinical results."
* section[sectionResults].title 1..
* section[sectionResults].code 1..
* section[sectionResults].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionResults].code = http://loinc.org#30954-2 (exactly)
* section[sectionResults].text 1..
* section[sectionResults].entry
* section[sectionResults].entry only Reference (Observation or DiagnosticReport or DocumentReference or $Observation-results-uv-ips or $DiagnosticReport-uv-ips) // or BundleLabReport)

* section[sectionResults].entry ^short = "Relevant observation results collected on the patient or produced on in-vitro biologic specimens collected from the patient."
* section[sectionResults].entry ^definition = "Relevant observation results collected on the patient or produced on in-vitro biologic specimens collected from the patient. Some of these results may be laboratory results, others may be anatomic pathology results, others, radiology results, and others, clinical results."
* section[sectionResults].emptyReason ..0
* section[sectionResults].emptyReason ^mustSupport = false
*/

// -------------------------------------
// Procedures Section 0 … 1
// TO BE CHECKED
// -------------------------------------
/*
* section contains sectionProcedure ..1
* section[sectionProcedure] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionProcedure] ^extension[0].valueString = "Section"
* section[sectionProcedure].code 1..
* section[sectionProcedure].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionProcedure].code = http://loinc.org#29554-3 (exactly)
* section[sectionProcedure].text 1..
* section[sectionProcedure].entry
* section[sectionProcedure].entry only Reference($Procedure-uv-ips)
* section[sectionProcedure].emptyReason ..0
* section[sectionProcedure].emptyReason ^mustSupport = false
*/
/*
// -------------------------------------
// Vital Signs Section 0 … 1
// -------------------------------------
* section contains sectionVitalSigns ..1
* section[sectionVitalSigns] ..1
* section[sectionVitalSigns] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionVitalSigns] ^extension[0].valueString = "Vital Signs Section"
* section[sectionVitalSigns] ^label = "Vital signs"
* section[sectionVitalSigns] ^short = "IPS Vital Signs Section"
* section[sectionVitalSigns] ^definition = "The Vital signs section includes blood pressure, body temperature, heart rate, and respiratory rate. It may also include other clinical findings, such as height, weight, body mass index, head circumference, and pulse oximetry. In particular, notable vital signs or physical findings such as the most recent, maximum and/or minimum, baseline, or relevant trends may be included"
* section[sectionVitalSigns].title 1..
* section[sectionVitalSigns].code 1..
* section[sectionVitalSigns].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionVitalSigns].code = http://loinc.org#8716-3 (exactly)
* section[sectionVitalSigns].text 1..
* section[sectionVitalSigns].text only Narrative
* section[sectionVitalSigns].entry
* section[sectionVitalSigns].entry only Reference(Observation or DocumentReference or $vitalsigns)
* section[sectionVitalSigns].entry ^short = "Notable vital signs or physical findings."
* section[sectionVitalSigns].entry ^definition = "Notable vital signs or physical findings as: blood pressure, body temperature, heart rate, and respiratory rate. It may also include other clinical findings, such as height, weight, body mass index, head circumference, and pulse oximetry. In particular, notable vital signs or physical findings such as the most recent, maximum and/or minimum, baseline, or relevant trends may be included"
* section[sectionVitalSigns].emptyReason ..0
* section[sectionVitalSigns].emptyReason ^mustSupport = false
*/

// -------------------------------------


/*
// -------------------------------------
// Discharge Diagnosis Section 0 … 1 R
// -------------------------------------

* section contains dischargeDiagnosisSection ..1
* section[dischargeDiagnosisSection] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[dischargeDiagnosisSection] ^extension[0].valueString = "Section"
* section[dischargeDiagnosisSection] ^short = "Discharge Diagnosis Section"
* section[dischargeDiagnosisSection] ^definition = "The discharge diagnosis section shall contain a narrative description of the conditions that need to be monitored after discharge from the hospital and those that were resolved during the hospital course. It shall include entries for patient conditions as described in the Entry Content Module."
* section[dischargeDiagnosisSection].title 1..
* section[dischargeDiagnosisSection].code 1..
* section[dischargeDiagnosisSection].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[dischargeDiagnosisSection].code = http://loinc.org#11535-2 (exactly)
* section[dischargeDiagnosisSection].text 1..
* section[dischargeDiagnosisSection].text only Narrative
* section[dischargeDiagnosisSection].entry 0..
* section[dischargeDiagnosisSection].entry only Reference(Condition) // define specialized profiles
* section[dischargeDiagnosisSection].entry ^short = "Discharge Diagnosis"
* section[dischargeDiagnosisSection].entry ^definition = "Discharge Diagnosis"
* section[dischargeDiagnosisSection].emptyReason ..0
* section[dischargeDiagnosisSection].emptyReason ^mustSupport = false
*/

/*
// -------------------------------------
// Discharge Medications Section 0 … 1
// -------------------------------------
* section contains sectionDischargeMedications ..1
* section[sectionDischargeMedications] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionDischargeMedications] ^extension[0].valueString = "Section"
* section[sectionDischargeMedications] ^short = "Admission Medications"
* section[sectionDischargeMedications].title 1..
* section[sectionDischargeMedications].code 1..
* section[sectionDischargeMedications].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionDischargeMedications].code = http://loinc.org#42346-7 (exactly)
* section[sectionDischargeMedications].text 1..
* section[sectionDischargeMedications].entry
* section[sectionDischargeMedications].entry only Reference($MedicationStatement-uv-ips or $MedicationRequest-uv-ips or MedicationAdministration or MedicationDispense)
* section[sectionDischargeMedications].emptyReason ..0
* section[sectionDischargeMedications].emptyReason ^mustSupport = false
*/


// -------------------------------------
// Plan of Care Section
// ToDo: Review
// -------------------------------------
* section contains sectionPlanOfCare ..1
* section[sectionPlanOfCare] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionPlanOfCare] ^extension[0].valueString = "Section"
* section[sectionPlanOfCare] ^short = "IPS Plan of Care Section"
* section[sectionPlanOfCare] ^definition = "The plan of care section contains a narrative description of the expectations for care including proposals, goals, and order requests for monitoring, tracking, or improving the condition of the patient."
* section[sectionPlanOfCare].title 1..
* section[sectionPlanOfCare].code 1..
* section[sectionPlanOfCare].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionPlanOfCare].code = http://loinc.org#18776-5 (exactly)
* section[sectionPlanOfCare].text 1..
* section[sectionPlanOfCare].text only Narrative
* section[sectionPlanOfCare].entry only Reference( CarePlan or DocumentReference)
* section[sectionPlanOfCare].emptyReason ..0
* section[sectionPlanOfCare].emptyReason ^mustSupport = false

// -------------------------------------
// Hospital Discharge Studies Summary Section
// -------------------------------------
/*
* section contains hospitalDischargeStudiesSection ..1
* section[hospitalDischargeStudiesSection] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[hospitalDischargeStudiesSection] ^extension[0].valueString = "Section"
* section[hospitalDischargeStudiesSection] ^short = "Hospital Discharge Studies Summary Section"
* section[hospitalDischargeStudiesSection] ^definition = "This section records the results of observations generated by laboratories, imaging procedures, and other procedures. The scope includes hematology, chemistry, serology, virology, toxicology, microbiology, plain x-ray, ultrasound, CT, MRI, angiography, echocardiography, nuclear medicine, pathology, and procedure observations. This section often includes notable results such as abnormal values or relevant trends, and could record all results for the period of time being documented. Laboratory results are typically generated by laboratories providing analytic services in areas such as chemistry, hematology, serology, histology, cytology, anatomic pathology, microbiology, and/or virology. These observations are based on analysis of specimens obtained from the patient and submitted to the laboratory. Imaging results are typically generated by a clinician reviewing the output of an imaging procedure, such as when a cardiologist reports the left ventricular ejection fraction based on the review of an echocardiogram. Procedure results are typically generated by a clinician wanting to provide more granular information about component observations made during the performance of a procedure, such as when a gastroenterologist reports the size of a polyp observed during a colonoscopy. Note that there are discrepancies between CCD and the lab domain model, such as the effectiveTime in specimen collection."
* section[hospitalDischargeStudiesSection].title 1..
* section[hospitalDischargeStudiesSection].code 1..
* section[hospitalDischargeStudiesSection].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[hospitalDischargeStudiesSection].code = http://loinc.org#11493-4 (exactly)
* section[hospitalDischargeStudiesSection].text 1..
* section[hospitalDischargeStudiesSection].text only Narrative
* section[hospitalDischargeStudiesSection].entry 0..
* section[hospitalDischargeStudiesSection].entry ^short = "Study Summary"
* section[hospitalDischargeStudiesSection].entry ^definition = "Study Summary"
* section[hospitalDischargeStudiesSection].emptyReason ..0
* section[hospitalDischargeStudiesSection].emptyReason ^mustSupport = false
*/
// -------------------------------------

// -------------------------------------

// to be classified

// -------------------------------------



// -------------------------------------
* section contains sectionAdvanceDirectives ..1
* section[sectionAdvanceDirectives] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionAdvanceDirectives] ^extension[0].valueString = "Section"
* section[sectionAdvanceDirectives] ^short = "IPS Advance Directives Section"
* section[sectionAdvanceDirectives] ^definition = "The advance directives section contains a narrative description of patient's advance directive."
* section[sectionAdvanceDirectives].title 1..
* section[sectionAdvanceDirectives].code 1..
* section[sectionAdvanceDirectives].code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section[sectionAdvanceDirectives].code = http://loinc.org#42348-3 (exactly)
* section[sectionAdvanceDirectives].text 1..
* section[sectionAdvanceDirectives].text only Narrative
* section[sectionAdvanceDirectives].entry
* section[sectionAdvanceDirectives].entry only Reference(Consent or DocumentReference)
* section[sectionAdvanceDirectives].emptyReason ..0
* section[sectionAdvanceDirectives].emptyReason ^mustSupport = false

// -------------------------------------

/*
* section contains sectionEncounters ..1
* section[sectionEncounters] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section[sectionEncounters] ^extension[0].valueString = "Section"
* section[sectionEncounters] ^short = "Encounters sections"
* section[sectionEncounters] ^definition = "This section lists and describes any healthcare encounters pertinent to the patient’s current health status or historical health history. An encounter is an interaction, regardless of the setting, between a patient and a practitioner who is vested with primary responsibility for diagnosing, evaluating, or treating the patient’s condition. It may include visits, appointments, or non-face-to-face interactions. It is also a contact between a patient and a practitioner who has primary responsibility (exercising independent judgment) for assessing and treating the patient at a given contact.“ (from C-CDA specifications)."
* section[sectionEncounters].title 1..
* section[sectionEncounters].code 1..
* section[sectionEncounters].code = http://loinc.org#46240-8 (exactly)
* section[sectionEncounters].text 1..
* section[sectionEncounters].entry
* section[sectionEncounters].emptyReason ..0
* section[sectionEncounters].emptyReason ^mustSupport = false
*/

// -------------------------------------



