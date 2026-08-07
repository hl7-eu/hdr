// ===========================================================================
// CompositionEuHdr
// ===========================================================================
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
  * ^example[0].valueCoding = $loinc#LP72467-1 "Discharge summary note"
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
// Alert 0 .. 1
// -------------------------------------
* section contains sectionAlert 0..1
* section[sectionAlert]
  * insert SectionComRulesWithTitle (
    Alerts,
    Substantial alerts and warnings,
    Information about substantial alerts or warnings that health professionals should be aware of. It may also contain allergies and intolerances\, which are also documented in the Allergies and intolerances section but flagged here in addtion. Alerts cover any clinical information that is imperative to know so that the life or health of the patient does not come under threat\, for example a rare disease requiring special treatment\, a difficult airway or intubation\, malignant hyperthermia\, porphyria\, bleeding disorders\, treatment with anticoagulants or immunosuppressants\, transplanted organs\, or participation in a clinical trial. Alerts may be coded where a suitable code exists\, but given their dynamic nature they are frequently recorded as free text.,
    $loinc#104605-1 )
  * text ^requirements = "body.alerts.generatedNarrative"
  * entry only Reference(Flag or DocumentReference)
  * insert SectionEntrySliceComRules(EPS Alerts entry, EPS Alerts entry slice)
  // entry slices
  * insert SectionEntrySliceDefRules (flag, 0.. ,
  Alert information ,
  Contains alert information to be communicated. May optionally reference other resources in IPS.lags,
  FlagPatientEuCore)

// -------------------------------------
// Admission Evaluation Section 0 .. 1 R
// -------------------------------------
* section contains sectionAdmissionEvaluation 0..1
* section[sectionAdmissionEvaluation]
  * insert SectionComRulesWithTitle (
    Hospital admission evaluation,
    Patient evaluation at hospital admission,
    Evaluation of the patient at hospital admission\, comprising objective findings such as anthropometric observations\, vital signs and physical examination\, and where relevant the functional status at admission. The admission evaluation is reported only exceptionally\, when it is relevant to ensure continuity of care after discharge.,
    $loinc#67851-6 )
  * ^comment = "Admission evaluation should be reported only exceptionally, if it is relevant to ensure continuity of care."
  * text ^requirements = "body.admissionEvaluation.generatedNarrative"

// -------------------------------------
// Vital signs Section 0 .. 1
// -------------------------------------
* section contains sectionVitalSigns 0..1
* section[sectionVitalSigns]
  * insert SectionComRulesWithTitle (
    Vital signs,
    Vital signs during the encounter and at discharge,
    Vital signs observed during the encounter and at or before discharge\, comprising systolic and diastolic blood pressure including the site of measurement\, pulse rate and respiratory rate\, and optionally oxygen saturation\, body temperature and pain score. Notable values such as the most recent\, the maximum or minimum\, the baseline\, or a relevant trend may be reported. Anthropometric observations such as body weight\, height\, body mass index and circumferences are reported in the Physical findings section.,
    $loinc#8716-3 )
  * entry 0..
  * entry only Reference(Observation or DocumentReference or $vitalsigns)

// -------------------------------------
// Physical findings  Section 0 .. 1
// -------------------------------------
* section contains sectionPhysicalFindings 0..1
* section[sectionPhysicalFindings]
  * insert SectionComRulesWithTitle (
    Physical findings,
    Objective findings from physical examination,
    Objective findings established by examining the patient\, comprising the physical examination performed through observation\, palpation\, percussion and auscultation\, and anthropometric observations such as body weight\, height\, body mass index and the circumference of head\, waist\, hip and limbs. The narrative should be structured by organ system\, for example head\, neck\, thorax\, abdomen and limbs.,
    $loinc#29545-1 )
  * entry 0..
  * entry only Reference(Observation or DocumentReference)

// -------------------------------------
// Functional status assessment  Section 0 .. 1
// -------------------------------------
* section contains sectionFunctionalStatus 0..1
* section[sectionFunctionalStatus]
  * insert SectionComRulesWithTitle (
    Functional status,
    Ability to perform activities of daily living,
    The ability of the patient to perform normal daily activities required to meet basic needs\, fulfil usual roles and maintain health and well-being. This covers basic activities of daily living such as bathing\, feeding and toileting\, instrumental activities of daily living such as cooking\, shopping and managing one's own affairs\, and any need for the patient to be continuously assessed by third parties. Functional status may influence decisions about how to plan and administer treatments.,
    $loinc#47420-5 )
  * entry only Reference(ConditionEuCore or ClinicalImpression or Observation or DocumentReference or QuestionnaireResponse)
    * ^short = "Optional entry used to represent disabilities and functional assessments"
    * ^definition = "It describes capabilities of the patient to perform acts of daily living, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments."
  * insert SectionEntrySliceComRules(Disabilities and Functional assessments, Disabilities and Functional assessments)
  * insert SectionEntrySliceDefRules (condition, 0..*,
    Functional status condition entry,
     Optional entry used to represent disabilities and other conditions that may influence the functional status of the patient. It describes capabilities of the patient to perform acts of daily living\, including possible needs of the patient to be continuously assessed by third parties.,
    ConditionEuCore)
  * insert SectionEntrySliceDefRules (observation, 0..*,
    Functional status observation entry,
     Optional entry used to represent functional assessment of the patient.,
    Observation)

// -------------------------------------
// Hospital Course Section 1..1
// -------------------------------------
* section contains sectionHospitalCourse 1..1
* section[sectionHospitalCourse]
  * insert SectionComRulesWithTitle (
    Hospital course,
    Significant information about course of hospital stay,
    Significant information about the course of the hospital stay\, describing the sequence of events from admission to discharge in a hospital facility. This section groups the diagnostic summary\, significant procedures\, pharmacotherapy administered during the stay\, medical devices and implants\, significant medical test results and the clinical synthesis\, and may carry a narrative account of the course of the encounter.,
    $loinc#8648-8 )
  * text ^requirements = "body.courseOfEncounter.generatedNarrative; body.courseOfEncounter.note"

// -------------------------------------
// Diagnostic summary Section 0 .. 1
// -------------------------------------
* section contains sectionDiagnosticSummary 0..1
* section[sectionDiagnosticSummary]
  * insert SectionComRulesWithTitle (
    Diagnostic summary,
    Problems and diagnoses of the hospital stay,
    All problems and diagnoses that affect care during the inpatient case or are important to be recorded to ensure continuity of care. The diagnostic summary contains a concise\, well specified and codeable summary of problems as they were recognised at the end of hospitalisation\, after all examinations\, ordered by importance with the main problems first. Additional detail on a problem may be provided in the patient history section or in the synthesis section.,
    $loinc#11535-2 )
  * entry 0..*
  * entry only Reference( ConditionEuCore ) // check if this is too restrictive

// ===================================
// courseOfEncounter.procedures
// ===================================
* section contains sectionSignificantProcedures 0..1
* section[sectionSignificantProcedures]
  * insert SectionComRulesWithTitle (
    Significant procedures,
    Significant procedures performed during the stay,
    Significant surgical and non-surgical procedures performed during hospitalisation which are significant for continuity of care\, for example surgery and other instrumental interventions such as endoscopic or intravascular procedures\, chemotherapy\, radiotherapy\, purification methods such as dialysis or hemoperfusion\, circulation support methods such as counterpulsation\, and the administration of blood derivatives. Purely diagnostic procedures such as MRI or CT are not reported here.,
    $loinc#10185-7 )
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
  * insert SectionComRulesWithTitle (
    History of medical device use,
    Devices used or implanted before this encounter,
    The patient history of medical device use\, describing implanted and external medical devices and equipment on which the health status of the patient depends and of which health professionals need to be aware\, for example cardiac pacemakers\, implantable defibrillators\, prostheses and ferromagnetic bone implants. Devices implanted\, explanted or discontinued during the current hospital stay are reported in the Medical devices and implants section.,
    $loinc#46264-8 )
  * entry 0..
  * entry only Reference(DeviceUseStatementEuHdr or ProcedureEuCore or DocumentReference) // DeviceUseStatementEuHdr ro be revised
  * insert SectionEntrySliceComRules(Medical Device entry, EPS Medical Devices entry slice)
  * insert SectionEntrySliceDefRules (deviceStatement, 0..*,
    Patient history of medical device use,
    It describes the patient history of medical device use. This entry shall be used to document that no information about medical device use is available\, or that no relevant medical device use is known. ,
    DeviceUseStatementEuHdr)
  * section ..0

// === EPS History of Procedures Section ===
// Now uses the common macro like every other section.
* section contains sectionProceduresHx 0..1
* section[sectionProceduresHx]
  * insert SectionComRulesWithTitle (
    History of procedures,
    Past procedures relevant to this encounter,
    Historical procedures performed on or for the patient that are relevant to the current encounter\, for example invasive diagnostic procedures such as cardiac catheterisation\, therapeutic procedures such as dialysis\, surgical procedures such as appendectomy\, and further biopsies\, counselling\, physiotherapy or personal support services. Results of diagnostic procedures are documented in the Significant medical test results section. Procedures performed during the current hospital stay are reported in the Significant procedures section.,
    $loinc#47519-4 )
  * entry only Reference(Procedure or DocumentReference)
  * insert SectionEntrySliceComRules(Slice on procedure, Slice on procedure)
  // entry slices
  * entry contains procedure 0..*
  * entry[procedure] 0..*
  * entry[procedure] ^short = "Patient past procedures pertinent to the scope of this document."
  * entry[procedure] ^definition = "It lists the patient past procedures that are pertinent to the scope of this document. Procedures may refer for example to:\r\n1. Invasive Diagnostic procedure:e.g. Cardiac catheterization; (the results of these procedure are documented in the results section)\r\n2. Therapeutic procedure: e.g. dialysis;\r\n3. Surgical procedure: e.g. appendectomy\r\n"
  * entry[procedure] only Reference(ProcedureEuCore)

// -------------------------------------
// Pharmacotherapy Section 0 .. 1
// TO BE REVISED
// -------------------------------------
* section contains sectionPharmacotherapy 0..1
* section[sectionPharmacotherapy]
  * insert SectionComRulesWithTitle (
    Pharmacotherapy,
    Drug treatment discontinued before discharge,
    Selected drug treatment during hospitalisation\, namely medicinal products that were administered during the stay and whose administration was already discontinued before discharge. Only products that are important for continuity of care are listed\, for example antibiotics other than completely routine ones\, or corticosteroids in high doses. Medicinal products whose administration continues after discharge are recorded in the Hospital discharge medications section\, and where their administration started during the stay and is also recommended afterwards they are listed there as well.,
    $loinc#87232-5 )
    // $sct#1003606003 ) // "Medication history section (record artifact\)"
  * entry 0..
  * entry only Reference(MedicationStatementEuCore or MedicationRequestEuCore or MedicationDispenseEuHdr or MedicationAdministrationEuHdr)
  * insert SectionEntrySliceComRules(Medication Use slice, Medication Use slice)
  * insert SectionEntrySliceDefRules (medicationStatement, 0.. ,
      Medication Use,
      Significant medication treatments during encounter.,
      MedicationStatementEuCore)

// -------------------------------------
// Medical Devices and Implants Section 0 .. 1
// courseOfEncounter.medicalDevicesAndImplants
// -------------------------------------
* section contains sectionImplantedDevices 0..1
* section[sectionImplantedDevices]
  * insert SectionComRulesWithTitle (
    Medical devices and implants,
    Devices and implants during the hospital stay,
    Implants and medical devices used during the hospital stay that affected or may affect the provision of health services\, meaning diagnosis and treatment\, including devices that were explanted or whose use was stopped during hospitalisation. The patient history of earlier medical device use is reported in the History of medical device use section.,
    $loinc#57080-4 )
    // $sct#1184586001) //"Medical device document section (record artifact\)
  * entry 0..
  * entry only Reference(DeviceUseStatementEuHdr or ProcedureEuCore)

// -------------------------------------
// Significant medical test results Section 0 .. 1
// -------------------------------------
* section contains sectionSignificantResults 0..1
* section[sectionSignificantResults]
  * insert SectionComRulesWithTitle (
    Significant medical test results,
    Significant medical test results of the stay,
    Significant results of functional\, diagnostic\, including laboratory\, and imaging examinations performed during the encounter which are needed to ensure continuity of care. Examinations that were ordered but whose results have not yet been delivered may also be reported\, and are presented separately from results already delivered.,
    $loinc#30954-2 )
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
// Synthesis Section 0 .. 1
// -------------------------------------
* section contains sectionSynthesis 0..1
* section[sectionSynthesis]
  * insert SectionComRulesWithTitle (
    Synthesis,
    Clinical synthesis of the hospital stay,
    Clinical synthesis of the hospital stay\, describing the reasons for and the course of hospitalisation\, clustered by the conditions that were managed. In clinically complex cases the synthesis may conclude with clinical reasoning\, such as differential diagnostic considerations or an explanation of the clinical context.,
    $loinc#67781-5 )

// -------------------------------------
// === review the CarePlan profile
// Plan of Care Section
// -------------------------------------
* section contains sectionPlanOfCare 0..1
* section[sectionPlanOfCare]
  * insert SectionComRulesWithTitle (
    Plan of care,
    Plan of care and recommendations after discharge,
    The plan of care after discharge\, containing a narrative description of the expectations for care including proposals\, goals and order requests for monitoring\, tracking or improving the condition of the patient. Several care plans may be reported\, each linked to the conditions whose management or mitigation it addresses. Other recommendations and advice given at discharge are also reported here\, for example to consider hip replacement\, to reduce the number of cigarettes or to stop smoking\, or to increase physical exercise. Medication recommended for the period after discharge is reported in the Hospital discharge medications section.,
    $loinc#18776-5 )
  * text ^requirements = "body.carePlan.generatedNarrative"
  // NOTE: in xt-EHR 0.2.1 the path is body.dischargeDetails.carePlan — verify
  //       which model version this profile aligns with.
  * entry only Reference( CarePlanEuHdr or DocumentReference) // Check if CarePlanEuHdr is needed or if we should align with EPS

// -------------------------------------
// Discharge instructions Section 0 .. 1
// -------------------------------------
/* REMOVED FROM THE MODEL
* section contains sectionDischargeInstructions 0..1
* section[sectionDischargeInstructions]
  * insert SectionComRulesWithTitle (
    Hospital Discharge Instructions,
    Hospital discharge instructions,
    Hospital Discharge Instructions,
    $loinc#8653-8 )   //  Hospital Discharge instructions
*/

// -------------------------------------
// Discharge Medications Section 0 .. 1
// mapped from medicationSummary ?
// -------------------------------------
* section contains sectionDischargeMedications 0..1
* section[sectionDischargeMedications]
  * insert SectionComRulesWithTitle (
    Hospital discharge medications,
    Medication intended after discharge,
    Summary information on the medication recommended for the period after discharge\, defining the medicinal products that the patient is intended to take or to stop and indicating for each whether it is unchanged\, changed\, newly started or discontinued\, together with the reason for a change. Drug treatment that was administered during the stay and already discontinued before discharge is reported in the Pharmacotherapy section.,
    $loinc#75311-1 )
  * text ^requirements = "body.medicationSummary.generatedNarrative; body.medicationSummary.note"
  // NOTE: in xt-EHR 0.2.1 the path is body.dischargeDetails.medicationSummary — verify.
  * entry 0..
  * entry only Reference(MedicationRequestEuCore or MedicationDispenseEuHdr or MedicationStatementEuCore)

// -------------------------------------
// Allergies and Intolerances Section 0 .. 1
// -------------------------------------
* section contains sectionAllergies 0..1
* section[sectionAllergies]
  * insert SectionComRulesWithTitle (
    Allergies and intolerances,
    Relevant allergies and intolerances,
    Relevant allergies and intolerances of the patient\, primarily those newly identified during the hospital stay\, describing the kind of reaction\, for example rash or anaphylaxis\, preferably the agent or allergen causing it\, and optionally the criticality and the certainty of the allergy. Any historical allergy or adverse reaction that is still active or relevant for continuity of care is also listed.,
    $loinc#48765-2 )
  * entry only Reference(AllergyIntolerance or DocumentReference)
  * insert SectionEntrySliceComRules(allergyOrIntolerance, allergyOrIntolerance)
  // entry slices
  * insert SectionEntrySliceDefRules (allergyOrIntolerance, 0.. ,
  Relevant allergies or intolerances for that patient.,
  It lists the relevant allergies or intolerances for that patient\, describing the kind of reaction - e.g. rash\, anaphylaxis\,.. - preferably the agents that cause it; and optionally the criticality and the certainty of the allergy. At a minimum\, it should list currently active and any relevant historical allergies and adverse reactions. If no information about allergies is available\, or if no allergies are known this should be clearly documented in the section.,
  AllergyIntoleranceEuCore)

// -------------------------------------
// Hx general Reported Section 0 .. 1 R
// This is a purely narrative section
// -------------------------------------
* section contains sectionPatientHx 0..1
* section[sectionPatientHx]
  * insert SectionComRulesWithTitle (
    Patient health history,
    Narrative patient health history (anamnesis\),
    The health history of the patient\, or anamnesis\, in narrative form. It may provide a synthetic anamnesis\, such as a chronological summary of clustered clinical information describing the phases of a pathology\, as well as anecdotal evidence that clinicians can collect from the patient. Only history that is important for continuity of care is reported\, complementing the diagnostic summary. Structured history is recorded in the dedicated sections for problems\, procedures\, medical devices and immunizations.,
    $loinc#11329-0 )
  * text ^requirements = "body.patientHistory.generatedNarrative"

// -------------------------------------
// Problem List Section 0 .. 1
// covers the active part of the History of Past Illness heading
// -------------------------------------
* section contains sectionProblems 0..1
* section[sectionProblems]
  * insert SectionComRulesWithTitle (
    Problem list,
    Problems currently being monitored,
    Clinical problems and conditions of the patient that are currently being monitored and remain relevant after discharge\, including conditions the patient suffered in the past and still suffers from. Unlike the diagnostic summary\, this section may carry a broader description of a condition and its progress\, including treatment and the response of the patient to treatment. Only conditions important for continuity of care are listed.,
    $loinc#11450-4 )
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
* section contains sectionImmunizations 0..1
* section[sectionImmunizations]
  * insert SectionComRulesWithTitle (
    Immunizations,
    Immunization status and vaccination history,
    The immunization status and the vaccination history of the patient. The primary purpose of this section is to communicate the current immunization status\, and it may contain the entire vaccination history relevant to the period being summarised\, including the disease or agent targeted\, the vaccine or its components\, the dose within a series\, the date of administration and any planned next dose.,
    $loinc#11369-6 )
  * entry only Reference(Immunization or DocumentReference)
  * insert SectionEntrySliceComRules(Patient's immunization status and pertinent history., It defines the patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nIt may contain the entire immunization history that is relevant to the period of time being summarized. This entry shall be used to document that no information about immunizations is available\, or that no immunizations are known.)
  * insert SectionEntrySliceDefRules (immunization,  0.. ,
    Patient's immunization status and pertinent history.,
    It defines the patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nIt may contain the entire immunization history that is relevant to the period of time being summarized. This entry shall be used to document that no information about immunizations is available\, or that no immunizations are known. ,
    ImmunizationEuCore)

// -------------------------------------
// Discharge Details Section
// eHN flags A.2.7 as Core and xt-EHR has 1..1; the block comment previously
// said "1 .. 1 R" while the rule said 0..1. Cardinality left UNCHANGED here —
// see the open points below.
// -------------------------------------
* section contains sectionDischargeDetails 0..1
* section[sectionDischargeDetails]
  * insert SectionComRulesWithTitle (
    Discharge details,
    Discharge status and disposition of the patient,
    Details of the discharge of the patient\, comprising the discharge status or disposition and the condition of the patient at discharge. Structured information should be provided\, and where it is not available at least a discharge summary note should be present. The discharge date\, the type of destination such as home\, another hospital or a nursing home\, discharge against medical advice\, and the destination organisation are recorded in the encounter.,
    $loinc#8650-4 )
  * text ^requirements = "body.dischargeDetails.generatedNarrative; body.dischargeDetails.note"

// -------------------------------------------------------------
// Attachments section
// Library of documents and attachments associated to this report
// -------------------------------------------------------------
* section contains sectionAttachments 0..1
* section[sectionAttachments]
  * insert SectionComRulesWithTitle (
    Attachments,
    Library of attachments,
    Documents and attachments associated with this report\, listed as a library of source material referenced from the report\, for example scanned source documents\, images\, or reports in PDF form. Implementations may define what kind of attachments are allowed and may ignore unexpected attachments for security reasons.,
    $loinc#77599-9 )
  * entry only Reference(DocumentReference or Binary) // Add Bundle ?

// -------------------------------------
/*
* section contains sectionEncounters 0..1
* section[sectionEncounters]
  * insert SectionComRulesWithTitle (
      Encounters sections,
      Healthcare encounters pertinent to the patient,
      This section lists and describes any healthcare encounters pertinent to the patient's current health status or historical health history.,
      $loinc#46240-8 ) */

/*
// -------------------------------------
// Admission Medications Section 0 .. 1 R
// -------------------------------------
* section contains sectionAdmissionMedications 0..1
* section[sectionAdmissionMedications]
  * insert SectionComRulesWithTitle (
    Admission Medications,
    Medication at hospital admission,
    Admission Medications,
    $loinc#42346-7  )
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

/* Admission reason is part of the encounter
// -------------------------------------
// Chief Complaint and Reason for Visit Section 0 .. 1
// -------------------------------------
* section contains CCandReasonforVisitSection 0..1
* section[CCandReasonforVisitSection]
  * insert SectionComRulesWithTitle (Chief Complaint and Reason for Visit,
                          Chief complaint and reason for visit,
                          This section records the patient's chief complaint (the patient's own description\) and/or the reason for the patient's visit (the provider's description of the reason for visit\). Local policy determines whether the information is divided into two sections or recorded in one section serving both purposes.,
                             $loinc#46239-0  )
*/

/// ========= INVARIANTS =========
Invariant: text-or-section
Description: "A Composition SHALL have either text, at least one section, or both."
Expression: "text.exists() or section.exists()"
Severity: #error
