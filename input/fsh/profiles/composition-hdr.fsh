Profile: CompositionEuHdr
Parent: Composition
Id: composition-eu-hdr
Title: "Composition (HDR)"
Description: "Clinical document used to represent a Hospital Discharge Report (HDR) for the scope of this guide."
* . ^short = "Hospital Discharge Report composition"
* . ^definition = "Hospital Discharge Report composition. \r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."

* extension contains $event-basedOn named basedOn 0..*
* extension[basedOn].valueReference only Reference ( Resource or ServiceRequest ) /// add profile

* extension contains $artifact-relatedArtifact named relatedArtifact 0..*
* extension[relatedArtifact] 
  * ^short = "Related artefacts: e.g. presented form"
* extension[relatedArtifact].valueRelatedArtifact.type 
  * ^example[0].label = "presented form"
  * ^example[0].valueCodeableConcept  = http://hl7.org/fhir/related-artifact-type#documentation
  // ItT seems not appropriate as code... to be changed if this solution is used
* extension[relatedArtifact].valueRelatedArtifact.document  

* extension contains $composition.version-r5 named compositionVersionR5 0..
* extension[compositionVersionR5].valueString ^short = "Business version"

* extension contains $information-recipient named information-recipient 0..*
* extension[information-recipient]
* extension[information-recipient].valueReference only Reference( PractitionerRoleEuCore or PractitionerEuCore or Device or PatientEuCore or RelatedPerson or  OrganizationEuCore)

/* GC TO DO
- check if we need a R5 composition.status
- revise the section.code used
*/


* identifier ^short = "HDR business identifier"
* status ^short = "HDR status"
* type only http://hl7.org/fhir/uv/ips/StructureDefinition/CodeableConcept-uv-ips
* type ^short = "Kind of composition (\"Hospital Discharge Report\")"
* type ^definition = "Specifies that this composition refer to a Hospital Discharge Report"
* type = $loinc#34105-7 "Hospital Discharge summary"
* subject only Reference(PatientEuCore)
* subject 1..1
* subject ^definition = "Who or what the composition is about. \r\nIn general a composition can be about a person, (patient or healthcare practitioner), a device (e.g. a machine) or even a group of subjects (such as a document about a herd of livestock, or a set of patients that share a common exposure).\r\nFor the hdr the subject is always the patient."


* encounter only Reference (EncounterEuHdr)

* date ^short = "HDR date"
* author ^short = "Who and/or what authored the Hospital Discharge Report"
* author ^definition = "Identifies who is responsible for the information in the Hospital Discharge Report, not necessarily who typed it in."
* author only Reference( PractitionerEuCore or PractitionerRoleEuCore or Device or Patient or RelatedPerson or Organization)


* title ^short = "Hospital Discharge Report"
* title ^definition = "Official human-readable label for the composition.\r\n\r\nFor this document should be \"Hospital Discharge Report\" or any equivalent translation"
* attester.mode ^short = "The type of attestation"
* attester.time ^short = "When the composition was attested."
* attester.party ^short = "Who attested the composition."
* attester.party only Reference( PractitionerEuCore or PractitionerRoleEuCore or OrganizationEuCore)


* section 1..
* obeys text-or-section

* insert SectionSliceComRules (Sections composing the Hospital Discharge Report,
        The root of the sections that make up the Hospital Discharge Report composition.)

// -------------------------------------
// Admission Evaluation Section 0 … 1 R
// -------------------------------------

* section contains sectionAdmissionEvaluation ..1
* section[sectionAdmissionEvaluation]
  * insert SectionComRules (
    Hospital Admission evaluation,
      Hospital Admission evaluation,
      $loinc#67852-4)   // "Hospital Admission evaluation note"
  * ^comment = "Admission evaluation should be reported only exceptionally, if it is relevant to ensure continuity of care."


// Anthropometric Observations is an indipendet section or is part of the Vital Signs ? 

/*
// ==> TO BE REVIEWED IF THEY ARE PART OF THE VITAL SIGNS
* section contains sectionAnthropometry 0..1
* section[sectionAnthropometry]
  * insert SectionComRules (
    Anthropometric observations,
    Anthropometric Observations sub-section,
    $sct#248326004) // to be updated
  * entry 0..
   * entry only Reference(BodyHeightXpandh or BodyWeightXpandh or BMIProfileXpandh or SkinfoldThicknessXpandh or CircumferenceMeasurementXpandh)
   */


* section contains sectionVitalSigns 0..1
* section[sectionVitalSigns]
  * insert SectionComRules (
    Vital signs,
    The Vital signs section includes blood pressure\, body temperature\, heart rate\, and respiratory rate. It may also include other clinical findings\, such as height\, weight\, body mass index\, head circumference\, and pulse oximetry. In particular\, notable vital signs or physical findings such as the most recent\, maximum and/or minimum\, baseline\, or relevant trends may be included,
    $loinc#8716-3) //  "Vital signs"  
  * entry 0..
  * entry only Reference(Observation or DocumentReference or $vitalsigns)

// ===============================
// CLarify which of the two maps Physical examination (or both)
// ===============================


// -------------------------------------
// Physical examination  Section 0 … 1
// -------------------------------------

* section contains sectionPhysicalExamination ..1
* section[sectionPhysicalExamination]
  * insert SectionComRules (
    Physical examination,
      Physical examination is the process of evaluating objective anatomical findings.,
      $loinc#55286-9)   // "Physical exam by body areas"

// -------------------------------------
// Physical findings  Section 0 … 1
// -------------------------------------

* section contains sectionPhysicalFindings ..1
* section[sectionPhysicalFindings]
  * insert SectionComRules (
    Physical findings,
      Physical findings,
      $loinc#29545-1)   // "Physical findings Narrative"

// -------------------------------------
// Functional status assessment  Section 0 … 1
// -------------------------------------

* section contains sectionFunctionalStatus 0..1
* section[sectionFunctionalStatus]
  * insert SectionComRules (
    Functional status,
    The functional status section shall contain a narrative description of capability of the patient to perform acts of daily living\, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments.\r\nProfiles to express disabilities and functional assessments will be specified by future versions of this guide.,
    $loinc#47420-5) // Functional status assessment note

  * entry only Reference(Condition or ClinicalImpression or Observation or DocumentReference or QuestionnaireResponse)
    * ^short = "Optional entry used to represent disabilities and functional assessments"
    * ^definition = "It describes capabilities of the patient to perform acts of daily living, including possible needs of the patient to be continuously assessed by third parties. The invalidity status may in fact influence decisions about how to administer treatments.\r\nProfiles to express disabilities and functional assessments will be specified by future versions of this guide."



// -------------------------------------
// Hospital Course Section 1..1
// -------------------------------------
* section contains sectionHospitalCourse 1..1
* section[sectionHospitalCourse]
  * insert SectionComRules (
    Hospital course,
    Hospital course describes the sequence of events from admission to discharge in a hospital facility.,
    $loinc#8648-8 )   // "Hospital course Narrative"
  * ^short = "Significant information about course of hospital stay"
  * ^definition = "This section includes basic information about hospital staty (encounter), diagnostic summary in narrative form, pharmacotherapy, major procedures, medical devices, significant findings during hospital stay and clinical synthesis."
  
 
// -------------------------------------
* section contains sectionDiagnosticSummary 0..1
* section[sectionDiagnosticSummary]
  * insert SectionComRules (
    Problem specification in narrative form,
    All problems/diagnoses that affect care during the inpatient case or are important to be recorded to ensure continuity of care. The diagnostic summary differentiates\, in accordance with the international recommendation\, between problems treated during hospital stay and other (untreated\) problems. Treated problems are problems that were the subject of diagnostics\, therapy\, nursing\, or (continuous\) monitoring during the hospitalisation. Furthermore problems could be divided into three categories: problems present on admission (POA\)\, conditions acquired during hospital stay (HAC\) and problems that cannot be classified as being of any of the two (N/A\). The diagnostic summary contains all conditions as they were recognised at the end of hospitalisation\, after all examinations. This section contains concise\, well specified\, codeable\, summary of problems. Problems are ordered by importance (main problems first\) during hospital stay. Description of the problem might be completed with additional details in the medical history section and/or in the Synthesis section.	,
    $loinc#11450-4) // Problem list
    // $sct#721981007)
  * entry 0..*
  * entry only Reference( ConditionEuHdr ) // check if this is too restrictive

// -------------------------------------
* section contains sectionSignificantProcedures 0..1
* section[sectionSignificantProcedures]
  * insert SectionComRules (
    Significant procedures,
    Significant surgical and non-surgical procedures performed during hospitalisation which are significant for continuity of care\, e.g. surgeries and other \"instrumental\"interventions (endoscopic\, intravascular\)\, chemotherapy\, radiotherapy\, purification methods (dialysis\, hemoperfusion\)\, circulation support methods (counterpulsation\, etc.\)\, administration of blood derivatives or others.\r\nThis section does not include purely diagnostic procedures (MRI\, CT\, etc.\). If no significant performance has been performed\, this fact must be explicitly stated using the IPS Absent and Unknown Data. ,
    $loinc#10185-7) // Hospital discharge procedures
    // $sct#721981007)
  * entry 0..
  * entry only Reference(ProcedureEuHdr)
  * section ..0


// -------------------------------------
* section contains sectionMedicalDevices 0..1
* section[sectionMedicalDevices]
  * insert SectionComRules (
    Medical devices and implants,
    Implants and used medical devices that affected or may affect the provision of health services (diagnosis and treatment\). Also medical devices explanted\, or its use was stopped during hospitalisation. If the section is blank\, the reason must be explicitly stated using the IPS Absent and Unknown Data coding system. ,
    $loinc#46264-8) // History of medical device use
    // $sct#1184586001) //"Medical device document section (record artifact\)
  * entry 0..
  * entry only Reference(DeviceUseStatementEuHdr or ProcedureEuHdr ) // DeviceUseStatementEuHdr also ?
  * section ..0



// IS THIS THE CORRECT Pharmacotherapy mapping ?
// -------------------------------------
* section contains sectionPharmacotherapy 0..1
* section[sectionPharmacotherapy]
  * insert SectionComRules (
    Pharmacotherapy,
    Selected drug treatment during hospitalisation. Medicinal products that were administered during hospitalisation and whose administration has already been discontinued before discharge. Only products which are important for continuity of care (antibiotics other than completely routine\, corticosteroids in high doses\, etc.\) will be listed. Products which administration will continue after discharge will be also recorder in the Medication summary section.
Medicinal products\, the administration of which was started during hospitalisation but is also recommended after discharge\, will be listed in the summary table in the recommendation section. ,
$loinc#10160-0 ) // 	History of Medication use Narrative
    // $sct#1003606003 ) // "Medication history section (record artifact\)"
  * entry 0..
  * entry only Reference(MedicationStatementEuHdr or MedicationRequestEuHdr or MedicationDispenseEuHdr or MedicationAdministrationEuHdr)

// -------------------------------------
* section contains sectionSignificantResults 0..1
* section[sectionSignificantResults]
  * insert SectionComRules (
    Significant Observation Results,
    Results of significant functional\, diagnostic\, and imaging examinations to ensure continuity of care\, performed during hospitalisation. Results of examinations ordered but not yet delivered should be presented separately from results already delivered.,
    TemporaryHDRSystem#significant-results ) // CODE
    // $loinc#30954-2 ) // Relevant diagnostic tests/laboratory data Narrative or it is 11493-4 Hospital discharge studies summary Narrative or we need both ?
    // $sct#423100009 ) // "Results section (record artifact\)"
  * entry 0..
  * entry only Reference(Observation or DiagnosticReport or DocumentReference)

  * entry insert OpenReferenceSlicePerTypeRules (significant results, significant results)
  * insert SectionEntrySliceDefRules (labResult, 0.. , Laboratory Result ,
    Laboratory Result  , $Observation-resultslab-eu-lab)
  * insert SectionEntrySliceDefRules (radResult, 0.. , Radiology Result ,
    Radiology Result  ,$Observation-results-radiology-uv-ips)
    
    
  // * entry only Reference(Observation or $Observation-resultslab-eu-lab or ) //  or ObservationResultsRadiologyUvIps or ObservationResultsLaboratoryEu)

// -------------------------------------
* section contains sectionSynthesis 0..1
* section[sectionSynthesis]
  * insert SectionComRules (
    Synthesis,
    This section provides clinical synthesis (e.g. description of reasons and course of hospital stay\) clustered by managed conditions. Clinical synthesis may include clinical reasoning (differential diagnostics\, explanation of clinical context\) in clinically complex conditions.,
    $loinc#51848-0 ) // Evaluation note 
 

// -------------------------------------
// === SHould we add a plan of care container section 
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
  * entry only Reference( CarePlanEpsEu or DocumentReference) // Check profiles

// -------------------------------------
// Discharge Medications Section 0 … 1
// -------------------------------------
* section contains sectionDischargeMedications ..1

* section[sectionDischargeMedications]

  * insert SectionComRules (
    Hospital discharge medications,
    Hospital discharge medications defines the medications that the patient is intended to take\, or stop\, after discharge, 
    $loinc#75311-1 )   //  Discharge medications Narrative OR 10183-2 "Hospital discharge medications Narrative" or 	Discharge medications Narrative
  * entry 0..
  * entry only Reference(MedicationRequestEuHdr or MedicationDispenseEuHdr or MedicationStatementEuHdr)

 
// -------------------------------------
// Discharge instructions Section 0 … 1
// -------------------------------------
* section contains sectionDischargeInstructions ..1

* section[sectionDischargeInstructions]
  * insert SectionComRules (
    Hospital Discharge Instructions,
    Hospital Discharge Instructions,
    $loinc#8653-8 )   //  Hospital Discharge instructions

// -------------------------------------
// Health Concern 0 .. 1
// -------------------------------------

* section contains sectionHealthConcern ..1
* section[sectionHealthConcern]
  * insert SectionComRules (
    Health Concern Section, // SHORT
      This section contains data describing an interest or worry about a health state or process that could possibly require attention\, intervention\, or management. A Health Concern is a health related matter that is of interest\, importance or worry to someone\, who may be the patient\, patient's family or patient's health care provider. Health concerns are derived from a variety of sources within an EHR\, such as Problem List\, Family History\, Social Histor\, Social Worker Note\, etc. Health concerns can be medical\, surgical\, nursing\, allied health or patient-reported concerns. Problem Concerns are a subset of Health Concerns that have risen to the level of importance that they typically would belong on a classic “Problem List”\, such as “Diabetes Mellitus” or “Family History of Melanoma” or “Tobacco abuse”. These are of broad interest to multiple members of the care team. Examples of other Health Concerns that might not typically be considered a Problem Concern include “Risk of Hyperkalemia” for a patient taking an ACE-inhibitor medication\, or “Transportation difficulties” for someone who doesn't drive and has trouble getting to appointments\, or “Under-insured” for someone who doesn't have sufficient insurance to properly cover their medical needs such as medications. These are typically most important to just a limited number of care team members, // DESC
      http://loinc.org#75310-3 )   // CODE
  * entry 0..



// -------------------------------------
// Allergies and Intolerances Section 0 … 1
// -------------------------------------
* section contains sectionAllergies ..1

* section[sectionAllergies]
  * insert SectionComRules (
      Allergies and Intolerances Section,
      This section documents the relevant allergies or intolerances (conditions\) for that patient\, describing the kind of reaction (e.g. rash\, anaphylaxis\,..\); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy.\r\nAt a minimum\, it should list currently active and any relevant historical allergies and adverse reactions.\r\nIf no information about allergies is available\, or if no allergies are known this should be clearly documented in the section.,
      $loinc#48765-2 )   // CODE
  * entry 0..
  * entry only Reference(AllergyIntoleranceEuHdr or DocumentReference )
  * insert SectionEntrySliceComRules(Relevant allergies or intolerances (conditions\) for that patient.,
    It lists the relevant allergies or intolerances (conditions\) for that patient\, describing the kind of reaction (e.g. rash\, anaphylaxis\,..\); preferably the agents that cause it; and optionally the criticality and the certainty of the allergy.\r\nAt a minimum\, it should list currently active and any relevant historical allergies and adverse reactions.\r\n This entry shall be used to document that no information about allergies is available\, or that no allergies are known .)
  // entry slices
  * insert SectionEntrySliceDefRules (allergyIntolerance, 0.. , Allergy entry,
    Allergy entry, AllergyIntoleranceEuHdr)



// -------------------------------------
// Alert 0 .. 1
// -------------------------------------

* section contains sectionAlert ..1
* section[sectionAlert]
  * insert SectionComRules (
    Alert Section, // SHORT
    A warning\, other than included in allergies.
    The warning can be entered in code there are codes for frequently used alerts but seeing the dynamic nature of the warnings\, these alerts will often be entered as free text.
    Any clinical information that is imperative to know so that the life or health of the patient does not come under threat. 
    Example 1: the patient has a rare disease that requires special treatment 
    Example 2: Airway Alert / Difficult Intubation
    Example 3: Diagnoses such as malignant hyperthermia\, porphyria\, and bleeding disorders; special treatments like anticoagulants or immunosuppressants; implanted devices. 
    Example 4: transplanted organs illustrate other information that has to be taken into account in a healthcare contact. 
    Example 5: participation in a clinical trial that has to be taken into account in a healthcare contact. , // DESC
      http://loinc.org#104605-1 )   // CODE
  * entry 0..
  * insert SectionEntrySliceComRules(Alerts, Alerts)
  // entry slices
  * insert SectionEntrySliceDefRules (flag, 0.. , Flags , Flags , Flag)
/*   * insert SectionEntrySliceDefRules (detectedIssue, 0.. ,  Detected Issue,
    Indicates an actual or potential clinical issue with or between one or more active or proposed clinical actions for a patient; e.g. Drug-drug interaction\, Ineffective treatment frequency\, Procedure-condition conflict\, etc. ,
    DetectedIssue)
  * insert SectionEntrySliceDefRules (riskAssessment, 0.. , Risk Assessment,
    An assessment of the likely outcomes for a patient or other subject as well as the likelihood of each outcome. ,
    RiskAssessment) */



// -------------------------------------
// Health Insurance (Coverage) and payment section
// Payers for alignment with C-CDA
// -------------------------------------
* section contains sectionPayers 0..1
* section[sectionPayers]
  * insert SectionComRules (
      Health insurance and payment information section.,
      Health insurance information is not always required\, however\, in some jurisdictions\, the insurance number is also used as the patient identifier. It is necessary not just for identification but also forms access to funding for care.,
      $loinc#48768-6  ) // "Payment sources Document"
  * ^short = "Health insurance and payment information."
  * ^definition = "This section includes heath insurance and payment information."
  * entry only Reference(Coverage) // ==> Add Profile

// -------------------------------------

// -------------------------------------
// Patient History Section 0 … 1 R
// ToDo: Review
// -------------------------------------

* section contains sectionPatientHx ..1
* section[sectionPatientHx]
  * insert SectionComRules (
    Patient History Section,
    This Section describes all aspects of the medical history of the patient even if not pertinent to the current procedure\, and may include chief complaint\, past medical history\, social history\, family history\, surgical or procedure history\, medication history\, and other history information. The history may be limited to information pertinent to the current procedure or may be more comprehensive. The history may be reported as a collection of random clinical statements or it may be reported categorically. Categorical report formats may be divided into multiple subsections including Past Medical History\, Social History.,
    $loinc#11329-0 )


// -------------------------------------
// History of Past Illness Section 0 … 1
// -------------------------------------

* section contains sectionPastIllnessHx ..1

* section[sectionPastIllnessHx]
  * insert SectionComRules (
    History of Past Illness Section,
    The History of Past Illness section contains a narrative description and coded entries of the conditions the patient suffered in the past,
    $loinc#11348-0 )
  * entry 0..
  * entry only Reference(ConditionEuHdr)  // do we need another profile ?
    * ^short = "Conditions the patient suffered in the past."
    * ^definition = "It contains a description of the conditions the patient suffered in the past."

// -------------------------------------
// * section contains sectionMedicalDevices 0..1 See above
// -------------------------------------

// -------------------------------------
// History of Procedures Section 0 … 1
// -------------------------------------
* section contains sectionProceduresHx ..1
* section[sectionProceduresHx]
  * insert SectionComRules (
    History of Procedures Section,
      The History of Procedures Section contains a description of the patient past procedures that are pertinent to the scope of this document.\r\nProcedures may refer for example to:\r\n1. Invasive Diagnostic procedure:e.g. Cardiac catheterization; (the results of these procedure are documented in the results section\)\r\n2. Therapeutic procedure: e.g. dialysis;\r\n3. Surgical procedure: e.g. appendectomy
      ,$loinc#47519-4 "History of Procedures Document")   // CODE
  * entry 0..
  * entry only Reference(ProcedureEuHdr  ) // check if we need to use a different profile

  * insert SectionEntrySliceComRules(Patient past procedures pertinent to the scope of this document.,
    It lists the patient past procedures that are pertinent to the scope of this document.\r\nProcedures may refer for example to:\r\n1. Invasive Diagnostic procedure:e.g. Cardiac catheterization; (the results of these procedure are documented in the results section\)\r\n2. Therapeutic procedure: e.g. dialysis;\r\n3. Surgical procedure: e.g. appendectomy. This entry shall be used to document that no information about past procedures is available\, or that no relevant past procedures are known.)
  


// -------------------------------------
// Immunizations Section 0 … 1
// -------------------------------------

* section contains sectionImmunizations ..1

* section[sectionImmunizations]
  * insert SectionComRules (
    Immunizations Section,
      The Immunizations Section defines a patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\nThe section includes current immunization status\, and may contain the entire immunization history that is relevant to the period of time being summarized.
      , $loinc#11369-6 "History of Immunization Narrative")   // CODE
  * entry 0..
  * entry only Reference(ImmunizationEuHdr  or ImmunizationRecommendationEuHdr
                          or DocumentReference  )
  
  /*
  * insert SectionEntrySliceComRules ( Patient's immunization status and pertinent history.
    , It defines the patient's current immunization status and pertinent immunization history.\r\nThe primary use case for the Immunization Section is to enable communication of a patient's immunization status.\r\n It may contain the entire immunization history that is relevant to the period of time being summarized. This entry shall be used to document that no information about immunizations is available\, or that no immunizations are known. )
 // entry slices
  * insert SectionEntrySliceDefRules (immunization, 0.. , Immunization entry ,
    Immunization entry  , ImmunizationEuHdr) */

// -------------------------------------
// Epidemiological history realized with these two sections
// should we merge them in a singol one ?
// -------------------------------------

* section contains sectionInfectiousContacts ..1
* section[sectionInfectiousContacts]
  * insert SectionComRules (
    Infectious contacts,
    Infectious contacts of the patient,
     TemporaryHDRSystem#infection-contact ) // $sct#444071008"Exposure to organism (event\)"
  * entry 0..*
  * entry only Reference(ObservationInfectiousContactEuHdr)
    * ^short = "Exposure to an infectious agent."
    * ^definition = "Information about a suspected infectious agent or agents the person was exposed to."
  * section ..0


* section contains sectionTravelHx ..1
* section[sectionTravelHx]
  * insert SectionComRules ( 
        Travel History Section, 
        This Section describes the travel history relevant for the Patient Summary\, e.g.recent travel in a region of high prevalence of a specific infectious disease like Malaria,
        $loinc#10182-4 )
  * entry 0..*
  * entry only Reference(ObservationTravelEuHdr)
  * section ..0

// -------------------------------------
// Family History Section 0 … 1
// -------------------------------------
* section contains sectionFamilyHistory ..1
* section[sectionFamilyHistory]
  * insert SectionComRules (
    Family History Section,
      This section contains data defining the patient’s genetic relatives in terms of possible or relevant health risk factors that have a potential impact on the patient’s healthcare risk profile.
      ,  http://loinc.org#10157-6  )   // CODE
  * entry 0..
  * entry only Reference(FamilyMemberHistoryEuHdr or DocumentReference  )
  * entry ^short = "Family History"
  * entry ^definition = "Family History"


// -------------------------------------
// Social History Section
// -------------------------------------
* section contains sectionSocialHistory ..1
* section[sectionSocialHistory]
  * insert SectionComRules (
    Social History Section,
    The social history section contains a description of the person Health related lifestyle factors or lifestyle observations.   E.g. smoke habits; alcohol consumption; diets\, risky habits., 
    $loinc#29762-2  )   // CODE

// \’s Health related lifestyle factors or lifestyle observations.   E.g. smoke habits; alcohol consumption; diets\, risky habits.,

  * entry 0..
  * entry only Reference(Observation or DocumentReference or QuestionnaireResponse) 

  * insert SectionEntrySliceComRules ( Information about social determinants of health.
    , Information about social determinants of health. )
 // entry slices
  * insert SectionEntrySliceDefRules (sdoh, 0.. , SDOH entry ,
    Social determinants of health entry , ObservationSdohEuHdr)


// -------------------------------------
// Use of substances Section
// -------------------------------------
* section contains sectionSubstanceUse ..1
* section[sectionSubstanceUse]
  * insert SectionComRules (
    Use of Substances Section,
    The Use of Substances Section contains a description of the use abuse of substances E.g. tobacco; alcohol; drugs,  
    TemporaryHDRSystem#substance-use  )   // CODE
  * entry 0..
  * entry only Reference(Observation) // or $Observation-alcoholuse-uv-ips or $Observation-tobaccouse-uv-ips

// -------------------------------------
// Alcohol use Section
// -------------------------------------
* section contains sectionAlcoholUse ..1
* section[sectionAlcoholUse]
  * insert SectionComRules (
    Alcohol use Section,
    The Alcohol use Section contains a description of the use abuse of alcohol,  
    $loinc#11331-6  )   // History of Alcohol use
  * entry 0..
  * entry only Reference(Observation) 

// -------------------------------------
// Tobacco use Section
// -------------------------------------
* section contains sectionTobaccoUse ..1
* section[sectionTobaccoUse]
  * insert SectionComRules (
    Tobacco use Section,
    The Tobacco use Section contains a description of the use abuse of tobacco,  
    $loinc#11367-0  )   // History of Tobacco use
  * entry 0..
  * entry only Reference(Observation) 

// -------------------------------------
// Drug use Section
// -------------------------------------
* section contains sectionDrugUse ..1
* section[sectionDrugUse]
  * insert SectionComRules (
    Drug use Section,
    The Drug use Section contains a description of the use abuse of drugs,  
    $loinc#11343-1  )   // History of Other nonmedical drug use
  * entry 0..
  * entry only Reference(Observation)



// -------------------------------------
// Discharge Details Section 1 … 1 R
// -------------------------------------
* section contains sectionDischargeDetails 0..1
* section[sectionDischargeDetails]
  * insert SectionComRules (
      Discharge details,
      The hospital discharge status or disposition of the patient having a hospitalization.,
      $loinc#8650-4 ) //"Hospital discharge disposition Narrative"
 
// --- Anthropometric Observations see above
// --- Vital signs see above

// --- Physical examination see above


// -------------------------------------
// Hospital discharge physical findings Section 0 … 1
// -------------------------------------
* section contains sectionDischargeFindings 0..1
* section[sectionDischargeFindings]
  * insert SectionComRules (
      Hospital discharge physical findings,
      Hospital discharge physical findings.,
      $loinc#10184-0 ) //"Hospital discharge physical findings Narrative"


// --- Functional status assessment see above







// -------------------------------------
* section contains sectionAdvanceDirectives ..1
* section[sectionAdvanceDirectives]
  * insert SectionComRules (
    Advance Directives Section,
    The advance directives section contains a narrative description of patient's advance directive.,
    $loinc#42348-3 )  // 	Advance directives
  * entry only Reference(Consent or DocumentReference) // ==> Add Profile


// -------------------------------------
// Care Team 0 … 1
// -------------------------------------
* insert sectionCareTeamRules




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
      This section lists and describes any healthcare encounters pertinent to the patient’s current health status or historical health history.  ,
      $loinc#46240-8 )  
  * ^short = "Encounters sections"
  * ^definition = "This section lists documents and attachments associated to this report" */


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


/// ========= INVARIANTS =========

Invariant: text-or-section
Description: "A Composition SHALL have either text, at least one section, or both."
Expression: "text.exists() or section.exists()"
Severity: #error