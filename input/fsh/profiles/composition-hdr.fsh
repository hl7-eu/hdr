Profile: CompositionEuHdr
Parent: Composition
Id: composition-eu-hdr
Title: "Composition (HDR)"
Description: "Clinical document used to represent a Hospital Discharge Report (HDR) for the scope of this guide."
* . ^short = "Hospital Discharge Report composition"
* . ^definition = "Hospital Discharge Report composition. \r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."

* extension contains $event-basedOn named basedOn 0..*
* extension[basedOn].valueReference only Reference ( Resource or ServiceRequest ) /// add profile

/* * extension contains DocumentPresentedForm named presentedForm 0..*
* extension[presentedForm] ^short = "Presented form"
* extension[presentedForm].valueAttachment
  * contentType
    * ^example[0].label = "pdf"
    * ^example[0].valueCode  = $mime#application/pdf
  * data ^short = "B64 in-line data"
  * url ^short = "URL of the document" */

* extension contains $composition.version-r5  named version 0..1
* extension[version] ^short = "Business version"

* extension contains $information-recipient named information-recipient 0..*
* extension[information-recipient]
* extension[information-recipient].valueReference only Reference( PractitionerRoleEuCore or PractitionerEuCore or Device or PatientEuCore or RelatedPerson or  OrganizationEuCore)


* identifier ^short = "HDR business identifier"
* status ^short = "HDR status"
// * type only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* type ^short = "Kind of composition (\"Hospital Discharge Report\")"
* type ^definition = "Specifies that this composition refer to a Hospital Discharge Report"
* type = $loinc#34105-7 // "Hospital Discharge summary"
* type.coding.display 1..
* subject only Reference(PatientEuCore)
* subject 1..1
* subject ^definition = "Who or what the composition is about. \r\nIn general a composition can be about a person, (patient or healthcare practitioner), a device (e.g. a machine) or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure).\r\nFor the hdr the subject is always the patient."

* category from DocCategoryHdrVS (extensible)
  * ^example[0].label = "Document category"
  * ^example[0].valueCoding.code = $loinc#LP72467-1
  * ^example[0].valueCoding.display = "Discharge summary note"

* event.period ^requirements = "header.period"

* encounter 1..1 
* encounter only Reference (EncounterEuHdr)

* date ^short = "HDR date"
* author ^short = "Who and/or what authored the Hospital Discharge Report"
* author ^definition = "Identifies who is responsible for the information in the Hospital Discharge Report, not necessarily who typed it in."
* author only Reference( PractitionerEuCore or PractitionerRoleEuCore or Device  or OrganizationEuCore) // or Patient or RelatedPerson


* title ^short = "Hospital Discharge Report"
* title ^definition = "Official human-readable label for the composition.\r\n\r\nFor this document should be \"Hospital Discharge Report\" or any equivalent translation"
* attester.mode ^short = "The type of attestation"
* attester.time ^short = "When the composition was attested."
* attester.party ^short = "Who attested the composition."
* attester.party only Reference( PractitionerEuCore or PractitionerRoleEuCore or OrganizationEuCore)


* section 1..
* obeys text-or-section
* section ^slicing.discriminator[0].type = #value
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Sections composing the HDR"
* section ^definition = "The root of the sections that make up the HDR composition."
* section.extension contains $note named section-note 0..*
* section.extension[section-note] ^short = "Additional notes that apply to the section (but not to specific resource)."
* section.extension[section-note] ^definition = "Additional notes that apply to the section (but not to specific resource)."
* section.title 1..1
* section.code 1..1
// * section.code only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* section.text only Narrative


// -------------------------------------
// Admission Evaluation Section 0 .. 1 R
// -------------------------------------

* section contains sectionAdmissionEvaluation ..1
* section[sectionAdmissionEvaluation]
  * insert SectionComRules (
    Hospital Admission evaluation,
      Hospital Admission evaluation,
      $loinc#67851-6)   // "Admission evaluation note"
  * ^comment = "Admission evaluation should be reported only exceptionally, if it is relevant to ensure continuity of care."
  * text ^requirements = "body.admissionEvaluation.generatedNarrative"


// -------------------------------------
* section contains sectionVitalSigns 0..1
* section[sectionVitalSigns]
  * insert SectionComRules (
    Vital signs,
    The Vital signs section includes blood pressure\, body temperature\, heart rate\, and respiratory rate. It may also include other clinical findings\, such as height\, weight\, body mass index\, head circumference\, and pulse oximetry. In particular\, notable vital signs or physical findings such as the most recent\, maximum and/or minimum\, baseline\, or relevant trends may be included,
    $loinc#8716-3) //  "Vital signs note"  
  * entry 0..
  * entry only Reference(Observation or DocumentReference or $vitalsigns)

// -------------------------------------
// Physical findings  Section 0 .. 1
// -------------------------------------

* section contains sectionPhysicalFindings ..1
* section[sectionPhysicalFindings]
  * insert SectionComRules (
    Physical findings,
      Physical findings,
      $loinc#29545-1)   // "Physical findings note"

  * entry 0..
  * entry only Reference(Observation or DocumentReference)

// -------------------------------------
// Functional status assessment  Section 0 .. 1
// -------------------------------------

* section contains sectionFunctionalStatus 0..1
* section[sectionFunctionalStatus]
  * insert SectionComRules (
    Functional status,
    The functional status section shall contain a narrative description of capability of the patient to perform acts of daily living\, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments.\r\nProfiles to express disabilities and functional assessments will be specified by future versions of this guide.,
    $loinc#47420-5) // Functional status assessment note

  * entry only Reference(ConditionEuCore or ClinicalImpression or Observation or DocumentReference or QuestionnaireResponse)
    * ^short = "Optional entry used to represent disabilities and functional assessments"
    * ^definition = "It describes capabilities of the patient to perform acts of daily living, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments.\r\nProfiles to express disabilities and functional assessments will be specified by future versions of this guide."

  
  * insert SectionEntrySliceComRules(Condition entry, Condition entry slice)

  * insert SectionEntrySliceDefRules (condition, 0..*, 
    Functional status condition entry, 
     Optional entry used to represent disabilities and other conditions that may influence the functional status of the patient. It describes capabilities of the patient to perform acts of daily living\, including possible needs of the patient to be continuously assessed by third parties.,
    ConditionEuCore)

  * insert SectionEntrySliceComRules(Observation entry, Observation entry slice)

  * insert SectionEntrySliceDefRules (observation, 0..*, 
    Functional status observation entry, 
     Optional entry used to represent functional assessment of the patient.,
    Observation)



// -------------------------------------
// Hospital Course Section 1..1
// -------------------------------------
* section contains sectionHospitalCourse 1..1
* section[sectionHospitalCourse]
  * insert SectionComRules (
    Hospital course,
    Hospital course describes the sequence of events from admission to discharge in a hospital facility.,
    $loinc#8648-8 )   // "Hospital course note"
  * ^short = "Significant information about course of hospital stay"
  * ^definition = "This section includes basic information about hospital staty (encounter), diagnostic summary in narrative form, pharmacotherapy, major procedures, medical devices, significant findings during hospital stay and clinical synthesis."
  * text ^requirements = "body.courseOfEncounter.generatedNarrative; body.courseOfEncounter.note"
  
 
// -------------------------------------
* section contains sectionDiagnosticSummary 0..1
* section[sectionDiagnosticSummary]
  * insert SectionComRules (
    Problem specification in narrative form,
    All problems/diagnoses that affect care during the inpatient case or are important to be recorded to ensure continuity of care. The diagnostic summary differentiates\, in accordance with the international recommendation\, between problems treated during hospital stay and other (untreated\) problems. Treated problems are problems that were the subject of diagnostics\, therapy\, nursing\, or (continuous\) monitoring during the hospitalisation. Furthermore problems could be divided into three categories: problems present on admission (POA\)\, conditions acquired during hospital stay (HAC\) and problems that cannot be classified as being of any of the two (N/A\). The diagnostic summary contains all conditions as they were recognised at the end of hospitalisation\, after all examinations. This section contains concise\, well specified\, codeable\, summary of problems. Problems are ordered by importance (main problems first\) during hospital stay. Description of the problem might be completed with additional details in the medical history section and/or in the Synthesis section.	,
    $loinc#11535-2) // Hospital discharge Dx Narrative
 
  * entry 0..*
  * entry only Reference( ConditionEuCore ) // check if this is too restrictive

// ===================================
// courseOfEncounter.procedures
// ===================================
// -------------------------------------
* section contains sectionSignificantProcedures 0..1
* section[sectionSignificantProcedures]
  * insert SectionComRules ( 
    Significant procedures,
    Significant surgical and non-surgical procedures performed during hospitalisation which are significant for continuity of care\, e.g. surgeries and other \"instrumental\"interventions (endoscopic\, intravascular\)\, chemotherapy\, radiotherapy\, purification methods (dialysis\, hemoperfusion\)\, circulation support methods (counterpulsation\, etc.\)\, administration of blood derivatives or others.\r\nThis section does not include purely diagnostic procedures (MRI\, CT\, etc.\). If no significant performance has been performed\, this fact must be explicitly stated using the IPS Absent and Unknown Data. ,
    $loinc#10185-7) // Hospital discharge procedures
    // $sct#721981007)
  * entry 0..
  * entry only Reference(ProcedureEuCore)
  * section ..0


// -------------------------------------
// Medical Devices Section 0 .. 1
// patientHistory.devicesAndImplants
// -------------------------------------

* section contains sectionMedicalDevices 0..1
* section[sectionMedicalDevices]
  * insert SectionComRules (
    Medical Devices Section, 
    The medical devices section contains narrative text and coded entries describing the patient history of medical device use,
    $loinc#46264-8) // History of medical device use

  * entry 0..
  * entry only Reference(DeviceUseStatementEuHdr or ProcedureEuCore or DocumentReference) // DeviceUseStatementEuHdr ro be revised

  * insert SectionEntrySliceComRules(Medical Device entry, EPS Medical Devices entry slice)

  * insert SectionEntrySliceDefRules (deviceStatement, 0..*, 
    Patient history of medical device use, 
    It describes the patient history of medical device use. This entry shall be used to document that no information about medical device use is available\, or that no relevant medical device use is known. , 
    DeviceUseStatementEuHdr)


  * section ..0


// === EPS History of Procedures Section ===

* section contains sectionProceduresHx 0..1
* section[sectionProceduresHx]
  * ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
  * ^extension[0].valueString = "Section"
  * ^short = "History of Procedures"
  * ^definition = "The History of Procedures Section contains a description of the patient past procedures that are pertinent to the scope of this document. Procedures may refer for example to:\r\n1. Invasive Diagnostic procedure:e.g. Cardiac catheterization; (the results of these procedure are documented in the results section)\r\n2. Therapeutic procedure: e.g. dialysis;\r\n3. Surgical procedure: e.g. appendectomy\r\n"
  * code = $loinc#47519-4
  
  * entry only Reference(Procedure or DocumentReference)

  * insert SectionEntrySliceComRules(Slice on procedure, Slice on procedure)
  // entry slices
  * entry contains procedure 0..*
  * entry[procedure] 0..*
  * entry[procedure] ^short = "Patient past procedures pertinent to the scope of this document."
  * entry[procedure] ^definition = "It lists the patient past procedures that are pertinent to the scope of this document. Procedures may refer for example to:\r\n1. Invasive Diagnostic procedure:e.g. Cardiac catheterization; (the results of these procedure are documented in the results section)\r\n2. Therapeutic procedure: e.g. dialysis;\r\n3. Surgical procedure: e.g. appendectomy\r\n"
  * entry[procedure] only Reference(ProcedureEuCore)


// -------------------------------------
// TO BE REVISED
// ---------------------
* section contains sectionPharmacotherapy 0..1
* section[sectionPharmacotherapy]
  * insert SectionComRules (
    Pharmacotherapy,
    Selected drug treatment during hospitalisation. Medicinal products that were administered during hospitalisation and whose administration has already been discontinued before discharge. Only products which are important for continuity of care (antibiotics other than completely routine\, corticosteroids in high doses\, etc.\) will be listed. Products which administration will continue after discharge will be also recorder in the Medication summary section.
Medicinal products\, the administration of which was started during hospitalisation but is also recommended after discharge\, will be listed in the summary table in the recommendation section. ,
$loinc#87232-5 ) // 	Medication administration.brief
    // $sct#1003606003 ) // "Medication history section (record artifact\)"
  * entry 0..
  * entry only Reference(MedicationStatementEuCore or MedicationRequestEuCore or MedicationDispenseEuHdr or MedicationAdministrationEuHdr)



// -------------------------------------
// Medical Devices and Implants Section 0 .. 1
// courseOfEncounter.medicalDevicesAndImplants
// -------------------------------------

* section contains sectionImplantedDevices 0..1
* section[sectionImplantedDevices]
  * insert SectionComRules (
    Medical devices and implants,
    Implants and used medical devices that affected or may affect the provision of health services (diagnosis and treatment\). Also medical devices explanted\, or its use was stopped during hospitalisation. If the section is blank\, the reason must be explicitly stated using the IPS Absent and Unknown Data coding system. ,
    $loinc#57080-4) // Implanted medical device (to be changed)
    
    // $sct#1184586001) //"Medical device document section (record artifact\)
  * entry 0..
  * entry only Reference(DeviceUseStatementEuHdr or ProcedureEuCore)


// -------------------------------------
* section contains sectionSignificantResults 0..1
* section[sectionSignificantResults]
  * insert SectionComRules ( 
      Significant medical test results, 
      Significant medical test results of functional\, diagnostic (including laboratory\)\, and imaging examinations performed during encounter. This may include orders for which the results have not yet arrived., 
      http://loinc.org#30954-2)
  * entry only Reference(Observation or DiagnosticReport or DocumentReference)
  * insert SectionEntrySliceComRules(Significant medical test results, Significant medical test results slice)
  // Review the slice definiton
  * insert SectionEntrySliceDefRules (results-medicalTestResult, 0.. , 
      Medical test results, 
       Results collected on the patient or produced on in-vitro biologic specimens., 
       MedicalTestResultEuCore)
  * insert SectionEntrySliceDefRules (results-diagnosticReport, 0.. , 
      DiagnosticReport, 
       DiagnosticReport resource to represent diagnostic test and procedure reports in a patient summary,
       DiagnosticReportEuCore)
    
    
  // * entry only Reference(Observation or $Observation-resultslab-eu-lab or ) //  or ObservationResultsRadiologyUvIps or MedicalTestResultEuCore)

// -------------------------------------
* section contains sectionSynthesis 0..1
* section[sectionSynthesis]
  * insert SectionComRules (
    Synthesis,
    This section provides clinical synthesis (e.g. description of reasons and course of hospital stay\) clustered by managed conditions. Clinical synthesis may include clinical reasoning (differential diagnostics\, explanation of clinical context\) in clinically complex conditions.,
    $loinc#67781-5 ) // Summarization of encounter note Narrative
 

// -------------------------------------
// === revview the CarePlan profile
// -------------------------------------


// -------------------------------------
// Plan of Care Section
// -------------------------------------
* section contains sectionPlanOfCare ..1
* section[sectionPlanOfCare]
  * insert SectionComRules (
    Plan of Care Section,
    The plan of care section contains a narrative description of the expectations for care including proposals\, goals\, and order requests for monitoring\, tracking\, or improving the condition of the patient.,
    $loinc#18776-5 )   // Plan of care note
  * text ^requirements = "body.carePlan.generatedNarrative"
  * entry only Reference( CarePlanEuHdr or DocumentReference) // Check if CarePlanEuHdr is needed or if we should align with EPS


// -------------------------------------
// Discharge instructions Section 0 .. 1
// -------------------------------------

/* REMOVED FROM THE MODEL
* section contains sectionDischargeInstructions ..1

* section[sectionDischargeInstructions]
  * insert SectionComRules (
    Hospital Discharge Instructions,
    Hospital Discharge Instructions,
    $loinc#8653-8 )   //  Hospital Discharge instructions 
    
  */

// -------------------------------------
// Discharge Medications Section 0 .. 1
// mapped from medicationSummary ?
// -------------------------------------
* section contains sectionDischargeMedications ..1

* section[sectionDischargeMedications]

  * insert SectionComRules (
    Hospital discharge medications,
    Hospital discharge medications defines the medications that the patient is intended to take\, or stop\, after discharge, 
    $loinc#75311-1 )   //  Discharge medications Narrative OR 10183-2 "Hospital "Discharge medications note" or 	Discharge medications Narrative
  * text ^requirements = "body.medicationSummary.generatedNarrative; body.medicationSummary.note"
  * entry 0..
  * entry only Reference(MedicationRequestEuCore or MedicationDispenseEuHdr or MedicationStatementEuCore)

 


// -------------------------------------
// Allergies and Intolerances Section 0 .. 1
// -------------------------------------

* section contains sectionAllergies ..1
* section[sectionAllergies]
  * insert SectionComRules ( 
     	Allergies and Intolerances Section, 
      This section documents the relevant allergies or intolerances for that patient\, describing the kind of reaction - e.g. rash\, anaphylaxis\,.. - preferably the agents that cause it; and optionally the criticality and the certainty of the allergy. At a minimum\, it should list currently active and any relevant historical allergies and adverse reactions. If no information about allergies is available\, or if no allergies are known this should be clearly documented in the section., 
      http://loinc.org#48765-2)

  * entry only Reference(AllergyIntolerance or DocumentReference)  
  * insert SectionEntrySliceComRules(allergyOrIntolerance, allergyOrIntolerance)
  // entry slices
  * insert SectionEntrySliceDefRules (allergyOrIntolerance, 0.. , 
  Relevant allergies or intolerances for that patient.,
  It lists the relevant allergies or intolerances for that patient\, describing the kind of reaction - e.g. rash\, anaphylaxis\,.. - preferably the agents that cause it; and optionally the criticality and the certainty of the allergy. At a minimum\, it should list currently active and any relevant historical allergies and adverse reactions. If no information about allergies is available\, or if no allergies are known this should be clearly documented in the section., 
  AllergyIntoleranceEuCore)


// -------------------------------------
// Alert 0 .. 1
// -------------------------------------

* section contains sectionAlert ..1
* section[sectionAlert]
  * insert SectionComRules (
    Alert Section, // SHORT
    Information about substantial alerts or warnings (including allergies\) that health professionals should be aware of., 
      http://loinc.org#104605-1 )   // CODE
  * text ^requirements = "body.alerts.generatedNarrative"

  * entry only Reference(Flag or DocumentReference)
  * insert SectionEntrySliceComRules(EPS Alerts entry, EPS Alerts entry slice)
  // entry slices
  * insert SectionEntrySliceDefRules (flag, 0.. , 
  Alert information , 
  Contains alert information to be communicated. May optionally reference other resources in IPS.lags,
  FlagPatientEuCore)


// -------------------------------------

// -------------------------------------
// Hx general Reported Section 0 .. 1 R
// -------------------------------------

// This is a purely narrative section
* section contains sectionPatientHx ..1
* section[sectionPatientHx]
  * insert SectionComRules ( 
    Hx general Reported Section,
    This section may provide both synthetic anamnesis \,e.g. description of phases of the pathology as a chronological summary of clustered clinical information\, and anecdotal evidence that clinicians can collect from the patient\, and can read in a narrative form.,
    http://loinc.org#11329-0 )
  * text ^requirements = "body.patientHistory.generatedNarrative"



// -------------------------------------
// Problem List Section 0 .. 1
// covers the active part of the History of Past Illness heading
// -------------------------------------

* section contains sectionProblems ..1
* section[sectionProblems]
  * insert SectionComRules ( 
      Problem List Section, 
      The Problem List Section lists and describes clinical problems or conditions currently being monitored for the patient., 
      http://loinc.org#11450-4)
  
  * entry only Reference(ConditionEuCore or DocumentReference)
  * insert SectionEntrySliceComRules(Clinical problems or conditions currently being monitored for the patient., It lists and describes clinical problems or conditions currently being monitored for the patient. This entry shall be used to document that no information about problems is available\, or that no relevant problems are known.)
  // entry slices
  * insert SectionEntrySliceDefRules (problem, 0.. ,
      Clinical problems or conditions currently being monitored for the patient. ,
      It lists and describes clinical problems or conditions currently being monitored for the patient.  This entry shall be used to document that no information about problems is available\, or that no relevant problems are known. ,
      ConditionEuCore)

// -------------------------------------
// Immunizations Section 0 .. 1
// -------------------------------------

* section contains sectionImmunizations ..1
* section[sectionImmunizations]

  * insert SectionComRules (
    Immunizations Section, 
  The Immunizations Section defines a patient's current immunization status and pertinent immunization history. The primary use case for the Immunization Section is to enable communication of a patient's immunization status. The section includes the current immunization status\, and may contain the entire immunization history that is relevant to the period of time being summarized.,
  http://loinc.org#11369-6)

  * entry only Reference(Immunization or DocumentReference)
 
  * insert SectionEntrySliceComRules(Patient's immunization status and pertinent history., It defines the patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nIt may contain the entire immunization history that is relevant to the period of time being summarized. This entry shall be used to document that no information about immunizations is available\, or that no immunizations are known.)

  * insert SectionEntrySliceDefRules (immunization,  0.. , 
    Patient's immunization status and pertinent history.,
    It defines the patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nIt may contain the entire immunization history that is relevant to the period of time being summarized. This entry shall be used to document that no information about immunizations is available\, or that no immunizations are known. , 
    ImmunizationEuCore) 
  


// -------------------------------------
// Discharge Details Section 1 .. 1 R
// -------------------------------------
* section contains sectionDischargeDetails 0..1
* section[sectionDischargeDetails]
  * insert SectionComRules (
      Discharge details,
      The hospital discharge status or disposition of the patient having a hospitalization.,
      $loinc#8650-4 ) //"Hospital discharge disposition note"
  * text ^requirements = "body.dischargeDetails.generatedNarrative; body.dischargeDetails.note"
 
// -------------------------------------------------------------
// Attachmnets section
// Library of documents and attachments associated to this report
// -------------------------------------------------------------
* section contains sectionAttachments 0..1
* section[sectionAttachments]
  * insert SectionComRules (
      Library of attachments.,
      List documents related and attachments to this report.,
      $loinc#77599-9 ) // "Additional documentation" 
  * ^short = "Attachments"
  * ^definition = "This section lists documents and attachments associated to this report"
  * entry only Reference(DocumentReference or Binary) // Add Bundle ?

// -------------------------------------


/* 

* section contains sectionEncounters ..1
* section[sectionEncounters]
  * insert SectionComRules (
      Encounters sections,
      This section lists and describes any healthcare encounters pertinent to the patientâ€™s current health status or historical health history.  ,
      $loinc#46240-8 )  
  * ^short = "Encounters sections"
  * ^definition = "This section lists documents and attachments associated to this report" */


/*
// -------------------------------------
// Admission Medications Section 0 .. 1 R
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
// Chief Complaint and Reason for Visit Section 0 .. 1
// -------------------------------------
* section contains CCandReasonforVisitSection ..1
* section[CCandReasonforVisitSection]
  * insert SectionComRules (Chief Complaint and Reason for Visit,
                          This section records the patient's chief complaint (the patientâ€™s own description\) and/or the reason for the patient's visit (the providerâ€™s description of the reason for visit\). Local policy determines whether the information is divided into two sections or recorded in one section serving both purposes.,
                             http://loinc.org#46239-0  )
*/


/// ========= INVARIANTS =========

Invariant: text-or-section
Description: "A Composition SHALL have either text, at least one section, or both."
Expression: "text.exists() or section.exists()"
Severity: #error

